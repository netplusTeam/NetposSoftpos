.class Lcom/google/firebase/messaging/DisplayNotification;
.super Ljava/lang/Object;
.source "DisplayNotification.java"


# static fields
.field private static final IMAGE_DOWNLOAD_TIMEOUT_SECONDS:I = 0x5


# instance fields
.field private final context:Landroid/content/Context;

.field private final networkIoExecutor:Ljava/util/concurrent/ExecutorService;

.field private final params:Lcom/google/firebase/messaging/NotificationParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/messaging/NotificationParams;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/google/firebase/messaging/NotificationParams;
    .param p3, "networkIoExecutor"    # Ljava/util/concurrent/ExecutorService;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p3, p0, Lcom/google/firebase/messaging/DisplayNotification;->networkIoExecutor:Ljava/util/concurrent/ExecutorService;

    .line 56
    iput-object p1, p0, Lcom/google/firebase/messaging/DisplayNotification;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/google/firebase/messaging/DisplayNotification;->params:Lcom/google/firebase/messaging/NotificationParams;

    .line 58
    return-void
.end method

.method private isAppForeground()Z
    .locals 8

    .line 61
    iget-object v0, p0, Lcom/google/firebase/messaging/DisplayNotification;->context:Landroid/content/Context;

    .line 62
    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 63
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 64
    return v2

    .line 68
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    const-wide/16 v3, 0xa

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 78
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 79
    .local v1, "pid":I
    iget-object v3, p0, Lcom/google/firebase/messaging/DisplayNotification;->context:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 80
    .local v3, "am":Landroid/app/ActivityManager;
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 81
    .local v4, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_4

    .line 82
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 83
    .local v6, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v7, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, v1, :cond_3

    .line 84
    iget v5, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-ne v5, v7, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 86
    .end local v6    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    goto :goto_0

    .line 88
    :cond_4
    return v2
.end method

.method private showNotification(Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;

    .line 170
    const-string v0, "FirebaseMessaging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const-string v1, "Showing notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/DisplayNotification;->context:Landroid/content/Context;

    .line 175
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 177
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    iget-object v1, p1, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->tag:Ljava/lang/String;

    iget v2, p1, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->id:I

    iget-object v3, p1, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 178
    return-void
.end method

.method private startImageDownloadInBackground()Lcom/google/firebase/messaging/ImageDownload;
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/google/firebase/messaging/DisplayNotification;->params:Lcom/google/firebase/messaging/NotificationParams;

    const-string v1, "gcm.n.image"

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/NotificationParams;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "imageUrl":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/firebase/messaging/ImageDownload;->create(Ljava/lang/String;)Lcom/google/firebase/messaging/ImageDownload;

    move-result-object v1

    .line 119
    .local v1, "imageDownload":Lcom/google/firebase/messaging/ImageDownload;
    if-eqz v1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/google/firebase/messaging/DisplayNotification;->networkIoExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2}, Lcom/google/firebase/messaging/ImageDownload;->start(Ljava/util/concurrent/ExecutorService;)V

    .line 122
    :cond_0
    return-object v1
.end method

.method private waitForAndApplyImageDownload(Landroidx/core/app/NotificationCompat$Builder;Lcom/google/firebase/messaging/ImageDownload;)V
    .locals 5
    .param p1, "n"    # Landroidx/core/app/NotificationCompat$Builder;
    .param p2, "imageDownload"    # Lcom/google/firebase/messaging/ImageDownload;

    .line 127
    const-string v0, "FirebaseMessaging"

    if-nez p2, :cond_0

    .line 128
    return-void

    .line 137
    :cond_0
    nop

    .line 138
    :try_start_0
    invoke-virtual {p2}, Lcom/google/firebase/messaging/ImageDownload;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 146
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 147
    new-instance v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    nop

    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    const-string v2, "Failed to download image in time, showing notification without it"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p2}, Lcom/google/firebase/messaging/ImageDownload;->close()V

    goto :goto_1

    .line 153
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Interrupted while downloading image, showing notification without it"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p2}, Lcom/google/firebase/messaging/ImageDownload;->close()V

    .line 156
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 149
    :catch_2
    move-exception v1

    .line 152
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_0
    nop

    .line 167
    :goto_1
    return-void
.end method


# virtual methods
.method handleNotification()Z
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/google/firebase/messaging/DisplayNotification;->params:Lcom/google/firebase/messaging/NotificationParams;

    const-string v1, "gcm.n.noui"

    invoke-virtual {v0, v1}, Lcom/google/firebase/messaging/NotificationParams;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 101
    return v1

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/messaging/DisplayNotification;->isAppForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/messaging/DisplayNotification;->startImageDownloadInBackground()Lcom/google/firebase/messaging/ImageDownload;

    move-result-object v0

    .line 108
    .local v0, "imageDownload":Lcom/google/firebase/messaging/ImageDownload;
    iget-object v2, p0, Lcom/google/firebase/messaging/DisplayNotification;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/messaging/DisplayNotification;->params:Lcom/google/firebase/messaging/NotificationParams;

    .line 109
    invoke-static {v2, v3}, Lcom/google/firebase/messaging/CommonNotificationBuilder;->createNotificationInfo(Landroid/content/Context;Lcom/google/firebase/messaging/NotificationParams;)Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;

    move-result-object v2

    .line 110
    .local v2, "notificationInfo":Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;
    iget-object v3, v2, Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0, v3, v0}, Lcom/google/firebase/messaging/DisplayNotification;->waitForAndApplyImageDownload(Landroidx/core/app/NotificationCompat$Builder;Lcom/google/firebase/messaging/ImageDownload;)V

    .line 111
    invoke-direct {p0, v2}, Lcom/google/firebase/messaging/DisplayNotification;->showNotification(Lcom/google/firebase/messaging/CommonNotificationBuilder$DisplayNotificationInfo;)V

    .line 112
    return v1
.end method
