package com.woleapp.netpos.contactless.adapter

import androidx.databinding.ViewDataBinding

interface GenericRecyclerViewBindingInterface<T> {
    fun bindData(item: T, view: ViewDataBinding)
}