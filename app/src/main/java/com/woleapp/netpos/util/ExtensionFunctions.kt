package com.woleapp.netpos.util

import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable
import java.text.SimpleDateFormat
import java.util.*

fun Long.formatDate(): String? =
    SimpleDateFormat("yyyy-MM-dd hh:mm a", Locale.getDefault()).format(Date(this))

fun Disposable.disposeWith(compositeDisposable: CompositeDisposable) {
    compositeDisposable.add(this)
}
