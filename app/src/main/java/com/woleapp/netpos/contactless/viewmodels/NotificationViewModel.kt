package com.woleapp.netpos.contactless.viewmodels

import android.util.Log
import android.widget.Toast
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.dsofttech.dprefs.utils.DPrefs
import com.woleapp.netpos.contactless.database.dao.AppNotificationDao
import com.woleapp.netpos.contactless.model.AppCampaignModel
import com.woleapp.netpos.contactless.model.FeedbackRequest
import com.woleapp.netpos.contactless.model.PayWithQrRequest
import com.woleapp.netpos.contactless.network.NotificationRepository
import com.woleapp.netpos.contactless.util.AppConstants.DATA_BASE_ERROR_TAG
import com.woleapp.netpos.contactless.util.AppConstants.DELETE_ACCOUNT
import com.woleapp.netpos.contactless.util.AppConstants.NOTIFICATION_ERROR
import com.woleapp.netpos.contactless.util.Resource
import com.woleapp.netpos.contactless.util.RxJavaUtils.getSingleTransformer
import com.woleapp.netpos.contactless.util.disposeWith
import dagger.hilt.android.lifecycle.HiltViewModel
import io.reactivex.Scheduler
import io.reactivex.Single
import io.reactivex.disposables.CompositeDisposable
import org.json.JSONException
import org.json.JSONObject
import javax.inject.Inject
import javax.inject.Named

@HiltViewModel
class NotificationViewModel @Inject constructor(
    private val notificationRepository: NotificationRepository,
    private val disposable: CompositeDisposable,
    @Named("io-scheduler")
    private val ioScheduler: Scheduler,
    @Named("main-scheduler")
    private val mainThreadScheduler: Scheduler,
    private val notificationDao: AppNotificationDao,
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
        username: String
    ) {
        disposable.add(
            notificationRepository.registerDeviceToken(token, terminalId, username)
                .compose(getSingleTransformer(NOTIFICATION_ERROR))
                .subscribe(),
        )
    }

    fun feedbackFromMerchants(feedbackRequest: FeedbackRequest, terminalId: String, deviceId: String) =
        notificationRepository.feedbackFromMerchants(feedbackRequest, terminalId, deviceId)
            .flatMap {
                if (it.isSuccessful) {
                    Single.just(Resource.success(it.body()))
                } else {
                    Single.just(Resource.error(it.errorBody()))
                }
            }

    fun deleteAccount(username: String, deviceId: String) =
        notificationRepository.deleteAccount(username, deviceId)
            .flatMap {
                if (it.isSuccessful) {
                    Single.just(Resource.success(it.body()))
                } else {
                    try {
                        val jsonObject = JSONObject(it.errorBody()?.string())
                        val error = jsonObject.getString("message")
                        DPrefs.putString(DELETE_ACCOUNT, error)
                    } catch (e: JSONException) {
                        e.printStackTrace()
                    }
                    Single.just(Resource.error(it.errorBody()))
                }
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

    override fun onCleared() {
        super.onCleared()
        disposable.clear()
    }
}

