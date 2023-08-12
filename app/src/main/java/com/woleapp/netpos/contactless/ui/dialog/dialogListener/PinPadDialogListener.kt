package com.woleapp.netpos.contactless.ui.dialog.dialogListener

interface PinPadDialogListener {
    fun onError(errorMessage: String)
    fun onConfirm(data: String)
}
