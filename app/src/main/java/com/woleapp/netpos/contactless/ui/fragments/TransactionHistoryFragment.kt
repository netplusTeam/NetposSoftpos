package com.woleapp.netpos.contactless.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.widget.SearchView
import androidx.core.content.ContextCompat
import androidx.core.widget.doOnTextChanged
import androidx.fragment.app.activityViewModels
import androidx.recyclerview.widget.DividerItemDecoration
import com.danbamitale.epmslib.entities.TransactionResponse
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.TransactionClickListener
import com.woleapp.netpos.contactless.adapter.TransactionsAdapter
import com.woleapp.netpos.contactless.database.AppDatabase
import com.woleapp.netpos.contactless.databinding.FragmentTransactionHistoryBinding
import com.woleapp.netpos.contactless.databinding.LayoutComplaintsBinding
import com.woleapp.netpos.contactless.model.FeedbackRequest
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getDeviceId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.initPartnerId
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.viewmodels.NotificationViewModel
import com.woleapp.netpos.contactless.viewmodels.TransactionsViewModel
import dagger.hilt.android.AndroidEntryPoint
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import kotlinx.android.synthetic.main.layout_verify_utility_payment.*
import javax.inject.Inject
import javax.inject.Named

@AndroidEntryPoint
class TransactionHistoryFragment : BaseFragment() {
    private lateinit var globalAction: String

    companion object {
        fun newInstance(action: String = HISTORY_ACTION_DEFAULT) =
            TransactionHistoryFragment().apply {
                arguments = Bundle().apply {
                    globalAction = action
                    putString(HISTORY_ACTION, action)
                }
            }
    }

    private lateinit var binding: FragmentTransactionHistoryBinding
    private val viewModel by activityViewModels<TransactionsViewModel>()
    private lateinit var adapter: TransactionsAdapter
    private lateinit var feedbackDialog: AlertDialog
    private lateinit var feedbackBinding: LayoutComplaintsBinding
    private val notificationModel by activityViewModels<NotificationViewModel>()
    private lateinit var deviceId: String
    private lateinit var loader: android.app.AlertDialog

    @Inject
    lateinit var compositeDisposable: CompositeDisposable

    @Inject
    @Named("io-scheduler")
    lateinit var ioScheduler: Scheduler

