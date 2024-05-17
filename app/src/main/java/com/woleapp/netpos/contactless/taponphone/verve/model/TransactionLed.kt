package com.woleapp.netpos.contactless.taponphone.verve.model

import android.graphics.Color

class TransactionLed {
    var backgroundColor = 0

    companion object {
        val MODE1_ON = intArrayOf(Color.GREEN, Color.GREEN, Color.GREEN, Color.GREEN)
        val MODE2_ON = intArrayOf(Color.BLUE, Color.YELLOW, Color.GREEN, Color.RED)
    }
}