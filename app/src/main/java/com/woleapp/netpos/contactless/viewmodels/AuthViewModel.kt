@file:Suppress("ktlint:standard:no-wildcard-imports")

package com.woleapp.netpos.contactless.viewmodels

import android.util.Patterns
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.auth0.android.jwt.JWT
import com.dsofttech.dprefs.utils.DPrefs
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import com.woleapp.netpos.contactless.domain.SharedPrefsManagerContract
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.network.ContactlessRegRepository
import com.woleapp.netpos.contactless.network.StormApiService
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.AppConstants.RESET_USERNAME
import com.woleapp.netpos.contactless.util.AppConstants.STRING_TAG_APP_ENCRYPTION_CREDENTIALS
import com.woleapp.netpos.contactless.util.Singletons.gson
import com.woleapp.netpos.contactless.util.UtilityParam.STRING_REQ_CRED_CREDENTIALS
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.Scheduler
import io.reactivex.Single
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import org.json.JSONObject
import retrofit2.HttpException
import timber.log.Timber
import javax.inject.Inject
import javax.inject.Named

@HiltViewModel
class AuthViewModel
    @Inject
    constructor() : ViewModel() {
        @Inject
        @Named("network-enc")
        lateinit var encryptionHelper: DataEncryptionAndDecryption

        @Inject
        lateinit var contactlessRegRepository: ContactlessRegRepository

        @Inject
        @Named("io-scheduler")
        lateinit var ioScheduler: Scheduler

        @Inject
        @Named("main-scheduler")
        lateinit var mainThreadScheduler: Scheduler

        @Inject
        lateinit var compositeDisposable: CompositeDisposable

        @Inject
        lateinit var sharedPrefs: SharedPrefsManagerContract
        private val disposables = CompositeDisposable()
        var stormApiService: StormApiService? = null
        var appCredentials: JsonObject? = null
        val authInProgress = MutableLiveData(false)
        val passwordResetInProgress = MutableLiveData(false)
        val usernameLiveData = MutableLiveData("")
        val passwordLiveData = MutableLiveData("")
        private val _message = MutableLiveData<Event<String>>()
        private val _authDone = MutableLiveData<Event<Boolean>>()
        private val _gotoAdminPage = MutableLiveData<Event<Boolean>>()
        private val _passwordResetSent = MutableLiveData<Event<Boolean>>()

        val passwordResetSent: LiveData<Event<Boolean>>
            get() = _passwordResetSent

        val gotoAdminPage: LiveData<Event<Boolean>>
            get() = _gotoAdminPage

        val authDone: LiveData<Event<Boolean>>
            get() = _authDone

        val message: LiveData<Event<String>>
            get() = _message

        fun login(deviceSerialId: String) {
            contactlessRegRepository.getCred(STRING_REQ_CRED_CREDENTIALS)
                .subscribeOn(ioScheduler)
                .observeOn(mainThreadScheduler)
                .subscribe { data, error ->
                    data?.let {
                        if (it) {
                            val resp =
                                sharedPrefs.retrieveString(STRING_TAG_APP_ENCRYPTION_CREDENTIALS, null)
                            val cred = gson.fromJson(resp, EncryptionCredentials::class.java)
                            if (cred == null) _message.value = Event("Login Failed, please try again!")
                        } else {
                            _message.value = Event("Login Failed, please try again!")
                        }
                    }
                    error?.let {
                        Timber.d(it.localizedMessage)
                        _message.value = Event("Login Failed, please try again!")
                    }
                }.disposeWith(compositeDisposable)

            val username = usernameLiveData.value
            val password = passwordLiveData.value
            if (username.isNullOrEmpty() || password.isNullOrEmpty()) {
                _message.value = Event("All fields are required")
                return
            }
            if (!Patterns.EMAIL_ADDRESS.matcher(username).matches()) {
                _message.value = Event("Please enter a valid email")
                return
            }
            auth(username, password, deviceSerialId)
        }

        private fun auth(
            username: String,
            password: String,
            deviceId: String,
        ) {
            authInProgress.value = true
            val credentials =
                JsonObject()
                    .apply {
                        addProperty("username", username)
                        addProperty("password", password)
                        addProperty("deviceId", deviceId)
                    }
            stormApiService!!.userToken(credentials)
                .flatMap {
                    Timber.e(it.toString())
                    if (!it.success) {
                        throw Exception("Login Failed, Check Credentials")
                    }
                    val userToken = it.token
                    val stormId: String =
                        JWTHelper.getStormId(userToken) ?: throw Exception("Login Failed")
                    DPrefs.putString(PREF_USER_TOKEN, userToken)
                    val userTokenDecoded = JWT(userToken)
                    val user =
                        User().apply {
                            this.nfc_interest =
                                if (userTokenDecoded.claims.containsKey("nfc_interest")) {
                                    userTokenDecoded.getClaim("nfc_interest").asString()
                                } else {
                                    null
                                }

                            this.netplusPayMid =
                                if (userTokenDecoded.claims.containsKey("netplusPayMid")) {
                                    userTokenDecoded.getClaim("netplusPayMid").asString()
                                } else {
                                    null
                                }
                            this.business_address =
                                if (userTokenDecoded.claims.containsKey("business_address")) {
                                    userTokenDecoded.getClaim(
                                        "business_address",
                                    ).asString()
                                } else {
                                    " "
                                }
                            this.terminal_id =
                                if (userTokenDecoded.claims.containsKey("terminalId")) {
                                    userTokenDecoded.getClaim(
                                        "terminalId",
                                    ).asString()
                                } else {
                                    " "
                                }
                            this.business_name =
                                if (userTokenDecoded.claims.containsKey("businessName")) {
                                    userTokenDecoded.getClaim(
                                        "businessName",
                                    ).asString()
                                } else {
                                    " "
                                }
                            this.netplus_id =
                                if (userTokenDecoded.claims.containsKey("stormId")) {
                                    userTokenDecoded.getClaim(
                                        "stormId",
                                    ).asString()
                                } else {
                                    " "
                                }
                            this.mid =
                                if (userTokenDecoded.claims.containsKey("mid")) {
                                    userTokenDecoded.getClaim("mid")
                                        .asString()
                                } else {
                                    " "
                                }
                            this.partnerId =
                                if (userTokenDecoded.claims.containsKey("partnerId")) {
                                    userTokenDecoded.getClaim(
                                        "partnerId",
                                    ).asString()
                                } else {
                                    " "
                                }
                            this.email =
                                if (userTokenDecoded.claims.containsKey("email")) {
                                    userTokenDecoded.getClaim(
                                        "email",
                                    ).asString()
                                } else {
                                    " "
                                }
                        }

                    Timber.tag("LoggedInUser==>").d(gson.toJson(user))
                    Single.just(user)
                }.subscribeOn(Schedulers.io())
                .doFinally { authInProgress.postValue(false) }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { res, error ->
                    res?.let {
                        DPrefs.putString(PREF_USER, gson.toJson(it))
                        DPrefs.putBoolean(PREF_AUTHENTICATED, true)
                        _authDone.value = Event(true)
                    }
                    error?.let {
                        Timber.e(it)
                        if (it.message.equals("admin", true)) {
                            _gotoAdminPage.value = Event(true)
                            return@let
                        }
                        Timber.e(it.localizedMessage)
                        (it as? HttpException).let { httpException ->
                            val errorMessage =
                                httpException?.response()?.errorBody()?.string()
                                    ?: "{\"success\":false,\"message\":\"Unexpected error\"}"
                            _message.value =
                                Event(
                                    try {
                                        gson.fromJson(errorMessage, AuthError::class.java).message
                                            ?: "Login Failed"
                                    } catch (e: Exception) {
                                        "login failed"
                                    },
                                )
                            Timber.e(errorMessage)
                        }
                    }
                }.disposeWith(disposables)
        }

        fun resetPassword() {
            val username = usernameLiveData.value
            if (username.isNullOrEmpty()) {
                _message.value = Event("Please enter your email address")
                return
            }

            val payload =
                JsonObject().apply {
                    addProperty("username", username)
                }
            DPrefs.putString(RESET_USERNAME, username)
            stormApiService!!.passwordReset(payload).subscribeOn(Schedulers.io())
                .doOnSubscribe {
                    passwordResetInProgress.postValue(true)
                }.doFinally { passwordResetInProgress.postValue(false) }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { t1, t2 ->
                    t1?.let {
                        _message.value =
                            if (it.code() != 200) {
                                Event("Password reset failed")
                            } else {
                                val res = JSONObject(Gson().toJson(it.body()))
                                if (!res.getBoolean("success")) {
                                    Event("Password reset failed")
                                } else {
                                    _passwordResetSent.value = Event(true)
                                    Event("A password reset mail has been sent to $username")
                                }
                            }
                    }
                    t2?.let {
                        _message.value = Event("Password reset failed, try again.")
                    }
                }.disposeWith(disposables)
        }

        fun resetPasswordForFCMB(
            partnerID: String,
            deviceId: String,
        ) {
            val username = usernameLiveData.value
            val password = passwordLiveData.value
            if (username.isNullOrEmpty() || password.isNullOrEmpty()) {
                _message.value = Event("All fields are required")
                return
            }

            val payload =
                JsonObject().apply {
                    addProperty("username", username)
                    addProperty("password", password)
                }
            // DPrefs.putString(RESET_USERNAME, username)
            stormApiService!!.passwordResetForProvidus(payload, partnerID, deviceId)
                .subscribeOn(Schedulers.io())
                .doOnSubscribe {
                    passwordResetInProgress.postValue(true)
                }.doFinally { passwordResetInProgress.postValue(false) }
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { t1, t2 ->
                    t1?.let {
                        _message.value =
                            if (it.code() != 200) {
                                Event("Email address not associated with this device. Please contact administrator")
                            } else {
                                val res = JSONObject(Gson().toJson(it.body()))
                                if (!res.getBoolean("success")) {
                                    Event("Password reset failed")
                                } else {
                                    _passwordResetSent.value = Event(true)
                                    Event("Password reset successfully!")
                                }
                            }
                    }
                    t2?.let {
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage =
                                httpException?.response()?.errorBody()?.string()
                                    ?: "{\"message\":\"Unexpected error\"}"
                            _message.value =
                                Event(
                                    try {
                                        gson.fromJson(errorMessage, GeneralResponse::class.java).message
                                            ?: "Error"
                                    } catch (e: Exception) {
                                        "Error"
                                    },
                                )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                }.disposeWith(disposables)
        }

        override fun onCleared() {
            super.onCleared()
            disposables.clear()
        }
    }
