.class public final Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "MyFirebaseMessagingService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\r\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\tH\u0002J\u0010\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\tH\u0002\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;",
        "Lcom/google/firebase/messaging/FirebaseMessagingService;",
        "()V",
        "createNotificationForAppCampaign",
        "",
        "message",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        "createTransactionNotification",
        "messageBody",
        "",
        "handleNormalNotificationMessage",
        "remoteMessage",
        "Lcom/google/firebase/messaging/RemoteMessage;",
        "handleTransactionMessage",
        "handleTransactionMessageForVirtualAccount",
        "onMessageReceived",
        "onNewToken",
        "token",
        "scheduleJobToSaveAppNotificationCampaignToDatabase",
        "appNotificationCampaignInStringFormat",
        "scheduleJobToSaveTransactionToDatabase",
        "transactionFromFireBaseInStringFormat",
        "scheduleJobToSendTokenToServer",
        "newToken",
        "sendNotification",
        "sendTokenToServer",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method

.method private final createNotificationForAppCampaign(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 10
    .param p1, "message"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    .line 201
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "stringifiedMessage":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 203
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.woleapp.netpos.FIREBASE_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 205
    const-string v3, "TAG_APP_CAMPAIGN_NOTIFICATION_RECEIVED_FROM_BACKEND"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    .line 208
    nop

    .line 209
    nop

    .line 210
    nop

    .line 206
    const/16 v4, 0x304

    invoke-static {v3, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 213
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "fcm_campaign_channel"

    .line 214
    .local v3, "channelId":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 216
    .local v4, "defaultSoundUri":Landroid/net/Uri;
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 217
    new-instance v6, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v6}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getBody()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v6

    check-cast v6, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 218
    const v6, 0x7f0800ef

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 219
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getBody()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 220
    invoke-virtual {v5, v6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    const-string v6, "Builder(this, channelId)\u2026tentIntent(pendingIntent)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    nop

    .line 223
    .local v5, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/app/NotificationManager;

    .line 222
    nop

    .line 226
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    .line 227
    new-instance v7, Landroid/app/NotificationChannel;

    .line 228
    nop

    .line 229
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->getTitle()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 230
    const/4 v9, 0x3

    .line 227
    invoke-direct {v7, v3, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 232
    .local v7, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 235
    .end local v7    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    const/16 v7, 0x115

    invoke-virtual {v5}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 236
    return-void
.end method

.method private final createTransactionNotification(Ljava/lang/String;)V
    .locals 9
    .param p1, "messageBody"    # Ljava/lang/String;

    .line 239
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.woleapp.netpos.FIREBASE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    const-string v2, "TAG_NOTIFICATION_RECEIVED_2"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 245
    nop

    .line 246
    nop

    .line 247
    nop

    .line 243
    const/16 v4, 0x304

    invoke-static {v2, v4, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 250
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "fcm_default_channel"

    .line 251
    .local v2, "channelId":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 252
    .local v4, "defaultSoundUri":Landroid/net/Uri;
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 253
    const v6, 0x7f1301d4

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 254
    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    check-cast v7, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 255
    const v7, 0x7f0800ef

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 256
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    .line 257
    invoke-virtual {v3, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v5, "Builder(this, channelId)\u2026tentIntent(pendingIntent)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    nop

    .line 260
    .local v3, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/NotificationManager;

    .line 259
    nop

    .line 263
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    .line 264
    new-instance v7, Landroid/app/NotificationChannel;

    .line 265
    nop

    .line 266
    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 267
    const/4 v8, 0x3

    .line 264
    invoke-direct {v7, v2, v6, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v6, v7

    .line 269
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 272
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 273
    return-void
.end method

.method private final handleNormalNotificationMessage(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 16
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .line 173
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "MessageBody"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 174
    .local v1, "incomingMessage":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v2, v1

    .local v2, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 175
    .local v3, "$i$a$-let-MyFirebaseMessagingService$handleNormalNotificationMessage$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    .line 176
    const-class v5, Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;

    .line 175
    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;

    .line 179
    .local v4, "normalAppNotification":Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;
    if-eqz v4, :cond_0

    const-string v5, "normalAppNotification"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    .local v5, "notification":Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;
    const/4 v6, 0x0

    .line 180
    .local v6, "$i$a$-let-MyFirebaseMessagingService$handleNormalNotificationMessage$1$1":I
    new-instance v15, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    const/4 v8, 0x0

    .line 181
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 182
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;->getBody()Ljava/lang/String;

    move-result-object v10

    .line 180
    const/4 v11, 0x0

    .line 183
    sget-object v7, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v12

    .line 180
    const/16 v13, 0x9

    const/4 v14, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 185
    .local v7, "appCampaignModel":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    sget-object v8, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "stringifiedAppCampaignModel":Ljava/lang/String;
    const-string v9, "stringifiedAppCampaignModel"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->scheduleJobToSaveAppNotificationCampaignToDatabase(Ljava/lang/String;)V

    .line 188
    new-instance v9, Landroid/content/Intent;

    move-object v10, v0

    check-cast v10, Landroid/content/Context;

    const-class v11, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    .local v9, "intent":Landroid/content/Intent;
    const-string v10, "com.woleapp.netpos.FIREBASE_NORMAL_APP_NOTIFICATION_CAMPAIGN_INTENT_ACTION"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    const/high16 v10, 0x14000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    nop

    .line 192
    nop

    .line 193
    nop

    .line 191
    const-string v10, "TAG_APP_CAMPAIGN_NOTIFICATION_RECEIVED_FROM_BACKEND"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v0, v9}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->startActivity(Landroid/content/Intent;)V

    .line 196
    nop

    .line 179
    .end local v5    # "notification":Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;
    .end local v6    # "$i$a$-let-MyFirebaseMessagingService$handleNormalNotificationMessage$1$1":I
    .end local v7    # "appCampaignModel":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .end local v8    # "stringifiedAppCampaignModel":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    nop

    .line 174
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-MyFirebaseMessagingService$handleNormalNotificationMessage$1":I
    .end local v4    # "normalAppNotification":Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;
    :cond_0
    nop

    .line 198
    return-void
.end method

.method private final handleTransactionMessage(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 27
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .line 121
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v2, "TransactionNotification"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "transactionNotificationFromFirebase":Ljava/lang/String;
    const-string v2, "INCOMING_INCOMING"

    invoke-static {v2}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v4}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    if-eqz v1, :cond_1

    move-object v2, v1

    .local v2, "it":Ljava/lang/String;
    const/4 v4, 0x0

    .line 124
    .local v4, "$i$a$-let-MyFirebaseMessagingService$handleTransactionMessage$1":I
    sget-object v5, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    .line 125
    const-class v6, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;

    .line 124
    invoke-virtual {v5, v2, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "gson.fromJson(\n         \u2026class.java,\n            )"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;

    .local v5, "temporalTransaction":Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;
    move-object v7, v5

    .line 128
    sget-object v6, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v6

    .line 131
    sget-object v15, Lcom/woleapp/netpos/contactless/util/Mappers;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Mappers;

    .line 129
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 130
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getEmail()Ljava/lang/String;

    move-result-object v12

    const-string v26, "MERCHANT_DISPLAY_QR==="

    move-object/from16 v13, v26

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v12, v13}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 129
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v3, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0xffef

    const/16 v25, 0x0

    invoke-static/range {v7 .. v25}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->copy$default(Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;

    move-result-object v7

    .line 131
    invoke-virtual {v3, v7}, Lcom/woleapp/netpos/contactless/util/Mappers;->mapToTransactionResponse(Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v3

    .line 128
    invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "transaction":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getEmail()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object/from16 v7, v26

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x2

    const/4 v10, 0x0

    invoke-static {v6, v7, v10, v8, v9}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 135
    const-string v6, "INCOMING_INCOMING_"

    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    if-eqz v3, :cond_0

    const-string v6, "transaction"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v3

    .local v6, "transactionResponse":Ljava/lang/String;
    const/4 v7, 0x0

    .line 137
    .local v7, "$i$a$-let-MyFirebaseMessagingService$handleTransactionMessage$1$1":I
    invoke-direct {v0, v6}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->scheduleJobToSaveTransactionToDatabase(Ljava/lang/String;)V

    .line 138
    new-instance v8, Landroid/content/Intent;

    move-object v9, v0

    check-cast v9, Landroid/content/Context;

    const-class v10, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v8, "intent":Landroid/content/Intent;
    const-string v9, "com.woleapp.netpos.FIREBASE_ACTION"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const/high16 v9, 0x14000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 141
    const/4 v9, 0x1

    const-string v10, "TAG_NOTIFICATION_RECEIVED_2"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 142
    invoke-virtual {v0, v8}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->startActivity(Landroid/content/Intent;)V

    .line 143
    nop

    .line 145
    .end local v6    # "transactionResponse":Ljava/lang/String;
    .end local v7    # "$i$a$-let-MyFirebaseMessagingService$handleTransactionMessage$1$1":I
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    nop

    .line 123
    .end local v2    # "it":Ljava/lang/String;
    .end local v3    # "transaction":Ljava/lang/String;
    .end local v4    # "$i$a$-let-MyFirebaseMessagingService$handleTransactionMessage$1":I
    .end local v5    # "temporalTransaction":Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;
    nop

    .line 146
    :cond_1
    return-void
.end method

.method private final handleTransactionMessageForVirtualAccount(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 10
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    .line 149
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "VirtualNotification"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    .local v0, "transactionNotificationFromFirebase":Ljava/lang/String;
    const-string v1, "INCOMING_INCOMING"

    invoke-static {v1}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    if-eqz v0, :cond_0

    move-object v1, v0

    .local v1, "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 152
    .local v3, "$i$a$-let-MyFirebaseMessagingService$handleTransactionMessageForVirtualAccount$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    .line 153
    const-class v5, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    .line 152
    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "gson.fromJson(\n         \u2026class.java,\n            )"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    .line 156
    .local v4, "temporalTransaction":Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
    sget-object v5, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    .line 157
    sget-object v6, Lcom/woleapp/netpos/contactless/util/Mappers;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Mappers;

    invoke-virtual {v6, v4}, Lcom/woleapp/netpos/contactless/util/Mappers;->mapToTransactionResponse(Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v6

    .line 156
    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, "transaction":Ljava/lang/String;
    const-string v6, "INCOMING_INCOMING_"

    invoke-static {v6}, Ltimber/log/Timber;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v6

    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    if-eqz v5, :cond_0

    const-string v2, "transaction"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v5

    .local v2, "transactionResponse":Ljava/lang/String;
    const/4 v6, 0x0

    .line 162
    .local v6, "$i$a$-let-MyFirebaseMessagingService$handleTransactionMessageForVirtualAccount$1$1":I
    invoke-direct {p0, v2}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->scheduleJobToSaveTransactionToDatabase(Ljava/lang/String;)V

    .line 163
    new-instance v7, Landroid/content/Intent;

    move-object v8, p0

    check-cast v8, Landroid/content/Context;

    const-class v9, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "com.woleapp.netpos.FIREBASE_ACTION"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const/high16 v8, 0x14000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const/4 v8, 0x1

    const-string v9, "TAG_NOTIFICATION_RECEIVED_2"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v7}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->startActivity(Landroid/content/Intent;)V

    .line 168
    nop

    .line 161
    .end local v2    # "transactionResponse":Ljava/lang/String;
    .end local v6    # "$i$a$-let-MyFirebaseMessagingService$handleTransactionMessageForVirtualAccount$1$1":I
    .end local v7    # "intent":Landroid/content/Intent;
    nop

    .line 151
    .end local v1    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-MyFirebaseMessagingService$handleTransactionMessageForVirtualAccount$1":I
    .end local v4    # "temporalTransaction":Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
    .end local v5    # "transaction":Ljava/lang/String;
    :cond_0
    nop

    .line 170
    return-void
.end method

.method private final scheduleJobToSaveAppNotificationCampaignToDatabase(Ljava/lang/String;)V
    .locals 4
    .param p1, "appNotificationCampaignInStringFormat"    # Ljava/lang/String;

    .line 295
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 296
    const-string v1, "WORKER_INPUT_APP_NOTIFICATION_TAG"

    invoke-virtual {v0, v1, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "Builder()\n            .p\u2026mat)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    nop

    .line 300
    .local v0, "inputData":Landroidx/work/Data;
    new-instance v1, Landroidx/work/Constraints$Builder;

    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v1

    const-string v2, "Builder().setRequiredNet\u2026rkType.CONNECTED).build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    nop

    .line 301
    .local v1, "constraints":Landroidx/work/Constraints;
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v3, Lcom/woleapp/netpos/contactless/worker/SaveAppCampaignToDbWorker;

    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 302
    invoke-virtual {v2, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v2

    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v2

    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v2}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v2

    const-string v3, "Builder(SaveAppCampaignT\u2026utData(inputData).build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/work/OneTimeWorkRequest;

    .line 301
    nop

    .line 303
    .local v2, "work":Landroidx/work/OneTimeWorkRequest;
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/work/WorkManager;->beginWith(Landroidx/work/OneTimeWorkRequest;)Landroidx/work/WorkContinuation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/work/WorkContinuation;->enqueue()Landroidx/work/Operation;

    .line 304
    return-void
.end method

.method private final scheduleJobToSaveTransactionToDatabase(Ljava/lang/String;)V
    .locals 4
    .param p1, "transactionFromFireBaseInStringFormat"    # Ljava/lang/String;

    .line 280
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 281
    const-string v1, "WORKER_INPUT_PBT_TRANSACTION_TAG"

    invoke-virtual {v0, v1, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "Builder()\n            .p\u2026mat)\n            .build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    nop

    .line 285
    .local v0, "inputData":Landroidx/work/Data;
    new-instance v1, Landroidx/work/Constraints$Builder;

    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v1

    const-string v2, "Builder().setRequiredNet\u2026rkType.CONNECTED).build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    nop

    .line 287
    .local v1, "constraints":Landroidx/work/Constraints;
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v3, Lcom/woleapp/netpos/contactless/worker/SaveTransactionFromFirebaseMessagingServiceToDbWorker;

    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 288
    invoke-virtual {v2, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v2

    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v2

    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v2}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v2

    const-string v3, "Builder(SaveTransactionF\u2026utData(inputData).build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/work/OneTimeWorkRequest;

    .line 286
    nop

    .line 289
    .local v2, "work":Landroidx/work/OneTimeWorkRequest;
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/work/WorkManager;->beginWith(Landroidx/work/OneTimeWorkRequest;)Landroidx/work/WorkContinuation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/work/WorkContinuation;->enqueue()Landroidx/work/Operation;

    .line 290
    return-void
.end method

.method private final scheduleJobToSendTokenToServer(Ljava/lang/String;)V
    .locals 4
    .param p1, "newToken"    # Ljava/lang/String;

    .line 308
    new-instance v0, Landroidx/work/Data$Builder;

    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    const-string v1, "WORKER_INPUT_FIREBASE_DEVICE_TOKEN_TAG"

    invoke-virtual {v0, v1, p1}, Landroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/Data$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    move-result-object v0

    const-string v1, "Builder().putString(WORK\u2026EN_TAG, newToken).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    nop

    .line 311
    .local v0, "inputData":Landroidx/work/Data;
    new-instance v1, Landroidx/work/Constraints$Builder;

    invoke-direct {v1}, Landroidx/work/Constraints$Builder;-><init>()V

    sget-object v2, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {v1, v2}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object v1

    const-string v2, "Builder().setRequiredNet\u2026rkType.CONNECTED).build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    nop

    .line 313
    .local v1, "constraints":Landroidx/work/Constraints;
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v3, Lcom/woleapp/netpos/contactless/worker/RegisterDeviceTokenToBackendOnTokenChangeWorker;

    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 314
    invoke-virtual {v2, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object v2

    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v2, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    move-result-object v2

    check-cast v2, Landroidx/work/OneTimeWorkRequest$Builder;

    invoke-virtual {v2}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v2

    const-string v3, "Builder(RegisterDeviceTo\u2026utData(inputData).build()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroidx/work/OneTimeWorkRequest;

    .line 312
    nop

    .line 315
    .local v2, "work":Landroidx/work/OneTimeWorkRequest;
    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/work/WorkManager;->beginWith(Landroidx/work/OneTimeWorkRequest;)Landroidx/work/WorkContinuation;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/work/WorkContinuation;->enqueue()Landroidx/work/Operation;

    .line 316
    return-void
.end method

.method private final sendNotification(Ljava/lang/String;)V
    .locals 9
    .param p1, "messageBody"    # Ljava/lang/String;

    .line 319
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/woleapp/netpos/contactless/ui/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.woleapp.netpos.FIREBASE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const-string v2, "TAG_NOTIFICATION_RECEIVED_2"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    .line 325
    nop

    .line 326
    nop

    .line 327
    nop

    .line 323
    const/16 v4, 0x304

    invoke-static {v2, v4, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 330
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    const-string v2, "fcm_default_channel"

    .line 331
    .local v2, "channelId":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 332
    .local v4, "defaultSoundUri":Landroid/net/Uri;
    new-instance v5, Landroidx/core/app/NotificationCompat$Builder;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    const v6, 0x7f1301d4

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 334
    new-instance v7, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v7}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    move-object v8, p1

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v7

    check-cast v7, Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 335
    const v7, 0x7f0800ef

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 336
    invoke-virtual {v5, v4}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 337
    invoke-virtual {v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 338
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 339
    invoke-virtual {v5, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v5, "Builder(this, channelId)\u2026Compat.VISIBILITY_PUBLIC)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    nop

    .line 342
    .local v3, "notificationBuilder":Landroidx/core/app/NotificationCompat$Builder;
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v7, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/NotificationManager;

    .line 341
    nop

    .line 344
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    .line 345
    new-instance v7, Landroid/app/NotificationChannel;

    .line 346
    nop

    .line 347
    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->getString(I)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    .line 348
    const/4 v8, 0x3

    .line 345
    invoke-direct {v7, v2, v6, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v6, v7

    .line 350
    .local v6, "channel":Landroid/app/NotificationChannel;
    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 353
    .end local v6    # "channel":Landroid/app/NotificationChannel;
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 354
    return-void
.end method

.method private final sendTokenToServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .line 276
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->scheduleJobToSendTokenToServer(Ljava/lang/String;)V

    .line 277
    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 22
    .param p1, "remoteMessage"    # Lcom/google/firebase/messaging/RemoteMessage;

    move-object/from16 v0, p0

    const-string v1, "remoteMessage"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 54
    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->handleTransactionMessageForVirtualAccount(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 55
    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->handleTransactionMessage(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 56
    invoke-direct/range {p0 .. p1}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->handleNormalNotificationMessage(Lcom/google/firebase/messaging/RemoteMessage;)V

    .line 61
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v5, "TransactionNotification"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    .local v1, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 62
    .local v6, "$i$a$-let-MyFirebaseMessagingService$onMessageReceived$1":I
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 63
    .local v5, "transactionNotificationFromFirebase":Ljava/lang/String;
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    .line 64
    const-class v8, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;

    .line 63
    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    const-string v8, "gson.fromJson(\n         \u2026class.java,\n            )"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;

    .line 68
    .local v7, "temporalTransaction":Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getEmail()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "MERCHANT_DISPLAY_QR==="

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static {v8, v9, v3, v10, v11}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 69
    nop

    .line 70
    nop

    .line 71
    const v8, 0x7f130165

    .line 72
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    .line 73
    sget-object v12, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    .line 72
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getAmount()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    .line 73
    invoke-static {v12, v13, v11, v4, v11}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->formatCurrencyAmountUsingCurrentModule$default(Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;Ljava/lang/Number;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v3

    .line 72
    nop

    .line 74
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getStatus()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v4

    .line 72
    nop

    .line 75
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getCustomerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v10

    .line 72
    const/4 v3, 0x3

    .line 76
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 72
    nop

    .line 70
    invoke-virtual {v0, v8, v9}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "getString(\n             \u2026an,\n                    )"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {v0, v3}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->createTransactionNotification(Ljava/lang/String;)V

    .line 80
    :cond_2
    nop

    .line 61
    .end local v1    # "it":Ljava/lang/String;
    .end local v5    # "transactionNotificationFromFirebase":Ljava/lang/String;
    .end local v6    # "$i$a$-let-MyFirebaseMessagingService$onMessageReceived$1":I
    .end local v7    # "temporalTransaction":Lcom/woleapp/netpos/contactless/model/FirebaseNotificationModelResponse;
    nop

    .line 84
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v3, "VirtualNotification"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .restart local v1    # "it":Ljava/lang/String;
    const/4 v3, 0x0

    .line 86
    .local v3, "$i$a$-let-MyFirebaseMessagingService$onMessageReceived$2":I
    sget-object v5, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    const-class v6, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    invoke-virtual {v5, v1, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "gson.fromJson(it, GetZen\u2026actionsModel::class.java)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    .line 85
    nop

    .line 90
    .local v5, "temporalTransaction":Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    invoke-virtual {v7, v1, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v7

    check-cast v8, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    .line 91
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getAmount()I

    move-result v9

    .line 90
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 91
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getPaid_at()Ljava/lang/String;

    move-result-object v13

    .line 90
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7ee

    const/16 v21, 0x0

    invoke-static/range {v8 .. v21}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->copy$default(Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;

    move-result-object v6

    .line 89
    nop

    .line 93
    .local v6, "transaction":Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getAmount()I

    move-result v7

    .line 95
    .local v7, "transactionAmount":I
    nop

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    sget-object v9, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    int-to-double v10, v7

    invoke-virtual {v9, v10, v11}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->formatAmountToNaira(D)Ljava/lang/String;

    move-result-object v9

    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 98
    nop

    .line 96
    const-string v9, " Received \nFrom: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 98
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getPayer_account_name()Ljava/lang/String;

    move-result-object v9

    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 98
    nop

    .line 96
    const-string v9, "   ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 99
    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;->getDetails()Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/CharSequence;

    .line 100
    const-string v9, "/"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    .line 99
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 101
    nop

    .line 99
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 96
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v8, 0x29

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-direct {v0, v4}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->sendNotification(Ljava/lang/String;)V

    .line 105
    nop

    .line 84
    .end local v1    # "it":Ljava/lang/String;
    .end local v3    # "$i$a$-let-MyFirebaseMessagingService$onMessageReceived$2":I
    .end local v5    # "temporalTransaction":Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
    .end local v6    # "transaction":Lcom/woleapp/netpos/contactless/model/GetZenithPayByTransferUserTransactionsModel;
    .end local v7    # "transactionAmount":I
    nop

    .line 107
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v1

    const-string v3, "MessageBody"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .local v1, "incomingMessage":Ljava/lang/String;
    const/4 v3, 0x0

    .line 108
    .local v3, "$i$a$-let-MyFirebaseMessagingService$onMessageReceived$3":I
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    .line 109
    const-class v5, Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;

    .line 108
    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;

    .line 112
    .local v4, "normalAppNotification":Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;
    if-eqz v4, :cond_5

    const-string v5, "normalAppNotification"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v4

    .local v5, "it":Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;
    const/4 v6, 0x0

    .line 114
    .local v6, "$i$a$-let-MyFirebaseMessagingService$onMessageReceived$3$1":I
    new-instance v15, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;->getBody()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v7, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getCurrentDate()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x9

    const/4 v14, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 113
    nop

    .line 115
    .local v7, "appCampaignModel":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    invoke-direct {v0, v7}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->createNotificationForAppCampaign(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    .line 116
    nop

    .line 112
    .end local v5    # "it":Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;
    .end local v6    # "$i$a$-let-MyFirebaseMessagingService$onMessageReceived$3$1":I
    .end local v7    # "appCampaignModel":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    nop

    .line 107
    .end local v1    # "incomingMessage":Ljava/lang/String;
    .end local v3    # "$i$a$-let-MyFirebaseMessagingService$onMessageReceived$3":I
    .end local v4    # "normalAppNotification":Lcom/woleapp/netpos/contactless/model/NormalAppNotificationCampaign;
    :cond_5
    nop

    .line 118
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/services/MyFirebaseMessagingService;->sendTokenToServer(Ljava/lang/String;)V

    .line 48
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 49
    return-void
.end method
