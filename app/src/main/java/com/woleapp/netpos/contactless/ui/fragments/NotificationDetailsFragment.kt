package com.woleapp.netpos.contactless.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.Toast
import androidx.databinding.DataBindingUtil
import androidx.fragment.app.activityViewModels
import com.google.gson.Gson
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.FragmentNotificationDetailsBinding
import com.woleapp.netpos.contactless.model.AppCampaignModel
import com.woleapp.netpos.contactless.viewmodels.NotificationViewModel
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class NotificationDetailsFragment : BaseFragment() {
    private lateinit var binding: FragmentNotificationDetailsBinding
    private lateinit var deleteNotificationIcon: ImageView
    private val viewModel: NotificationViewModel by activityViewModels()
    private lateinit var clickedNotification: AppCampaignModel

    @Inject
    lateinit var gson: Gson

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View {
        // Inflate the layout for this fragment
        binding = DataBindingUtil.inflate(
            inflater,
            R.layout.fragment_notification_details,
            container,
            false,
        )
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        deleteNotificationIcon = binding.imageView5
        viewModel.clickedMessage.observe(viewLifecycleOwner) {
            clickedNotification = it
            binding.apply {
                notification = clickedNotification
                executePendingBindings()
            }
        }
    }

    override fun onResume() {
        super.onResume()
        viewModel.notificationDeleted.observe(viewLifecycleOwner) {
            if (it) {
                Toast.makeText(requireContext(), getString(R.string.message_deleted), Toast.LENGTH_SHORT).show()
                parentFragmentManager.popBackStack()
            }
        }
        deleteNotificationIcon.setOnClickListener {
           // viewModel.deleteMessage(clickedNotification)
        }
    }
}
