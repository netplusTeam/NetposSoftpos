package com.woleapp.netpos.contactless.cr100.utils

class TLV {
    @JvmField
	var tag: String? = null
    @JvmField
	var length: String? = null
    @JvmField
	var value: String? = null
    @JvmField
	var isNested = false
    @JvmField
	var tlvList: List<TLV>? = null
    override fun toString(): String {
        return "TLV{" +
                "tag='" + tag + '\'' +
                ", length='" + length + '\'' +
                ", value='" + value + '\'' +
                ", isNested=" + isNested +
                '}'
    }
}
