package com.woleapp.netpos.contactless.cr100.widget

import android.app.AlertDialog
import android.view.View
import android.widget.LinearLayout
import androidx.fragment.app.FragmentActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.app.NetPosApp.Companion.cr100Pos

var bluetoothDialog: AlertDialog? = null

fun FragmentActivity.showBluetoothDialog(
    bluetoothAdapter: BluetoothAdapter,
    showGifOnly: Boolean = false
) {

    // Create AlertDialog builder
    val dialogBuilder = AlertDialog.Builder(this)
    val inflater = this.layoutInflater
    val dialogView = inflater.inflate(R.layout.dialog_select_bluetooth_device, null)

    dialogBuilder.setView(dialogView)


    val recyclerView = dialogView.findViewById<RecyclerView>(R.id.lv_indicator_BTPOS)
    val gifViewHolder = dialogView.findViewById<LinearLayout>(R.id.ll_gif)

    recyclerView.layoutManager = LinearLayoutManager(this)
    recyclerView.adapter = bluetoothAdapter

    if (showGifOnly) {
        gifViewHolder.visibility = View.VISIBLE
        recyclerView.visibility = View.GONE
    } else {
        gifViewHolder.visibility = View.GONE
        recyclerView.visibility = View.VISIBLE
    }


    bluetoothDialog = dialogBuilder.create()
    bluetoothDialog?.setOnCancelListener {
        cr100Pos?.cancelTrade()
    }
    bluetoothDialog?.show()
}

fun hideBluetoothDialog() {
    bluetoothDialog?.dismiss()
}


enum class POS_TYPE {
    BLUETOOTH,
    AUDIO,
    UART,
    USB,
    OTG,
    BLUETOOTH_BLE
}