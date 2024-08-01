package com.woleapp.netpos.contactless.taponphone.mastercard.implementations.nfc;

import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;

import com.woleapp.netpos.contactless.taponphone.verve.VerveNFCListenerImpl;


public class ReaderCallbackImpl implements NfcAdapter.ReaderCallback {

    private final TagEventListener mTagEventListener;
    private VerveNFCListenerImpl mNfcVerveListenerImpl;

    ReaderCallbackImpl(final TagEventListener tagEventListener) {
        this.mTagEventListener = tagEventListener;
    }

    public ReaderCallbackImpl(final TagEventListener tagEventListener, VerveNFCListenerImpl nfcListenerImpl) {
        this.mTagEventListener = tagEventListener;
        this.mNfcVerveListenerImpl = nfcListenerImpl;
    }

    @Override
    public void onTagDiscovered(final Tag tag) {
        mTagEventListener.setIsoDep(IsoDep.get(tag));
//        mNfcVerveListenerImpl.onNfcTagDiscovered(tag);
    }

}
