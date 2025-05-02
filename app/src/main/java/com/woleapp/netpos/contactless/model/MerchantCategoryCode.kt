package com.woleapp.netpos.contactless.model

data class MerchantCategoryCode(
    val category_code: String,
    val category_name: String,
    val id: Int,
) {
    override fun toString(): String {
        return category_name
    }
}
