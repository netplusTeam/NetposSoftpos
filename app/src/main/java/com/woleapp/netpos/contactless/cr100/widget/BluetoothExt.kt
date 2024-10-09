package com.woleapp.netpos.contactless.cr100.widget

import android.app.AlertDialog
import android.view.View
import android.widget.ImageView
import androidx.fragment.app.FragmentActivity
import androidx.lifecycle.LiveData
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.woleapp.netpos.contactless.R

var bluetoothDialog: AlertDialog? = null

fun FragmentActivity.showBluetoothDialog(
    bluetoothAdapter: BluetoothAdapter,
    showGifOnly: Boolean = false,
    onBluetoothItemSelected: (Map<String, *>) -> Unit
) {

    // Create AlertDialog builder
    val dialogBuilder = AlertDialog.Builder(this)
    val inflater = this.layoutInflater
    val dialogView = inflater.inflate(R.layout.dialog_select_bluetooth_device, null)

    dialogBuilder.setView(dialogView)


    val recyclerView = dialogView.findViewById<RecyclerView>(R.id.lv_indicator_BTPOS)
    val gifView = dialogView.findViewById<pl.droidsonroids.gif.GifImageView>(R.id.giv_checkcard)
    val bluetoothImageView = dialogView.findViewById<ImageView>(R.id.iv_blue)
    recyclerView.layoutManager = LinearLayoutManager(this)
    recyclerView.adapter = bluetoothAdapter

    if (showGifOnly) {
        gifView.visibility = View.VISIBLE
        recyclerView.visibility = View.GONE
        bluetoothImageView.visibility = View.GONE
    } else {
        gifView.visibility = View.GONE
        recyclerView.visibility = View.VISIBLE
        bluetoothImageView.visibility = View.VISIBLE
    }


    bluetoothDialog = dialogBuilder.create()
    bluetoothDialog?.show()

    // Observe the LiveData for selected Bluetooth items
    val selectedBluetoothItem: LiveData<MutableMap<String, *>>? = bluetoothAdapter.selectedBluetoothItem
    selectedBluetoothItem?.observe(this) { selectedItem ->
        selectedItem?.let {
            onBluetoothItemSelected(it)
//            bluetoothDialog.dismiss()
        }
    }
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
