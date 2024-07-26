package com.woleapp.netpos.contactless.taponphone.mastercard.implementations.nfc;

import android.app.Activity;
import android.nfc.TagLostException;
import android.nfc.tech.IsoDep;
import android.util.Log;

import androidx.annotation.Nullable;

import com.alcineo.softpos.payment.api.interfaces.NFCListener;
import com.mastercard.terminalsdk.exception.L1RSPException;
import com.mastercard.terminalsdk.listeners.CardCommunicationProvider;
import com.mastercard.terminalsdk.objects.ErrorIndication;
import com.woleapp.netpos.contactless.taponphone.verve.VerveNFCListenerImpl;

import java.io.IOException;

public class NfcProvider implements CardCommunicationProvider {

    private final String TAG = "NfcProvider";

    @Nullable
    public NFCManager mNFCManager;
    private IsoDep mIsoDep;
    private TagEventListener mTagEventListener;
    private boolean isCardTapped;

    private boolean nFCEnabled;

    /**
     * Command execution time in nanoseconds
     */
    private long mCommandExecutionTime = 0;

    private final NFCListener verveNfcListener = new VerveNFCListenerImpl();

    public NFCListener getVerveNfcListener() {
        return verveNfcListener;
    }

    public NfcProvider(Activity currentContext) {
        mNFCManager = new NFCManager(currentContext);
        nFCEnabled = mNFCManager.isNFCEnabled();
        disconnectReader();
    }

    @Override
    public byte[] sendReceive(byte[] bytes) throws L1RSPException {
        byte[] response;
        try {
            if (mIsoDep == null || !mIsoDep.isConnected()) {
                throw new L1RSPException("IsoDep not connected", ErrorIndication.L1_Error_Code.TRANSMISSION_ERROR);
            }

            long startTime = System.nanoTime();
            response = mIsoDep.transceive(bytes);
            long endTime = System.nanoTime();
            mCommandExecutionTime = endTime - startTime;

        } catch (TagLostException exception) {
            isCardTapped = false;
            throw new L1RSPException("Tag Lost", ErrorIndication.L1_Error_Code.TIMEOUT_ERROR);
        } catch (IOException e) {
            isCardTapped = false;
            throw new L1RSPException(e.getMessage(), ErrorIndication.L1_Error_Code.TRANSMISSION_ERROR);
        }

        if (response.length < 2) {
            throw new L1RSPException("Response Length less than 2 bytes", ErrorIndication.L1_Error_Code.PROTOCOL_ERROR);
        }

        return response;
    }

    @Override
    public ConnectionObject waitForCard() throws L1RSPException {
        Log.i("is card Tapped ", "" + isCardTapped);
        if (isCardTapped) {
            return new ConnectionObjectImpl();
        }

        synchronized (this) {
            while (!isCardTapped) {
                try {
                    mIsoDep = mTagEventListener.getIsoDep();
                } catch (Exception e) {
                    Log.e(TAG, "An Exception was encountered: ", e.getCause());
                }
                if (mIsoDep != null) {
                    Log.i(TAG, "connectCard: Card Tapped");
                    try {
                        mIsoDep.connect();
                        mIsoDep.setTimeout(10000);
                        isCardTapped = true;
                        return new ConnectionObjectImpl();
                    } catch (IOException | IllegalStateException e) {
                        Log.e(TAG, "Connection failed, attempting to revalidate the tag: ", e);
                        mTagEventListener.invalidateTag();
                    }
                } else {
                    try {
                        wait(100);
                    } catch (InterruptedException ie) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        throw new L1RSPException("Some Connection issue", ErrorIndication.L1_Error_Code.PROTOCOL_ERROR);
    }


    @Override
    public boolean removeCard() {
        if (mIsoDep != null && mIsoDep.isConnected()) {
            try {
                mIsoDep.close();
                isCardTapped = false;
                mIsoDep = null;
                return true;
            } catch (IOException e) {
                return false;
            }
        } else {
            Log.w(TAG, "removeCard: IsoDep is null or disconnected");
            return true;
        }
    }

    @Override
    public boolean connectReader() throws L1RSPException {
        if (mIsoDep == null) {
            mTagEventListener = new TagEventListener();
            assert mNFCManager != null;
            mNFCManager.enableNFCReaderMode(new ReaderCallbackImpl(mTagEventListener, (VerveNFCListenerImpl) verveNfcListener));
            mIsoDep = null;
            isCardTapped = false;
        }
        return true;
    }

    @Override
    public boolean disconnectReader() {
        try {
            if (mIsoDep != null) {
                mIsoDep.close();
            }
        } catch (IOException e) {
            return false;
        } catch (NullPointerException npe) {
            return true;
        }

        mNFCManager.disableNFCReaderMode();

        mIsoDep = null;
        isCardTapped = false;
        return true;
    }

    public void disableReaderMode() {
        mNFCManager.disableNFCReaderMode();
    }

    @Override
    public boolean isReaderConnected() {
        return true;
    }

    @Override
    public boolean isCardPresent() {
        return mIsoDep != null && mIsoDep.isConnected();
    }

    @Override
    public String getDescription() {
        return "Built-in NFC Controller";
    }

    @Override
    public long getPreviousCommandExecutionTime() {
        return mCommandExecutionTime / 1000;
    }

    public boolean isNfcEnabled() {
        return mNFCManager.isNFCEnabled();
    }

    private class ConnectionObjectImpl implements ConnectionObject {
        @Override
        public InterfaceType getInterfaceType() {
            return InterfaceType.CONTACTLESS;
        }

        @Override
        public byte[] getBytes() {
            return new byte[0];
        }
    }
}
