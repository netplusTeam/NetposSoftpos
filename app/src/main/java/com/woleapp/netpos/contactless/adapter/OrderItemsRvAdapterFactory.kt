package com.woleapp.netpos.contactless.adapter

import com.woleapp.netpos.contactless.model.AppCampaignModel
import dagger.assisted.AssistedFactory

@AssistedFactory
interface ItemsRvAdapterFactory {
    fun createOrderItemRvAdapter(
        layoutId: Int,
        bindingInterface: GenericRecyclerViewBindingInterface<AppCampaignModel>,
        onClick: ItemClickListener<AppCampaignModel>,
    ): GenericRecyclerViewAdapter<AppCampaignModel>
}
