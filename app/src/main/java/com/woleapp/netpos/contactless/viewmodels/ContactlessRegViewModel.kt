package com.woleapp.netpos.contactless.viewmodels

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.dsofttech.dprefs.utils.DPrefs
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.network.ContactlessRegRepository
import com.woleapp.netpos.contactless.util.AppConstants
import com.woleapp.netpos.contactless.util.Event
import com.woleapp.netpos.contactless.util.Resource
import com.woleapp.netpos.contactless.util.Singletons.gson
import com.woleapp.netpos.contactless.util.UtilityParam
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.Single
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import retrofit2.HttpException
import timber.log.Timber
import javax.inject.Inject
import javax.inject.Named
import javax.inject.Singleton


@HiltViewModel
class ContactlessRegViewModel @Inject constructor(
    private val contactlessRegRepo: ContactlessRegRepository,
    ) : ViewModel() {


    private val disposable = CompositeDisposable()

    private var _accountNumberResponse: MutableLiveData<Resource<AccountNumberLookUpResponse>> =
        MutableLiveData()
    val accountNumberResponse: LiveData<Resource<AccountNumberLookUpResponse>> get() = _accountNumberResponse

    private var _firstBankAccountNumberResponse: MutableLiveData<Resource<ConfirmOTPResponse>> =
        MutableLiveData()
    val firstBankAccountNumberResponse: LiveData<Resource<ConfirmOTPResponse>> get() = _firstBankAccountNumberResponse

    private var _confirmOTPResponse: MutableLiveData<Resource<ConfirmOTPResponse>> =
        MutableLiveData()
    val confirmOTPResponse: LiveData<Resource<ConfirmOTPResponse>> get() = _confirmOTPResponse

    private var _getStatesResponse: MutableLiveData<Resource<GetStatesResponse>> =
        MutableLiveData()
    val getStatesResponse: LiveData<Resource<GetStatesResponse>> get() = _getStatesResponse

    private var _getBranchResponse: MutableLiveData<Resource<GetFBNBranchResponse>> =
        MutableLiveData()
    val getBranchResponse: LiveData<Resource<GetFBNBranchResponse>> get() = _getBranchResponse

    private var _resetPasswordResponse: MutableLiveData<Resource<GeneralResponse>> =
        MutableLiveData()
    val resetPasswordResponse: LiveData<Resource<GeneralResponse>> get() = _resetPasswordResponse

    private var _resetPasswordForProvidusResponse: MutableLiveData<Resource<ResetPasswordResponseForProvidus>> =
        MutableLiveData()
    val resetPasswordForProvidusResponse: LiveData<Resource<ResetPasswordResponseForProvidus>> get() = _resetPasswordForProvidusResponse

    private var _confirmOtpToResetPasswordResponse: MutableLiveData<Resource<GeneralResponse>> =
        MutableLiveData()
    val confirmOtpToResetPasswordResponse: LiveData<Resource<GeneralResponse>> get() = _confirmOtpToResetPasswordResponse

    private var _newPasswordResponse: MutableLiveData<Resource<GeneralResponse>> =
        MutableLiveData()
    val newPasswordResponse: LiveData<Resource<GeneralResponse>> get() = _newPasswordResponse

    private var _existingRegRequestResponse: MutableLiveData<Resource<ExistingAccountRegisterResponse>> =
        MutableLiveData()
    val existingRegRequestResponse: LiveData<Resource<ExistingAccountRegisterResponse>> get() = _existingRegRequestResponse

    private val _message = MutableLiveData<Event<String>>()
    val message: LiveData<Event<String>>
        get() = _message

    private val _otpMessage = MutableLiveData<Event<String>>()
    val otpMessage: LiveData<Event<String>>
        get() = _otpMessage

    private val _registerMessage = MutableLiveData<Event<String>>()
    val registerMessage: LiveData<Event<String>>
        get() = _registerMessage

    val listOfStates = arrayListOf<FBNState>()

    val listOfBranches = arrayListOf<FBNBranch>()

    lateinit var errorMsg: String

    fun accountLookUp(accountNumber: String, partnerId: String, deviceSerialId: String) =
        contactlessRegRepo.findAccount(accountNumber, partnerId, deviceSerialId)
            .flatMap {
                if (it.isSuccessful) {
                    savePhoneNumber(it.body()!!.phone)
                    saveAccountNumber(it.body()!!.account_number)
                    Single.just(Resource.success(it.body()))
                } else {
                    try {
                        val gson = Gson()
                        errorMsg = gson.fromJson(
                            it.errorBody()?.charStream(),
                            ExistingCustomerError::class.java,
                        ).message
                        //      DPrefs.putString(WALLET_RESPONSE, errorMsg)
                    } catch (e: java.lang.Exception) {
                        //
                    }
                    Single.just(Resource.error(errorMsg))
                }
            }

    fun findAccountForFirstBankUser(
        accountNumber: String,
        partnerId: String,
        deviceSerialId: String,
    ) {
        _firstBankAccountNumberResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.encryptedAccountLookUpRequest(
                gson.toJson(
                    AccountNumberLookUpRequest(accountNumber),
                ),
                partnerId,
                deviceSerialId,
            )
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _firstBankAccountNumberResponse.postValue(Resource.success(it))
                        saveAccountNumber(accountNumber)
                        saveExistingPhoneNumber(it.data.phone)
                        saveEmail(it.data.email)
                        saveBusinessName(it.data.businessName)
                        saveBusinessAddress(it.data.address)
                        saveFullName(it.data.fullName)
                        if (it.message.isNullOrEmpty()) {
                            _message.value = Event("Successful")
                        } else {
                            _message.value = Event(it.message.toString())
                        }
                    }
                    error?.let {
                        _firstBankAccountNumberResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            val errorMsg = DPrefs.getString(AppConstants.FBN_ACCOUNT_NUMBER_LOOKUP, "")
                            _message.value = Event(
                                try {
                                    errorMsg
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun confirmOTP(phoneNumber: String, accountNumber: String, otp: String, partnerId: String) {
        _confirmOTPResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.confirmOTP(phoneNumber, accountNumber, otp, partnerId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _confirmOTPResponse.postValue(Resource.success(it))
                        // saveExistingCustomerData(data.data)
                        saveExistingPhoneNumber(it.data.phone)
                        saveEmail(it.data.email)
                        saveBusinessName(it.data.businessName)
                        saveBusinessAddress(it.data.address)
                        saveFullName(it.data.fullName)
                        _otpMessage.value = Event("Success")
                    }
                    error?.let {
                        _confirmOTPResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _otpMessage.value = Event(
                                try {
                                    gson.fromJson(
                                        errorMessage,
                                        ExistingCustomerError::class.java,
                                    ).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun getStates() {
        _getStatesResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.getStates()
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _getStatesResponse.postValue(Resource.success(it))
                        for (i in 0 until it.data.rows.size) {
                            listOfStates.add(it.data.rows[i])
                        }
                    }
                    error?.let {
                        _getStatesResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _message.value = Event(
                                try {
                                    gson.fromJson(
                                        errorMessage,
                                        ExistingCustomerError::class.java,
                                    ).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun getBranches(stateInt: Int, deviceSerialId: String, partnerId: String) {
        _getBranchResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.getBranches(stateInt, deviceSerialId, partnerId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _getBranchResponse.postValue(Resource.success(it))
                        for (i in 0 until it.data.rows.size) {
                            listOfBranches.add(it.data.rows[i])
                        }
                    }
                    error?.let {
                        _getBranchResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _message.value = Event(
                                try {
                                    gson.fromJson(
                                        errorMessage,
                                        ExistingCustomerError::class.java,
                                    ).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun resetPassword(payload: JsonObject, deviceSerialId: String, partnerId: String) {
        _resetPasswordResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.resetPassword(payload, deviceSerialId, partnerId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _resetPasswordResponse.postValue(Resource.success(it))
                        _message.value = Event(it.message)
                    }
                    error?.let {
                        _resetPasswordResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _message.value = Event(
                                try {
                                    gson.fromJson(
                                        errorMessage,
                                        ExistingCustomerError::class.java,
                                    ).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun resetPasswordForProvidus(payload: JsonObject, deviceSerialId: String, partnerId: String) {
        _resetPasswordForProvidusResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.resetPasswordForProvidus(payload, deviceSerialId, partnerId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _resetPasswordForProvidusResponse.postValue(Resource.success(it))
                        saveAccountNumberToResetPasswordForProvidus(it.accountNumber)
                        _message.value = Event(it.message)
                    }
                    error?.let {
                        _resetPasswordForProvidusResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _message.value = Event(
                                try {
                                    gson.fromJson(
                                        errorMessage,
                                        ExistingCustomerError::class.java,
                                    ).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun confirmOTPToSetPassword(payload: JsonObject, deviceSerialId: String, partnerId: String) {
        _confirmOtpToResetPasswordResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.confirmOTPToSetPassword(payload, deviceSerialId, partnerId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _confirmOtpToResetPasswordResponse.postValue(Resource.success(it))
                        _message.value = Event(it.message)
                    }
                    error?.let {
                        _confirmOtpToResetPasswordResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _message.value = Event(
                                try {
                                    gson.fromJson(
                                        errorMessage,
                                        ExistingCustomerError::class.java,
                                    ).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                        }
                    }
                },
        )
    }

    fun setNewPassword(payload: JsonObject, deviceSerialId: String, partnerId: String) {
        _newPasswordResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.setNewPassword(payload, deviceSerialId, partnerId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _newPasswordResponse.postValue(Resource.success(it))
                        _message.value = Event(it.message)
                    }
                    error?.let {
                        _newPasswordResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _message.value = Event(
                                try {
                                    gson.fromJson(
                                        errorMessage,
                                        ExistingCustomerError::class.java,
                                    ).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun registerExistingAccount(
        accountNumber: ExistingAccountRegisterRequest,
        partnerId: String,
        deviceSerialId: String,
    ) {
        _existingRegRequestResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.registerExistingAccount(accountNumber, partnerId, deviceSerialId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _existingRegRequestResponse.postValue(Resource.success(it))
                        _registerMessage.value = Event(it.message)
                    }
                    error?.let {
                        _existingRegRequestResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _registerMessage.value = Event(
                                try {
                                    gson.fromJson(
                                        errorMessage,
                                        ExistingCustomerError::class.java,
                                    ).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun registerExistingAccountForFBN(
        accountNumber: RegistrationForExistingFBNUsersRequest,
        partnerId: String,
        deviceSerialId: String,
    ) {
        _existingRegRequestResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.encryptedRegisterExistingAccount(
                gson.toJson(accountNumber),
                partnerId,
                deviceSerialId,
            )
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _existingRegRequestResponse.postValue(Resource.success(it))
                        _registerMessage.value = Event(it.message)
                    }
                    error?.let {
                        _existingRegRequestResponse.postValue(Resource.error(null))
                        Log.d("VIEWWCHECKAA", it.toString())
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            val errorMsg = DPrefs.getString(AppConstants.FBN_EXISTING_CUSTOMER_ACCOUNT_REGISTER, "")
                            _registerMessage.value = Event(
                                try {
                                    errorMsg
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                },
                            )
                            // Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                },
        )
    }

    fun clearOTPResponseLiveData() {
        _confirmOTPResponse.postValue(Resource.error(null))
    }

    fun clearExistingCustomerLiveData() {
        _existingRegRequestResponse.postValue(Resource.error(null))
    }

    fun clearLiveData() {
        _firstBankAccountNumberResponse.postValue(Resource.error(null))
    }

    private fun savePhoneNumber(phoneNumber: String) {
        DPrefs.putString(AppConstants.SAVE_PHONE_NUMBER, gson.toJson(phoneNumber))
    }

    private fun saveAccountNumber(ActNumber: String) {
        DPrefs.putString(AppConstants.SAVED_ACCOUNT_NUM_SIGNED_UP, gson.toJson(ActNumber))
    }

    private fun saveBusinessName(businessName: String) {
        DPrefs.putString(AppConstants.BUSINESS_NAME, gson.toJson(businessName))
    }

    private fun saveFullName(fullName: String) {
        DPrefs.putString(AppConstants.FULL_NAME, gson.toJson(fullName))
    }

    private fun saveBusinessAddress(businessAddress: String) {
        DPrefs.putString(AppConstants.BUSINESS_ADDRESS, gson.toJson(businessAddress))
    }

    private fun saveExistingPhoneNumber(phoneNumber: String) {
        DPrefs.putString(AppConstants.PHONE_NUMBER, gson.toJson(phoneNumber))
    }

    private fun saveEmail(email: String) {
        DPrefs.putString(AppConstants.EMAIL_ADDRESS, gson.toJson(email))
    }

    private fun saveAccountNumberToResetPasswordForProvidus(accountNumber: String) {
        DPrefs.putString(AppConstants.ACCOUNT_NUMBER_FOR_PROVIDUS, gson.toJson(accountNumber))
    }

    override fun onCleared() {
        super.onCleared()
        disposable.clear()
    }
}
