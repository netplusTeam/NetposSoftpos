package com.woleapp.netpos.contactless.worker

import android.content.Context
import androidx.work.Worker
import androidx.work.WorkerParameters
import com.google.gson.Gson
import com.woleapp.netpos.contactless.database.AppDatabase
import com.woleapp.netpos.contactless.model.AppCampaignModel
import com.woleapp.netpos.contactless.util.AppConstants
import com.woleapp.netpos.contactless.util.disposeWith
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers
import java.util.concurrent.CountDownLatch

class SaveAppCampaignToDbWorker(
    context: Context,
    workerParameters: WorkerParameters,
) : Worker(context, workerParameters) {
    private val gson = Gson()
    private val compositeDisposable = CompositeDisposable()
    private val ioScheduler = Schedulers.io()
    private val mainThreadScheduler = AndroidSchedulers.mainThread()
    private val appNotificationDao =
        AppDatabase.getDatabaseInstance(context).getAppNotificationDao()

    override fun doWork(): Result {
        val inputData = inputData.getString(AppConstants.WORKER_INPUT_APP_NOTIFICATION_TAG)
        val notificationToSaveToDb = gson.fromJson(inputData, AppCampaignModel::class.java)
        val numOfAffectedRows = notificationToSaveToDb?.let { notification ->
            val latch = CountDownLatch(1)
            var affectedRows = 0L
            appNotificationDao.insertMessage(notification)
                .subscribeOn(ioScheduler)
                .observeOn(mainThreadScheduler)
                .subscribe { rows, error ->
                    rows?.let {
                        affectedRows = it
                        latch.countDown()
                    } ?: run {
                        affectedRows = 0L
                        latch.countDown()
                    }

                    error?.let {
                        affectedRows = 0L
                        latch.countDown()
                    }
                }.disposeWith(compositeDisposable)
            latch.await()
            affectedRows
        } ?: 0

        return if (numOfAffectedRows > 0) Result.success() else Result.retry()
    }

    override fun onStopped() {
        super.onStopped()
        compositeDisposable.clear()
    }
}
