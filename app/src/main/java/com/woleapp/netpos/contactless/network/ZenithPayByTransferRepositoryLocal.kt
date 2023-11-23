package com.woleapp.netpos.contactless.network

import com.woleapp.netpos.contactless.model.GetZenithPayByTransferUserTransactionsModel
import io.reactivex.Single
import javax.inject.Inject
import javax.inject.Singleton

//@Singleton
//class ZenithPayByTransferRepositoryLocal @Inject constructor(
//    private val zenithPayByTransferLocal: ZenithPayByTransferUserTransactionsDao
//) {
//    fun getLastTransaction(): Single<GetZenithPayByTransferUserTransactionsModel> =
//        zenithPayByTransferLocal.getTheLastTransaction()
//
//    fun getAllTransaction(): Single<List<GetZenithPayByTransferUserTransactionsModel>> =
//        zenithPayByTransferLocal.getAllTransactions()
//
//    fun saveMultipleTransactions(testTrans: List<GetZenithPayByTransferUserTransactionsModel>): Single<LongArray> =
//        zenithPayByTransferLocal.insertMultipleTransactions(testTrans)
//
//    fun getEoD(transDate: String): Single<List<GetZenithPayByTransferUserTransactionsModel>> =
//        zenithPayByTransferLocal.getEoD(transDate + "T" + "%")
//}