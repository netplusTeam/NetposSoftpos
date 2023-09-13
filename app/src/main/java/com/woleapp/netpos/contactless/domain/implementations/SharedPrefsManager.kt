package com.woleapp.netpos.contactless.domain.implementations

import com.dsofttech.dprefs.utils.DPrefs
import com.google.gson.Gson
import com.woleapp.netpos.contactless.domain.SharedPrefsManagerContract
import com.woleapp.netpos.contactless.model.EncryptionCredentials
import com.woleapp.netpos.contactless.util.AppConstants.STRING_TAG_APP_ENCRYPTION_CREDENTIALS
import javax.inject.Inject

class SharedPrefsManager @Inject constructor() : SharedPrefsManagerContract {
    override fun saveString(key: String, data: String) {
        DPrefs.putString(key, data)
    }

    override fun saveInt(key: String, data: Int) {
        DPrefs.putInt(key, data)
    }

    override fun saveBoolean(key: String, data: Boolean) {
        DPrefs.putBoolean(key, data)
    }

    override fun saveLong(key: String, data: Long) {
        DPrefs.putLong(key, data)
    }

    override fun saveDouble(key: String, data: Double) {
        DPrefs.putDouble(key, data)
    }

    override fun retrieveString(key: String, default: String?): String =
        default?.let { DPrefs.getString(key, it) } ?: DPrefs.getString(key)

    override fun retrieveInt(key: String, default: Int?): Int =
        default?.let { DPrefs.getInt(key, it) } ?: DPrefs.getInt(key)

    override fun retrieveBoolean(key: String, default: Boolean?): Boolean =
        default?.let { DPrefs.getBoolean(key, it) } ?: DPrefs.getBoolean(key)

    override fun retrieveLong(key: String, default: Long?): Long =
        default?.let { DPrefs.getLong(key, it) } ?: DPrefs.getLong(key)

    override fun retrieveDouble(key: String, default: Double?): Double =
        default?.let { DPrefs.getDouble(key, it) } ?: DPrefs.getDouble(key)
}
