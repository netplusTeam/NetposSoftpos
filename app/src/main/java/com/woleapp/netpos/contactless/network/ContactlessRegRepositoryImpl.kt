package com.woleapp.netpos.contactless.network

import android.util.Log
import com.dsofttech.dprefs.utils.DPrefs
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import com.woleapp.netpos.contactless.domain.SharedPrefsManagerContract
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.util.AppConstants
import com.woleapp.netpos.contactless.util.AppConstants.STRING_TAG_APP_ENCRYPTION_CREDENTIALS
import io.reactivex.Single
import org.json.JSONObject
import retrofit2.HttpException
import retrofit2.Response
import javax.inject.Inject
import javax.inject.Named
import javax.inject.Singleton

@Singleton
class ContactlessRegRepositoryImpl @Inject constructor(
    private val accountLookUpService: AccountLookUpService,
    private val contactlessRegService: ContactlessRegistrationService,
    @Named("network-enc") private val networkEncryptionHelper: DataEncryptionAndDecryption,
    private val gson: Gson,
    private val sharedPrefs: SharedPrefsManagerContract,
) : ContactlessRegRepository {
    override fun findAccount(
        accountNumber: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<Response<AccountNumberLookUpResponse>> = accountLookUpService.findAccount(
        AccountNumberLookUpRequest(accountNumber),
        partnerId,
        deviceSerialId,
    )

//    override fun confirmOTP(
//        data: String,
//        partnerId: String,
//    ): Single<ConfirmOTPResponse> = accountLookUpService.confirmOTP(
//        EncryptedApiRequestModel(data),
//        partnerId,
//    )

    override fun registerExistingAccount(
        existingAccountRegisterRequest: ExistingAccountRegisterRequest,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse> = accountLookUpService.registerExistingAccount(
        existingAccountRegisterRequest,
        partnerId,
        deviceSerialId,
    )

    override fun registerExistingAccountForBankT(
        existingAccountRegisterRequest: BankTRegistrationModel,
        partnerId: String,
        deviceSerialId: String
    ): Single<ExistingAccountRegisterResponse> =
        accountLookUpService.registerExistingAccountForBankT(
            existingAccountRegisterRequest,
            partnerId,
            deviceSerialId,
        )

    override fun getBranches(
        stateId: Int,
        partnerId: String,
        deviceSerialId: String,
    ): Single<GetFBNBranchResponse> =
        accountLookUpService.getBranches(stateId, partnerId, deviceSerialId)

    override fun getStates(): Single<GetStatesResponse> = accountLookUpService.getStates()

    override fun resetPassword(
        payload: JsonObject,
        partnerId: String,
        deviceSerialId: String,
    ): Single<GeneralResponse> =
        accountLookUpService.resetPassword(payload, partnerId, deviceSerialId)

    override fun resetPasswordForProvidus(
        payload: JsonObject,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ResetPasswordResponseForProvidus> =
        accountLookUpService.resetPasswordForProvidus(payload, partnerId, deviceSerialId)

    override fun confirmOTPToSetPassword(
        payload: JsonObject,
        partnerId: String,
        deviceSerialId: String,
    ): Single<GeneralResponse> =
        accountLookUpService.confirmOTPToSetPassword(payload, partnerId, deviceSerialId)

    override fun setNewPassword(
        payload: JsonObject,
        partnerId: String,
        deviceSerialId: String,
    ): Single<GeneralResponse> =
        accountLookUpService.setNewPassword(payload, partnerId, deviceSerialId)


    override fun confirmOTP(
        data: String,
        partnerId: String
    ): Single<ConfirmOTPResponse?> = accountLookUpService.confirmOTP(
        EncryptedApiRequestModel(networkEncryptionHelper.encryptData(data)),
        partnerId
    ).flatMap {
   //     val otpResponse = networkEncryptionHelper.decryptData(it.sendResponse)
        val otpResponse = networkEncryptionHelper.decryptData(it.sendResponse)
        Log.d("CONFIRMOTP", otpResponse)
        if (!it.sendResponse.isNullOrEmpty()) {
            val resp = otpResponse.substringAfter("{").substringBefore("}")
            val fields = resp.split(",")
            Log.d("RESPCONFIRMOTP", resp)
            Log.d("FIELDSOTP", fields.toString())

            val businessName = fields.find { it.contains("businessName") }?.substringAfter("{")
                ?.substringAfter(":")?.trim('"', ' ')

            val address =
                fields.find { it.contains("address") }?.substringAfter(":")?.trim('"', ' ')

            val accountNumber =
                fields.find { it.contains("accountNumber") }?.substringAfter(":")?.trim('"', ' ')

            val email = fields.find { it.contains("email") }?.substringAfter(":")?.trim('"', ' ')

            val phone = fields.find { it.contains("phone") }?.substringAfter(":")?.trim('"', ' ')

            val fullName =
                fields.find { it.contains("fullName") }?.substringAfter(":")?.trim('"', ' ')

            val decryptedResponse = Data(
                businessName ?: "",
                address ?: "",
                fullName ?: "",
                accountNumber ?: "",
                email ?: "",
                phone ?: ""
            )
            Single.just(
                ConfirmOTPResponse(true, "Account verified successfully", decryptedResponse)
            )
        }else{
            Single.just(
                null,
            )
        }

    }.onErrorResumeNext{
        val newResp = (it as? HttpException)?.response()?.errorBody()?.string()
        val resp = newResp?.substringAfter("{")?.substringBefore("}")?.replace(":", ",")
        val ans = listOf(resp)
        val newSize = ans[0].toString().substring(16, 244)
        val finalErrorResp = networkEncryptionHelper.decryptData(newSize)
        val jsonObject = JSONObject(finalErrorResp)
        val message = jsonObject.getJSONObject("data").getString("message")
        DPrefs.putString(AppConstants.FBN_EXISTING_CUSTOMER_ACCOUNT_REGISTER, message)
        Single.just(null)
    }

    override fun encryptedAccountLookUpRequest(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ConfirmOTPResponse?> = accountLookUpService.encryptedAccountLookUpRequest(
        EncryptedApiRequestModel(networkEncryptionHelper.encryptData(data)),
        partnerId,
        deviceSerialId,
    ).flatMap {
        val otpResponse = networkEncryptionHelper.decryptData(it.sendResponse)
        if (!it.sendResponse.isNullOrEmpty()) {
            val resp = otpResponse.substringAfter("{").substringBefore("}")
            val fields = resp.split(",")
            val businessName = fields.find { it.contains("businessName") }?.substringAfter("{")
                ?.substringAfter(":")?.trim('"', ' ')

            val address =
                fields.find { it.contains("address") }?.substringAfter(":")?.trim('"', ' ')

            val accountNumber =
                fields.find { it.contains("accountNumber") }?.substringAfter(":")?.trim('"', ' ')

            val email = fields.find { it.contains("email") }?.substringAfter(":")?.trim('"', ' ')

            val phone = fields.find { it.contains("phone") }?.substringAfter(":")?.trim('"', ' ')

            val fullName =
                fields.find { it.contains("fullName") }?.substringAfter(":")?.trim('"', ' ')

            val decryptedResponse = Data(
                businessName ?: "",
                address ?: "",
                fullName ?: "",
                accountNumber ?: "",
                email ?: "",
                phone ?: ""
            )
            Single.just(
                ConfirmOTPResponse(true, "An OTP has been sent to your registered $email or $phone. The OTP expires in ten minutes.", decryptedResponse)
            )
        } else {
            Single.just(
                null,
            )
        }

    }.onErrorResumeNext {
        val newResp = (it as? HttpException)?.response()?.errorBody()?.string()
        val resp = newResp?.substringAfter("{")?.substringBefore("}")?.replace(":", ",")
        val ans = listOf(resp)
        val newSize = ans[0].toString().substring(16, 245)
        val finalErrorResp = networkEncryptionHelper.decryptData(newSize)
        val jsonObject = JSONObject(finalErrorResp)
        val message = jsonObject.getJSONObject("data").getString("message")
        DPrefs.putString(AppConstants.FBN_ACCOUNT_NUMBER_LOOKUP, message)
        Single.just(null)
    }

    override fun encryptedRegisterExistingAccount(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse?> =
        accountLookUpService.encryptedRegisterExistingAccount(
            EncryptedApiRequestModel(networkEncryptionHelper.encryptData(data)),
            partnerId,
            deviceSerialId,
        ).flatMap {
            if (!it.sendResponse.isNullOrEmpty()) {
                Single.just(
                    gson.fromJson(
                        networkEncryptionHelper.decryptData(it.sendResponse),
                        ExistingAccountRegisterResponse::class.java,
                    ),
                )
            } else {
                Single.just(
                    null,
                )
            }
        }.onErrorResumeNext {
            val newResp = (it as? HttpException)?.response()?.errorBody()?.string()
            val resp = newResp?.substringAfter("{")?.substringBefore("}")?.replace(":", ",")
            val ans = listOf(resp)
            val newSize = ans[0].toString().substring(16, 244)
            val finalErrorResp = networkEncryptionHelper.decryptData(newSize)
            val jsonObject = JSONObject(finalErrorResp)
            val message = jsonObject.getJSONObject("data").getString("message")
            DPrefs.putString(AppConstants.FBN_EXISTING_CUSTOMER_ACCOUNT_REGISTER, message)
            Single.just(null)
        }

    override fun encryptedRegisterFBN(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<RegistrationModel?> = contactlessRegService.encryptedRegisterFBN(
        EncryptedApiRequestModel(networkEncryptionHelper.encryptData(data)),
        partnerId,
        deviceSerialId,
    ).flatMap {
        if (it.sendResponse.isNullOrEmpty()) {
            Single.just(
                null,
            )
        } else {
            Single.just(
                gson.fromJson(
                    networkEncryptionHelper.decryptData(it.sendResponse),
                    RegistrationModel::class.java
                ),
            )
        }
    }

    override fun getCred(data: String): Single<Boolean> =
        contactlessRegService.getCredentials(EncryptedApiRequestModel(data)).flatMap {
            return@flatMap if (it.isSuccessful) {
                return@flatMap try {
                    val response = gson.fromJson(
                        it.body()?.sendResponse?.let { it1 ->
                            networkEncryptionHelper.decryptData(
                                it1,
                            )
                        },
                        EncryptionCredentials::class.java,
                    )
                    response?.let { encCred ->
                        sharedPrefs.saveString(
                            STRING_TAG_APP_ENCRYPTION_CREDENTIALS,
                            gson.toJson(
                                encCred,
                            ),
                        )
                    }
                    Single.just(
                        response?.let { true } ?: false,
                    )
                } catch (e: Exception) {
                    Single.just(false)
                }
            } else {
                Single.just(false)
            }
        }
}
