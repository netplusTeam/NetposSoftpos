package com.woleapp.netpos.contactless.adapter

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import android.widget.TextView
import com.woleapp.netpos.contactless.model.FBNBranch
import com.woleapp.netpos.contactless.model.LgaByState
import com.woleapp.netpos.contactless.model.MerchantCategoryCode

class BranchAdapter(
    categoryList: ArrayList<FBNBranch>,
    context: Context,
    layoutId: Int,
) :
    ArrayAdapter<FBNBranch>(context, layoutId, categoryList) {
    override fun getView(
        position: Int,
        convertView: View?,
        parent: ViewGroup,
    ): View {
        val view =
            LayoutInflater.from(parent.context)
                .inflate(
                    android.R.layout.simple_expandable_list_item_1,
                    parent,
                    false,
                ) as TextView

        view.text = super.getItem(position)?.branch_name

        return view
    }
}

class LgaByStateAdapter(
    categoryList: ArrayList<LgaByState>,
    context: Context,
    layoutId: Int,
) :
    ArrayAdapter<LgaByState>(context, layoutId, categoryList) {
    override fun getView(
        position: Int,
        convertView: View?,
        parent: ViewGroup,
    ): View {
        val view =
            LayoutInflater.from(parent.context)
                .inflate(
                    android.R.layout.simple_expandable_list_item_1,
                    parent,
                    false,
                ) as TextView

        view.text = super.getItem(position)?.lga_name

        return view
    }
}

class MerchantCategoryCodeAdapter(
    categoryList: ArrayList<MerchantCategoryCode>,
    context: Context,
    layoutId: Int,
) :
    ArrayAdapter<MerchantCategoryCode>(context, layoutId, categoryList) {
    override fun getView(
        position: Int,
        convertView: View?,
        parent: ViewGroup,
    ): View {
        val view =
            LayoutInflater.from(parent.context)
                .inflate(
                    android.R.layout.simple_expandable_list_item_1,
                    parent,
                    false,
                ) as TextView

        view.text = super.getItem(position)?.category_name

        return view
    }
}
