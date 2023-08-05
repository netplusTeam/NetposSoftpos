package com.woleapp.netpos.contactless.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import androidx.core.os.bundleOf
import androidx.databinding.DataBindingUtil
import androidx.databinding.ViewDataBinding
import androidx.fragment.app.activityViewModels
import androidx.fragment.app.setFragmentResult
import androidx.recyclerview.widget.RecyclerView
import com.google.android.material.snackbar.Snackbar
import com.google.gson.Gson
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.GenericRecyclerViewAdapter
import com.woleapp.netpos.contactless.adapter.GenericRecyclerViewBindingInterface
import com.woleapp.netpos.contactless.adapter.ItemsRvAdapterFactory
import com.woleapp.netpos.contactless.databinding.FragmentNotificationBinding
import com.woleapp.netpos.contactless.databinding.NotificationItemLayoutBinding
import com.woleapp.netpos.contactless.model.AppCampaignModel
import com.woleapp.netpos.contactless.viewmodels.NotificationViewModel
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class NotificationFragment : BaseFragment() {
    private lateinit var binding: FragmentNotificationBinding
    private lateinit var rv: RecyclerView
    private lateinit var rvAdapter: GenericRecyclerViewAdapter<AppCampaignModel>
    private lateinit var genericRvBindingInterface: GenericRecyclerViewBindingInterface<AppCampaignModel>
    private val notificationViewModel: NotificationViewModel by activityViewModels()

    @Inject
    lateinit var rvAdapterFactory: ItemsRvAdapterFactory

    @Inject
    lateinit var gson: Gson

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        // Inflate the layout for this fragment
        binding =
            DataBindingUtil.inflate(inflater, R.layout.fragment_notification, container, false)
        genericRvBindingInterface = object : GenericRecyclerViewBindingInterface<AppCampaignModel> {
            override fun bindData(item: AppCampaignModel, view: ViewDataBinding) {
                (view as NotificationItemLayoutBinding).apply {
                    notification = item
                }
            }
        }

        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initViews()
        rvAdapter = rvAdapterFactory.createOrderItemRvAdapter(
            R.layout.notification_item_layout,
            genericRvBindingInterface,
        ) { _, clickedMessage ->
            notificationViewModel.markMessageAsRead(clickedMessage)
            showFragment(NotificationDetailsFragment())
        }
        notificationViewModel.allMessages.observe(viewLifecycleOwner) { allCampaign ->
            allCampaign?.let {
                rvAdapter.updateData((it as ArrayList<AppCampaignModel>))
            }
        }
        rv.adapter = rvAdapter
    }

    private fun initViews() {
        with(binding) {
            rv = notificationRv
        }
    }
}
