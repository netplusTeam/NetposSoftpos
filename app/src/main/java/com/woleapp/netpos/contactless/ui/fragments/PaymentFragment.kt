package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.AdapterView
import android.widget.Spinner
import androidx.fragment.app.activityViewModels
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.danbamitale.epmslib.entities.TransactionResponse
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.adapter.TransactionClickListener
import com.woleapp.netpos.contactless.adapter.transactions.AllTransactionsAdapter
import com.woleapp.netpos.contactless.databinding.FragmentPaymentBinding
import com.woleapp.netpos.contactless.model.User
import com.woleapp.netpos.contactless.model.payment.Transaction
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.viewmodels.SalesViewModel
import com.woleapp.netpos.contactless.viewmodels.TransactionsViewModel
import dagger.hilt.android.AndroidEntryPoint
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject
import javax.inject.Named

@AndroidEntryPoint
class PaymentFragment : BaseFragment() {
    private lateinit var merchantId: String
    private lateinit var binding: FragmentPaymentBinding
    private val salesViewModel by activityViewModels<SalesViewModel>()
    private val viewModel by activityViewModels<TransactionsViewModel>()
    private lateinit var recyclerView: RecyclerView
    private lateinit var adapter: AllTransactionsAdapter
    private lateinit var username: String
    private var items: MutableList<com.woleapp.netpos.contactless.model.payment.transactions.Transaction> = mutableListOf()
    private lateinit var loader: AlertDialog
    private var currentPage = 1
    private var isLoading = false
    private var isLastPage = false
    private val PAGE_SIZE = 10
    private var selectedTransactionType = "all" // Default value
    private lateinit var adapterListener: TransactionClickListener // Default value

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
        // Inflate the layout for this fragment
        binding = FragmentPaymentBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(
        view: View,
        savedInstanceState: Bundle?,
    ) {
        super.onViewCreated(view, savedInstanceState)

        adapterListener =
            object : TransactionClickListener {
                override fun invoke(p1: TransactionResponse) {
                    viewModel.setSelectedTransaction(p1)
                    viewModel.setAction(HISTORY_ACTION_REPRINT)
                    addFragmentWithoutRemove(TransactionDetailsFragment())
                }
            }
        loader = alertDialog(requireContext())
        username = Singletons.gson.fromJson(Prefs.getString(PREF_USER), User::class.java).email.toString()
        merchantId = Singletons.gson.fromJson(Prefs.getString(PREF_USER), User::class.java).netplusPayMid.toString()

        // Load initial data
        recyclerView = binding.recyclerView

        val transactionTypeSpinner: Spinner = binding.transactionTypeSpinner
        transactionTypeSpinner.onItemSelectedListener =
            object : AdapterView.OnItemSelectedListener {
                override fun onItemSelected(
                    parent: AdapterView<*>,
                    view: View?,
                    position: Int,
                    id: Long,
                ) {
                    val selectedType = parent.getItemAtPosition(position).toString()
                    selectedTransactionType = transactionTypeMap[selectedType] ?: "all" // Default to "all" if not found

                    // Clear current data and reset pagination
                    currentPage = 1
                    isLastPage = false
                    loadMoreTransactionTypeItems()
                }

                override fun onNothingSelected(parent: AdapterView<*>) {
                    // Handle as needed
                }
            }

        loadMoreItems()

        // Add scroll listener to load more data when reaching the end of the list
        recyclerView.addOnScrollListener(
            object : RecyclerView.OnScrollListener() {
                override fun onScrolled(
                    recyclerView: RecyclerView,
                    dx: Int,
                    dy: Int,
                ) {
                    super.onScrolled(recyclerView, dx, dy)
                    val layoutManager = recyclerView.layoutManager as LinearLayoutManager
                    val visibleItemCount = layoutManager.childCount
                    val totalItemCount = layoutManager.itemCount
                    val firstVisibleItemPosition = layoutManager.findFirstVisibleItemPosition()

                    if (!isLoading && !isLastPage) {
                        if (visibleItemCount + firstVisibleItemPosition >= totalItemCount &&
                            firstVisibleItemPosition >= 0 && totalItemCount >= PAGE_SIZE
                        ) {
                            loadMoreItems()
                        }
                    }
                }
            },
        )
    }

    private fun loadMoreItems() {
        loader.show()
        observeServerResponse(
            salesViewModel.getPaymentTransactions(username, merchantId, selectedTransactionType, currentPage),
            loader,
            compositeDisposable,
            ioScheduler,
            mainThreadScheduler,
        ) {
            adapter = AllTransactionsAdapter(items, adapterListener)
            recyclerView.layoutManager = LinearLayoutManager(requireContext())
            recyclerView.adapter = adapter
            val newItems = salesViewModel.paymentTransactionsResponse.value?.data?.data?.transactions
            if (newItems != null) {
                adapter.addData(newItems)
            }

            isLoading = false
            currentPage++
            // Check if we received less than the expected page size, marking it as the last page
            if (newItems != null) {
                if (newItems.size < PAGE_SIZE) {
                    isLastPage = true
                }
            }
        }
    }

    private fun loadMoreTransactionTypeItems() {
        isLoading = true
        loader.show()
        observeServerResponse(
            salesViewModel.getPaymentTransactions(username, merchantId, selectedTransactionType, currentPage),
            loader,
            compositeDisposable,
            ioScheduler,
            mainThreadScheduler,
        ) {
            adapter = AllTransactionsAdapter(items, adapterListener)
            adapter.clearData()
            recyclerView.layoutManager = LinearLayoutManager(requireContext())
            recyclerView.adapter = adapter
            val newItems = salesViewModel.paymentTransactionsResponse.value?.data?.data?.transactions
            if (newItems != null) {
                adapter.addData(newItems)
            }

            isLoading = false
            currentPage++
            // Check if we received less than the expected page size, marking it as the last page
            if (newItems != null) {
                if (newItems.size < PAGE_SIZE) {
                    isLastPage = true
                }
            }
        }

        // {
        //     val newItems = salesViewModel.paymentTransactionsResponse.value?.data?.data?.transactions
//
//            if (selectedTransactionType != "all") {
//                adapter = AllTransactionsAdapter(items, adapterListener)
//                recyclerView.layoutManager = LinearLayoutManager(requireContext())
//                recyclerView.adapter = adapter
//                adapter.clearData()
//
//                isLoading = false
//                currentPage++
//                if (newItems == null || newItems.size < PAGE_SIZE) {
//                    isLastPage = true
//                }
//            } else {
//                adapter = AllTransactionsAdapter(items, adapterListener)
//                recyclerView.layoutManager = LinearLayoutManager(requireContext())
//                recyclerView.adapter = adapter
//                if (newItems != null && newItems.isNotEmpty()) {
//                    adapter.addData(newItems)
//                }
//
//                isLoading = false
//                currentPage++
//                if (newItems == null || newItems.size < PAGE_SIZE) {
//                    isLastPage = true
//                }
//            }
//        }
    }

    private val transactionTypeMap =
        mapOf(
            "All" to "all",
            "POS" to "pos",
            "Transfer" to "pbt",
            // Add other mappings as needed
        )
}
