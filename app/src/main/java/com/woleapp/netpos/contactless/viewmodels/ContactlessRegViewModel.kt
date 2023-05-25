package com.woleapp.netpos.contactless.viewmodels

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.gson.Gson
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.network.ContactlessRegRepository
import com.woleapp.netpos.contactless.util.AppConstants
import com.woleapp.netpos.contactless.util.Event
import com.woleapp.netpos.contactless.util.Resource
import com.woleapp.netpos.contactless.util.Singletons.gson
import com.woleapp.netpos.contactless.util.showToast
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import retrofit2.HttpException
import timber.log.Timber
import javax.inject.Inject

@HiltViewModel
class ContactlessRegViewModel @Inject constructor(
    private val contactlessRegRepo: ContactlessRegRepository
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

    fun accountLookUp(accountNumber: String, partnerId: String, deviceSerialId: String) {
        _accountNumberResponse.postValue(Resource.loading(null))
        saveAccountNumber(accountNumber)
        disposable.add(
            contactlessRegRepo.findAccount(accountNumber, partnerId, deviceSerialId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _accountNumberResponse.postValue(Resource.success(it))
                        savePhoneNumber(it.phone)
                        _message.value = Event(it.message)
                    }
                    error?.let {
                        _accountNumberResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _message.value = Event(
                                try {
                                    gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                }
                            )
                            //Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                }
        )
    }
    fun findAccountForFirstBankUser(accountNumber: String, partnerId: String, deviceSerialId: String) {
        _firstBankAccountNumberResponse.postValue(Resource.loading(null))
        saveAccountNumber(accountNumber)
        disposable.add(
            contactlessRegRepo.findAccountForFirstBankUser(accountNumber, partnerId, deviceSerialId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _firstBankAccountNumberResponse.postValue(Resource.success(it))
                        saveExistingPhoneNumber(it.data.phone)
                        saveEmail(it.data.email)
                        saveBusinessName(it.data.businessName)
                        saveBusinessAddress(it.data.address)
                        saveFullName(it.data.fullName)
                        _message.value = Event(it.message)
                    }
                    error?.let {
                        _firstBankAccountNumberResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _message.value = Event(
                                try {
                                    gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                }
                            )
                            //Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                }
        )
    }

    fun confirmOTP(phoneNumber: String, accountNumber:String, otp: String, partnerId: String) {
        _confirmOTPResponse.postValue(Resource.loading(null))
        disposable.add(
            contactlessRegRepo.confirmOTP(phoneNumber, accountNumber, otp, partnerId)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe { data, error ->
                    data?.let {
                        _confirmOTPResponse.postValue(Resource.success(it))
                        //saveExistingCustomerData(data.data)
                        saveExistingPhoneNumber(it.data.phone)
                        saveEmail(it.data.email)
                        saveBusinessName(it.data.businessName)
                        saveBusinessAddress(it.data.address)
                        saveFullName(it.data.fullName)
                        _otpMessage.value = Event(it.message)
                    }
                    error?.let {
                        _confirmOTPResponse.postValue(Resource.error(null))
                        Timber.d("ERROR==${it.localizedMessage}")
                        (it as? HttpException).let { httpException ->
                            val errorMessage = httpException?.response()?.errorBody()?.string()
                                ?: "{\"message\":\"Unexpected error\"}"
                            _otpMessage.value = Event(
                                try {
                                    gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                }
                            )
                            //Timber.e("SHOWME--->$errorMessage")
                        }                    }
                }
        )
    }

    fun registerExistingAccount(accountNumber: ExistingAccountRegisterRequest, partnerId:String, deviceSerialId: String) {
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
                                    gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
                                        ?: "Error"
                                } catch (e: Exception) {
                                    "Error"
                                }
                            )
                            //Timber.e("SHOWME--->$errorMessage")
                        }
                    }
                }
        )
    }
    private fun savePhoneNumber(phoneNumber: String) {
        Prefs.putString(AppConstants.SAVE_PHONE_NUMBER, gson.toJson(phoneNumber))
    }

    private fun saveAccountNumber(ActNumber: String) {
        Prefs.putString(AppConstants.SAVED_ACCOUNT_NUM_SIGNED_UP, gson.toJson(ActNumber))
    }

    private fun saveExistingCustomerData(customerData: ConfirmOTPResponse) {
        Prefs.putString(AppConstants.SAVE_CUSTOMER_DATA, gson.toJson(customerData))
    }
    private fun saveBusinessName(businessName: String) {
        Prefs.putString(AppConstants.BUSINESS_NAME, gson.toJson(businessName))
    }
    private fun saveFullName(fullName: String) {
        Prefs.putString(AppConstants.FULL_NAME, gson.toJson(fullName))
    }
    private fun saveBusinessAddress(businessAddress: String) {
        Prefs.putString(AppConstants.BUSINESS_ADDRESS, gson.toJson(businessAddress))
    }
    private fun saveExistingPhoneNumber(phoneNumber: String) {
        Prefs.putString(AppConstants.PHONE_NUMBER, gson.toJson(phoneNumber))
    }
    private fun saveEmail(email: String) {
        Prefs.putString(AppConstants.EMAIL_ADDRESS, gson.toJson(email))
    }


    override fun onCleared() {
        super.onCleared()
        disposable.clear()
    }
}