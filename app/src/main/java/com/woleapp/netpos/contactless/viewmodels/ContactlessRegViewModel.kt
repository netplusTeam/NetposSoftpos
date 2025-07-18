package com.woleapp.netpos.contactless.viewmodels

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.network.ContactlessRegRepository
import com.woleapp.netpos.contactless.util.AppConstants
import com.woleapp.netpos.contactless.util.Event
import com.woleapp.netpos.contactless.util.Resource
import com.woleapp.netpos.contactless.util.Singletons.gson
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.Single
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import org.json.JSONObject
import retrofit2.HttpException
import timber.log.Timber
import javax.inject.Inject

@HiltViewModel
class ContactlessRegViewModel
    @Inject
    constructor(
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

        private val _otpBankPMessage = MutableLiveData<String>()
        val otpBankPMessage: LiveData<String>
            get() = _otpBankPMessage

        private val _registerMessage = MutableLiveData<Event<String>>()
        val registerMessage: LiveData<Event<String>>
            get() = _registerMessage

        val listOfStates = arrayListOf<FBNState>()

        val listOfBranches = arrayListOf<FBNBranch>()

        lateinit var errorMsg: String

        fun accountLookUp(
            accountNumber: String,
            partnerId: String,
            deviceSerialId: String,
        ) = contactlessRegRepo.findAccount(accountNumber, partnerId, deviceSerialId)
            .flatMap {
                if (it.isSuccessful) {
                    savePhoneNumber(it.body()!!.phone)
                    saveAccountNumber(it.body()!!.account_number)
                    Single.just(Resource.success(it.body()))
                } else {
                    try {
                        val gson = Gson()
                        errorMsg = gson.fromJson(it.errorBody()?.charStream(), ExistingCustomerError::class.java).message
                        //      Prefs.putString(WALLET_RESPONSE, errorMsg)
                        // Log.d("CHECKRESULT=====>", justForTest.toString())
                    } catch (e: java.lang.Exception) {
                        //
                    }
                    Single.just(Resource.error(errorMsg))
                }
            }

        //    fun accountLookUpp(accountNumber: String, partnerId: String, deviceSerialId: String) {
//        _accountNumberResponse.postValue(Resource.loading(null))
//        saveAccountNumber(accountNumber)
//        disposable.add(
//            contactlessRegRepo.findAccount(accountNumber, partnerId, deviceSerialId)
//                .subscribeOn(Schedulers.io())
//                .observeOn(AndroidSchedulers.mainThread())
//                .subscribe { data, error ->
//                    data?.let {
//                        _accountNumberResponse.postValue(Resource.success(it))
//                        savePhoneNumber(it.phone)
//                        _message.value = Event(it.message)
//                    }
//                    error?.let {
//                        _accountNumberResponse.postValue(Resource.error(null))
//                        Timber.d("ERROR==${it.localizedMessage}")
//                        (it as? HttpException).let { httpException ->
//                            val errorMessage = httpException?.response()?.errorBody()?.string()
//                                ?: "{\"message\":\"Unexpected error\"}"
//                            _message.value = Event(
//                                try {
//                                    gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
//                                        ?: "Error"
//                                } catch (e: Exception) {
//                                    "Error"
//                                },
//                            )
//                            // Timber.e("SHOWME--->$errorMessage")
//                        }
//                    }
//                },
//        )
//    }
        fun findAccountForFirstBankUser(
            accountNumber: String,
            partnerId: String,
            deviceSerialId: String,
        ) {
            _firstBankAccountNumberResponse.postValue(Resource.loading(null))
            disposable.add(
                contactlessRegRepo.findAccountForFirstBankUser(accountNumber, partnerId, deviceSerialId)
                    .subscribeOn(Schedulers.io())
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe { data, error ->
                        data?.let {
                            _firstBankAccountNumberResponse.postValue(Resource.success(it))
                            saveAccountNumber(accountNumber)
                            it.data.phone?.let { it1 -> saveExistingPhoneNumber(it1) }
                            it.data.email?.let { it1 -> saveEmail(it1) }
                            it.data.businessName?.let { it1 -> saveBusinessName(it1) }
                            it.data.address?.let { it1 -> saveBusinessAddress(it1) }
                            it.data.fullName?.let { it1 -> saveFullName(it1) }
                            if (it.message.isNullOrEmpty()) {
                                _message.value = Event("Successful")
                            } else {
                                _message.value = Event(it.message.toString())
                            }
                        }
                        error?.let {
                            _firstBankAccountNumberResponse.postValue(Resource.error(null))
                            // Timber.d("ERROR==${it.localizedMessage}")
                            (it as? HttpException).let { httpException ->
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _message.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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

        fun confirmOTP(
            phoneNumber: String,
            accountNumber: String,
            otp: String,
            partnerId: String,
        ) {
            _confirmOTPResponse.postValue(Resource.loading(null))
            disposable.add(
                contactlessRegRepo.confirmOTP(phoneNumber, accountNumber, otp, partnerId)
                    .subscribeOn(Schedulers.io())
                    .observeOn(AndroidSchedulers.mainThread())
                    .subscribe { data, error ->
                        data?.let {
                            _confirmOTPResponse.postValue(Resource.success(it))
                            // saveExistingCustomerData(data.data)
                            it.data.phone?.let { it1 -> saveExistingPhoneNumber(it1) }
                            it.data.email?.let { it1 -> saveEmail(it1) }
                            it.data.businessName?.let { it1 -> saveBusinessName(it1) }
                            it.data.address?.let { it1 -> saveBusinessAddress(it1) }
                            it.data.fullName?.let { it1 -> saveFullName(it1) }
                            _otpMessage.value = Event("Success")
                        }
                        error?.let {
                            _confirmOTPResponse.postValue(Resource.error(null))
                            Timber.d("ERROR==${it.localizedMessage}")
                            (it as? HttpException).let { httpException ->
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _otpMessage.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, BankPExistingCustomerError::class.java).message
                                                ?: "Error"
                                        } catch (e: Exception) {
                                            "Error"
                                        },
                                    )
                                // Parse the JSON string
                                val jsonObject = JSONObject(errorMessage)
                                // Extract the message value
                                val otpErrorMessage = jsonObject.getString("message")
                                _otpBankPMessage.value = otpErrorMessage
//                                Timber.e("SHOWME---> ${_otpBankPMessage.value} $otpErrorMessage")
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
                            // Timber.d("ERROR==${it.localizedMessage}")
                            (it as? HttpException).let { httpException ->
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _message.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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

        fun getBranches(
            stateInt: Int,
            deviceSerialId: String,
            partnerId: String,
        ) {
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
                            // Timber.d("ERROR==${it.localizedMessage}")
                            (it as? HttpException).let { httpException ->
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _message.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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

        fun resetPassword(
            payload: JsonObject,
            deviceSerialId: String,
            partnerId: String,
        ) {
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
                            // Timber.d("ERROR==${it.localizedMessage}")
                            (it as? HttpException).let { httpException ->
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _message.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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

        fun resetPasswordForProvidus(
            payload: JsonObject,
            deviceSerialId: String,
            partnerId: String,
        ) {
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
                            // Timber.d("ERROR==${it.localizedMessage}")
                            (it as? HttpException).let { httpException ->
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _message.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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

        fun confirmOTPToSetPassword(
            payload: JsonObject,
            deviceSerialId: String,
            partnerId: String,
        ) {
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
                            // Timber.d("ERROR==${it.localizedMessage}")
                            (it as? HttpException).let { httpException ->
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _message.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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

        fun setNewPassword(
            payload: JsonObject,
            deviceSerialId: String,
            partnerId: String,
        ) {
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
                            // Timber.d("ERROR==${it.localizedMessage}")
                            (it as? HttpException).let { httpException ->
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _message.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _registerMessage.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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
                contactlessRegRepo.registerExistingAccountForFBN(accountNumber, partnerId, deviceSerialId)
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
                                val errorMessage =
                                    httpException?.response()?.errorBody()?.string()
                                        ?: "{\"message\":\"Unexpected error\"}"
                                _registerMessage.value =
                                    Event(
                                        try {
                                            gson.fromJson(errorMessage, ExistingCustomerError::class.java).message
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
            Prefs.putString(AppConstants.SAVE_PHONE_NUMBER, gson.toJson(phoneNumber))
        }

        private fun saveAccountNumber(ActNumber: String) {
            Prefs.putString(AppConstants.SAVED_ACCOUNT_NUM_SIGNED_UP, gson.toJson(ActNumber))
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

        private fun saveAccountNumberToResetPasswordForProvidus(accountNumber: String) {
            Prefs.putString(AppConstants.ACCOUNT_NUMBER_FOR_PROVIDUS, gson.toJson(accountNumber))
        }

        override fun onCleared() {
            super.onCleared()
            disposable.clear()
        }
    }
