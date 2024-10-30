package com.woleapp.netpos.contactless.viewmodels

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.woleapp.netpos.contactless.database.dao.AppNotificationDao
import com.woleapp.netpos.contactless.model.AppCampaignModel
import com.woleapp.netpos.contactless.model.RequestNfcRequest
import com.woleapp.netpos.contactless.network.NotificationRepository
import com.woleapp.netpos.contactless.util.AppConstants.DATA_BASE_ERROR_TAG
import com.woleapp.netpos.contactless.util.AppConstants.NOTIFICATION_ERROR
import com.woleapp.netpos.contactless.util.Resource
import com.woleapp.netpos.contactless.util.RxJavaUtils.getSingleTransformer
import com.woleapp.netpos.contactless.util.disposeWith
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.Scheduler
import io.reactivex.Single
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject
import javax.inject.Named

@HiltViewModel
class NotificationViewModel
    @Inject
    constructor(
        private val notificationRepository: NotificationRepository,
        private val disposable: CompositeDisposable,
        private val notificationDao: AppNotificationDao,
        @Named("io-scheduler")
        private val ioScheduler: Scheduler,
        @Named("main-scheduler")
        private val mainThreadScheduler: Scheduler,
    ) : ViewModel() {
        val allMessages: LiveData<List<AppCampaignModel>> get() = notificationDao.getAllMessages()
        val unreadNotifications: LiveData<List<AppCampaignModel>> get() = notificationDao.getAllMessagesByHasBeenReadStatus(false)
        private val _notificationDeleted: MutableLiveData<Boolean> = MutableLiveData(false)
        val notificationDeleted: LiveData<Boolean> get() = _notificationDeleted
        private var _clickedMessage: MutableLiveData<AppCampaignModel> = MutableLiveData()
        val clickedMessage: LiveData<AppCampaignModel> get() = _clickedMessage

        fun registerDeviceToken(
            token: String,
            terminalId: String,
            username: String,
        ) {
            disposable.add(
                notificationRepository.registerDeviceToken(token, terminalId, username)
                    .compose(getSingleTransformer(NOTIFICATION_ERROR))
                    .subscribe(),
            )
        }

        fun markMessageAsRead(message: AppCampaignModel) {
            val msg = message.copy(hasBeenRead = true)
            _notificationDeleted.postValue(false)
            _clickedMessage.postValue(message)
            notificationDao.markMessageHasRead(msg)
                .compose(getSingleTransformer(DATA_BASE_ERROR_TAG))
                .subscribe()
        }

        fun deleteMessage(message: AppCampaignModel) {
            notificationDao.deleteMessage(message)
                .compose(getSingleTransformer(DATA_BASE_ERROR_TAG))
                .subscribe { affectedRows, error ->
                    affectedRows?.let {
                        if (it > 0) _notificationDeleted.postValue(true)
                    }
                    error?.let {
                        _notificationDeleted.postValue(false)
                    }
                }.disposeWith(disposable)
        }

        fun requestNfcDevice(
            requestNfcRequest: RequestNfcRequest,
            partnerId: String,
            deviceId: String,
        ) = notificationRepository.requestNfcDevice(requestNfcRequest, partnerId, deviceId)
            .flatMap {
                if (it.isSuccessful) {
                    Single.just(Resource.success(it.body()))
                } else {
                    Single.just(Resource.error(it.errorBody()))
                }
            }

        override fun onCleared() {
            super.onCleared()
            disposable.clear()
        }
    }
