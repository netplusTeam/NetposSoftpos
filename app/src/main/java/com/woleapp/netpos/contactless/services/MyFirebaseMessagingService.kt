package com.woleapp.netpos.contactless.services

import android.app.Notification
import android.app.Notification.VISIBILITY_PUBLIC
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.Intent.FLAG_ACTIVITY_CLEAR_TOP
import android.content.Intent.FLAG_ACTIVITY_NEW_TASK
import android.media.RingtoneManager
import android.os.Build
import android.util.Log
import androidx.core.app.NotificationCompat
import androidx.work.*
import com.google.firebase.messaging.FirebaseMessagingService
import com.google.firebase.messaging.RemoteMessage
import com.woleapp.netpos.contactless.R
import com.woleapp.netpos.contactless.model.AppCampaignModel
import com.woleapp.netpos.contactless.model.FirebaseNotificationModelResponse
import com.woleapp.netpos.contactless.model.GetZenithPayByTransferUserTransactionsModel
import com.woleapp.netpos.contactless.model.NormalAppNotificationCampaign
import com.woleapp.netpos.contactless.ui.activities.MainActivity
import com.woleapp.netpos.contactless.util.AppConstants.INT_FIREBASE_PENDING_INTENT_REQUEST_CODE
import com.woleapp.netpos.contactless.util.AppConstants.MERCHANT_QR_PREFIX
import com.woleapp.netpos.contactless.util.AppConstants.STRING_FIREBASE_INTENT_ACTION
import com.woleapp.netpos.contactless.util.AppConstants.STRING_FIREBASE_NORMAL_APP_NOTIFICATION_CAMPAIGN_INTENT_ACTION
import com.woleapp.netpos.contactless.util.AppConstants.TAG_APP_CAMPAIGN_NOTIFICATION_RECEIVED_FROM_BACKEND
import com.woleapp.netpos.contactless.util.AppConstants.TAG_NOTIFICATION_RECEIVED_FROM_BACKEND
import com.woleapp.netpos.contactless.util.AppConstants.WORKER_INPUT_APP_NOTIFICATION_TAG
import com.woleapp.netpos.contactless.util.AppConstants.WORKER_INPUT_FIREBASE_DEVICE_TOKEN_TAG
import com.woleapp.netpos.contactless.util.AppConstants.WORKER_INPUT_PBT_TRANSACTION_TAG
import com.woleapp.netpos.contactless.util.Mappers.mapToTransactionResponse
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.formatAmountToNaira
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.formatCurrencyAmountUsingCurrentModule
import com.woleapp.netpos.contactless.util.RandomPurposeUtil.getCurrentDate
import com.woleapp.netpos.contactless.util.Singletons.gson
import com.woleapp.netpos.contactless.worker.RegisterDeviceTokenToBackendOnTokenChangeWorker
import com.woleapp.netpos.contactless.worker.SaveAppCampaignToDbWorker
import com.woleapp.netpos.contactless.worker.SaveTransactionFromFirebaseMessagingServiceToDbWorker
import timber.log.Timber

class MyFirebaseMessagingService : FirebaseMessagingService() {

    override fun onNewToken(token: String) {
        sendTokenToServer(token)
        super.onNewToken(token)
    }

