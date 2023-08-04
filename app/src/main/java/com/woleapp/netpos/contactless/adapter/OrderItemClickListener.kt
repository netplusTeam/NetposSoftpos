package com.woleapp.netpos.contactless.adapter

import android.annotation.SuppressLint
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.annotation.LayoutRes
import androidx.databinding.DataBindingUtil
import androidx.databinding.ViewDataBinding
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.RecyclerView
import dagger.assisted.Assisted
import dagger.assisted.AssistedInject

typealias ItemClickListener<T> = (itemView: View, clickedData: T) -> Unit

class GenericRecyclerViewAdapter<T> @AssistedInject constructor(
    @Assisted @LayoutRes
    private val layoutId: Int,
    @Assisted private val bindingInterface: GenericRecyclerViewBindingInterface<T>,
    @Assisted private val onClick: ItemClickListener<T>,
) :
    RecyclerView.Adapter<GenericRecyclerViewAdapter.ViewHolder<ViewDataBinding>>() {

    private var dataSet: ArrayList<T> = arrayListOf()

    class ViewHolder<BINDING : ViewDataBinding>(val view: ViewDataBinding) :
        RecyclerView.ViewHolder(view.root) {
        fun <T> bind(
            item: T,
            bindingInterface: GenericRecyclerViewBindingInterface<T>,
        ) {
            bindingInterface.bindData(item, view)
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder<ViewDataBinding> {
        val binding = DataBindingUtil.inflate<ViewDataBinding>(
            LayoutInflater.from(parent.context),
            layoutId,
            parent,
            false,
        )
        return ViewHolder(binding)
    }

    override fun getItemCount(): Int = dataSet.size

    override fun onBindViewHolder(holder: ViewHolder<ViewDataBinding>, position: Int) {
        holder.apply {
            bind(dataSet[position], bindingInterface)
            itemView.setOnClickListener {
                onClick.invoke(it, dataSet[position])
            }
        }
    }

    @SuppressLint("NotifyDataSetChanged")
    fun updateData(newData: ArrayList<T>) {
        val diff = GenericRecyclerViewDiffUtil(newData, dataSet)
        val diffResult = DiffUtil.calculateDiff(diff)
        dataSet = newData
        notifyDataSetChanged()
        diffResult.dispatchUpdatesTo(this)
    }
}
