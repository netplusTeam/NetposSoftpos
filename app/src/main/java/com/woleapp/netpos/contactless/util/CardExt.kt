@file:Suppress("DEPRECATION")

package com.woleapp.netpos.contactless.util

import android.app.Activity
import android.app.ProgressDialog
import android.content.Context
import android.util.Log
import android.view.LayoutInflater
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.Observer
import com.danbamitale.epmslib.entities.CardData
import com.danbamitale.epmslib.utils.IsoAccountType
import com.woleapp.netpos.contactless.databinding.DialogSelectCardschemeBinding
import com.woleapp.netpos.contactless.nibss.NetPosTerminalConfig
import com.woleapp.netpos.contactless.taponphone.visa.NfcPaymentType
import com.woleapp.netpos.contactless.ui.activities.DialogDismissListener
import timber.log.Timber

data class ICCCardHelper(
    var customerName: String? = null,
    var cardScheme: String? = null,
    var accountType: IsoAccountType? = null,
    var cardData: CardData? = null,
    var error: Throwable? = null,
)

fun showCardDialog(
    listener: DialogDismissListener,
    context: Activity,
    lifecycleOwner: LifecycleOwner,
    selectCardDialog: AlertDialog,
    binding: DialogSelectCardschemeBinding,
): LiveData<Event<NfcPaymentType?>> {
    var configurationFinished = false
    val liveData: MutableLiveData<Event<NfcPaymentType?>> = MutableLiveData()
    if (NetPosTerminalConfig.liveData.hasActiveObservers()) {
        NetPosTerminalConfig.liveData.removeObservers(lifecycleOwner)
    }
    val progressDialog = ProgressDialog(context)
    progressDialog.setMessage("connecting, please wait...")
    var observer: Observer<Event<Int>>? = null
    observer =
        Observer<Event<Int>> {
            it.getContentIfNotHandled()?.let { int ->
                Timber.e("picked up: $int")
                when (int) {
                    0 -> progressDialog.show()
                    1 -> {
                        configurationFinished = true
                        if (progressDialog.isShowing) {
                            progressDialog.dismiss()
                        }
//                        showSelectCardDialog(context, liveData)
                        newShowSelectCardDialog(listener, context, liveData, selectCardDialog, binding)
//                        getCardSchemeDialog(cardAid, context, liveData)
                        // getFakeCardLiveData(liveData)
                        NetPosTerminalConfig.liveData.removeObserver(observer!!)
                    }

                    -1 -> {
                        configurationFinished = true
                        if (progressDialog.isShowing) {
                            progressDialog.dismiss()
                        }
                        if (NetPosTerminalConfig.getTerminalId().isEmpty()) {
                            Toast.makeText(context, "No TID found on account", Toast.LENGTH_SHORT)
                                .show()
                        } else {
                            Toast.makeText(context, "Connection Failed", Toast.LENGTH_SHORT).show()
                        }
                    }

                    else -> {
                    }
                }
            }
        }
    NetPosTerminalConfig.liveData.observe(lifecycleOwner, observer)
    when {
        NetPosTerminalConfig.configurationStatus != 1 && NetPosTerminalConfig.isConfigurationInProcess.not() ->
            NetPosTerminalConfig.init(
                context.applicationContext,
            )

        NetPosTerminalConfig.isConfigurationInProcess -> if (configurationFinished.not()) progressDialog.show()
        NetPosTerminalConfig.configurationStatus == 1 ->
//            showSelectCardDialog(context, liveData)
            newShowSelectCardDialog(listener, context, liveData, selectCardDialog, binding)
    }
    return liveData
}

fun getCardSchemeDialog(
    aid: String,
    context: Activity,
    liveData: MutableLiveData<Event<NfcPaymentType?>>,
) {
    val binding = DialogSelectCardschemeBinding.inflate(LayoutInflater.from(context))
    val selectCardDialog =
        AlertDialog.Builder(context).apply {
            setView(binding.root)
        }.create()

    selectCardDialog.show()
    var nfcPaymentType: NfcPaymentType? = null

    when (aid) {
        "A0000000041010" -> {
            nfcPaymentType = NfcPaymentType.MASTERCARD
            selectCardDialog.cancel()
        }
        "A0000003710001" -> {
            nfcPaymentType = NfcPaymentType.VERVE
            selectCardDialog.cancel()
        }
        "A0000000031010" -> {
            nfcPaymentType = NfcPaymentType.VISA
            selectCardDialog.cancel()
        }
        else -> Event(null)
    }

    liveData.postValue(Event(nfcPaymentType))
}

