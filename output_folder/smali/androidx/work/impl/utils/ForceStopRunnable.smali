.class public Landroidx/work/impl/utils/ForceStopRunnable;
.super Ljava/lang/Object;
.source "ForceStopRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;
    }
.end annotation


# static fields
.field static final ACTION_FORCE_STOP_RESCHEDULE:Ljava/lang/String; = "ACTION_FORCE_STOP_RESCHEDULE"

.field private static final ALARM_ID:I = -0x1

.field private static final BACKOFF_DURATION_MS:J = 0x12cL

.field static final MAX_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TEN_YEARS:J


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRetryCount:I

.field private final mWorkManager:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 73
    const-string v0, "ForceStopRunnable"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    .line 83
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe42

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/utils/ForceStopRunnable;->TEN_YEARS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "workManager"    # Landroidx/work/impl/WorkManagerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "workManager"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    .line 93
    return-void
.end method

.method static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 328
    const-string v1, "ACTION_FORCE_STOP_RESCHEDULE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    return-object v0
.end method

.method private static getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "flags"
        }
    .end annotation

    .line 317
    invoke-static {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 318
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static setAlarm(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 333
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 335
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    const/high16 v1, 0x8000000

    .line 336
    .local v1, "flags":I
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    .line 339
    :cond_0
    invoke-static {p0, v1}, Landroidx/work/impl/utils/ForceStopRunnable;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 340
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Landroidx/work/impl/utils/ForceStopRunnable;->TEN_YEARS:J

    add-long/2addr v3, v5

    .line 341
    .local v3, "triggerAt":J
    if-eqz v0, :cond_2

    .line 342
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    const/4 v7, 0x0

    if-lt v5, v6, :cond_1

    .line 343
    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 348
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public cleanUp()Z
    .locals 13

    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, "needsReconciling":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 245
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-static {v1, v2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->reconcileJobs(Landroid/content/Context;Landroidx/work/impl/WorkManagerImpl;)Z

    move-result v0

    .line 248
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 249
    .local v1, "workDatabase":Landroidx/work/impl/WorkDatabase;
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v2

    .line 250
    .local v2, "workSpecDao":Landroidx/work/impl/model/WorkSpecDao;
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v3

    .line 251
    .local v3, "workProgressDao":Landroidx/work/impl/model/WorkProgressDao;
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 254
    :try_start_0
    invoke-interface {v2}, Landroidx/work/impl/model/WorkSpecDao;->getRunningWork()Ljava/util/List;

    move-result-object v4

    .line 255
    .local v4, "workSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    .line 256
    .local v7, "needsScheduling":Z
    :goto_0
    if-eqz v7, :cond_2

    .line 264
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/work/impl/model/WorkSpec;

    .line 265
    .local v9, "workSpec":Landroidx/work/impl/model/WorkSpec;
    sget-object v10, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    new-array v11, v5, [Ljava/lang/String;

    iget-object v12, v9, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    aput-object v12, v11, v6

    invoke-interface {v2, v10, v11}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 266
    iget-object v10, v9, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const-wide/16 v11, -0x1

    invoke-interface {v2, v10, v11, v12}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 267
    nop

    .end local v9    # "workSpec":Landroidx/work/impl/model/WorkSpec;
    goto :goto_1

    .line 269
    :cond_2
    invoke-interface {v3}, Landroidx/work/impl/model/WorkProgressDao;->deleteAll()V

    .line 270
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v4    # "workSpecs":Ljava/util/List;, "Ljava/util/List<Landroidx/work/impl/model/WorkSpec;>;"
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 273
    nop

    .line 274
    if-nez v7, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v5, v6

    :cond_4
    :goto_2
    return v5

    .line 272
    .end local v7    # "needsScheduling":Z
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 273
    throw v4
.end method

.method public forceStopRunnable()V
    .locals 6

    .line 212
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->cleanUp()Z

    move-result v0

    .line 213
    .local v0, "needsScheduling":Z
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->shouldRescheduleWorkers()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 214
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Throwable;

    const-string v5, "Rescheduling Workers."

    invoke-virtual {v1, v3, v5, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 215
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->rescheduleEligibleWork()V

    .line 217
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getPreferenceUtils()Landroidx/work/impl/utils/PreferenceUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/work/impl/utils/PreferenceUtils;->setNeedsReschedule(Z)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->isForceStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v4, "Application was force-stopped, rescheduling."

    invoke-virtual {v1, v3, v4, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 220
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->rescheduleEligibleWork()V

    goto :goto_0

    .line 221
    :cond_1
    if-eqz v0, :cond_2

    .line 222
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v4, "Found unfinished work, scheduling it."

    invoke-virtual {v1, v3, v4, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 223
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 224
    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 225
    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v2

    iget-object v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 226
    invoke-virtual {v3}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v3

    .line 223
    invoke-static {v1, v2, v3}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 228
    :cond_2
    :goto_0
    return-void
.end method

.method public isForceStopped()Z
    .locals 10

    .line 163
    const/high16 v0, 0x20000000

    .line 164
    .local v0, "flags":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    const/high16 v3, 0x2000000

    or-int/2addr v0, v3

    .line 167
    :cond_0
    iget-object v3, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroidx/work/impl/utils/ForceStopRunnable;->getPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 168
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_3

    .line 170
    if-eqz v3, :cond_1

    .line 171
    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    .line 173
    :cond_1
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    .line 174
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 175
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/4 v5, 0x0

    .line 176
    invoke-virtual {v4, v5, v1, v1}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v5

    .line 182
    .local v5, "exitInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 183
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 184
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationExitInfo;

    .line 185
    .local v7, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v7}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 186
    return v2

    .line 183
    .end local v7    # "info":Landroid/app/ApplicationExitInfo;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 190
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    .end local v5    # "exitInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ApplicationExitInfo;>;"
    .end local v6    # "i":I
    :cond_3
    if-nez v3, :cond_4

    .line 191
    iget-object v4, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroidx/work/impl/utils/ForceStopRunnable;->setAlarm(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return v2

    .line 190
    :cond_4
    nop

    .line 194
    return v1

    .line 195
    .end local v0    # "flags":I
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 202
    .local v0, "exception":Ljava/lang/RuntimeException;
    :goto_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Throwable;

    aput-object v0, v5, v1

    const-string v1, "Ignoring exception"

    invoke-virtual {v3, v4, v1, v5}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 203
    return v2
.end method

.method public multiProcessChecks()Z
    .locals 7

    .line 293
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v0

    .line 294
    .local v0, "configuration":Landroidx/work/Configuration;
    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/work/impl/utils/ProcessUtils;->isDefaultProcess(Landroid/content/Context;Landroidx/work/Configuration;)Z

    move-result v1

    .line 295
    .local v1, "isDefaultProcess":Z
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "Is default app process = %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v2, v3, v4, v5}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 296
    return v1
.end method

.method public run()V
    .locals 12

    .line 98
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->multiProcessChecks()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->onForceStopRunnableCompleted()V

    .line 99
    return-void

    .line 103
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/impl/WorkDatabasePathHelper;->migrateDatabase(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    const-string v2, "Performing cleanup operations."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    invoke-virtual {p0}, Landroidx/work/impl/utils/ForceStopRunnable;->forceStopRunnable()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    goto :goto_2

    .line 110
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    .line 116
    .local v0, "exception":Landroid/database/sqlite/SQLiteException;
    :goto_1
    :try_start_3
    iget v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    .line 117
    const/4 v4, 0x3

    if-lt v1, v4, :cond_2

    .line 123
    const-string v1, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 125
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Throwable;

    aput-object v0, v6, v3

    invoke-virtual {v4, v5, v1, v6}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 126
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .local v4, "throwable":Ljava/lang/IllegalStateException;
    iget-object v6, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 129
    invoke-virtual {v6}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/work/Configuration;->getExceptionHandler()Landroidx/work/InitializationExceptionHandler;

    move-result-object v6

    .line 130
    .local v6, "exceptionHandler":Landroidx/work/InitializationExceptionHandler;
    if-eqz v6, :cond_1

    .line 131
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v7

    const-string v8, "Routing exception to the specified exception handler"

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v7, v5, v8, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 134
    invoke-interface {v6, v4}, Landroidx/work/InitializationExceptionHandler;->handleException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 135
    nop

    .line 149
    .end local v0    # "exception":Landroid/database/sqlite/SQLiteException;
    .end local v1    # "message":Ljava/lang/String;
    .end local v4    # "throwable":Ljava/lang/IllegalStateException;
    .end local v6    # "exceptionHandler":Landroidx/work/InitializationExceptionHandler;
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->onForceStopRunnableCompleted()V

    .line 150
    nop

    .line 151
    return-void

    .line 137
    .restart local v0    # "exception":Landroid/database/sqlite/SQLiteException;
    .restart local v1    # "message":Ljava/lang/String;
    .restart local v4    # "throwable":Ljava/lang/IllegalStateException;
    .restart local v6    # "exceptionHandler":Landroidx/work/InitializationExceptionHandler;
    :cond_1
    :try_start_4
    throw v4

    .line 140
    .end local v1    # "message":Ljava/lang/String;
    .end local v4    # "throwable":Ljava/lang/IllegalStateException;
    .end local v6    # "exceptionHandler":Landroidx/work/InitializationExceptionHandler;
    :cond_2
    int-to-long v4, v1

    const-wide/16 v6, 0x12c

    mul-long/2addr v4, v6

    .line 141
    .local v4, "duration":J
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v8, Landroidx/work/impl/utils/ForceStopRunnable;->TAG:Ljava/lang/String;

    const-string v9, "Retrying after %s"

    new-array v10, v2, [Ljava/lang/Object;

    .line 142
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object v0, v2, v3

    invoke-virtual {v1, v8, v9, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 144
    iget v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mRetryCount:I

    int-to-long v1, v1

    mul-long/2addr v1, v6

    invoke-virtual {p0, v1, v2}, Landroidx/work/impl/utils/ForceStopRunnable;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 146
    .end local v0    # "exception":Landroid/database/sqlite/SQLiteException;
    .end local v4    # "duration":J
    goto/16 :goto_0

    .line 149
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->onForceStopRunnableCompleted()V

    .line 150
    throw v0
.end method

.method shouldRescheduleWorkers()Z
    .locals 1

    .line 282
    iget-object v0, p0, Landroidx/work/impl/utils/ForceStopRunnable;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getPreferenceUtils()Landroidx/work/impl/utils/PreferenceUtils;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/impl/utils/PreferenceUtils;->getNeedsReschedule()Z

    move-result v0

    return v0
.end method

.method public sleep(J)V
    .locals 1
    .param p1, "duration"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 306
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    .line 310
    :goto_0
    return-void
.end method
