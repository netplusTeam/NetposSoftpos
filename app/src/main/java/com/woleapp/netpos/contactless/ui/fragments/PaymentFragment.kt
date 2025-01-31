package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.app.DatePickerDialog
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
import java.time.Instant
import java.time.ZoneId
import java.time.format.DateTimeFormatter
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
    private lateinit var username: String
    private var items: MutableList<com.woleapp.netpos.contactless.model.payment.transactions.Transaction> = mutableListOf()
    private lateinit var loader: AlertDialog
    private var currentPage = 1
    private var isLoading = false
    private var isLastPage = false
    private val PAGE_SIZE = 10
    private var selectedTransactionType = "all" // Default value
    private var startDate: String? = null // Default value
    private var endDate: String? = null // Default value
    private lateinit var adapterListener: TransactionClickListener // Default value
    private var newItems: List<com.woleapp.netpos.contactless.model.payment.transactions.Transaction>? = null // Default value

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

        adapter = AllTransactionsAdapter(items, adapterListener)
        recyclerView.layoutManager = LinearLayoutManager(requireContext())
        recyclerView.adapter = adapter
        loadMoreTransactionTypeItems()

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
                            loadMoreTransactionTypeItems()
                        }
                    }
                }
            },
        )

        binding.showDate.setOnClickListener {
            showCalendarDialog()
        }
    }

    private fun onDateSelected(
        newStartDate: String,
        newEndDate: String,
    ) {
        startDate = newStartDate
        endDate = newEndDate
        loadMoreTransactionTypeItems(resetData = true)
    }

    private fun showCalendarDialog() {
        val calendar = Calendar.getInstance()

        // Show a message or dialog title for the start date selection
        DatePickerDialog(
            requireContext(),
            { _, startYear, startMonth, startDay ->
                val startCalendar = Calendar.getInstance().apply { set(startYear, startMonth, startDay) }

                // Show a message or dialog title for the end date selection
                DatePickerDialog(
                    requireContext(),
                    { _, endYear, endMonth, endDay ->
                        val endCalendar = Calendar.getInstance().apply { set(endYear, endMonth, endDay) }

                        // Convert dates
                        startDate = convertCalToDate(startCalendar.timeInMillis)
                        endDate = convertCalToDate(endCalendar.timeInMillis)

                        // Reset the transaction data before making a new request
                        newItems = null
                        isLastPage = false
                        currentPage = 1
                        adapter.clearData()

                        startDate?.let { endDate?.let { it1 -> onDateSelected(it, it1) } }
                    },
                    calendar.get(Calendar.YEAR),
                    calendar.get(Calendar.MONTH),
                    calendar.get(Calendar.DAY_OF_MONTH),
                ).apply {
                    setTitle("Select End Date")
                }.show()
            },
            calendar.get(Calendar.YEAR),
            calendar.get(Calendar.MONTH),
            calendar.get(Calendar.DAY_OF_MONTH),
        ).apply {
            setTitle("Select Start Date")
        }.show()
    }

    private fun convertCalToDate(timeInMilli: Long): String? {
        val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd")

        val date = Instant.ofEpochMilli(timeInMilli).atZone(ZoneId.of("UTC")).toLocalDate()

        return date.format(formatter)
    }

    private fun loadMoreTransactionTypeItems(resetData: Boolean = false) {
        if (resetData) {
            currentPage = 1
            isLastPage = false
            items.clear()
            adapter.notifyDataSetChanged()
        }

        if (isLastPage) return

        isLoading = true
        loader.show()

        items.clear()
        adapter.notifyDataSetChanged()

        observeServerResponse(
            salesViewModel.getPaymentTransactions(username, merchantId, selectedTransactionType, startDate, endDate, currentPage),
            loader,
            compositeDisposable,
            ioScheduler,
            mainThreadScheduler,
        ) {
            val newItems = salesViewModel.paymentTransactionsResponse.value?.data?.data?.transactions

            if (resetData) {
                items.clear()
            }

            if (!newItems.isNullOrEmpty()) {
                binding.emptyLyt.visibility = View.GONE
                items.addAll(newItems)
            } else {
                binding.emptyLyt.visibility = View.VISIBLE
            }

            // Notify adapter after data update
            adapter.notifyDataSetChanged()

            isLoading = false
            currentPage++

            if (newItems.isNullOrEmpty() || newItems.size < PAGE_SIZE) {
                isLastPage = true
            }
        }
    }

    private val transactionTypeMap =
        mapOf(
            "All" to "all",
            "POS" to "pos",
            "Transfer" to "pbt",
            // Add other mappings as needed
        )
}
