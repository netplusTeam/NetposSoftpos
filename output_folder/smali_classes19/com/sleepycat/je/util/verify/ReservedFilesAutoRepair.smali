.class public Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "ReservedFilesAutoRepair.java"


# static fields
.field public static START_DELAY_S:I


# instance fields
.field private volatile completed:Z

.field private enabled:Z

.field private initialized:Z

.field private noThrottle:Z

.field private volatile running:Z

.field private final verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/16 v0, 0x5a

    sput v0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->START_DELAY_S:I

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RepairReservedFiles-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 48
    return-void
.end method

.method private dirtyDbTree(Lcom/sleepycat/je/dbi/DbTree;)V
    .locals 1
    .param p1, "dbTree"    # Lcom/sleepycat/je/dbi/DbTree;

    .line 219
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/DbTree;->getIdDatabaseImpl()Lcom/sleepycat/je/dbi/DatabaseImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/DatabaseImpl;->setDirty()V

    .line 220
    return-void
.end method

.method private parseConfig(Lcom/sleepycat/je/dbi/DbConfigManager;)V
    .locals 6
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 229
    sget-object v0, Lcom/sleepycat/je/config/EnvironmentParams;->AUTO_RESERVED_FILE_REPAIR:Lcom/sleepycat/je/config/ConfigParam;

    .line 230
    invoke-virtual {v0}, Lcom/sleepycat/je/config/ConfigParam;->getName()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "paramName":Ljava/lang/String;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->AUTO_RESERVED_FILE_REPAIR:Lcom/sleepycat/je/config/ConfigParam;

    invoke-virtual {p1, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->get(Lcom/sleepycat/je/config/ConfigParam;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "param":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 239
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->enabled:Z

    .line 240
    iput-boolean v2, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->noThrottle:Z

    .line 242
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "on.noThrottle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "off"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :sswitch_2
    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_1

    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 253
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not \'off\', \'on\' or \'on.noThrottle\': "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :pswitch_0
    iput-boolean v5, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->enabled:Z

    .line 250
    iput-boolean v5, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->noThrottle:Z

    .line 251
    goto :goto_2

    .line 246
    :pswitch_1
    iput-boolean v5, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->enabled:Z

    .line 247
    goto :goto_2

    .line 244
    :pswitch_2
    nop

    .line 257
    :goto_2
    return-void

    .line 236
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x17bdab7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->requestShutdown()V

    .line 150
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->completed:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->running:Z

    return v0
.end method

.method public requestShutdown()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setStopVerifyFlag(Z)V

    .line 145
    return-void
.end method

.method public run()V
    .locals 8

    .line 160
    const-wide/16 v0, 0x32

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget v4, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->START_DELAY_S:I

    int-to-long v4, v4

    .line 161
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair$$ExternalSyntheticLambda0;

    invoke-direct {v6, v5}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair$$ExternalSyntheticLambda0;-><init>(Lcom/sleepycat/je/util/verify/BtreeVerifier;)V

    .line 160
    invoke-static {v0, v1, v3, v4, v6}, Lcom/sleepycat/je/utilint/PollCondition;->await(JJLjava/util/function/Supplier;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 210
    iput-boolean v2, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->running:Z

    .line 163
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    .line 173
    .local v0, "exCount":I
    const/4 v1, 0x1

    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-virtual {v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->verifyAll()V

    .line 174
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-virtual {v3}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->hasRepairWarnings()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v3, v1

    .line 181
    .local v3, "success":Z
    goto :goto_0

    .line 175
    .end local v3    # "success":Z
    :catch_0
    move-exception v3

    .line 176
    .local v3, "e":Ljava/lang/RuntimeException;
    const/4 v4, 0x0

    .line 177
    .local v4, "success":Z
    const/4 v0, 0x1

    .line 179
    nop

    .line 180
    :try_start_2
    invoke-virtual {p0}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-static {v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 179
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    move v3, v4

    .line 187
    .end local v4    # "success":Z
    .local v3, "success":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v6, "Reserved file repair complete"

    .line 188
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v4

    .line 192
    .local v4, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/DbTree;->setAutoRepairReservedFilesDone()V

    .line 193
    invoke-direct {p0, v4}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->dirtyDbTree(Lcom/sleepycat/je/dbi/DbTree;)V

    .line 194
    .end local v4    # "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    goto :goto_1

    .line 195
    :cond_1
    nop

    .line 196
    invoke-virtual {p0}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reserved file repair not complete. lockConflicts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 198
    invoke-virtual {v7}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getRepairLockConflicts()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maybeExtinct="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 199
    invoke-virtual {v7}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getRepairMaybeExtinct()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " runtimeExceptions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    .line 201
    invoke-virtual {v7}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->getRepairRuntimeExceptions()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 195
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 205
    :goto_1
    iget-object v4, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDataVerifier()Lcom/sleepycat/je/util/verify/DataVerifier;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 206
    invoke-virtual {v5}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v5

    .line 205
    invoke-virtual {v4, v5}, Lcom/sleepycat/je/util/verify/DataVerifier;->configVerifyTask(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 208
    iput-boolean v1, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->completed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    .end local v0    # "exCount":I
    .end local v3    # "success":Z
    iput-boolean v2, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->running:Z

    .line 211
    nop

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->running:Z

    throw v0
.end method

.method public startOrCheck(Lcom/sleepycat/je/dbi/DbConfigManager;)Z
    .locals 6
    .param p1, "configMgr"    # Lcom/sleepycat/je/dbi/DbConfigManager;

    .line 73
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->initialized:Z

    if-eqz v0, :cond_0

    .line 80
    iget-boolean v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->running:Z

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->initialized:Z

    .line 84
    iget-object v1, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v1

    .line 85
    .local v1, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    invoke-direct {p0, p1}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->parseConfig(Lcom/sleepycat/je/dbi/DbConfigManager;)V

    .line 87
    iget-boolean v2, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->enabled:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 93
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbTree;->isAutoRepairReservedFilesDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbTree;->clearAutoRepairReservedFilesDone()V

    .line 95
    invoke-direct {p0, v1}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->dirtyDbTree(Lcom/sleepycat/je/dbi/DbTree;)V

    .line 97
    :cond_1
    return v3

    .line 104
    :cond_2
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/DbTree;->isAutoRepairReservedFilesDone()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 105
    return v3

    .line 112
    :cond_3
    new-instance v2, Lcom/sleepycat/je/VerifyConfig;

    invoke-direct {v2}, Lcom/sleepycat/je/VerifyConfig;-><init>()V

    .line 113
    .local v2, "verifyConfig":Lcom/sleepycat/je/VerifyConfig;
    invoke-virtual {v2, v0}, Lcom/sleepycat/je/VerifyConfig;->setRepairReservedFiles(Z)Lcom/sleepycat/je/VerifyConfig;

    .line 114
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_BTREE_BATCH_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/VerifyConfig;->setBatchSize(I)Lcom/sleepycat/je/VerifyConfig;

    .line 116
    iget-boolean v3, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->noThrottle:Z

    if-eqz v3, :cond_4

    .line 117
    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/je/VerifyConfig;->setBatchDelay(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/VerifyConfig;

    goto :goto_0

    .line 119
    :cond_4
    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->VERIFY_BTREE_BATCH_DELAY:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 120
    invoke-virtual {p1, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 119
    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/je/VerifyConfig;->setBatchDelay(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/VerifyConfig;

    .line 124
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->verifier:Lcom/sleepycat/je/util/verify/BtreeVerifier;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/util/verify/BtreeVerifier;->setBtreeVerifyConfig(Lcom/sleepycat/je/VerifyConfig;)V

    .line 125
    iput-boolean v0, p0, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->running:Z

    .line 126
    invoke-virtual {p0}, Lcom/sleepycat/je/util/verify/ReservedFilesAutoRepair;->start()V

    .line 127
    return v0
.end method
