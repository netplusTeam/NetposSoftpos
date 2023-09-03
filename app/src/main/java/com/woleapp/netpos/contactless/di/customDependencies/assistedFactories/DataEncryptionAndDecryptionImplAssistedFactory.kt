package com.woleapp.netpos.contactless.di.customDependencies.assistedFactories

import com.woleapp.netpos.contactless.util.encryption.DataEncryptionAndDecryptionImpl
import dagger.assisted.Assisted
import dagger.assisted.AssistedFactory

@AssistedFactory
interface DataEncryptionAndDecryptionImplAssistedFactory {
    fun createDataEncryptionAndDecryptionImpl(
        @Assisted secreteKey: String,
        @Assisted iv: String,
    ): DataEncryptionAndDecryptionImpl
}
