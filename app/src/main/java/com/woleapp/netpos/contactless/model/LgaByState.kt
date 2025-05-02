package com.woleapp.netpos.contactless.model

data class LgaByState(
    val id: Int,
    val lga_code: String,
    val lga_name: String,
    val state_code: String,
) {
    override fun toString(): String {
        return lga_name
    }
}
