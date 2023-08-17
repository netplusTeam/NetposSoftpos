package com.woleapp.netpos.contactless.network

import androidx.lifecycle.MutableLiveData
import androidx.paging.DataSource
import com.woleapp.netpos.contactless.model.BankZMCCDto
import com.woleapp.netpos.contactless.model.BankZMerchantCategory
import io.reactivex.disposables.CompositeDisposable

class BankZQrMCCDataSourceFactory(
    private val bankZMCCDto: BankZMCCDto,
    private val disposable: CompositeDisposable
) :
    DataSource.Factory<Int, BankZMerchantCategory>() {
    val itemLiveDataSource = MutableLiveData<BankZQrMCCDataSource>()

    override fun create(): DataSource<Int, BankZMerchantCategory> {
        val xx = BankZQrMCCDataSource(bankZMCCDto, disposable)
        itemLiveDataSource.postValue(xx)
        return xx
    }
}