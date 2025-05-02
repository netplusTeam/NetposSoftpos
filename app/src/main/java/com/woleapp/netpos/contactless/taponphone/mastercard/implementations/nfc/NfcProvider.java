package com.woleapp.netpos.contactless.taponphone.mastercard.implementations.nfc;

import android.app.Activity;
import android.nfc.Tag;
import android.nfc.TagLostException;
import android.nfc.tech.IsoDep;
import android.util.Log;

import androidx.annotation.Nullable;
import com.mastercard.terminalsdk.exception.L1RSPException;
import com.mastercard.terminalsdk.listeners.CardCommunicationProvider;
import com.mastercard.terminalsdk.objects.ErrorIndication;

import java.io.IOException;
import java.lang.reflect.Method;

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
                    // Attempt to get the IsoDep instance
                    mIsoDep = mTagEventListener.getIsoDep();
                } catch (Exception e) {
                    Log.e(TAG, "An Exception was encountered: ", e.getCause());
                }

                if (mIsoDep != null) {
                    Log.i(TAG, "connectCard: Card Tapped");
                    try {
                        connectToIsoDep();
                        isCardTapped = true;
                        return new ConnectionObjectImpl();
                    } catch (IOException | IllegalStateException e) {
                        Log.e(TAG, "Connection failed, attempting to revalidate the tag: ", e);
                        try {
                            // Attempt to invalidate and close the tag
                            if (mIsoDep.isConnected()) {
                                mIsoDep.close();
                            }
                        } catch (IOException ioException) {
                            Log.e(TAG, "Failed to close IsoDep: ", ioException);
                        }
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


    private void connectToIsoDep() throws IOException {
        if (mIsoDep != null) {
            try {
                if (mIsoDep.isConnected()) {
                    mIsoDep.close();
                    Log.i(TAG, "connectToIsoDep: Previous IsoDep connection closed");
                }
            } catch (IOException e) {
                Log.e(TAG, "connectToIsoDep: Failed to close previous IsoDep connection", e);
                throw new IOException("Failed to close previous IsoDep connection", e);
            }
        }

        assert mIsoDep != null;
        try {
            // Before connecting, ensure other technologies are disconnected
            disconnectOtherTagTechnologies(mIsoDep.getTag());
            mIsoDep.connect();
            mIsoDep.setTimeout(10000);
            Log.i(TAG, "connectToIsoDep: IsoDep connected successfully");
        } catch (IOException e) {
            Log.e(TAG, "connectToIsoDep: Failed to connect IsoDep", e);
            throw new IOException("Failed to connect IsoDep", e);
        }
    }


    @Override
    public boolean removeCard() {
        if (mIsoDep != null) {
            try {
                if (mIsoDep.isConnected()) {
                    mIsoDep.close();
                }
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
            mNFCManager.enableNFCReaderMode(new ReaderCallbackImpl(mTagEventListener));
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

    private void disconnectOtherTagTechnologies(Tag tag) {
        String[] techList = tag.getTechList();
        for (String tech : techList) {
            try {
                if (tech.equals(IsoDep.class.getName())) continue; // Skip IsoDep since we are going to connect it later

                Class<?> techClass = Class.forName(tech);
                Method getInstanceMethod = techClass.getMethod("get", Tag.class);
                Object techInstance = getInstanceMethod.invoke(null, tag);

                Method isConnectedMethod = techClass.getMethod("isConnected");
                boolean isConnected = (boolean) isConnectedMethod.invoke(techInstance);

                if (isConnected) {
                    Method closeMethod = techClass.getMethod("close");
                    closeMethod.invoke(techInstance);
                }
            } catch (Exception e) {
                Log.e(TAG, "disconnectOtherTagTechnologies: Failed to disconnect tech " + tech, e);
            }
        }
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
