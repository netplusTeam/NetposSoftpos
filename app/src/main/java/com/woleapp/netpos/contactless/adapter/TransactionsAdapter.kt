package com.woleapp.netpos.contactless.adapter

import android.view.LayoutInflater
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.danbamitale.epmslib.entities.TransactionResponse
import com.danbamitale.epmslib.extensions.formatCurrencyAmount
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.databinding.LayoutTransactionItemBinding
import com.woleapp.netpos.contactless.util.Mappers.toTransactionResponse
import com.woleapp.netpos.contactless.util.readableStringToLocal

typealias TransactionClickListener = (TransactionResponse) -> Unit

object TransactionItemDiffUtil : DiffUtil.ItemCallback<com.woleapp.netpos.contactless.model.payment.transactions.Transaction>() {
    override fun areItemsTheSame(
        oldItem: com.woleapp.netpos.contactless.model.payment.transactions.Transaction,
        newItem: com.woleapp.netpos.contactless.model.payment.transactions.Transaction,
    ): Boolean {
        val oldIdentifier = oldItem.rrn.takeIf { !it.isNullOrBlank() } ?: oldItem.transaction_reference
        val newIdentifier = newItem.rrn.takeIf { !it.isNullOrBlank() } ?: newItem.transaction_reference

        return oldIdentifier == newIdentifier
    }

    override fun areContentsTheSame(
        oldItem: com.woleapp.netpos.contactless.model.payment.transactions.Transaction,
        newItem: com.woleapp.netpos.contactless.model.payment.transactions.Transaction,
    ) = oldItem.transactionType == newItem.transactionType
}

class TransactionsAdapter(val listener: TransactionClickListener) :
    ListAdapter<com.woleapp.netpos.contactless.model.payment.transactions.Transaction, TransactionsViewHolder>(TransactionItemDiffUtil) {
    override fun onCreateViewHolder(
        parent: ViewGroup,
        viewType: Int,
    ) = TransactionsViewHolder.from(parent)

    override fun onBindViewHolder(
        holder: TransactionsViewHolder,
        position: Int,
    ) {
        getItem(position)?.let { transactionResponse ->
            holder.binding.root.setOnClickListener { listener.invoke(transactionResponse.toTransactionResponse()) }
            holder.bind(getItem(position))
        }
    }
}

class TransactionsViewHolder private constructor(val binding: LayoutTransactionItemBinding) :
    RecyclerView.ViewHolder(binding.root) {
        companion object {
            fun from(parent: ViewGroup) =
                TransactionsViewHolder(
                    LayoutTransactionItemBinding.inflate(LayoutInflater.from(parent.context), parent, false),
                )
        }

        val customerName: TextView = itemView.findViewById(R.id.holder_name)
        val maskedPan: TextView = itemView.findViewById(R.id.card_details)
        val date: TextView = itemView.findViewById(R.id.transaction_date)
        val rrn: TextView = itemView.findViewById(R.id.transaction_ref)
        val status: TextView = itemView.findViewById(R.id.transaction_status)
        val statusImg: ImageView = itemView.findViewById(R.id.transaction_status_img)
        val amount: TextView = itemView.findViewById(R.id.transaction_amount)

        fun bind(transactionResponse: com.woleapp.netpos.contactless.model.payment.transactions.Transaction) {
            binding.executePendingBindings()

            val item = transactionResponse
            customerName.text = item.payer_account_name.toString()?.takeIf { it.isNotEmpty() } ?: "Payer"

            if (item.transactionType == "pos") {
                rrn.text = item.rrn
                if ((item.cardLabel != "" || item.cardLabel.isNotEmpty()) && item.maskedPan?.isNotEmpty() == true) {
                    val cardDetails =
                        "${item.cardLabel} ending with ${item.maskedPan.takeLast(4)}"
                    maskedPan.text = cardDetails
                } else if (item.maskedPan?.isNotEmpty() == true) {
                    val cardDetails =
                        "Card ending with ${item.maskedPan.takeLast(4)}"
                    maskedPan.text = cardDetails
                }
            } else if ((item.transactionType == "pbt")) {
                if (item.payer_account_name.toString().isNullOrEmpty()) {
                    customerName.text = "Payer"
                } else {
                    customerName.text = item.payer_account_name.toString()
                }
                if (item.payer_account_number.toString().isNullOrEmpty()) {
                    customerName.text = "Payer"
                } else {
                    maskedPan.text = item.payer_account_number.toString()
                }
                rrn.text = item.transaction_reference.toString()
            }
            if (item.responseCode == "00") {
                status.text =
                    "Approved"
                status.setBackgroundResource(R.drawable.success)
                statusImg.setBackgroundResource(R.drawable.approved)
            } else {
                status.text =
                    "Declined"
                status.setBackgroundResource(R.drawable.failed)
                statusImg.setBackgroundResource(R.drawable.declined)
            }
            amount.text = item.amount.formatCurrencyAmount()
            val dateText =
                item.dateCreated?.takeIf { it.isNotEmpty() }?.let { readableStringToLocal(it) }
                    ?: item.time.toString()?.takeIf { it.isNotEmpty() }?.let { readableStringToLocal(it) }

            dateText?.let { date.text = it }
//            rootLayout.setOnClickListener { listener.invoke(item.toTransactionResponse()) }

//            val cardDetails =
//                "${transactionResponse.cardLabel} ending with ${transactionResponse.maskedPan.takeLast(4)}"
//            binding.cardDetails.text = cardDetails
//            if (transactionResponse.responseCode == "00") {
//                binding.transactionStatus.text =
//                    "Approved"
//                binding.transactionStatus.setBackgroundResource(R.drawable.success)
//                binding.transactionStatusImg.setBackgroundResource(R.drawable.approved)
//            } else {
//                binding.transactionStatus.text =
//                    "Declined"
//                binding.transactionStatus.setBackgroundResource(R.drawable.failed)
//                binding.transactionStatusImg.setBackgroundResource(R.drawable.declined)
//            }
//            binding.holderName.text = transactionResponse.cardHolder
//            binding.transactionRef.text = transactionResponse.rrn
//            binding.transactionAmount.text =
//                divideLongBy100(transactionResponse.amount.toLong()).formatCurrencyAmount("\u20A6")
//            binding.transactionDate.text = transactionResponse.time
        }
    }
