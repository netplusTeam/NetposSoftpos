.class Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;
.super Ljava/lang/Object;
.source "SystemJobInfoConverter.java"


# static fields
.field static final EXTRA_IS_PERIODIC:Ljava/lang/String; = "EXTRA_IS_PERIODIC"

.field static final EXTRA_WORK_SPEC_ID:Ljava/lang/String; = "EXTRA_WORK_SPEC_ID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mWorkServiceComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "SystemJobInfoConverter"

    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/work/impl/background/systemjob/SystemJobService;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Landroid/content/ComponentName;

    .line 61
    return-void
.end method

.method private static convertContentUriTrigger(Landroidx/work/ContentUriTriggers$Trigger;)Landroid/app/job/JobInfo$TriggerContentUri;
    .locals 3
    .param p0, "trigger"    # Landroidx/work/ContentUriTriggers$Trigger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trigger"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Landroidx/work/ContentUriTriggers$Trigger;->shouldTriggerForDescendants()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    .local v0, "flag":I
    :goto_0
    new-instance v1, Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {p0}, Landroidx/work/ContentUriTriggers$Trigger;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/job/JobInfo$TriggerContentUri;-><init>(Landroid/net/Uri;I)V

    return-object v1
.end method

.method static convertNetworkType(Landroidx/work/NetworkType;)I
    .locals 6
    .param p0, "networkType"    # Landroidx/work/NetworkType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkType"
        }
    .end annotation

    .line 172
    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter$1;->$SwitchMap$androidx$work$NetworkType:[I

    invoke-virtual {p0}, Landroidx/work/NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    .line 186
    const/4 v0, 0x4

    return v0

    .line 180
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    .line 181
    const/4 v0, 0x3

    return v0

    .line 178
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 176
    :pswitch_3
    return v2

    .line 174
    :pswitch_4
    return v1

    .line 190
    :cond_0
    :goto_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->TAG:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    const-string v5, "API version too low. Cannot convert network type value %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 192
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static setRequiredNetwork(Landroid/app/job/JobInfo$Builder;Landroidx/work/NetworkType;)V
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "networkType"    # Landroidx/work/NetworkType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "networkType"
        }
    .end annotation

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    sget-object v0, Landroidx/work/NetworkType;->TEMPORARILY_UNMETERED:Landroidx/work/NetworkType;

    if-ne p1, v0, :cond_0

    .line 154
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0x19

    .line 155
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 158
    .local v0, "networkRequest":Landroid/net/NetworkRequest;
    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetwork(Landroid/net/NetworkRequest;)Landroid/app/job/JobInfo$Builder;

    .line 159
    .end local v0    # "networkRequest":Landroid/net/NetworkRequest;
    goto :goto_0

    .line 160
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->convertNetworkType(Landroidx/work/NetworkType;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 162
    :goto_0
    return-void
.end method


# virtual methods
.method convert(Landroidx/work/impl/model/WorkSpec;I)Landroid/app/job/JobInfo;
    .locals 16
    .param p1, "workSpec"    # Landroidx/work/impl/model/WorkSpec;
    .param p2, "jobId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workSpec",
            "jobId"
        }
    .end annotation

    .line 73
    move-object/from16 v0, p1

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    .line 74
    .local v1, "constraints":Landroidx/work/Constraints;
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 75
    .local v2, "extras":Landroid/os/PersistableBundle;
    iget-object v3, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const-string v4, "EXTRA_WORK_SPEC_ID"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v3

    const-string v4, "EXTRA_IS_PERIODIC"

    invoke-virtual {v2, v4, v3}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    new-instance v3, Landroid/app/job/JobInfo$Builder;

    move-object/from16 v4, p0

    iget-object v5, v4, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->mWorkServiceComponent:Landroid/content/ComponentName;

    move/from16 v6, p2

    invoke-direct {v3, v6, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 78
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresCharging()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 79
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 80
    invoke-virtual {v3, v2}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    .line 82
    .local v3, "builder":Landroid/app/job/JobInfo$Builder;
    invoke-virtual {v1}, Landroidx/work/Constraints;->getRequiredNetworkType()Landroidx/work/NetworkType;

    move-result-object v5

    invoke-static {v3, v5}, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->setRequiredNetwork(Landroid/app/job/JobInfo$Builder;Landroidx/work/NetworkType;)V

    .line 84
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresDeviceIdle()Z

    move-result v5

    if-nez v5, :cond_1

    .line 86
    iget-object v5, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:Landroidx/work/BackoffPolicy;

    sget-object v9, Landroidx/work/BackoffPolicy;->LINEAR:Landroidx/work/BackoffPolicy;

    if-ne v5, v9, :cond_0

    .line 87
    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 88
    .local v5, "backoffPolicy":I
    :goto_0
    iget-wide v9, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-virtual {v3, v9, v10, v5}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 91
    .end local v5    # "backoffPolicy":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v9

    .line 92
    .local v9, "nextRunTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 93
    .local v11, "now":J
    sub-long v13, v9, v11

    const-wide/16 v7, 0x0

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 95
    .local v13, "offset":J
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1c

    if-gt v5, v15, :cond_2

    .line 99
    invoke-virtual {v3, v13, v14}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    .line 101
    :cond_2
    cmp-long v5, v13, v7

    if-lez v5, :cond_3

    .line 103
    invoke-virtual {v3, v13, v14}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    goto :goto_1

    .line 104
    :cond_3
    iget-boolean v5, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-nez v5, :cond_4

    .line 106
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo$Builder;->setImportantWhileForeground(Z)Landroid/app/job/JobInfo$Builder;

    .line 110
    :cond_4
    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v5, v7, :cond_6

    invoke-virtual {v1}, Landroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    invoke-virtual {v1}, Landroidx/work/Constraints;->getContentUriTriggers()Landroidx/work/ContentUriTriggers;

    move-result-object v5

    .line 112
    .local v5, "contentUriTriggers":Landroidx/work/ContentUriTriggers;
    invoke-virtual {v5}, Landroidx/work/ContentUriTriggers;->getTriggers()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/work/ContentUriTriggers$Trigger;

    .line 113
    .local v8, "trigger":Landroidx/work/ContentUriTriggers$Trigger;
    invoke-static {v8}, Landroidx/work/impl/background/systemjob/SystemJobInfoConverter;->convertContentUriTrigger(Landroidx/work/ContentUriTriggers$Trigger;)Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/app/job/JobInfo$Builder;->addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;

    .line 114
    .end local v8    # "trigger":Landroidx/work/ContentUriTriggers$Trigger;
    goto :goto_2

    .line 115
    :cond_5
    invoke-virtual {v1}, Landroidx/work/Constraints;->getTriggerContentUpdateDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/app/job/JobInfo$Builder;->setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 116
    invoke-virtual {v1}, Landroidx/work/Constraints;->getTriggerMaxContentDelay()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/app/job/JobInfo$Builder;->setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;

    .line 121
    .end local v5    # "contentUriTriggers":Landroidx/work/ContentUriTriggers;
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 122
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_7

    .line 123
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresBatteryNotLow()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 124
    invoke-virtual {v1}, Landroidx/work/Constraints;->requiresStorageNotLow()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 127
    :cond_7
    iget v7, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-lez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    move v7, v5

    :goto_3
    move v5, v7

    .line 128
    .local v5, "isRetry":Z
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-boolean v7, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eqz v7, :cond_9

    if-nez v5, :cond_9

    .line 130
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/app/job/JobInfo$Builder;->setExpedited(Z)Landroid/app/job/JobInfo$Builder;

    .line 132
    :cond_9
    invoke-virtual {v3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v7

    return-object v7
.end method
