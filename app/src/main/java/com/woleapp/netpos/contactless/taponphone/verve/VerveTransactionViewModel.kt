package com.woleapp.netpos.contactless.taponphone.verve

import android.content.Context
import android.content.res.Resources
import android.graphics.Color
import android.graphics.drawable.Drawable
import android.util.Log
import androidx.core.content.res.ResourcesCompat
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.alcineo.administrative.Kernel
import com.alcineo.softpos.payment.api.KernelsAdministrationAPI
import com.alcineo.softpos.payment.api.TransactionAPI
import com.alcineo.softpos.payment.api.interfaces.NFCListener
import com.alcineo.softpos.payment.api.interfaces.TransactionEventListener
import com.alcineo.softpos.payment.error.TransactionException
import com.alcineo.softpos.payment.model.beep.BeepStatus
import com.alcineo.softpos.payment.model.transaction.TransactionParameters
import com.alcineo.softpos.payment.model.transaction.TransactionResult
import com.alcineo.utils.common.StringUtils
import com.alcineo.utils.tlv.TlvItem
import com.woleapp.netpos.contactless.taponphone.verve.model.TransactionFullDataDto
import com.woleapp.netpos.contactless.taponphone.verve.model.TransactionLed
import com.woleapp.netpos.contactless.taponphone.verve.model.TransactionLed.Companion.MODE1_ON
import com.woleapp.netpos.contactless.taponphone.verve.model.TransactionLed.Companion.MODE2_ON
import com.woleapp.netpos.contactless.taponphone.verve.util.SoundGenerator
import java.io.IOException
import java.math.BigDecimal
import java.util.Arrays
import java.util.Locale

