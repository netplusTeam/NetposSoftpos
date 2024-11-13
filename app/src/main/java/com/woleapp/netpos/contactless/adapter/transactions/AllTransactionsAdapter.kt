package com.woleapp.netpos.contactless.adapter.transactions

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.danbamitale.epmslib.extensions.formatCurrencyAmount
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.TransactionClickListener
import com.woleapp.netpos.contactless.model.payment.Transaction
import com.woleapp.netpos.contactless.util.RandomPurposeUtil
import com.woleapp.netpos.contactless.util.formatDate

// AllTransactionsAdapter.kt
class AllTransactionsAdapter(
    private val items: MutableList<Transaction>,
    val listener: TransactionClickListener,
) : RecyclerView.Adapter<AllTransactionsAdapter.ItemViewHolder>() {
    class ItemViewHolder(itemView: View) : RecyclerView.ViewHolder(itemView) {
        val customerName: TextView = itemView.findViewById(R.id.holder_name)
        val maskedPan: TextView = itemView.findViewById(R.id.card_details)
        val date: TextView = itemView.findViewById(R.id.transaction_date)
        val rrn: TextView = itemView.findViewById(R.id.transaction_ref)
        val status: TextView = itemView.findViewById(R.id.transaction_status)
        val statusImg: ImageView = itemView.findViewById(R.id.transaction_status_img)
        val amount: TextView = itemView.findViewById(R.id.transaction_amount)
    }

    override fun onCreateViewHolder(
        parent: ViewGroup,
        viewType: Int,
    ): ItemViewHolder {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.layout_transaction_item, parent, false)
        return ItemViewHolder(view)
    }

    override fun onBindViewHolder(
        holder: ItemViewHolder,
        position: Int,
    ) {
        val item = items[position]

        val cardDetails =
            "${item.cardLabel} ending with ${item.maskedPan.takeLast(4)}"
        holder.maskedPan.text = cardDetails
        if (item.responseCode == "00") {
            holder.status.text =
                "Approved"
            holder.status.setBackgroundResource(R.drawable.success)
            holder.statusImg.setBackgroundResource(R.drawable.approved)
        } else {
            holder.status.text =
                "Declined"
            holder.status.setBackgroundResource(R.drawable.failed)
            holder.statusImg.setBackgroundResource(R.drawable.declined)
        }
        holder.customerName.text = item.cardHolder
        holder.rrn.text = item.rrn
        holder.amount.text =
            RandomPurposeUtil.divideLongBy100(item.amount.times(100).toLong()).formatCurrencyAmount("\u20A6")
        holder.date.text = item.transactionTimeInMillis.toLong().formatDate()
    }

    override fun getItemCount(): Int = items.size

    // Add new data
    fun addData(newItems: List<Transaction>) {
        val startPosition = items.size
        items.addAll(newItems)
        notifyItemRangeInserted(startPosition, newItems.size)
    }
}
