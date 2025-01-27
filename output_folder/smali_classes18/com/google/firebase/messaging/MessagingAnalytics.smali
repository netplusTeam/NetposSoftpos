.class public Lcom/google/firebase/messaging/MessagingAnalytics;
.super Ljava/lang/Object;
.source "MessagingAnalytics.java"


# static fields
.field private static final DELIVERY_METRICS_EXPORT_TO_BIG_QUERY_PREF:Ljava/lang/String; = "export_to_big_query"

.field private static final FCM_PREFERENCES:Ljava/lang/String; = "com.google.firebase.messaging"

.field private static final MANIFEST_DELIVERY_METRICS_EXPORT_TO_BIG_QUERY_ENABLED:Ljava/lang/String; = "delivery_metrics_exported_to_big_query_enabled"

.field private static final REENGAGEMENT_MEDIUM:Ljava/lang/String; = "notification"

.field private static final REENGAGEMENT_SOURCE:Ljava/lang/String; = "Firebase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static deliveryMetricsExportToBigQueryEnabled()Z
    .locals 7

    .line 147
    const-string v0, "delivery_metrics_exported_to_big_query_enabled"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    nop

    .line 156
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 157
    .local v2, "context":Landroid/content/Context;
    nop

    .line 158
    const-string v3, "com.google.firebase.messaging"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 161
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "export_to_big_query"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 167
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 168
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v4, :cond_1

    .line 169
    nop

    .line 171
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 170
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 172
    .local v5, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 174
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 182
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 185
    :goto_0
    return v1

    .line 148
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "FirebaseMessaging"

    const-string v3, "FirebaseApp has not being initialized. Device might be in direct boot mode. Skip exporting delivery metrics to Big Query"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v1
.end method

