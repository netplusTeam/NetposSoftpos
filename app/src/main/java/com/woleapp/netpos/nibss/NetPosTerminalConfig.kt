package com.woleapp.netpos.nibss

import android.content.Context
import com.danbamitale.epmslib.entities.*
import com.danbamitale.epmslib.processors.TerminalConfigurator
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import timber.log.Timber


const val NIBSS_TEST_IP = "196.6.103.72"
const val NIBSS_PROD_IP = "196.6.103.73"
const val TERMINAL_SERIAL = "0123456789ABC"

class NetPosTerminalConfig {

    companion object {
        private val disposables = CompositeDisposable()
        private var isConfigurationInProcess = false
        //fun getTerminalId() = if (true) "20390059" else "20390007"
        fun getTerminalId() = "2057H63U"
        private var context: Context? = null

        fun getConnectionData() =
            ConnectionData(ipAddress = NIBSS_PROD_IP, ipPort = DEFAULT_NIBSS_PORT, isSSL = true)

        private var keyHolder: KeyHolder? = null

        private var configData: ConfigData? = null

        fun getConfigData(): ConfigData? {
            if (configData == null)
                init(context!!)
            return configData
        }

        fun getKeyHolder(): KeyHolder? {
            if (keyHolder == null)
                init(context!!)
            return keyHolder
        }

        fun init(context: Context) {
            Timber.e("IP: $DEFAULT_NIBSS_IP PORT: $DEFAULT_NIBSS_PORT")
            if (isConfigurationInProcess)
                return
            this.context = context
            val configurator = TerminalConfigurator(getConnectionData())
            val terminalID = getTerminalId()

            val disposable = configurator.downloadNibssKeys(context, terminalID)
                .flatMap {
                    Timber.e("key holder set")
                    keyHolder = it
                    KeyHolder.setHostKeyComponents(
                        Keys.liveKey1,
                        Keys.liveKey2
                    )// default to test  //Set your base keys here
                    configurator.downloadTerminalParameters(
                        context,
                        terminalID,
                        it.clearSessionKey,
                        TERMINAL_SERIAL
                    )
                }.subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .doOnSubscribe {
                    isConfigurationInProcess = true
                }
                .doFinally { isConfigurationInProcess = false }
                .subscribe { configData, error ->
                    error?.let {
                        Timber.e(it)
                    }
                    configData?.let {
                        Timber.e("Config data set")
                        this.configData = it
                    }
                }
            disposables.add(disposable)
        }

        var sampleCardData = CardData(
            track2Data = "4761739001010135D191220119559258",
            nibssIccSubset = "9F26088F8BFBE76089D66F9F2701809F10201F220100A48802000000000000000000000000000000000000000000000000009F3704389456479F360202A1950500800088009A031902189C01009F02060000000001005F2A020566820238009F1A0205669F34030103029F3303E0F9C89F3501519F1E0830303030303030318407A00000000310109F090200009F03060000000000005F3401018E10000000000000000001031E0302031F00",
            panSequenceNumber = "001", posEntryMode = "051"
        ).apply {
            pinBlock = null
        }//TODO get card information from terminal

        private fun disposeDisposables() {
            disposables.clear()
        }
    }
}