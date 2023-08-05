package com.woleapp.netpos.contactless.di.customDependencies.assistedFactories

import androidx.fragment.app.FragmentManager
import com.woleapp.netpos.contactless.di.customDependencies.JavaScriptInterface
import dagger.assisted.Assisted
import dagger.assisted.AssistedFactory

@AssistedFactory
interface JavaScriptInterfaceAssistedFactory {
    fun createJavaScriptInterface(
        @Assisted fragmentManager: FragmentManager,
        @Assisted("redirectHtml") redirectHtml: String,
        @Assisted("transId") transId: String,
    ): JavaScriptInterface
}
