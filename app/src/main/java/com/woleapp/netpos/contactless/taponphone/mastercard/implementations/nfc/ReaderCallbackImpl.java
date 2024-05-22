package com.woleapp.netpos.contactless.taponphone.mastercard.implementations.nfc;

import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;

import com.woleapp.netpos.contactless.taponphone.verve.VerveNFCListenerImpl;

class ReaderCallbackImpl implements NfcAdapter.ReaderCallback {

    private TagEventListener mTagEventListener;
    private VerveNFCListenerImpl mNfcListenerImpl;

    ReaderCallbackImpl(final TagEventListener tagEventListener, VerveNFCListenerImpl nfcListenerImpl) {
        this.mTagEventListener = tagEventListener;
        this.mNfcListenerImpl = nfcListenerImpl;
    }

    @Override
    public void onTagDiscovered(final Tag tag) {
        mTagEventListener.setIsoDep(IsoDep.get(tag));
        mNfcListenerImpl.onNfcTagDiscovered(tag);
    }

}