class VerveTransactionViewModel(
    private val applicationContext: Context,
    private val nfcListener: NFCListener,
    private val transactionParameters: TransactionParameters
) :
    ViewModel(), TransactionEventListener {
    val onTransactionFinishedEvent: MutableLiveData<TransactionFullDataDto> =
        MutableLiveData<TransactionFullDataDto>()
    val onPinRequiredEvent = MutableLiveData<BigDecimal>()
    val transactionMessage = MutableLiveData<String>()
    val contactlessLogo = MutableLiveData(false)
    val transactionStartedEvent = MutableLiveData(false)
    val transactionKernel = MutableLiveData(Kernel.K_UNKNOWN)
    val paymentSchemeLogo1 = MutableLiveData<Drawable>()
    val paymentSchemeLogo2 = MutableLiveData<Drawable>()
    val paymentSchemeLogo3 = MutableLiveData<Drawable>()
    private val transactionLeds: List<TransactionLed> = Arrays.asList<TransactionLed>(
        TransactionLed(),
        TransactionLed(),
        TransactionLed(),
        TransactionLed()
    )
    val transactionLedList: MutableLiveData<List<TransactionLed>> =
        MutableLiveData<List<TransactionLed>>(transactionLeds)

    /**
     * Send a start transaction to the softpos library.
     *
     *  transactionParameters object is filled with value required by softpos library for a transaction.
     * Transaction object is created with required values and transactionParameters is started with static method from Softpos
     *
     * @param viewLifecycleOwner the activity/fragment launching transaction
     *
     */
    fun startTransaction(viewLifecycleOwner: LifecycleOwner) {
        try {
            TransactionAPI.startTransaction(
                transactionParameters,
                nfcListener, this@VerveTransactionViewModel, viewLifecycleOwner
            )
        } catch (e: TransactionException) {
            Log.e(TAG, "startTransaction: ", e)
        }
        kernelListHandler()
    }

    /**
     * Cancel current transactionParameters
     */
    fun cancelTransaction() {
        // stopTransactionAndConfirm return a boolean that can be used for confirm cancellation
        Log.i(TAG, "cancelTransaction")
        TransactionAPI.cancelTransaction()
    }

    /**
     * When text data is received from Softpos we handle it here
     *
     * @param s the string to display
     */
    override fun onDisplayText(s: String) {
        var s = s
        Log.i(TAG, "onDisplayText")
        if (s == "** CLEAR SCREEN **") { // Workaround for a clear screen MCL
            s = ""
        }
        transactionMessage.postValue(s)
    }

    /**
     * When TransactionLed need to be updated we handle it here
     *
     * @param ledsStatus       true if active, false if dark
     * @param mode             the led mode
     * @param turnOn           true if we need to activate whole led process, true when transactionParameters is active
     * @param blinkOnDuration  the duration of led blinking
     * @param blinkOffDuration the duration of dark led
     */
    override fun onDisplayLed(
        ledsStatus: BooleanArray,
        mode: Int,
        turnOn: Boolean,
        blinkOnDuration: Int,
        blinkOffDuration: Int
    ) {
        if (blinkOffDuration != 0) {
            return
        }
        transactionStartedEvent.postValue(true) // workaround, when we receive led event, transaction is started and ready to perform
        for (ledId in transactionLeds.indices) {
            // If status is FALSE the LED is not concerned by the command
            if (!ledsStatus[ledId]) {
                continue
            }
            if (turnOn) {
                transactionLeds[ledId].backgroundColor =
                    if (mode == 1) MODE1_ON[ledId] else MODE2_ON[ledId]
            } else {
                transactionLeds[ledId].backgroundColor = Color.BLACK
            }
            transactionLedList.postValue(transactionLeds)
        }
    }

    /**
     * When pin is asked by the Softpos
     */
    override fun onDisplayPin() {
        Log.i(TAG, "onDisplayPin")
        try {
            TransactionAPI.sendPinCancel()
        } catch (e: IOException) {
            e.printStackTrace()
        }
    }

    /**
     * Method used when contactlesslogo need to be displayed
     *
     * @param isLogoVisible true or false
     */
    override fun onDisplayLogo(isLogoVisible: Boolean) {
        contactlessLogo.postValue(isLogoVisible)
    }

    /**
     * When a beep/sound need to be fired
     *
     * @param beepStatus the status of the beep
     * @param frequency  the frequency of the beep
     * @param duration   the duration of the beep
     * @param interval   the interval of the beep
     * @param count      numbers of beep
     */
    override fun onBeep(
        beepStatus: BeepStatus,
        frequency: Int,
        duration: Int,
        interval: Int,
        count: Int
    ) {
        Log.i(TAG, "onBeep")
        SoundGenerator.playSound(frequency, duration, interval, count)
    }

    /**
     * When transactionParameters is finished
     *
     * @param transactionResult data from transactionParameters
     */
    override fun onTransactionFinish(transactionResult: TransactionResult) {
        Log.i(TAG, "onTransactionFinish")
        onTransactionFinishedEvent.postValue(
            TransactionFullDataDto(
                transactionParameters,
                transactionResult
            )
        )
    }

    override fun onOnlineRequest(bytes: ByteArray): ByteArray {
        Log.i(TAG, "onOnlineRequest")
        Log.i(
            TAG,
            StringUtils.convertBytesToHex(bytes)
        )
        return byteArrayOf(0x8A.toByte(), 0x02.toByte(), 0x30.toByte(), 0x30.toByte())
    }

    override fun onDekRequest(bytes: ByteArray) {
        Log.i(TAG, "onDekRequest")
    }

    override fun onNotifyKernelId(kernel: Kernel) {
        Log.i("kernel selected", kernel.toString())
        transactionKernel.postValue(kernel)
    }

    /**
     * After the kernel is selected we try to display the according logo
     *
     * @param kernelName Name of the kernel
     */
    fun displayPaymentSchemeLogo(kernelName: String, loops: Int) {
        var kernelName = kernelName
        if (!kernelName.isEmpty()) {
            try {
                //Here we get the list of active kernels and create a list of the logo spaces
                val myKernels = KernelsAdministrationAPI.getKernelInfoList()
                val logoSets: MutableList<MutableLiveData<Drawable>> = ArrayList()
                logoSets.add(paymentSchemeLogo1)
                logoSets.add(paymentSchemeLogo2)
                logoSets.add(paymentSchemeLogo3)
                Log.i("KernelInfo", myKernels.toString())
                //the kernel name is formatted so that we can get the drawable later
                kernelName = kernelName.replace("\\s+".toRegex(), "")
//                kernelName = "ExpressPay";
                val resourceId = applicationContext.resources.getIdentifier(
                    kernelName.lowercase(Locale.getDefault()),
                    "drawable",
                    applicationContext.packageName
                )
                Log.i(TAG, "Numbers of loops : $loops")
                //Handler for if the required resource hasn't been found
                if (resourceIdNotFoundHandler(resourceId)) {
                    val drawable = ResourcesCompat.getDrawable(
                        applicationContext.resources, resourceId, null
                    )
                    Log.i(TAG, "Drawable for kernel name was found")
                    //here we get the index of the list of logo spaces using the numebr of loops and we post the set drawable
                    logoSets[loops].postValue(drawable)
                } else {
                    Log.w(TAG, "No drawable for kernel name was found")
                }
            } catch (e: Resources.NotFoundException) {
                e.printStackTrace()
            } catch (e: IndexOutOfBoundsException) {
                e.printStackTrace()
            }
        }
    }

    //Method for the Handler
    fun resourceIdNotFoundHandler(ResourceId: Int): Boolean {
        return ResourceId != 0x00000000
    }

    //Method for getting and handling the list of kernels
    private fun kernelListHandler() {
        var kernelListIndex = 0
        val myKernels = KernelsAdministrationAPI.getKernelInfoList()
        //here we try and catch if the list is empty
        try {
            while (kernelListIndex <= myKernels.size - 1) {
                println("Index of the kernel list : $kernelListIndex")
                displayPaymentSchemeLogo(
                    myKernels[kernelListIndex].kernel.getName(),
                    kernelListIndex
                )
                kernelListIndex++
            }
        } catch (e: NullPointerException) {
            e.cause
            e.printStackTrace()
        }
    }

    override fun onUpdateTagsBeforeKernelActivation(
        AID: ByteArray,
        kernelSelected: Kernel,
        tags: List<TlvItem>
    ): List<TlvItem> {
        Log.i("kernel selected", kernelSelected.toString())
        Log.i(
            "AID selected",
            StringUtils.convertBytesToHex(AID)
        )
        return ArrayList()
    }

    companion object {
        val TAG = VerveTransactionViewModel::class.java.simpleName
    }
}