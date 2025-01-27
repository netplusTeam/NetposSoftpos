.class Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;
.super Ljava/util/TimerTask;
.source "DataVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/util/verify/DataVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VerifyTask"
.end annotation


# instance fields
.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private volatile isRunning:Z

.field final synthetic this$0:Lcom/sleepycat/je/util/verify/DataVerifier;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/util/verify/DataVerifier;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/util/verify/DataVerifier;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 217
    iput-object p1, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 219
    return-void
.end method

.method static synthetic access$100(Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;

    .line 213
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->isRunning:Z

    return v0
.end method

.method private updateConfig()V
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 224
    .local v0, "configMgr":Lcom/sleepycat/je/dbi/DbConfigManager;
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_LOG:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$202(Lcom/sleepycat/je/util/verify/DataVerifier;Z)Z

    .line 225
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_BTREE:Lcom/sleepycat/je/config/BooleanConfigParam;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$302(Lcom/sleepycat/je/util/verify/DataVerifier;Z)Z

    .line 227
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v1}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$400(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/DbVerifyLog;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_LOG_READ_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 228
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/util/DbVerifyLog;->setReadDelay(JLjava/util/concurrent/TimeUnit;)V

    .line 231
    new-instance v1, Lcom/sleepycat/je/VerifyConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/VerifyConfig;-><init>()V

    .line 232
    .local v1, "btreeVerifyConfig":Lcom/sleepycat/je/VerifyConfig;
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_SECONDARIES:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 233
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    .line 232
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/VerifyConfig;->setVerifySecondaries(Z)Lcom/sleepycat/je/VerifyConfig;

    .line 234
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_DATA_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 235
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    .line 234
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/VerifyConfig;->setVerifyDataRecords(Z)Lcom/sleepycat/je/VerifyConfig;

    .line 236
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_OBSOLETE_RECORDS:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 237
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v2

    .line 236
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/VerifyConfig;->setVerifyObsoleteRecords(Z)Lcom/sleepycat/je/VerifyConfig;

    .line 238
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_BTREE_BATCH_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 239
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v2

    .line 238
    invoke-virtual {v1, v2}, Lcom/sleepycat/je/VerifyConfig;->setBatchSize(I)Lcom/sleepycat/je/VerifyConfig;

    .line 240
    sget-object v2, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_BTREE_BATCH_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 241
    invoke-virtual {v0, v2}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 240
    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/VerifyConfig;->setBatchDelay(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/VerifyConfig;

    .line 243
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v2}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$500(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/verify/BtreeVerifier;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setBtreeVerifyConfig(Lcom/sleepycat/je/VerifyConfig;)V

    .line 265
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v3}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$600(Lcom/sleepycat/je/util/verify/DataVerifier;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v3}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$400(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/DbVerifyLog;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/util/DbVerifyLog;->setStopVerifyFlag(Z)V

    .line 268
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v3}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$500(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/verify/BtreeVerifier;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setStopVerifyFlag(Z)V

    .line 270
    :cond_0
    monitor-exit v2

    .line 271
    return-void

    .line 270
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->scheduledExecutionTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 281
    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_MAX_TARDINESS:Lcom/sleepycat/je/config/DurationConfigParam;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->isRunning:Z

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "success":Z
    invoke-direct {p0}, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->updateConfig()V

    .line 289
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v2}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$200(Lcom/sleepycat/je/util/verify/DataVerifier;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v2}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$400(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/DbVerifyLog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/util/DbVerifyLog;->verifyAll()V

    .line 292
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v2}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$300(Lcom/sleepycat/je/util/verify/DataVerifier;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-static {v2}, Lcom/sleepycat/je/util/verify/DataVerifier;->access$500(Lcom/sleepycat/je/util/verify/DataVerifier;)Lcom/sleepycat/je/util/verify/BtreeVerifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyAll()V
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/CorruptSecondariesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_2
    const/4 v0, 0x1

    .line 306
    if-nez v0, :cond_3

    .line 307
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-virtual {v2}, Lcom/sleepycat/je/util/verify/DataVerifier;->requestShutdown()V

    .line 309
    :cond_3
    iput-boolean v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->isRunning:Z

    .line 310
    goto :goto_2

    .line 299
    :catchall_0
    move-exception v2

    .line 300
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 301
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 302
    invoke-virtual {v3}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    .line 301
    invoke-static {v3, v4, v5, v2}, Lcom/sleepycat/je/utilint/StoppableThread;->handleUncaughtException(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 306
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    if-nez v0, :cond_3

    .line 307
    goto :goto_0

    .line 306
    :catchall_1
    move-exception v2

    if-nez v0, :cond_5

    .line 307
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->this$0:Lcom/sleepycat/je/util/verify/DataVerifier;

    invoke-virtual {v3}, Lcom/sleepycat/je/util/verify/DataVerifier;->requestShutdown()V

    .line 309
    :cond_5
    iput-boolean v1, p0, Lcom/sleepycat/je/util/verify/DataVerifier$VerifyTask;->isRunning:Z

    throw v2

    .line 296
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 306
    :goto_1
    if-nez v0, :cond_3

    .line 307
    goto :goto_0

    .line 311
    :goto_2
    return-void
.end method
