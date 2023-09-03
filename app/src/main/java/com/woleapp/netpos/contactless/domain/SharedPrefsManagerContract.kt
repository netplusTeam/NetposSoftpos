package com.woleapp.netpos.contactless.domain

interface SharedPrefsManagerContract {
    fun saveString(key: String, data: String)
    fun saveInt(key: String, data: Int)
    fun saveBoolean(key: String, data: Boolean)
    fun saveLong(key: String, data: Long)
    fun saveDouble(key: String, data: Double)
    fun retrieveString(key: String, default: String?): String
    fun retrieveInt(key: String, default: Int?): Int
    fun retrieveBoolean(key: String, default: Boolean?): Boolean
    fun retrieveLong(key: String, default: Long?): Long
    fun retrieveDouble(key: String, default: Double?): Double
}
