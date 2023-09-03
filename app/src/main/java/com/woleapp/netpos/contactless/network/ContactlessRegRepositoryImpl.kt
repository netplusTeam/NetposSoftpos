package com.woleapp.netpos.contactless.network

import com.google.gson.Gson
import com.google.gson.JsonObject
import com.woleapp.netpos.contactless.domain.DataEncryptionAndDecryption
import com.woleapp.netpos.contactless.domain.SharedPrefsManagerContract
import com.woleapp.netpos.contactless.model.* // ktlint-disable no-wildcard-imports
import com.woleapp.netpos.contactless.util.AppConstants.STRING_TAG_APP_ENCRYPTION_CREDENTIALS
import io.reactivex.Single
import retrofit2.Response
import javax.inject.Inject
import javax.inject.Named
import javax.inject.Singleton

@Singleton
class ContactlessRegRepositoryImpl @Inject constructor(
    private val accountLookUpService: AccountLookUpService,
    private val contactlessRegService: ContactlessRegistrationService,
    @Named("network") private val networkEncryptionHelper: DataEncryptionAndDecryption,
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

    override fun confirmOTP(
        phoneNumber: String,
        accountNumber: String,
        otp: String,
        partnerId: String,
    ): Single<ConfirmOTPResponse> =
        accountLookUpService.confirmOTP(
            ConfirmOTPRequest(phoneNumber, accountNumber, otp),
            partnerId,
        )

    override fun registerExistingAccount(
        existingAccountRegisterRequest: ExistingAccountRegisterRequest,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse> = accountLookUpService.registerExistingAccount(
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

    override fun encryptedAccountLookUpRequest(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ConfirmOTPResponse?> =
        accountLookUpService.encryptedAccountLookUpRequest(
            gson.fromJson(
                networkEncryptionHelper.encryptData(data),
                EncryptedApiRequestModel::class.java,
            ),
            partnerId,
            deviceSerialId,
        ).flatMap {
            if (!it.sendResponse.isNullOrEmpty()) {
                Single.just(
                    gson.fromJson(
                        networkEncryptionHelper.decryptData(
                            it.sendResponse,
                        ),
                        ConfirmOTPResponse::class.java,
                    ),
                )
            } else {
                Single.just(
                    null,
                )
            }
        }

    override fun encryptedRegisterExistingAccount(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<ExistingAccountRegisterResponse?> =
        accountLookUpService.encryptedRegisterExistingAccount(
            gson.fromJson(
                networkEncryptionHelper.encryptData(data),
                EncryptedApiRequestModel::class.java,
            ),
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
                        ExistingAccountRegisterResponse::class.java,
                    ),
                )
            }
        }

    override fun encryptedRegisterFBN(
        data: String,
        partnerId: String,
        deviceSerialId: String,
    ): Single<RegistrationModel?> =
        contactlessRegService.encryptedRegisterFBN(
            gson.fromJson(
                networkEncryptionHelper.encryptData(data),
                EncryptedApiRequestModel::class.java,
            ),
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
        }

    override fun getCred(data: String): Single<Boolean> =
        contactlessRegService.getCredentials(EncryptedApiRequestModel(data))
            .flatMap {
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
                        Single.just(
                            if (response is EncryptionCredentials) {
                                sharedPrefs.saveString(
                                    STRING_TAG_APP_ENCRYPTION_CREDENTIALS,
                                    gson.toJson(response),
                                )
                                true
                            } else {
                                false
                            },
                        )
                    } catch (e: Exception) {
                        Single.just(false)
                    }
                } else {
                    Single.just(false)
                }
            }
}