val _aidLiveData = MutableLiveData<String>()
val aidLiveData: LiveData<String>
    get() = _aidLiveData

fun returnAid(aid: String): String {
    _aidLiveData.postValue(aid) // Update the LiveData with the new aid value
    return aid
}

fun newShowSelectCardDialog(
    listener: DialogDismissListener,
    lifecycleOwner: Context, // nExplicitly pass a LifecycleOwner
    liveData: MutableLiveData<Event<NfcPaymentType?>>,
    selectCardDialog: AlertDialog,
    binding: DialogSelectCardschemeBinding,
) {
    selectCardDialog.show()

    // Define the observer as a nullable variable
    var observer: Observer<String>? = null

    // Initialize the observer
    observer =
        Observer<String> { aid ->
            Log.d("CARDTYPE", aid)
            when (aid) {
                "a0000000041010" -> {
                    selectCardDialog.dismiss()
                    liveData.postValue(Event(NfcPaymentType.MASTERCARD))
                    _aidLiveData.postValue("") // Reset AID
                    observer?.let { _aidLiveData.removeObserver(it) } // Remove observer
                }
                "a0000003710001" -> {
                    selectCardDialog.dismiss()
                    liveData.postValue(Event(NfcPaymentType.VERVE))
                    _aidLiveData.postValue("")
                    observer?.let { _aidLiveData.removeObserver(it) }
                }
                "a0000000031010" -> {
                    selectCardDialog.dismiss()
                    liveData.postValue(Event(NfcPaymentType.VISA))
                    _aidLiveData.postValue("")
                    observer?.let { _aidLiveData.removeObserver(it) }
                }
                "" -> {
                    // Do nothing
                }
                else -> {
                }
            }
        }

    // Observe LiveData
    observer?.let {
        _aidLiveData.observe(lifecycleOwner as LifecycleOwner, it)
    }

    // Handle dialog dismiss
    selectCardDialog.setOnDismissListener {
        listener.onDialogDismissed()
        _aidLiveData.postValue("")
        observer?.let { _aidLiveData.removeObservers(lifecycleOwner as LifecycleOwner) } // Remove observer on dismiss
    }
}

// fun showSelectCardDialog(
//    context: Activity,
//    liveData: MutableLiveData<Event<NfcPaymentType?>>,
// ) {
//    val binding = DialogSelectCardschemeBinding.inflate(LayoutInflater.from(context))
//    val selectCardDialog =
//        AlertDialog.Builder(context).apply {
//            setView(binding.root)
//        }.create()
//    var nfcPaymentType: NfcPaymentType? = null
//    binding.mastercardIcon.setOnClickListener {
//        binding.mastercardSelector.isVisible = true
//        nfcPaymentType = NfcPaymentType.MASTERCARD
//        binding.visaSelector.isVisible = false
//        binding.verveCardSelector.isVisible = false
//        binding.proceedButton.isEnabled = true
//    }
//
//    binding.visaIcon.setOnClickListener {
//        nfcPaymentType = NfcPaymentType.VISA
//        binding.mastercardSelector.isVisible = false
//        binding.visaSelector.isVisible = true
//        binding.proceedButton.isEnabled = true
//    }
//
//    binding.verveCardIcon.setOnClickListener {
//        binding.verveCardSelector.isVisible = true
//        nfcPaymentType = NfcPaymentType.VERVE
//        binding.visaSelector.isVisible = false
//        binding.mastercardSelector.isVisible = false
//        binding.proceedButton.isEnabled = true
//    }
//
//    binding.proceedButton.setOnClickListener {
//        selectCardDialog.cancel()
//        liveData.postValue(Event(nfcPaymentType))
//    }
//    selectCardDialog.show()
//    // liveData.postValue(Event(NfcPaymentType.VISA))
// }
