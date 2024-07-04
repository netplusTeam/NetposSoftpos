package com.woleapp.netpos.contactless.worker

import android.content.Context
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
import com.woleapp.netpos.contactless.model.NotificationRegisterDeviceTokenModel
import com.woleapp.netpos.contactless.model.RegisterDeviceTokenResponse
import com.woleapp.netpos.contactless.util.AppConstants.NOTIFICATION_ERROR
import com.woleapp.netpos.contactless.util.AppConstants.WORKER_INPUT_FIREBASE_DEVICE_TOKEN_TAG
import com.woleapp.netpos.contactless.util.NotificationClient
import com.woleapp.netpos.contactless.util.RxJavaUtils.getSingleTransformer
import com.woleapp.netpos.contactless.util.Singletons
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

class RegisterDeviceTokenToBackendOnTokenChangeWorker(
    val context: Context,
    private val workParameters: WorkerParameters
) : CoroutineWorker(context, workParameters) {
    private val notificationRepository = NotificationClient.getInstance()

    override suspend fun doWork(): Result {
        val terminalId = Singletons.getCurrentlyLoggedInUser()?.terminal_id
        val userName = Singletons.getCurrentlyLoggedInUser()?.netplus_id.toString()
        val deviceToken = inputData.getString(WORKER_INPUT_FIREBASE_DEVICE_TOKEN_TAG)

        return if (terminalId != null && deviceToken != null) {
            val req = NotificationRegisterDeviceTokenModel(deviceToken, terminalId, userName)
            try {
                val success = registerDeviceToken(req).success
                if (success) {
                    Result.success()
                } else {
                    Result.retry()
                }
            } catch (e: Exception) {
                Result.retry()
            }
        } else {
            Result.retry()
        }
    }

    private suspend fun registerDeviceToken(req: NotificationRegisterDeviceTokenModel): RegisterDeviceTokenResponse =
        suspendCancellableCoroutine { cont ->
            val disposable = notificationRepository.registerDeviceToken(req)
                .compose(getSingleTransformer(NOTIFICATION_ERROR))
                .subscribe(
                    { response ->
                        cont.resume(response)
                    },
                    { error ->
                        cont.resumeWithException(error)
                    }
                )

            // Dispose the disposable if the coroutine is cancelled
            cont.invokeOnCancellation {
                disposable.dispose()
            }
        }

}
