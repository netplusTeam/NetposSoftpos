package com.woleapp.netpos.contactless.util

import android.content.Context

object PrefsHelper {
    fun hasShownFirstLocationPrompt(context: Context): Boolean {
        val prefs = context.getSharedPreferences("app_prefs", Context.MODE_PRIVATE)
        return prefs.getBoolean("isFirstTransactionPromptShown", false)
    }

    fun setShownFirstLocationPrompt(context: Context) {
        val prefs = context.getSharedPreferences("app_prefs", Context.MODE_PRIVATE)
        prefs.edit().putBoolean("isFirstTransactionPromptShown", true).apply()
    }
}