    override fun onMessageReceived(remoteMessage: RemoteMessage) {
        // Check if message contains a data payload.
        if (remoteMessage.data.toString().isNotEmpty()) {
            handleTransactionMessageForVirtualAccount(remoteMessage)
            handleTransactionMessage(remoteMessage)
            handleNormalNotificationMessage(remoteMessage)
        }

        // Also if you intend on generating your own notifications as a result of a received FCM
        // message, here is where that should be initiated. See sendNotification method below.
        remoteMessage.data["TransactionNotification"]?.let {
            val transactionNotificationFromFirebase = remoteMessage.data["TransactionNotification"]
            val temporalTransaction: FirebaseNotificationModelResponse = gson.fromJson(
                transactionNotificationFromFirebase,
                FirebaseNotificationModelResponse::class.java,
            )

            if (temporalTransaction.email.contains(MERCHANT_QR_PREFIX)) {
                createTransactionNotification(
                    getString(
                        R.string.notification_message_body,
                        temporalTransaction.amount.toDouble()
                            .formatCurrencyAmountUsingCurrentModule(),
                        temporalTransaction.status,
                        temporalTransaction.customerName,
                        temporalTransaction.maskedPan,
                    ),
                )
            }
        }

        // Also if you intend on generating your own notifications as a result of a received FCM
        // message, here is where that should be initiated. See sendNotification method below.
        remoteMessage.data["VirtualNotification"]?.let {
            val temporalTransaction: GetZenithPayByTransferUserTransactionsModel =
                gson.fromJson(it, GetZenithPayByTransferUserTransactionsModel::class.java)

//            val newPaidAt = increaseHourInDate(temporalTransaction.paid_at)
            val transaction: GetZenithPayByTransferUserTransactionsModel =
                gson.fromJson(it, GetZenithPayByTransferUserTransactionsModel::class.java).copy(
                    amount = temporalTransaction.amount, paid_at = temporalTransaction.paid_at
                )
            val transactionAmount = transaction.amount
            Log.d("1234567890", it)
            sendNotification(
                "${
                    formatAmountToNaira(transactionAmount.toDouble())
                } Received \nFrom: ${transaction.payer_account_name}   (${
                    transaction.details.split(
                        "/",
                    )[1]
                })",
            )
            Log.d("NOWWCHECKKKKK", transactionAmount.formatCurrencyAmountUsingCurrentModule())
        }

