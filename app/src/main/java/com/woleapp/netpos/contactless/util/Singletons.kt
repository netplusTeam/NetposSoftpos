package com.woleapp.netpos.contactless.util

import com.danbamitale.epmslib.entities.ConfigData
import com.danbamitale.epmslib.entities.KeyHolder
import com.danbamitale.epmslib.entities.TransactionResponse
import com.danbamitale.epmslib.entities.responseMessage
import com.dsofttech.dprefs.enums.DPrefsDefaultValue
import com.dsofttech.dprefs.utils.DPrefs
import com.google.gson.Gson
import com.woleapp.netpos.contactless.model.ConfigurationData
import com.woleapp.netpos.contactless.model.NibssResponse
import com.woleapp.netpos.contactless.model.User

fun useStormTerminalId() = DPrefs.getBoolean(PREF_USE_STORM_TERMINAL_ID, true)
fun TransactionResponse.toNibssResponse(remark: String? = null): NibssResponse =
    Singletons.gson.fromJson(
        Singletons.gson.toJson(this),
        NibssResponse::class.java,
    ).also {
        it.responseMessage = try {
            this.responseMessage
        } catch (e: Exception) {
            ""
        }
        it.additionalAmount = this.additionalAmount_54.toLongOrNull() ?: 0
        it.localDate = this.localDate_13
        it.localTime = this.localTime_12
        it.amount = this.amount.div(100)
        remark?.let { r ->
            it.remark = r
        }
    }

object Singletons {
    fun setUseStormTid(useStormTid: Boolean) =
        DPrefs.putBoolean(PREF_USE_STORM_TERMINAL_ID, useStormTid)

    val gson = Gson()
    fun getCurrentlyLoggedInUser(): User? =
        gson.fromJson(DPrefs.getString(PREF_USER, ""), User::class.java)

    fun getNetPlusPayMid(): String =
        getCurrentlyLoggedInUser()?.netplusPayMid ?: UtilityParam.STRING_MERCHANT_ID

    fun getSavedConfigurationData(): ConfigurationData {
        return ConfigurationData(
            UtilityParam.CONFIGURATION_DATA_IP,
            UtilityParam.CONFIGURATION_DATA_PORT,
            UtilityParam.STRING_POS_VAS_LIVE_KEY_1,
            UtilityParam.STRING_POS_VAS_LIVE_KEY_2,
        )
    }

    fun getKeyHolder(): KeyHolder? =
        gson.fromJson(
            DPrefs.getString(PREF_KEYHOLDER)
                .let { if (it == DPrefsDefaultValue.DEFAULT_VALUE_STRING.value) null else it },
            KeyHolder::class.java,
        )

    fun getConfigData(): ConfigData? =
        gson.fromJson(
            DPrefs.getString(PREF_CONFIG_DATA)
                .let { if (it == DPrefsDefaultValue.DEFAULT_VALUE_STRING.value) null else it },
            ConfigData::class.java,
        )
}

var TransactionResponse.additionalAmount: Long?
    get() = 0
    set(value) {
    }
