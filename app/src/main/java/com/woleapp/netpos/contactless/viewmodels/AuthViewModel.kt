package com.woleapp.netpos.contactless.viewmodels

import android.content.Context
import android.util.Log
import android.util.Patterns
import android.widget.Toast
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.auth0.android.jwt.JWT
import com.dsofttech.dprefs.utils.DPrefs
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.model.AuthError
import com.woleapp.netpos.contactless.model.GeneralResponse
import com.woleapp.netpos.contactless.model.User
import com.woleapp.netpos.contactless.network.StormApiService
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.AppConstants.RESET_USERNAME
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.passwordValidationZB
import com.woleapp.netpos.contactless.util.Singletons.gson
import com.woleapp.netpos.contactless.util.UtilityParam.BANKP_SECRET_KEY
import io.reactivex.Single
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import org.json.JSONObject
import retrofit2.HttpException

class AuthViewModel : ViewModel() {
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

    fun loginZenith(
        context: Context,
        deviceSerialId: String,
    ) {
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
        if (!passwordValidationZB(password.toString().trim())) {
            Toast.makeText(
                context,
                "The password's length must be more than 9 digits and must contain small letters, capital letters and special characters",
                Toast.LENGTH_SHORT,
            ).show()
            return
        }
        auth(username, password, deviceSerialId)
    }

    fun login(deviceSerialId: String) {
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

    fun login(
        deviceSerialId: String,
        partnerID: String,
    ) {
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
        authProvidus(username, password, deviceSerialId, partnerID)
    }

    fun loginBankP(
        context: Context,
        deviceSerialId: String,
        partnerID: String,
    ) {
        val username = usernameLiveData.value
        val password = passwordLiveData.value
        if (username.isNullOrEmpty() || password.isNullOrEmpty()) {
            _message.value = Event("All fields are required")
            return
        }
        authBankP(username, password, deviceSerialId, partnerID)
    }

    private fun auth(
        username: String,
        password: String,
        deviceId: String,
    ) {
        authInProgress.value = true
        val credentials =
            JsonObject().apply {
                addProperty("username", username)
                addProperty("password", password)
                addProperty("deviceId", deviceId)
            }
        stormApiService!!.userToken(credentials).flatMap {
            if (!it.success) {
                throw Exception("Login Failed, Check Credentials")
            }
            val userToken = it.token
            val stormId: String = JWTHelper.getStormId(userToken) ?: throw Exception("Login Failed")
            Prefs.putString(PREF_USER_TOKEN, userToken)
            val userTokenDecoded = JWT(userToken)
            val user =
                User().apply {
                    this.accountNumber =
                        if (userTokenDecoded.claims.containsKey("accountNumber")) {
                            userTokenDecoded.getClaim("accountNumber").asString()
                        } else {
                            null
                        }
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
                            userTokenDecoded.getClaim("mid").asString()
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
                        if (userTokenDecoded.claims.containsKey("username")) {
                            userTokenDecoded.getClaim(
                                "username",
                            ).asString()
                        } else {
                            " "
                        }
//                    this.username =
//                        if (userTokenDecoded.claims.containsKey("username")) {
//                            userTokenDecoded.getClaim(
//                                "username",
//                            ).asString()
//                        } else {
//                            " "
//                        }
                    this.userType =
                        if (userTokenDecoded.claims.containsKey("user_type")) {
                            userTokenDecoded.getClaim(
                                "user_type",
                            ).asString()
                        } else {
                            " "
                        }
                }

            Single.just(user)
        }.subscribeOn(Schedulers.io()).doFinally { authInProgress.postValue(false) }
            .observeOn(AndroidSchedulers.mainThread()).subscribe { res, error ->
                res?.let {
                    Prefs.putString(PREF_USER, gson.toJson(it))
                    Prefs.putBoolean(PREF_AUTHENTICATED, true)
                    _authDone.value = Event(true)
                }
                error?.let {
                    if (it.message.equals("admin", true)) {
                        _gotoAdminPage.value = Event(true)
                        return@let
                    }
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
                    }
                }
            }.disposeWith(disposables)
    }

