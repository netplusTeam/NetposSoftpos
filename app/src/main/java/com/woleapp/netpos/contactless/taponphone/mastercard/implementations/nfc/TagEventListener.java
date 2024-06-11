package com.woleapp.netpos.contactless.taponphone.mastercard.implementations.nfc;

import android.nfc.tech.IsoDep;
import android.util.Log;

import java.io.IOException;

class TagEventListener {
    /**
     * ISO DEP object to access ISO-DEP (ISO 14443-4) properties and I/O operations on a Tag
     */
    private IsoDep mIsoDep;
    private static final String TAG = "TagEventListener";

    IsoDep getIsoDep() {
        return mIsoDep;
    }

    void setIsoDep(final IsoDep isoDep) {
        mIsoDep = isoDep;
    }

    void invalidateTag() {
        if (mIsoDep != null) {
            try {
                mIsoDep.close();
                Log.i(TAG, "IsoDep disconnected");
            } catch (IOException e) {
                Log.e(TAG, "Error while closing IsoDep", e);
            }
        }
        mIsoDep = null;
    }
}
