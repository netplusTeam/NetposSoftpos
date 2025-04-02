package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.AdapterView
import androidx.fragment.app.activityViewModels
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.danbamitale.epmslib.entities.TransactionResponse
import com.dsofttech.dprefs.utils.DPrefs
import com.pixplicity.easyprefs.library.Prefs
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.TransactionClickListener
import com.woleapp.netpos.contactless.adapter.transactions.AllTransactionsAdapter
import com.woleapp.netpos.contactless.databinding.FragmentPaymentBinding
import com.woleapp.netpos.contactless.model.User
import com.woleapp.netpos.contactless.util.*
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.alertDialog
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.observeServerResponse
import com.woleapp.netpos.contactless.viewmodels.SalesViewModel
import com.woleapp.netpos.contactless.viewmodels.TransactionsViewModel
import dagger.hilt.android.AndroidEntryPoint
import io.reactivex.Scheduler
import io.reactivex.disposables.CompositeDisposable
import kotlinx.android.synthetic.main.fragment_payment.view.*
import java.util.*
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
    private lateinit var tid: String
    private lateinit var loginToken: String
    private lateinit var apiKey: String
    private var items: MutableList<com.woleapp.netpos.contactless.model.payment.transactions.Transaction> =
        mutableListOf()
    private lateinit var loader: AlertDialog
    private var currentPage = 1
    private var isLoading = false
    private var isLastPage = false
    private val PAGE_SIZE = 10
    private var selectedTransactionType = "all" // Default
    private var startDate: String? = null
    private var endDate: String? = null
    private var transactionStatus: String? = null
    private lateinit var adapterListener: TransactionClickListener
    private var isFirstSelection = true // Prevents spinner's auto-call

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
        tid =
            Singletons.gson.fromJson(
                Prefs.getString(PREF_USER),
                User::class.java,
            ).terminal_id.toString()
        merchantId =
            Singletons.gson.fromJson(
                Prefs.getString(PREF_USER),
                User::class.java,
            ).netplusPayMid.toString()
        loginToken = DPrefs.getString(PREF_LOGIN_USER_TOKEN)
        apiKey = DPrefs.getString(PREF_LOGIN_API_KEY)
        recyclerView = binding.recyclerView
        adapter = AllTransactionsAdapter(items, adapterListener)
        recyclerView.layoutManager = LinearLayoutManager(requireContext())
        recyclerView.adapter = adapter

        setupSpinner()
        setupChipGroup()
        setupRecyclerViewScroll()

        // ✅ Call once on initial load
        loadFirstPage()
    }

    private fun setupSpinner() {
        binding.transactionTypeSpinner.onItemSelectedListener =
            object : AdapterView.OnItemSelectedListener {
                override fun onItemSelected(
                    parent: AdapterView<*>,
                    view: View?,
                    position: Int,
                    id: Long,
                ) {
                    if (isFirstSelection) { // 🚀 Prevents initial call
                        isFirstSelection = false
                        return
                    }

                    val selectedType = parent.getItemAtPosition(position).toString()
                    val resultSelected = transactionTypeMap[selectedType] ?: "all"

                    if (resultSelected == "successful" || resultSelected == "declined") {
                        transactionStatus = resultSelected
                        selectedTransactionType = "all"
                    } else {
                        transactionStatus = ""
                        selectedTransactionType = resultSelected
                        binding.chipGroup.print_all.isChecked = true
                    }

                    binding.chipGroup.visibility =
                        if (selectedTransactionType == "pbt") View.GONE else View.VISIBLE

                    resetAndLoad()
                }

                override fun onNothingSelected(parent: AdapterView<*>) {}
            }
    }

    private fun setupChipGroup() {
        binding.chipGroup.setOnCheckedChangeListener { _, checkedId ->
            when (checkedId) {
                R.id.print_approved -> {
                    transactionStatus = "successful"
                    selectedTransactionType = "all"
                }
                R.id.print_declined -> {
                    transactionStatus = "declined"
                    selectedTransactionType = "pos"
                }
                else -> {
                    transactionStatus = ""
                    selectedTransactionType = "all"
                }
            }
            resetAndLoad()
        }
    }

    private fun setupRecyclerViewScroll() {
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
                        if (firstVisibleItemPosition + visibleItemCount >= totalItemCount - 5) {
                            loadMoreTransactionTypeItems()
                        }
                    }
                }
            },
        )
    }

    private fun resetAndLoad() {
        currentPage = 1
        isLastPage = false
        items.clear()
        adapter.notifyDataSetChanged()
        loadFirstPage()
    }

    private fun loadFirstPage() {
        if (isLoading) return
        isLoading = true
        loader.show()

        observeServerResponse(
            salesViewModel.getPaymentTransaction(
                "Bearer $loginToken",
                apiKey,
                tid,
                selectedTransactionType,
                startDate,
                endDate,
                transactionStatus,
                currentPage,
                null,
            ),
            loader,
            compositeDisposable,
            ioScheduler,
            mainThreadScheduler,
        ) {
            val newItems =
                salesViewModel.paymentTransactionsResponse.value?.data?.data?.transactions
            items.clear()
            if (!newItems.isNullOrEmpty()) {
                items.addAll(newItems)
                binding.emptyLyt.visibility = View.GONE
            } else {
                binding.emptyLyt.visibility = View.VISIBLE
            }
            adapter.notifyDataSetChanged()
            isLoading = false
            currentPage++
        }
    }

    private fun loadMoreTransactionTypeItems() {
        if (isLoading || isLastPage) return

        isLoading = true
        loader.show()
        val requestedPage = currentPage
        currentPage++

        observeServerResponse(
            salesViewModel.getPaymentTransaction(
                "Bearer $loginToken",
                apiKey,
                tid,
                selectedTransactionType,
                startDate,
                endDate,
                transactionStatus,
                requestedPage,
                null,
            ),
            loader,
            compositeDisposable,
            ioScheduler,
            mainThreadScheduler,
        ) {
            val newItems =
                salesViewModel.paymentTransactionsResponse.value?.data?.data?.transactions
            if (!newItems.isNullOrEmpty()) {
                binding.emptyLyt.visibility = View.GONE
                val oldSize = items.size
                items.addAll(newItems)
                recyclerView.post {
                    adapter.notifyItemRangeInserted(oldSize, newItems.size)
                }
            } else {
                isLastPage = true
            }
            isLoading = false
        }
    }

    private val transactionTypeMap =
        mapOf(
            "All" to "all",
            "POS" to "pos",
            "Transfer" to "pbt",
        )
}
