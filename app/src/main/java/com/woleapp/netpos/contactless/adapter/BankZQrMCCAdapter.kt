package com.woleapp.netpos.contactless.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.paging.PagedListAdapter
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.RecyclerView
import com.woleapp.netpos.contactless.databinding.ItemMccBinding
import com.woleapp.netpos.contactless.model.BankZMerchantCategory

typealias BankZMCCClickListener = (item: BankZMerchantCategory) -> Unit

object BankZMCCDiffUtil : DiffUtil.ItemCallback<BankZMerchantCategory>() {
    override fun areItemsTheSame(
        oldItem: BankZMerchantCategory,
        newItem: BankZMerchantCategory
    ): Boolean = oldItem.merchantCategoryCode == newItem.merchantCategoryCode

    override fun areContentsTheSame(
        oldItem: BankZMerchantCategory,
        newItem: BankZMerchantCategory
    ): Boolean = oldItem.merchantCategoryCode == newItem.merchantCategoryCode

}

class BankZQrMCCAdapter(private val clickListener: BankZMCCClickListener) :

    PagedListAdapter<BankZMerchantCategory, BankZQrMCCViewHolder>(BankZMCCDiffUtil) {
    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): BankZQrMCCViewHolder {
        return BankZQrMCCViewHolder.from(viewGroup = parent)
    }

    override fun onBindViewHolder(holder: BankZQrMCCViewHolder, position: Int) {
        getItem(position)?.let {
            holder.bind(it)
            holder.binding.root.setOnClickListener { _ -> clickListener.invoke(it) }
        }
    }

}

class BankZQrMCCViewHolder private constructor(val binding: ItemMccBinding) :
    RecyclerView.ViewHolder(binding.root) {
    companion object {
        fun from(viewGroup: ViewGroup): BankZQrMCCViewHolder {
            return BankZQrMCCViewHolder(
                ItemMccBinding.inflate(
                    LayoutInflater.from(viewGroup.context),
                    viewGroup,
                    false
                )
            )
        }
    }

    fun bind(bankZMerchantCategory: BankZMerchantCategory) {
        binding.text.text = bankZMerchantCategory.merchantCategoryDescription
    }
}