package com.woleapp.netpos.contactless.taponphone.verve

import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import com.alcineo.softpos.payment.api.interfaces.NFCListener
import com.alcineo.softpos.payment.model.transaction.TransactionParameters

class TransactionViewModelFactory(
    private val context: Context,
    private val nfcListener: NFCListener,
    private val transactionParameters: TransactionParameters
) :
    ViewModelProvider.Factory {
    override fun <T : ViewModel> create(modelClass: Class<T>): T {
        return VerveTransactionViewModel(context, nfcListener, transactionParameters) as T
    }
}