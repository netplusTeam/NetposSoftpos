package com.woleapp.netpos.contactless.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.activityViewModels
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.databinding.FragmentPaymentBinding
import com.woleapp.netpos.contactless.model.User
import com.woleapp.netpos.contactless.util.PREF_USER
import com.woleapp.netpos.contactless.util.Singletons
import com.woleapp.netpos.contactless.viewmodels.SalesViewModel

class PaymentFragment : BaseFragment() {
    private lateinit var binding: FragmentPaymentBinding
    private val salesViewModel by activityViewModels<SalesViewModel>()

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        // Inflate the layout for this fragment
        binding = FragmentPaymentBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        super.onViewCreated(view, savedInstanceState)

        val username = Singletons.gson.fromJson(Prefs.getString(PREF_USER), User::class.java).email
        if (username != null) {
            salesViewModel.getPaymentTransactions(username)
        }
    }
}