    private fun authProvidus(
        username: String,
        password: String,
        deviceId: String,
        partnerID: String,
    ) {
        authInProgress.value = true
        val credentials =
            JsonObject().apply {
                addProperty("username", username)
                addProperty("password", password)
                addProperty("deviceId", deviceId)
            }
        stormApiService!!.userTokenProvidus(partnerID, credentials).flatMap {
            if (!it.success) {
                throw Exception("Login Failed, Check Credentials")
            }
            val userToken = it.token
            val stormId: String = JWTHelper.getStormId(userToken) ?: throw Exception("Login Failed")
            Prefs.putString(PREF_USER_TOKEN, userToken)
            val userTokenDecoded = JWT(userToken)
            val user =
                User().apply {
                    this.accountNumber =
                        if (userTokenDecoded.claims.containsKey("accountNumber")) {
                            userTokenDecoded.getClaim("accountNumber").asString()
                        } else {
                            null
                        }
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
                            userTokenDecoded.getClaim("mid").asString()
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
                        if (userTokenDecoded.claims.containsKey("username")) {
                            userTokenDecoded.getClaim(
                                "username",
                            ).asString()
                        } else {
                            " "
                        }
                    this.userType =
                        if (userTokenDecoded.claims.containsKey("user_type")) {
                            userTokenDecoded.getClaim(
                                "user_type",
                            ).asString()
                        } else {
                            " "
                        }
                }

            Single.just(user)
        }.subscribeOn(Schedulers.io()).doFinally { authInProgress.postValue(false) }
            .observeOn(AndroidSchedulers.mainThread()).subscribe { res, error ->
                res?.let {
                    Prefs.putString(PREF_USER, gson.toJson(it))
                    Prefs.putBoolean(PREF_AUTHENTICATED, true)
                    _authDone.value = Event(true)
                }
                error?.let {
                    if (it.message.equals("admin", true)) {
                        _gotoAdminPage.value = Event(true)
                        return@let
                    }
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
                    }
                }
            }.disposeWith(disposables)
    }

    private fun authBankP(
        username: String,
        password: String,
        deviceId: String,
        partnerID: String,
    ) {
        authInProgress.value = true
        val encryptedDataBase64 =
            AESGCMEncryption.encryptFields(
                username,
                password,
                deviceId,
                BANKP_SECRET_KEY,
            )
        val data =
            JsonObject().apply {
                addProperty("data", encryptedDataBase64.first)
                addProperty("invitation", encryptedDataBase64.second)
            }

        stormApiService!!.bankPUserToken(partnerID, data).flatMap {
            if (!it.success) {
                throw Exception("Login Failed, Check Credentials")
            }

            // Decrypt the encrypted data
            val decryptedData = AESGCMEncryption.decrypt(it.token, it.invitation, BANKP_SECRET_KEY)
            DPrefs.putString(PREF_LOGIN_USER_TOKEN, it.token)
            DPrefs.putString(PREF_LOGIN_API_KEY, it.invitation)
            val userToken = decryptedData
            val stormId: String = JWTHelper.getStormId(userToken) ?: throw Exception("Login Failed")
            Prefs.putString(PREF_USER_TOKEN, userToken)
//            val userTokenDecoded = JWT(userToken)
            val userTokenDecoded = JWT(decryptedData)
            val user =
                User().apply {
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
                            userTokenDecoded.getClaim("mid").asString()
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
                        if (userTokenDecoded.claims.containsKey("username")) {
                            userTokenDecoded.getClaim(
                                "username",
                            ).asString()
                        } else {
                            " "
                        }
//                    this.username =
//                        if (userTokenDecoded.claims.containsKey("username")) {
//                            userTokenDecoded.getClaim(
//                                "username",
//                            ).asString()
//                        } else {
//                            " "
//                        }
                    this.userType =
                        if (userTokenDecoded.claims.containsKey("user_type")) {
                            userTokenDecoded.getClaim(
                                "user_type",
                            ).asString()
                        } else {
                            " "
                        }
                }
            Log.d("USER", user.toString())
            Single.just(user)
        }.subscribeOn(Schedulers.io()).doFinally { authInProgress.postValue(false) }
            .observeOn(AndroidSchedulers.mainThread()).subscribe { res, error ->
                res?.let {
                    Prefs.putString(PREF_USER, gson.toJson(it))
                    Prefs.putBoolean(PREF_AUTHENTICATED, true)
                    _authDone.value = Event(true)
//                    Log.d("RESPONSE", "HELLOOOLLL")
                }
                error?.let {
                    if (it.message.equals("admin", true)) {
                        _gotoAdminPage.value = Event(true)
                        return@let
                    }
//                    Log.d("RESPONSERRR", "HELLOOOLLLERRRR")
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
        Prefs.putString(RESET_USERNAME, username)
        stormApiService!!.passwordReset(payload).subscribeOn(Schedulers.io()).doOnSubscribe {
            passwordResetInProgress.postValue(true)
        }.doFinally { passwordResetInProgress.postValue(false) }
            .observeOn(AndroidSchedulers.mainThread()).subscribe { t1, t2 ->
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
            .subscribeOn(Schedulers.io()).doOnSubscribe {
                passwordResetInProgress.postValue(true)
            }.doFinally { passwordResetInProgress.postValue(false) }
            .observeOn(AndroidSchedulers.mainThread()).subscribe { t1, t2 ->
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
                    }
                }
            }.disposeWith(disposables)
    }

    override fun onCleared() {
        super.onCleared()
        disposables.clear()
    }
}