        remoteMessage.data["MessageBody"]?.let { incomingMessage ->
            val normalAppNotification = gson.fromJson(
                incomingMessage,
                NormalAppNotificationCampaign::class.java,
            )
            normalAppNotification?.let {
                val appCampaignModel =
                    AppCampaignModel(title = it.title, body = it.body, date = getCurrentDate())
                createNotificationForAppCampaign(appCampaignModel)
            }
        }
    }

    private fun handleTransactionMessage(remoteMessage: RemoteMessage) {
        val transactionNotificationFromFirebase = remoteMessage.data["TransactionNotification"]
        Timber.tag("INCOMING_INCOMING").d(transactionNotificationFromFirebase)
        transactionNotificationFromFirebase?.let {
            val temporalTransaction: FirebaseNotificationModelResponse = gson.fromJson(
                it,
                FirebaseNotificationModelResponse::class.java,
            )
            val transaction = gson.toJson(
                temporalTransaction.copy(
                    email = temporalTransaction.email.removePrefix(MERCHANT_QR_PREFIX),
                ).mapToTransactionResponse(),
            )

            if (temporalTransaction.email.contains(MERCHANT_QR_PREFIX)) {
                Timber.tag("INCOMING_INCOMING_").d(gson.toJson(temporalTransaction))
                transaction?.let { transactionResponse ->
                    scheduleJobToSaveTransactionToDatabase(transactionResponse)
                    val intent = Intent(this, MainActivity::class.java)
                    intent.action = STRING_FIREBASE_INTENT_ACTION
                    intent.addFlags(FLAG_ACTIVITY_NEW_TASK or FLAG_ACTIVITY_CLEAR_TOP)
                    intent.putExtra(TAG_NOTIFICATION_RECEIVED_FROM_BACKEND, true)
                    this.startActivity(intent)
                }
            }
        }
    }

    private fun handleTransactionMessageForVirtualAccount(remoteMessage: RemoteMessage) {
        val transactionNotificationFromFirebase = remoteMessage.data["VirtualNotification"]
        Timber.tag("INCOMING_INCOMING").d(transactionNotificationFromFirebase)
        transactionNotificationFromFirebase?.let {
            val temporalTransaction: GetZenithPayByTransferUserTransactionsModel = gson.fromJson(
                it,
                GetZenithPayByTransferUserTransactionsModel::class.java,
            )
            val transaction = gson.toJson(
                temporalTransaction.mapToTransactionResponse(),
            )

            Timber.tag("INCOMING_INCOMING_").d(gson.toJson(temporalTransaction))
            transaction?.let { transactionResponse ->
                scheduleJobToSaveTransactionToDatabase(transactionResponse)
                val intent = Intent(this, MainActivity::class.java)
                intent.action = STRING_FIREBASE_INTENT_ACTION
                intent.addFlags(FLAG_ACTIVITY_NEW_TASK or FLAG_ACTIVITY_CLEAR_TOP)
                intent.putExtra(TAG_NOTIFICATION_RECEIVED_FROM_BACKEND, true)
                this.startActivity(intent)
            }
        }
    }

    private fun handleNormalNotificationMessage(remoteMessage: RemoteMessage) {
        val incomingMessage = remoteMessage.data["MessageBody"]
        incomingMessage?.let {
            val normalAppNotification = gson.fromJson(
                it,
                NormalAppNotificationCampaign::class.java,
            )
            normalAppNotification?.let { notification ->
                val appCampaignModel = AppCampaignModel(
                    title = notification.title,
                    body = notification.body,
                    date = getCurrentDate(),
                )
                val stringifiedAppCampaignModel = gson.toJson(appCampaignModel)
                scheduleJobToSaveAppNotificationCampaignToDatabase(stringifiedAppCampaignModel)

                val intent = Intent(this, MainActivity::class.java)
                intent.action = STRING_FIREBASE_NORMAL_APP_NOTIFICATION_CAMPAIGN_INTENT_ACTION
                intent.addFlags(FLAG_ACTIVITY_NEW_TASK or FLAG_ACTIVITY_CLEAR_TOP)
                intent.putExtra(
                    TAG_APP_CAMPAIGN_NOTIFICATION_RECEIVED_FROM_BACKEND,
                    stringifiedAppCampaignModel,
                )
                this.startActivity(intent)
            }
        }
    }

    private fun createNotificationForAppCampaign(message: AppCampaignModel) {
        val stringifiedMessage = gson.toJson(message)
        val intent = Intent(this, MainActivity::class.java)
        intent.action = STRING_FIREBASE_INTENT_ACTION
        intent.addFlags(FLAG_ACTIVITY_CLEAR_TOP)
        intent.putExtra(TAG_APP_CAMPAIGN_NOTIFICATION_RECEIVED_FROM_BACKEND, stringifiedMessage)
        val pendingIntent = PendingIntent.getActivity(
            this,
            INT_FIREBASE_PENDING_INTENT_REQUEST_CODE, /* Request code */
            intent,
            PendingIntent.FLAG_IMMUTABLE,
        )

        val channelId = "fcm_campaign_channel"
        val defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)
        val notificationBuilder =
            NotificationCompat.Builder(this, channelId).setContentTitle(message.title)
                .setStyle(NotificationCompat.BigTextStyle().bigText(message.body))
                .setSmallIcon(R.drawable.ic_netpos_logo)
                .setPriority(NotificationCompat.PRIORITY_HIGH).setContentText(message.body)
                .setAutoCancel(true).setSound(defaultSoundUri).setContentIntent(pendingIntent)

        val notificationManager =
            getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager

        // Since android Oreo notification channel is needed.
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                channelId,
                message.title,
                NotificationManager.IMPORTANCE_DEFAULT,
            )
            notificationManager.createNotificationChannel(channel)
        }

        notificationManager.notify(277 /* ID of notification */, notificationBuilder.build())
    }

    private fun createTransactionNotification(messageBody: String) {
        val intent = Intent(this, MainActivity::class.java)
        intent.action = STRING_FIREBASE_INTENT_ACTION
        intent.addFlags(FLAG_ACTIVITY_CLEAR_TOP)
        intent.putExtra(TAG_NOTIFICATION_RECEIVED_FROM_BACKEND, true)
        val pendingIntent = PendingIntent.getActivity(
            this,
            INT_FIREBASE_PENDING_INTENT_REQUEST_CODE, /* Request code */
            intent,
            PendingIntent.FLAG_IMMUTABLE,
        )

        val channelId = "fcm_default_channel"
        val defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)
        val notificationBuilder = NotificationCompat.Builder(this, channelId)
            .setContentTitle(getString(R.string.transacion_received))
            .setStyle(NotificationCompat.BigTextStyle().bigText(messageBody))
            .setSmallIcon(R.drawable.ic_netpos_logo).setPriority(NotificationCompat.PRIORITY_HIGH)
            .setContentText(messageBody).setAutoCancel(true).setSound(defaultSoundUri)
            .setContentIntent(pendingIntent)

        val notificationManager =
            getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager

        // Since android Oreo notification channel is needed.
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                channelId,
                getString(R.string.transacion_received),
                NotificationManager.IMPORTANCE_DEFAULT,
            )
            notificationManager.createNotificationChannel(channel)
        }

        notificationManager.notify(0 /* ID of notification */, notificationBuilder.build())
    }

    private fun sendTokenToServer(token: String) {
        scheduleJobToSendTokenToServer(token) // This method schedules job to send new token to the server
    }

    private fun scheduleJobToSaveTransactionToDatabase(transactionFromFireBaseInStringFormat: String) {
        val inputData: Data = Data.Builder()
            .putString(WORKER_INPUT_PBT_TRANSACTION_TAG, transactionFromFireBaseInStringFormat)
            .build()

        val constraints =
            Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()
        val work =
            OneTimeWorkRequest.Builder(SaveTransactionFromFirebaseMessagingServiceToDbWorker::class.java)
                .setConstraints(constraints).setInputData(inputData).build()
        WorkManager.getInstance(this).beginWith(work).enqueue()
    }

    private fun scheduleJobToSaveAppNotificationCampaignToDatabase(
        appNotificationCampaignInStringFormat: String,
    ) {
        val inputData: Data = Data.Builder()
            .putString(WORKER_INPUT_APP_NOTIFICATION_TAG, appNotificationCampaignInStringFormat)
            .build()

        val constraints =
            Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()
        val work = OneTimeWorkRequest.Builder(SaveAppCampaignToDbWorker::class.java)
            .setConstraints(constraints).setInputData(inputData).build()
        WorkManager.getInstance(this).beginWith(work).enqueue()
    }

    private fun scheduleJobToSendTokenToServer(newToken: String) {
        val inputData =
            Data.Builder().putString(WORKER_INPUT_FIREBASE_DEVICE_TOKEN_TAG, newToken).build()

        val constraints =
            Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()
        val work =
            OneTimeWorkRequest.Builder(RegisterDeviceTokenToBackendOnTokenChangeWorker::class.java)
                .setConstraints(constraints).setInputData(inputData).build()
        WorkManager.getInstance(this).beginWith(work).enqueue()
    }

    private fun sendNotification(messageBody: String) {
        val intent = Intent(this, MainActivity::class.java)
        intent.action = STRING_FIREBASE_INTENT_ACTION
        intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP)
        intent.putExtra(TAG_NOTIFICATION_RECEIVED_FROM_BACKEND, true)
        val pendingIntent = PendingIntent.getActivity(
            this,
            INT_FIREBASE_PENDING_INTENT_REQUEST_CODE, /* Request code */
            intent,
            PendingIntent.FLAG_IMMUTABLE,
        )

        val channelId = "fcm_default_channel"
        val defaultSoundUri = RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION)
        val notificationBuilder = NotificationCompat.Builder(this, channelId)
            .setContentTitle(getString(R.string.transacion_received))
            .setStyle(NotificationCompat.BigTextStyle().bigText(messageBody))
            .setSmallIcon(R.drawable.ic_netpos_logo).setContentText(messageBody).setAutoCancel(true)
            .setSound(defaultSoundUri).setContentIntent(pendingIntent)
            .setPriority(NotificationCompat.PRIORITY_HIGH) // or NotificationCompat.PRIORITY_MAX
            .setDefaults(Notification.DEFAULT_ALL)
            .setVisibility(NotificationCompat.VISIBILITY_PUBLIC)

        val notificationManager =
            getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        // Since android Oreo notification channel is needed.
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val channel = NotificationChannel(
                channelId,
                getString(R.string.transacion_received),
                NotificationManager.IMPORTANCE_DEFAULT,
            )
            notificationManager.createNotificationChannel(channel)
        }

        notificationManager.notify(0 /* ID of notification */, notificationBuilder.build())
    }


}
