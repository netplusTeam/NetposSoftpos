.class public Lcom/sleepycat/je/util/verify/DataVerifier;
.super Ljava/lang/Object;
.source "DataVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;
    }
.end annotation


# instance fields
.field private final VERIFIER_SCHEDULE:Ljava/lang/String;

.field private cronSchedule:Ljava/lang/String;

.field private final dbLogVerifier:Lcom/sleepycat/je/util/DbVerifyLog;

.field private final dbTreeVerifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private shutdownRequest:Z

.field private final timer:Ljava/util/Timer;

.field private verifyBtree:Z

.field private verifyDelay:J

.field private verifyInterval:J

.field private verifyLog:Z

.field private verifyTask:Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->shutdownRequest:Z

    .line 67
    const-string v1, "test.je.env.verifierSchedule"

    iput-object v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->VERIFIER_SCHEDULE:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 72
    new-instance v1, Ljava/util/Timer;

    .line 73
    const-string v2, "DataCorruptionVerifier"

    invoke-virtual {p1, v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->makeDaemonThreadName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->timer:Ljava/util/Timer;

    .line 76
    new-instance v1, Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-direct {v1, p1, v0}, Lcom/sleepycat/je/util/DbVerifyLog;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    iput-object v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->dbLogVerifier:Lcom/sleepycat/je/util/DbVerifyLog;

    .line 77
    new-instance v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->dbTreeVerifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyTask:Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/util/verify/DataVerifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier;

    .line 52
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyLog:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sleepycat/je/util/verify/DataVerifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyLog:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sleepycat/je/util/verify/DataVerifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier;

    .line 52
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyBtree:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sleepycat/je/util/verify/DataVerifier;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyBtree:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/DbVerifyLog;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->dbLogVerifier:Lcom/sleepycat/je/util/DbVerifyLog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/verify/BtreeVerifier;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier;

    .line 52
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->dbTreeVerifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sleepycat/je/util/verify/DataVerifier;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier;

    .line 52
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->shutdownRequest:Z

    return v0
.end method

.method private cancel()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyTask:Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->cancel()Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->dbLogVerifier:Lcom/sleepycat/je/util/DbVerifyLog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/util/DbVerifyLog;->setStopVerifyFlag(Z)V

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->dbTreeVerifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setStopVerifyFlag(Z)V

    .line 122
    return-void
.end method

.method private updateConfig(Lcom/sleepycat/je/dbi/DbConfigManager;)Z
    .locals 6
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 177
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_VERIFIER:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->cronSchedule:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    return v1

    .line 181
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->cronSchedule:Ljava/lang/String;

    .line 182
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyDelay:J

    .line 183
    iput-wide v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyInterval:J

    .line 184
    return v2

    .line 186
    :cond_1
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_SCHEDULE:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "newCronSchedule":Ljava/lang/String;
    nop

    .line 196
    const-string v3, "test.je.env.verifierSchedule"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    .local v3, "sysPropVerifySchedule":Ljava/lang/String;
    if-eqz v3, :cond_2

    sget-object v4, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_SCHEDULE:Lcom/sleepycat/je/config/ConfigParam;

    .line 198
    invoke-virtual {p1, v4}, Lcom/sleepycat/je/dbi/DbConfigManager;->isSpecified(Lcom/sleepycat/je/config/ConfigParam;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    move-object v0, v3

    .line 202
    :cond_2
    iget-object v4, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->cronSchedule:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/sleepycat/je/utilint/CronScheduleParser;->checkSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    return v1

    .line 205
    :cond_3
    new-instance v1, Lcom/sleepycat/je/utilint/CronScheduleParser;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/utilint/CronScheduleParser;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "csp":Lcom/sleepycat/je/utilint/CronScheduleParser;
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/CronScheduleParser;->getDelayTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyDelay:J

    .line 207
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/CronScheduleParser;->getInterval()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyInterval:J

    .line 208
    iput-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->cronSchedule:Ljava/lang/String;

    .line 209
    return v2
.end method


# virtual methods
.method public configVerifyTask(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 7
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 86
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/verify/DataVerifier;->updateConfig(Lcom/sleepycat/je/dbi/DbConfigManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    monitor-enter p0

    .line 91
    :try_start_0
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->shutdownRequest:Z

    if-nez v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/sleepycat/je/util/verify/DataVerifier;->cancel()V

    .line 94
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->cronSchedule:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 95
    new-instance v2, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;

    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v2, p0, v0}, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;-><init>(Lcom/sleepycat/je/util/verify/DataVerifier;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyTask:Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;

    .line 104
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->timer:Ljava/util/Timer;

    iget-wide v3, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyDelay:J

    iget-wide v5, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyInterval:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 108
    :cond_1
    monitor-exit p0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCronSchedule()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->cronSchedule:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyDelay()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyDelay:J

    return-wide v0
.end method

.method public getVerifyInterval()J
    .locals 2

    .line 158
    iget-wide v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyInterval:J

    return-wide v0
.end method

.method public getVerifyTask()Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->verifyTask:Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;

    return-object v0
.end method

.method public requestShutdown()V
    .locals 1

    .line 125
    monitor-enter p0

    .line 126
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->shutdownRequest:Z

    .line 127
    invoke-direct {p0}, Lcom/sleepycat/je/util/verify/DataVerifier;->cancel()V

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 8

    .line 133
    invoke-virtual {p0}, Lcom/sleepycat/je/util/verify/DataVerifier;->requestShutdown()V

    .line 135
    const/16 v0, 0x7530

    .line 137
    .local v0, "timeoutMs":I
    new-instance v7, Lcom/sleepycat/je/util/verify/DataVerifier$1;

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x7530

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/util/verify/DataVerifier$1;-><init>(Lcom/sleepycat/je/util/verify/DataVerifier;JJ)V

    .line 146
    .local v1, "cond":Lcom/sleepycat/je/utilint/PollCondition;
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/PollCondition;->await()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 148
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/util/verify/DataVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 147
    const-string v4, "Unable to shutdown data verifier after 30000ms"

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method
