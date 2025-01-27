.class Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;
.super Ljava/lang/Object;
.source "JoinGroupTimeouts.java"


# instance fields
.field private final setupTimeout:I

.field private final start:J

.field private timeout:I

.field private final unknownStateTimeout:I


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 4
    .param p1, "configManager"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->start:J

    .line 72
    sget-object v0, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_SETUP_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->setupTimeout:I

    .line 74
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_UNKNOWN_STATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    if-nez v1, :cond_1

    .line 76
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ALLOW_UNKNOWN_STATE_ENV_OPEN:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 77
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1

    .line 78
    .local v1, "allowUnknownStateEnv":Z
    if-eqz v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const v2, 0x7fffffff

    :goto_0
    iput v2, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->unknownStateTimeout:I

    .line 80
    .end local v1    # "allowUnknownStateEnv":Z
    goto :goto_1

    .line 81
    :cond_1
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->ENV_UNKNOWN_STATE_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 82
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->unknownStateTimeout:I

    .line 83
    if-gt v1, v0, :cond_2

    .line 94
    :goto_1
    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->unknownStateTimeout:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->timeout:I

    .line 95
    return-void

    .line 84
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 84
    const-string v0, " The timeout ENV_UNKNOWN_STATE_TIMEOUT(%,d ms) exceeds the timeout ENV_SETUP_TIMEOUT(%,d ms)"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getSetupTimeout()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->setupTimeout:I

    return v0
.end method

.method getTimeout()I
    .locals 5

    .line 102
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->timeout:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->start:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method setSetupTimeout()V
    .locals 1

    .line 125
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->setupTimeout:I

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->timeout:I

    .line 126
    return-void
.end method

.method timeoutIsForUnknownState()Z
    .locals 2

    .line 118
    iget v0, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->timeout:I

    iget v1, p0, Lcom/sleepycat/je/rep/impl/node/JoinGroupTimeouts;->unknownStateTimeout:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