    @Inject
    @Named("main-scheduler")
    lateinit var mainThreadScheduler: Scheduler

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        binding = FragmentTransactionHistoryBinding.inflate(inflater, container, false)
        viewModel.setAppDatabase(AppDatabase.getDatabaseInstance(requireContext()))
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        val action = requireArguments().getString(HISTORY_ACTION, HISTORY_ACTION_DEFAULT)
        if (action != HISTORY_ACTION_DEFAULT) {
            binding.historyHeader.text = getString(R.string.history_header_template, action)
        }
        viewModel.setAction(action)
        val adapterListener = object : TransactionClickListener {
            override fun invoke(p1: TransactionResponse) {
                viewModel.setSelectedTransaction(p1)
                viewModel.setAction(HISTORY_ACTION_REPRINT)
                globalAction = HISTORY_ACTION_REPRINT
                addFragmentWithoutRemove(TransactionDetailsFragment())
            }
        }
        if (action == HISTORY_ACTION_PREAUTH) {
            val header = "Select PREAUTH Transaction"
            binding.historyHeader.text = header
            binding.historyButton.visibility = View.GONE
            binding.searchButton.visibility = View.GONE
        }
        if (action == HISTORY_ACTION_EOD) {
            val header = "End Of Day"
            binding.historyHeader.text = header
            binding.historyButton.visibility = View.GONE
            binding.searchButton.visibility = View.GONE
            viewModel.setAction(HISTORY_ACTION_REPRINT)
            adapter = TransactionsAdapter(adapterListener)
        }
        adapter = TransactionsAdapter {
            viewModel.setSelectedTransaction(it)
            addFragmentWithoutRemove(TransactionDetailsFragment())
        }
        val tabListener = View.OnClickListener {
            val selected = when (it) {
                binding.historyButton -> 0
                else -> 1
            }
            setSelectedTab(selected)
        }
        binding.historyButton.setOnClickListener(tabListener)
        binding.searchButton.setOnClickListener(tabListener)
        binding.rvTransactionsHistory.adapter = adapter
        binding.rvTransactionsHistory.addItemDecoration(
            DividerItemDecoration(
                requireContext(),
                DividerItemDecoration.VERTICAL,
            ),
        )
        if (action != HISTORY_ACTION_EOD) {
            viewModel.getTransactions().observe(viewLifecycleOwner) {
                adapter.submitList(it)
                adapter.notifyDataSetChanged()
            }
        } else {
            val eodList = viewModel.getEodList()
            adapter.submitList(eodList)
            adapter.notifyDataSetChanged()
        }
        setSelectedTab()
        binding.transactionSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                if (query.isNullOrEmpty()) {
                    adapter.submitList(viewModel.transactionList)
                    return true
                }
                adapter.submitList(
                    viewModel.transactionList?.filter { transactionResponse ->
                        (transactionResponse.RRN.contains(query.toString())).or(
                            transactionResponse.STAN.contains(
                                query.toString(),
                            ),
                        )
                    },
                )
                return true
            }

            override fun onQueryTextChange(newText: String?): Boolean {
                if (newText.isNullOrEmpty()) {
                    adapter.submitList(viewModel.transactionList)
                    return true
                }
                adapter.submitList(
                    viewModel.transactionList?.filter { transactionResponse ->
                        (transactionResponse.RRN.contains(newText ?: "")).or(
                            transactionResponse.STAN.contains(
                                newText ?: "",
                            ),
                        )
                    },
                )
                return true
            }
        })

        feedbackBinding = LayoutComplaintsBinding.inflate(
            LayoutInflater.from(requireContext()), null, false
        ).apply {
            lifecycleOwner = this@TransactionHistoryFragment
            executePendingBindings()
        }
        feedbackDialog =
            AlertDialog.Builder(requireContext()).setView(feedbackBinding.root).setCancelable(true)
                .create()


        binding.complaintsBtn.setOnClickListener {
            binding.complaintsBtn.visibility = View.GONE
            feedbackDialog.show()
            feedbackBinding.email.setText(Singletons.getCurrentlyLoggedInUser()?.email)
        }

        feedbackBinding.submitFeedback.setOnClickListener {
            submitMerchantFeedback()
        }
        loader = alertDialog(requireContext(), true)
        deviceId = getDeviceId(requireContext())
    }

    private fun submitMerchantFeedback() {
        when {
            feedbackBinding.email.text.toString().isEmpty() -> {
                showToast("Enter your email")
            }
            feedbackBinding.subjectEdittext.text.toString().isEmpty() -> {
                showToast("Please enter the subject of the complaint")
            }
            feedbackBinding.feedbackEdittext.text.toString().isEmpty() -> {
                showToast("Please enter the feedback")
            }
            else -> {
                if (validateSignUpFieldsOnTextChange()) {
                    submitFeedback()
                }
            }
        }
    }

    private fun validateSignUpFieldsOnTextChange(): Boolean {
        var isValidated = true

        feedbackBinding.email.doOnTextChanged { _, _, _, _ ->
            when {
                feedbackBinding.email.text.toString().trim().isEmpty() -> {
                    showToast("Enter your email")
                    isValidated = false
                }
                else -> {
                    feedbackBinding.emailWrapper.error = null
                    isValidated = true
                }
            }
        }
        feedbackBinding.subjectEdittext.doOnTextChanged { _, _, _, _ ->
            when {
                feedbackBinding.subjectEdittext.text.toString().trim().isEmpty() -> {
                    showToast("Please enter the subject of the complaint")
                    isValidated = false
                }
                else -> {
                    feedbackBinding.subjectWrapper.error = null
                    isValidated = true
                }
            }
        }
        feedbackBinding.feedbackEdittext.doOnTextChanged { _, _, _, _ ->
            when {
                feedbackBinding.feedbackEdittext.text.toString().trim().isEmpty() -> {
                    showToast("Please enter the feedback")
                    isValidated = false
                }
                else -> {
                    feedbackBinding.feedbackWrapper.error = null
                    isValidated = true
                }
            }
        }
        return isValidated
    }

    private fun submitFeedback() {
        loader.show()
        val email = feedbackBinding.email.text?.trim().toString()
        val subject = feedbackBinding.subjectEdittext.text?.trim().toString()
        val feedback = feedbackBinding.feedbackEdittext.text?.trim().toString()

        val newFeedBack = FeedbackRequest(
            username = email, subject = subject, feedback = feedback
        )
        observeServerResponse(
            notificationModel.feedbackFromMerchants(newFeedBack, initPartnerId(), deviceId),
            loader,
            compositeDisposable,
            ioScheduler,
            mainThreadScheduler
        ) {
            feedbackDialog.dismiss()
            showToast("Feedback saved successfully!")
        }
    }

    private fun setSelectedTab(selectedTab: Int = 0) {
        if (selectedTab == 0) {
            binding.historyButton.setBackgroundColor(
                ContextCompat.getColor(
                    requireContext(),
                    R.color.colorPrimary,
                ),
            )
            binding.searchButton.setBackgroundColor(
                ContextCompat.getColor(
                    requireContext(),
                    android.R.color.darker_gray,
                ),
            )
            binding.historyButton.isEnabled = false
            binding.searchButton.isEnabled = true
            binding.searchLayout.visibility = View.GONE
            binding.rvTransactionsHistory.visibility = View.VISIBLE
        } else {
            binding.searchButton.isEnabled = false
            binding.historyButton.isEnabled = true
            binding.historyButton.setBackgroundColor(
                ContextCompat.getColor(
                    requireContext(),
                    android.R.color.darker_gray,
                ),
            )
            binding.searchButton.setBackgroundColor(
                ContextCompat.getColor(
                    requireContext(),
                    R.color.colorPrimary,
                ),
            )
            binding.searchLayout.visibility = View.VISIBLE
            binding.rvTransactionsHistory.visibility = View.GONE
        }
    }
}
