package com.woleapp.netpos.contactless.adapter.transactions

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.constraintlayout.widget.ConstraintLayout
import androidx.recyclerview.widget.RecyclerView
import com.danbamitale.epmslib.extensions.formatCurrencyAmount
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.adapter.TransactionClickListener
import com.woleapp.netpos.contactless.model.payment.Transaction
import com.woleapp.netpos.contactless.util.Mappers.toTransactionResponse
import com.woleapp.netpos.contactless.util.readableStringToLocal

// AllTransactionsAdapter.kt
class AllTransactionsAdapter(
    private val items: MutableList<com.woleapp.netpos.contactless.model.payment.transactions.Transaction>,
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
        val rootLayout: ConstraintLayout = itemView.findViewById(R.id.transactionConstraintLayout)
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
        if (position < 0 || position >= items.size) return // ✅ Prevents invalid access
        val item = items[position]
        holder.customerName.text = item.payer_account_name.toString()?.takeIf { it.isNotEmpty() } ?: "Payer"

        if (item.transactionType == "pos") {
            holder.rrn.text = item.rrn
            if ((item.cardLabel != "" || item.cardLabel.isNotEmpty()) && item.maskedPan?.isNotEmpty() == true) {
                val cardDetails =
                    "${item.cardLabel} ending with ${item.maskedPan.takeLast(4)}"
                holder.maskedPan.text = cardDetails
            } else if (item.maskedPan?.isNotEmpty() == true) {
                val cardDetails =
                    "Card ending with ${item.maskedPan.takeLast(4)}"
                holder.maskedPan.text = cardDetails
            }
        } else if ((item.transactionType == "pbt")) {
            if (item.payer_account_name.toString().isNullOrEmpty()) {
                holder.customerName.text = "Payer"
            } else {
                holder.customerName.text = item.payer_account_name.toString()
            }
            if (item.payer_account_number.toString().isNullOrEmpty()) {
                holder.customerName.text = "Payer"
            } else {
                holder.maskedPan.text = item.payer_account_number.toString()
            }
            holder.rrn.text = item.transaction_reference.toString()
        }
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
        holder.amount.text = item.amount.formatCurrencyAmount()
        val dateText =
            item.dateCreated?.takeIf { it.isNotEmpty() }?.let { readableStringToLocal(it) }
                ?: item.time.takeIf { it.isNotEmpty() }?.let { readableStringToLocal(it) }

        dateText?.let { holder.date.text = it }

        holder.rootLayout.setOnClickListener { listener.invoke(item.toTransactionResponse()) }
    }

    override fun getItemCount(): Int = items.size

    fun clearData() {
        items.clear()
        notifyDataSetChanged()
    }
}
