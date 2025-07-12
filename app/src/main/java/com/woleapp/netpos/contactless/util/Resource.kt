package com.woleapp.netpos.contactless.util

import com.woleapp.netpos.contactless.model.Status

data class Resource<out T>(
    val status: Status,
    val data: T?,
    val message: String,
    val code: Int? = null,
) {
    companion object {
        fun <T> success(data: T?): Resource<T> =
            Resource(
                Status.SUCCESS,
                data,
                "Success",
            )

        fun <T> error(
            data: T?,
            code: Int? = null,
        ): Resource<T> =
            Resource(
                Status.ERROR,
                data,
                "Error",
                code,
            )

        fun <T> loading(data: T?): Resource<T> =
            Resource(
                Status.LOADING,
                data,
                "Loading",
            )

        fun <T> timeOut(data: T?): Resource<T> =
            Resource(
                Status.TIMEOUT,
                data,
                "TimeOut",
            )
    }
}
