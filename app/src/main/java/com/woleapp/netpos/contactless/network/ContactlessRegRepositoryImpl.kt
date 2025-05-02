package com.woleapp.netpos.contactless.network

import com.dsofttech.dprefs.utils.DPrefs
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import com.woleapp.netpos.contactless.domain.SharedPrefsManagerContract
import com.woleapp.netpos.contactless.model.*
import com.woleapp.netpos.contactless.util.AppConstants
import com.woleapp.netpos.contactless.util.AppConstants.STRING_TAG_APP_ENCRYPTION_CREDENTIALS
import io.reactivex.Single
import org.json.JSONObject
import retrofit2.HttpException
import retrofit2.Response
import java.util.*
import javax.inject.Inject
import javax.inject.Named
import javax.inject.Singleton

@Singleton
class ContactlessRegRepositoryImpl
    @Inject
    constructor(
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
        ): Single<Response<AccountNumberLookUpResponse>> =
            accountLookUpService.findAccount(
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
        ): Single<GeneralResponse> =
            accountLookUpService.registerExistingAccount(
                existingAccountRegisterRequest,
                partnerId,
                deviceSerialId,
            )

        override fun registerExistingAccountForBankT(
            existingAccountRegisterRequest: BankTRegistrationModel,
            partnerId: String,
            deviceSerialId: String,
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
        ): Single<GetFBNBranchResponse> = accountLookUpService.getBranches(stateId, partnerId, deviceSerialId)

        override fun getStates(): Single<GetStatesResponse> = accountLookUpService.getStates()

        override fun resetPassword(
            payload: JsonObject,
            partnerId: String,
            deviceSerialId: String,
        ): Single<GeneralResponse> = accountLookUpService.resetPassword(payload, partnerId, deviceSerialId)

        override fun resetPasswordForProvidus(
            payload: JsonObject,
            partnerId: String,
            deviceSerialId: String,
        ): Single<ResetPasswordResponseForProvidus> = accountLookUpService.resetPasswordForProvidus(payload, partnerId, deviceSerialId)

        override fun confirmOTPToSetPassword(
            payload: JsonObject,
            partnerId: String,
            deviceSerialId: String,
        ): Single<GeneralResponse> = accountLookUpService.confirmOTPToSetPassword(payload, partnerId, deviceSerialId)

        override fun setNewPassword(
            payload: JsonObject,
            partnerId: String,
            deviceSerialId: String,
        ): Single<GeneralResponse> = accountLookUpService.setNewPassword(payload, partnerId, deviceSerialId)

        override fun confirmOTP(
            data: String,
            partnerId: String,
        ): Single<ConfirmOTPResponse?> =
            accountLookUpService.confirmOTP(
                EncryptedApiRequestModel(networkEncryptionHelper.encryptData(data)),
                partnerId,
            ).flatMap {
                // val otpResponse = networkEncryptionHelper.decryptData(it.sendResponse)
                val otpResponse = networkEncryptionHelper.decryptData(it.sendResponse)
                if (!it.sendResponse.isNullOrEmpty()) {
                    val jsonObject = JsonParser.parseString(otpResponse).asJsonObject
                    val dataObject = jsonObject.getAsJsonObject("data")
                    // Accessing individual fields
                    val status = dataObject.getAsJsonPrimitive("status").asBoolean
                    val message = dataObject.getAsJsonPrimitive("message").asString
                    val innerData = dataObject.getAsJsonObject("data")
                    val businessName = innerData.getAsJsonPrimitive("businessName").asString
                    val address = innerData.getAsJsonPrimitive("address").asString
                    val fullName = innerData.getAsJsonPrimitive("fullName").asString
                    val accountNumber = innerData.getAsJsonPrimitive("accountNumber").asString
                    val email = innerData.getAsJsonPrimitive("email").asString
                    val phone = innerData.getAsJsonPrimitive("phone").asString
                    val title = innerData.getAsJsonPrimitive("title").asString

                    val decryptedResponse =
                        Data(
                            businessName ?: "",
                            address ?: "",
                            fullName ?: "",
                            accountNumber ?: "",
                            email ?: "",
                            phone ?: "",
                            title ?: "",
                            "",
                        )
                    Single.just(
                        ConfirmOTPResponse(true, "Account verified successfully", decryptedResponse),
                    )
                } else {
                    Single.just(
                        null,
                    )
                }
            }.onErrorResumeNext { throwable ->
                val response = (throwable as? HttpException)?.response()?.errorBody()?.string()
                val sendResponse =
                    response?.substringAfter("sendResponse")?.substringAfter("\",\"")?.removeSuffix("\"]")
                // Assuming the response is always in the format provided
                val encryptedMessage = sendResponse?.substringAfter("\",\"")!!
                val firstLetterIndex = encryptedMessage.indexOfFirst { it.isLetter() }
                val lastLetterIndex = encryptedMessage.indexOfLast { it.isLetter() }
                if (firstLetterIndex != -1 && lastLetterIndex != -1) {
                    val extractedString = encryptedMessage.substring(firstLetterIndex, lastLetterIndex + 1)
                    // Implement the decryption logic here (replace with your decryption logic)
                    val finalErrorResp = networkEncryptionHelper.decryptData(extractedString)
                    val jsonObject = JSONObject(finalErrorResp)
                    val message = jsonObject.getJSONObject("data").getString("message")
                    DPrefs.putString(AppConstants.FBN_OTP, message)
                }
                Single.just(null)
            }

        override fun encryptedAccountLookUpRequest(
            data: String,
            partnerId: String,
            deviceSerialId: String,
        ): Single<ConfirmOTPResponse?> =
            accountLookUpService.encryptedAccountLookUpRequest(
                EncryptedApiRequestModel(networkEncryptionHelper.encryptData(data)),
                partnerId,
                deviceSerialId,
            ).flatMap {
                val otpResponse = networkEncryptionHelper.decryptData(it.sendResponse)
                if (!it.sendResponse.isNullOrEmpty()) {
                    // Parse the JSON string
                    val jsonObject = JsonParser.parseString(otpResponse).asJsonObject
                    val dataObject = jsonObject.getAsJsonObject("data")

                    // Accessing individual fields
                    val status = dataObject.getAsJsonPrimitive("status").asBoolean
                    val message = dataObject.getAsJsonPrimitive("message").asString
                    val innerData = dataObject.getAsJsonObject("data")
                    val businessName = innerData.getAsJsonPrimitive("businessName").asString
                    val address = innerData.getAsJsonPrimitive("address").asString
                    val fullName = innerData.getAsJsonPrimitive("fullName").asString
                    val accountNumber = innerData.getAsJsonPrimitive("accountNumber").asString
                    val email = innerData.getAsJsonPrimitive("email").asString
                    val otpId = innerData.getAsJsonPrimitive("otpId").asString
                    val phone = innerData.getAsJsonPrimitive("phone").asString

                    val decryptedResponse =
                        Data(
                            businessName ?: "",
                            address ?: "",
                            fullName ?: "",
                            accountNumber ?: "",
                            email ?: "",
                            phone ?: "",
                            "",
                            otpId ?: "",
                        )

                    Single.just(
                        ConfirmOTPResponse(
                            true,
                            message,
                            decryptedResponse,
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
        ): Single<GeneralResponse?> =
            accountLookUpService.encryptedRegisterExistingAccount(
                EncryptedApiRequestModel(networkEncryptionHelper.encryptData(data)),
                partnerId,
                deviceSerialId,
            ).flatMap {
                val otpResponse = networkEncryptionHelper.decryptData(it.sendResponse)
                if (!it.sendResponse.isNullOrEmpty()) {
                    val jsonObject = JsonParser.parseString(otpResponse).asJsonObject
                    val dataObject = jsonObject.getAsJsonObject("data")

                    // Accessing individual fields
                    val status = dataObject.getAsJsonPrimitive("status").asBoolean
                    val message = dataObject.getAsJsonPrimitive("message").asString

                    Single.just(
                        GeneralResponse(
                            true,
                            message,
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
                val newSize = ans[0].toString().substring(16, 232)
                // val newSizee = ans[0].toString().substring(16, 229)
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
        ): Single<RegistrationModel?> =
            contactlessRegService.encryptedRegisterFBN(
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
                            RegistrationModel::class.java,
                        ),
                    )
                }
            }.onErrorResumeNext { throwable ->
                val response = (throwable as? HttpException)?.response()?.errorBody()?.string()
                val sendResponse =
                    response?.substringAfter("sendResponse")?.substringAfter("\",\"")?.removeSuffix("\"]")
                // Assuming the response is always in the format provided
                val encryptedMessage = sendResponse?.substringAfter("\",\"")!!
                val firstLetterIndex = encryptedMessage.indexOfFirst { it.isLetter() }
                val lastLetterIndex = encryptedMessage.indexOfLast { it.isLetter() }

                if (firstLetterIndex != -1 && lastLetterIndex != -1) {
                    val extractedString = encryptedMessage.substring(firstLetterIndex, lastLetterIndex + 1)
                    // Implement the decryption logic here (replace with your decryption logic)
                    val finalErrorResp = networkEncryptionHelper.decryptData(extractedString)

                    val jsonObject = JSONObject(finalErrorResp)
                    val message = jsonObject.getJSONObject("data").getString("message")
                    DPrefs.putString(AppConstants.FBN_EXISTING_CUSTOMER_ACCOUNT_REGISTER, message)
                }
                Single.just(null)
            }

        override fun getLgaByState(
            stateCode: String,
            deviceSerialId: String,
        ): Single<LgaByStateResponses> = accountLookUpService.getLgaByState(stateCode, deviceSerialId)

        override fun getMccList(deviceSerialId: String): Single<MerchantCategoryCodeResponse> =
            accountLookUpService.getMccList(deviceSerialId)

        override fun getCred(data: String): Single<Boolean> =
            contactlessRegService.getCredentials(EncryptedApiRequestModel(data)).flatMap {
                return@flatMap if (it.isSuccessful) {
                    return@flatMap try {
                        val response =
                            gson.fromJson(
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
