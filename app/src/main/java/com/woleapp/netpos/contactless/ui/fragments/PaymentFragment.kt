package com.woleapp.netpos.contactless.ui.fragments

import android.app.AlertDialog
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
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
    private lateinit var globalTransactions: String

    companion object {
        fun newInstance(action: String = HISTORY_ACTION_DEFAULT) =
            TransactionHistoryFragment().apply {
                arguments =
                    Bundle().apply {
                        glo = action
                        putString(HISTORY_ACTION, action)
                    }
            }
    }

    private lateinit var binding: FragmentPaymentBinding
    private val salesViewModel by activityViewModels<SalesViewModel>()
    private val viewModel by activityViewModels<TransactionsViewModel>()
    private lateinit var recyclerView: RecyclerView
    private lateinit var adapter: AllTransactionsAdapter
    private lateinit var username: String
    private var items: MutableList<Transaction> = mutableListOf()
    private lateinit var loader: AlertDialog
    private var currentPage = 1
    private var isLoading = false
    private var isLastPage = false
    private val PAGE_SIZE = 10

    @Inject
    lateinit var compositeDisposable: CompositeDisposable

    @Inject
    @Named("io-scheduler")
    lateinit var ioScheduler: Scheduler

    @Inject
    @Named("main-scheduler")
    lateinit var mainThreadScheduler: Scheduler

    val adapterListener =
        object : TransactionClickListener {
            override fun invoke(p1: TransactionResponse) {
                viewModel.setSelectedTransaction(p1)
                viewModel.setAction(HISTORY_ACTION_REPRINT)
//                globalAction = HISTORY_ACTION_REPRINT
                addFragmentWithoutRemove(TransactionDetailsFragment())
            }
        }

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

        loader = alertDialog(requireContext())
        username = Singletons.gson.fromJson(Prefs.getString(PREF_USER), User::class.java).email.toString()

        // Load initial data
        recyclerView = binding.recyclerView

        loadMoreItems()

        // Add scroll listener
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
            salesViewModel.getPaymentTransactions(username, currentPage),
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
            Log.d("GOTHEREEEEE", "GOTHERE, $newItems")
            // Check if we received less than the expected page size, marking it as the last page
            if (newItems != null) {
                if (newItems.size < PAGE_SIZE) {
                    isLastPage = true
                }
            }
        }
    }
}
