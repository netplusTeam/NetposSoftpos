package com.woleapp.netpos.contactless.viewmodels

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.woleapp.netpos.contactless.model.GetZenithPayByTransferUserTransactionsModel
import com.woleapp.netpos.contactless.util.Resource
import com.woleapp.netpos.contactless.util.disposeWith
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import javax.inject.Inject

//@HiltViewModel
//class VirtualAccountViewModel @Inject constructor(
//    private val zenithPbtRepositoryLocal: ZenithPayByTransferRepositoryLocal
//): ViewModel(){
//    private val compositeDisposable = CompositeDisposable()
//    private val _eodTransactions: MutableLiveData<Resource<List<GetZenithPayByTransferUserTransactionsModel>>> =
//        MutableLiveData()
//    val eodTransactions: LiveData<Resource<List<GetZenithPayByTransferUserTransactionsModel>>> get() = _eodTransactions
//
//
//    fun getEoD(date: String) {
//        _eodTransactions.postValue(Resource.loading())
//        zenithPbtRepositoryLocal.getEoD(date)
//            .subscribeOn(Schedulers.io())
//            .observeOn(AndroidSchedulers.mainThread())
//            .subscribe { t1, t2 ->
//                t1?.let {
//                    _eodTransactions.postValue(Resource.success(it))
//                }
//                t2?.let {
//                    _eodTransactions.postValue(Resource.error(null))
//                }
//            }.disposeWith(compositeDisposable)
//    }
//}