.method static eventToProto(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Landroid/content/Intent;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    .locals 11
    .param p0, "event"    # Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 556
    if-nez p1, :cond_0

    .line 557
    const/4 v0, 0x0

    return-object v0

    .line 559
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 560
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 562
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 566
    :cond_1
    invoke-static {}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent;->newBuilder()Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    move-result-object v1

    .line 567
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getTtl(Landroid/os/Bundle;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setTtl(I)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    move-result-object v1

    .line 568
    invoke-virtual {v1, p0}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setEvent(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    move-result-object v1

    .line 569
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getInstanceId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setInstanceId(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    move-result-object v1

    .line 570
    invoke-static {}, Lcom/google/firebase/messaging/MessagingAnalytics;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setPackageName(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;->ANDROID:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;

    .line 571
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setSdkPlatform(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$SDKPlatform;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    move-result-object v1

    .line 572
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageTypeForFirelog(Landroid/os/Bundle;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setMessageType(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    move-result-object v1

    .line 575
    .local v1, "builder":Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "messageId":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 577
    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setMessageId(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    .line 580
    :cond_2
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getTopic(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "topic":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 582
    invoke-virtual {v1, v3}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setTopic(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    .line 585
    :cond_3
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getCollapseKey(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "collapseKey":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 587
    invoke-virtual {v1, v4}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setCollapseKey(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    .line 590
    :cond_4
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageLabel(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 591
    .local v5, "messageLabel":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 592
    invoke-virtual {v1, v5}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setAnalyticsLabel(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    .line 595
    :cond_5
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getComposerLabel(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "composerLabel":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 597
    invoke-virtual {v1, v6}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setComposerLabel(Ljava/lang/String;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    .line 600
    :cond_6
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getProjectNumber(Landroid/os/Bundle;)J

    move-result-wide v7

    .line 601
    .local v7, "projectNumber":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_7

    .line 602
    invoke-virtual {v1, v7, v8}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->setProjectNumber(J)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;

    .line 605
    :cond_7
    invoke-virtual {v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Builder;->build()Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    move-result-object v9

    return-object v9
.end method

.method static getCollapseKey(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 383
    const-string v0, "collapse_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getComposerId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 388
    const-string v0, "google.c.a.c_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getComposerLabel(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 393
    const-string v0, "google.c.a.c_l"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstanceId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 427
    const-string v0, "google.to"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "to":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    return-object v0

    .line 432
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/installations/FirebaseInstallations;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/installations/FirebaseInstallations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/installations/FirebaseInstallations;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 433
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static getMessageChannel(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 403
    const-string v0, "google.c.a.m_c"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMessageId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 413
    const-string v0, "google.message_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "messageId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 415
    const-string v1, "message_id"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_0
    return-object v0
.end method

.method static getMessageLabel(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 398
    const-string v0, "google.c.a.m_l"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMessagePriority(Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # Ljava/lang/String;

    .line 480
    const-string v0, "high"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x1

    return v0

    .line 482
    :cond_0
    const-string v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    const/4 v0, 0x2

    return v0

    .line 485
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static getMessagePriorityForFirelog(Landroid/os/Bundle;)I
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 493
    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getPriority(Landroid/os/Bundle;)I

    move-result v0

    .line 494
    .local v0, "priority":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 495
    const/4 v1, 0x5

    return v1

    .line 496
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 497
    const/16 v1, 0xa

    return v1

    .line 499
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static getMessageTime(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 408
    const-string v0, "google.c.a.ts"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMessageTypeForFirelog(Landroid/os/Bundle;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 447
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/firebase/messaging/NotificationParams;->isNotification(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DISPLAY_NOTIFICATION:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    goto :goto_0

    .line 449
    :cond_0
    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;->DATA_MESSAGE:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$MessageType;

    .line 447
    :goto_0
    return-object v0
.end method

.method static getMessageTypeForScion(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 440
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/google/firebase/messaging/NotificationParams;->isNotification(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    const-string v0, "display"

    goto :goto_0

    .line 442
    :cond_0
    const-string v0, "data"

    .line 440
    :goto_0
    return-object v0
.end method

.method static getPackageName()Ljava/lang/String;
    .locals 1

    .line 422
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPriority(Landroid/os/Bundle;)I
    .locals 3
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 468
    const-string v0, "google.delivered_priority"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "priority":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 470
    const-string v1, "google.priority_reduced"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const/4 v1, 0x2

    return v1

    .line 473
    :cond_0
    const-string v1, "google.priority"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    :cond_1
    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessagePriority(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method static getProjectNumber(Landroid/os/Bundle;)J
    .locals 10
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 505
    const-string v0, "google.c.sender.id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "FirebaseMessaging"

    if-eqz v1, :cond_0

    .line 508
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v1, "error parsing project number"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 517
    .local v0, "app":Lcom/google/firebase/FirebaseApp;
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/FirebaseOptions;->getGcmSenderId()Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "senderId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 520
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v2

    .line 521
    :catch_1
    move-exception v3

    .line 522
    .local v3, "ex":Ljava/lang/NumberFormatException;
    const-string v4, "error parsing sender ID"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v3    # "ex":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    .line 527
    .local v3, "appId":Ljava/lang/String;
    const-string v4, "1:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "error parsing app ID"

    const-wide/16 v6, 0x0

    if-nez v4, :cond_2

    .line 530
    :try_start_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-wide v4

    .line 531
    :catch_2
    move-exception v4

    .line 532
    .local v4, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v2, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    .end local v4    # "ex":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 536
    :cond_2
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "parts":[Ljava/lang/String;
    array-length v8, v4

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    .line 538
    return-wide v6

    .line 540
    :cond_3
    const/4 v8, 0x1

    aget-object v8, v4, v8

    .line 541
    .local v8, "projectId":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 542
    return-wide v6

    .line 546
    :cond_4
    :try_start_3
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-wide v5

    .line 547
    :catch_3
    move-exception v9

    .line 548
    .local v9, "ex":Ljava/lang/NumberFormatException;
    invoke-static {v2, v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v8    # "projectId":Ljava/lang/String;
    .end local v9    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    return-wide v6
.end method

.method static getTopic(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 454
    const-string v0, "from"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "from":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "/topics/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method static getTtl(Landroid/os/Bundle;)I
    .locals 4
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 367
    const-string v0, "google.ttl"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 368
    .local v0, "ttl":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 369
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 370
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 372
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 373
    :catch_0
    move-exception v1

    .line 374
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid TTL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FirebaseMessaging"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method static getUseDeviceTime(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 460
    const-string v0, "google.c.a.udt"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 463
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isDirectBootMessage(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 138
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static logNotificationDismiss(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_nd"

    invoke-static {v1, v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToScion(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public static logNotificationForeground(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 105
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_nf"

    invoke-static {v1, v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToScion(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public static logNotificationOpen(Landroid/os/Bundle;)V
    .locals 1
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 90
    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->setUserPropertyIfRequired(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "_no"

    invoke-static {v0, p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToScion(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    return-void
.end method

.method public static logNotificationReceived(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 76
    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadScionMetrics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_nr"

    invoke-static {v1, v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToScion(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadFirelogAnalytics(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    sget-object v0, Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;->MESSAGE_DELIVERED:Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;

    .line 84
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getTransportFactory()Lcom/google/android/datatransport/TransportFactory;

    move-result-object v1

    .line 81
    invoke-static {v0, p0, v1}, Lcom/google/firebase/messaging/MessagingAnalytics;->logToFirelog(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Landroid/content/Intent;Lcom/google/android/datatransport/TransportFactory;)V

    .line 86
    :cond_1
    return-void
.end method

.method private static logToFirelog(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Landroid/content/Intent;Lcom/google/android/datatransport/TransportFactory;)V
    .locals 6
    .param p0, "event"    # Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "transportFactory"    # Lcom/google/android/datatransport/TransportFactory;

    .line 329
    const-string v0, "FirebaseMessaging"

    if-nez p2, :cond_0

    .line 330
    const-string v1, "TransportFactory is null. Skip exporting message delivery metrics to Big Query"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 333
    :cond_0
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->eventToProto(Lcom/google/firebase/messaging/reporting/MessagingClientEvent$Event;Landroid/content/Intent;)Lcom/google/firebase/messaging/reporting/MessagingClientEvent;

    move-result-object v1

    .line 334
    .local v1, "clientEvent":Lcom/google/firebase/messaging/reporting/MessagingClientEvent;
    if-nez v1, :cond_1

    .line 335
    return-void

    .line 340
    :cond_1
    :try_start_0
    const-string v2, "FCM_CLIENT_EVENT_LOGGING"

    const-class v3, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    const-string v4, "proto"

    .line 344
    invoke-static {v4}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v4

    new-instance v5, Lcom/google/firebase/messaging/MessagingAnalytics$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/google/firebase/messaging/MessagingAnalytics$$ExternalSyntheticLambda0;-><init>()V

    .line 341
    invoke-interface {p2, v2, v3, v4, v5}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object v2

    .line 348
    invoke-static {}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;->newBuilder()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;

    move-result-object v3

    .line 349
    invoke-virtual {v3, v1}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;->setMessagingClientEvent(Lcom/google/firebase/messaging/reporting/MessagingClientEvent;)Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension$Builder;->build()Lcom/google/firebase/messaging/reporting/MessagingClientEventExtension;

    move-result-object v3

    .line 347
    invoke-static {v3}, Lcom/google/android/datatransport/Event;->ofData(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object v3

    .line 346
    invoke-interface {v2, v3}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    goto :goto_0

    .line 351
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "Failed to send big query analytics payload."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method static logToScion(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 242
    const-string v0, "FirebaseMessaging"

    :try_start_0
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 246
    nop

    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p1, v1

    .line 252
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 254
    .local v1, "scionPayload":Landroid/os/Bundle;
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getComposerId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "composerId":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 256
    const-string v3, "_nmid"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_1
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getComposerLabel(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "composerLabel":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 261
    const-string v4, "_nmn"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_2
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageLabel(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "messageLabel":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 266
    const-string v5, "label"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_3
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageChannel(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "messageChannel":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 271
    const-string v6, "message_channel"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_4
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getTopic(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "topic":Ljava/lang/String;
    if-eqz v6, :cond_5

    .line 276
    const-string v7, "_nt"

    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_5
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageTime(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v7

    .line 280
    .local v7, "messageTime":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 282
    :try_start_1
    const-string v8, "_nmt"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 285
    goto :goto_0

    .line 283
    :catch_0
    move-exception v8

    .line 284
    .local v8, "e":Ljava/lang/NumberFormatException;
    const-string v9, "Error while parsing timestamp in GCM event"

    invoke-static {v0, v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    :goto_0
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getUseDeviceTime(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    .line 289
    .local v8, "useDeviceTime":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 291
    :try_start_2
    const-string v9, "_ndt"

    .line 292
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 291
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 295
    goto :goto_1

    .line 293
    :catch_1
    move-exception v9

    .line 294
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v10, "Error while parsing use_device_time in GCM event"

    invoke-static {v0, v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    :goto_1
    invoke-static {p1}, Lcom/google/firebase/messaging/MessagingAnalytics;->getMessageTypeForScion(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "messageType":Ljava/lang/String;
    const-string v10, "_nr"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 300
    const-string v10, "_nf"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 301
    :cond_8
    const-string v10, "_nmc"

    invoke-virtual {v1, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_9
    const/4 v10, 0x3

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 305
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Logging to scion event="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scionPayload="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_a
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v10

    const-class v11, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-virtual {v10, v11}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 311
    .local v10, "analytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    if-eqz v10, :cond_b

    .line 312
    const-string v0, "fcm"

    invoke-interface {v10, v0, p0, v1}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 315
    :cond_b
    const-string v11, "Unable to log event: analytics library is missing"

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_2
    return-void

    .line 243
    .end local v1    # "scionPayload":Landroid/os/Bundle;
    .end local v2    # "composerId":Ljava/lang/String;
    .end local v3    # "composerLabel":Ljava/lang/String;
    .end local v4    # "messageLabel":Ljava/lang/String;
    .end local v5    # "messageChannel":Ljava/lang/String;
    .end local v6    # "topic":Ljava/lang/String;
    .end local v7    # "messageTime":Ljava/lang/String;
    .end local v8    # "useDeviceTime":Ljava/lang/String;
    .end local v9    # "messageType":Ljava/lang/String;
    .end local v10    # "analytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    :catch_2
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Default FirebaseApp has not been initialized. Skip logging event to GA."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method static setDeliveryMetricsExportToBigQuery(Z)V
    .locals 3
    .param p0, "enable"    # Z

    .line 358
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 360
    const-string v1, "com.google.firebase.messaging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 362
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "export_to_big_query"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 363
    return-void
.end method

.method private static setUserPropertyIfRequired(Landroid/os/Bundle;)V
    .locals 7
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 190
    if-nez p0, :cond_0

    .line 191
    return-void

    .line 195
    :cond_0
    const-string v0, "google.c.a.tc"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "shouldTrackConversions":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "FirebaseMessaging"

    if-eqz v1, :cond_3

    .line 199
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    const-class v4, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    invoke-virtual {v1, v4}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/analytics/connector/AnalyticsConnector;

    .line 200
    .local v1, "analytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const-string v2, "Received event with track-conversion=true. Setting user property and reengagement event"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_1
    if-eqz v1, :cond_2

    .line 207
    const-string v2, "google.c.a.c_id"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "composerId":Ljava/lang/String;
    const-string v3, "fcm"

    const-string v4, "_ln"

    invoke-interface {v1, v3, v4, v2}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v4, "params":Landroid/os/Bundle;
    const-string/jumbo v5, "source"

    const-string v6, "Firebase"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v5, "medium"

    const-string v6, "notification"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v5, "campaign"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v5, "_cmp"

    invoke-interface {v1, v3, v5, v4}, Lcom/google/firebase/analytics/connector/AnalyticsConnector;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 220
    .end local v2    # "composerId":Ljava/lang/String;
    .end local v4    # "params":Landroid/os/Bundle;
    goto :goto_0

    .line 222
    :cond_2
    const-string v2, "Unable to set user property for conversion tracking:  analytics library is missing"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v1    # "analytics":Lcom/google/firebase/analytics/connector/AnalyticsConnector;
    :goto_0
    goto :goto_1

    .line 228
    :cond_3
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 229
    const-string v1, "Received event with track-conversion=false. Do not set user property"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_4
    :goto_1
    return-void
.end method

.method public static shouldUploadFirelogAnalytics(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 128
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->isDirectBootMessage(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/MessagingAnalytics;->deliveryMetricsExportToBigQueryEnabled()Z

    move-result v0

    return v0

    .line 129
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldUploadScionMetrics(Landroid/content/Intent;)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .line 110
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/google/firebase/messaging/MessagingAnalytics;->isDirectBootMessage(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/messaging/MessagingAnalytics;->shouldUploadScionMetrics(Landroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 111
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static shouldUploadScionMetrics(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 119
    if-nez p0, :cond_0

    .line 120
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    const-string v0, "google.c.a.e"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
