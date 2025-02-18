package com.woleapp.netpos.contactless.ui.dialog.dialogListener

import android.app.Activity
import android.app.Dialog
import android.os.Handler
import android.view.Gravity
import android.view.LayoutInflater
import android.view.ViewGroup
import android.view.Window
import android.view.WindowManager
import android.widget.Button
import android.widget.EditText
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.constraintlayout.widget.Group
import com.dsofttech.dprefs.utils.DPrefs
import com.dspread.xpos.Util
import com.dspread.xpos.Util.HexStringToByteArray
import com.dspread.xpos.utils.AESUtil
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.app.NetPosApp
import com.woleapp.netpos.contactless.util.UtilityParam
import java.util.Hashtable
import java.util.Random

class PasswordDialog3(
    context: Activity,
    private val pinListener: Listener
) {

    companion object {
        const val OfflinePin = 11
        const val OnlineEncryptPin = 22
        const val OfflineEncryptPin = 33

        fun shuffleArray(array: IntArray) {
            val random = Random()
            for (i in array.size - 1 downTo 1) {
                val index = random.nextInt(i + 1)
                if (index != i) {
                    array[index] = array[index] xor array[i]
                    array[i] = array[i] xor array[index]
                    array[index] = array[index] xor array[i]
                }
            }
        }

        fun buildCvmPinBlock(value: Hashtable<String, String>, pin: String): String {
            val randomData = value["RandomData"] ?: ""
            val pan = value["PAN"] ?: ""
            val aesKey = value["AESKey"] ?: ""
            val isOnline = value["isOnlinePin"] ?: ""
            val pinTryLimit = value["pinTryLimit"] ?: ""

            // iso-format4 pinblock
            val pinLen = pin.length
            var pinBlock = "4" + Integer.toHexString(pinLen) + pin
            while (pinBlock.length < 16) {
                pinBlock += "A"
            }
            pinBlock += randomData.substring(0, 16)

            var panBlock = ""
            val panLen = pan.length
            panBlock = if (panLen < 12) {
                val padding = "0".repeat(12 - panLen)
                padding + pan + "0000000000000000000"
            } else {
                val m = pan.length - 12
                m.toString() + pan + "0".repeat(31 - panLen)
            }

            val pinBlock1 = AESUtil.encrypt(aesKey, pinBlock)
            val xorResult = Util.xor16(HexStringToByteArray(pinBlock1), HexStringToByteArray(panBlock))
            return AESUtil.encrypt(aesKey, xorResult)
        }

    }


    private var handler: Handler? = null
    private var tpkIndex: Int = 0
    private var title: String? = null
    private var message: String? = null

    private var dialog: Dialog
    private var tvTitle: TextView
    private var tvMessage: TextView
    private var etPin: EditText
    private var btnConfirm: Button
    private var btnClear: ImageView
    private var btnEsc: TextView
    private var btn0: TextView
    private var btn1: TextView
    private var btn2: TextView
    private var btn3: TextView
    private var btn4: TextView
    private var btn5: TextView
    private var btn6: TextView
    private var btn7: TextView
    private var btn8: TextView
    private var btn9: TextView
    private var groupKeyboard: Group


    init {
        val qposService = NetPosApp.cr100Pos
        this.tpkIndex = tpkIndex
        title = "Enter PIN"
        dialog = Dialog(context, android.R.style.Theme_Translucent_NoTitleBar)
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE)

        val window = dialog.window
        val wlp = window!!.attributes

        wlp.gravity = Gravity.CENTER
        wlp.flags = wlp.flags and WindowManager.LayoutParams.FLAG_BLUR_BEHIND.inv()
        window.attributes = wlp
        dialog.window!!.setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
        window.setGravity(Gravity.BOTTOM)

        val inflater = LayoutInflater.from(context)
        val view = inflater.inflate(R.layout.layout_password, null) as ConstraintLayout
        tvTitle = view.findViewById(R.id.tvTitle)
        tvMessage = view.findViewById(R.id.tvMessage)
        etPin = view.findViewById(R.id.etPin)
        btnConfirm = view.findViewById(R.id.btnConfirm)
        btnClear = view.findViewById(R.id.btnClear)
        btnEsc = view.findViewById(R.id.btnEsc)
        btn0 = view.findViewById(R.id.btn0)
        btn1 = view.findViewById(R.id.btn1)
        btn2 = view.findViewById(R.id.btn2)
        btn3 = view.findViewById(R.id.btn3)
        btn4 = view.findViewById(R.id.btn4)
        btn5 = view.findViewById(R.id.btn5)
        btn6 = view.findViewById(R.id.btn6)
        btn7 = view.findViewById(R.id.btn7)
        btn8 = view.findViewById(R.id.btn8)
        btn9 = view.findViewById(R.id.btn9)
        groupKeyboard = view.findViewById(R.id.groupKeyboard)

        val integerList = mutableListOf("1", "2", "3", "4", "5", "6", "7", "8", "9", "0")
        integerList.shuffle()

        btn0.text = integerList[0]
        btn1.text = integerList[1]
        btn2.text = integerList[2]
        btn3.text = integerList[3]
        btn4.text = integerList[4]
        btn5.text = integerList[5]
        btn6.text = integerList[6]
        btn7.text = integerList[7]
        btn8.text = integerList[8]
        btn9.text = integerList[9]

        val builder = StringBuilder()
        val buttons = arrayOf(btn0, btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9)

        buttons.forEach { button ->
            button.setOnClickListener {
                if (etPin.text.toString().length >= 4) {
                    return@setOnClickListener
                }
                builder.append((it as TextView).text.toString())
                etPin.setText(builder.toString())
            }
        }

        btnEsc.setOnClickListener {
            pinListener.onError("Cancelled")
            dialog.cancel()
        }

        btnClear.setOnClickListener {
            if (builder.isNotEmpty()) {
                builder.deleteCharAt(builder.length - 1)
                etPin.setText(builder.toString())
            }
        }

        btnConfirm.setOnClickListener {
            val pinText = etPin.text.toString()
            if (pinText.isEmpty()) {
                Toast.makeText(context, context.getString(R.string.please_enter_pin), Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }
            if (pinText.length < 4) {
                Toast.makeText(context, context.getString(R.string.pin_too_short), Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }

            // Use DPrefs to save Pin key
//            DPrefs.INSTANCE.putString(UtilityParam.PIN_KEY, pinText.trim())
            DPrefs.putString(UtilityParam.PIN_KEY,pinText.trim())


            val pinValue = pinText
            val data = qposService?.encryptData
            if (data != null){
                val pinBlock = buildCvmPinBlock(qposService.encryptData, pinValue)
                qposService?.sendCvmPin(pinBlock, true)
            }

            dialog.cancel()
        }

        tvTitle.text = title
        tvMessage.text = message

        dialog.setContentView(view)
    }

    private fun intToBytes(value: Int): ByteArray {
        return byteArrayOf(
            (value shr 24 and 0xFF).toByte(),
            (value shr 16 and 0xFF).toByte(),
            (value shr 8 and 0xFF).toByte(),
            (value and 0xFF).toByte()
        )
    }

    fun showDialog() {
        dialog.show()
    }

    interface Listener {
        fun onConfirm(pinBlock: String)
        fun onError(message: String)
    }
}

private infix fun String.xorHex(other: String): String {
    val maxLength = maxOf(this.length, other.length)
    val result = StringBuilder()
    for (i in 0 until maxLength) {
        val hex1 = this.getOrNull(this.length - 1 - i)?.toString()?.toIntOrNull(16) ?: 0
        val hex2 = other.getOrNull(other.length - 1 - i)?.toString()?.toIntOrNull(16) ?: 0
        val xorValue = hex1 xor hex2
        result.insert(0, Integer.toHexString(xorValue))
    }
    return result.toString()
}