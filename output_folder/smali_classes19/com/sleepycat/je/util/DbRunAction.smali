.class public Lcom/sleepycat/je/util/DbRunAction;
.super Ljava/lang/Object;
.source "DbRunAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/util/DbRunAction$StatsPrinter;
    }
.end annotation


# static fields
.field private static final ACTIVATE_CLEANER_THREADS:I = 0x7

.field private static final BATCH_CLEAN:I = 0x1

.field private static final CHECKPOINT:I = 0x4

.field private static final COMPRESS:I = 0x2

.field private static final EVICT:I = 0x3

.field private static final REMOVEDB:I = 0x5

.field private static final REMOVEDB_AND_CLEAN:I = 0x6

.field private static final VERIFY_UTILIZATION:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doEvict(Lcom/sleepycat/je/Environment;)V
    .locals 13
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 336
    invoke-static {p0}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 337
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getMemoryBudget()Lcom/sleepycat/je/dbi/MemoryBudget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/MemoryBudget;->getCacheMemoryUsage()J

    move-result-wide v1

    .line 338
    .local v1, "cacheUsage":J
    new-instance v3, Lcom/sleepycat/je/EnvironmentMutableConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/EnvironmentMutableConfig;-><init>()V

    .line 339
    .local v3, "c":Lcom/sleepycat/je/EnvironmentMutableConfig;
    const-wide/16 v4, 0x2

    div-long v4, v1, v4

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/EnvironmentMutableConfig;->setCacheSize(J)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 340
    invoke-virtual {p0, v3}, Lcom/sleepycat/je/Environment;->setMutableConfig(Lcom/sleepycat/je/EnvironmentMutableConfig;)V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 343
    .local v4, "start":J
    invoke-virtual {p0}, Lcom/sleepycat/je/Environment;->evictMemory()V

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 346
    .local v6, "end":J
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V

    .line 347
    .local v8, "f":Ljava/text/DecimalFormat;
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 348
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "evict time="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v6, v4

    invoke-virtual {v8, v11, v12}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private static getSecs(JJ)Ljava/lang/String;
    .locals 5
    .param p0, "start"    # J
    .param p2, "end"    # J

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v1, p2, p0

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " secs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 32
    .param p0, "argv"    # [Ljava/lang/String;

    .line 75
    move-object/from16 v1, p0

    const-string v2, "action time = "

    const-string v3, "\nrecovery time = "

    const-string v4, " minutes"

    const-string v5, " millis "

    const-wide/16 v6, 0x0

    .line 76
    .local v6, "recoveryStart":J
    const-wide/16 v8, 0x0

    .line 77
    .local v8, "actionStart":J
    const-wide/16 v10, 0x0

    .line 80
    .local v10, "actionEnd":J
    const/4 v0, 0x0

    .line 81
    .local v0, "whichArg":I
    const/4 v13, 0x1

    :try_start_0
    array-length v14, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-nez v14, :cond_0

    .line 82
    :try_start_1
    invoke-static {}, Lcom/sleepycat/je/util/DbRunAction;->usage()V

    .line 83
    invoke-static {v13}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v0    # "whichArg":I
    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 240
    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 86
    .restart local v0    # "whichArg":I
    :cond_0
    :goto_0
    const/4 v14, 0x0

    .line 87
    .local v14, "dbName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 88
    .local v15, "doAction":I
    :try_start_2
    const-string v20, "."

    .line 89
    .local v20, "envHome":Ljava/lang/String;
    const/16 v21, 0x0

    .line 90
    .local v21, "readOnly":Z
    const/16 v22, 0x0

    move-object/from16 v12, v20

    .line 92
    .end local v20    # "envHome":Ljava/lang/String;
    .local v12, "envHome":Ljava/lang/String;
    .local v22, "printStats":Z
    :goto_1
    array-length v13, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-ge v0, v13, :cond_e

    .line 93
    :try_start_3
    aget-object v13, v1, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 95
    .local v13, "nextArg":Ljava/lang/String;
    move-wide/from16 v23, v6

    .end local v6    # "recoveryStart":J
    .local v23, "recoveryStart":J
    :try_start_4
    const-string v6, "-h"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object v12, v6

    .end local v12    # "envHome":Ljava/lang/String;
    .local v6, "envHome":Ljava/lang/String;
    goto/16 :goto_3

    .line 98
    .end local v6    # "envHome":Ljava/lang/String;
    .restart local v12    # "envHome":Ljava/lang/String;
    :cond_1
    const-string v6, "-a"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 99
    add-int/lit8 v0, v0, 0x1

    .line 100
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "action":Ljava/lang/String;
    const-string v7, "batchClean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    const/4 v15, 0x1

    goto :goto_2

    .line 103
    :cond_2
    const-string v7, "compress"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 104
    const/4 v15, 0x2

    goto :goto_2

    .line 105
    :cond_3
    const-string v7, "checkpoint"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 106
    const/4 v15, 0x4

    goto :goto_2

    .line 107
    :cond_4
    const-string v7, "evict"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 108
    const/4 v15, 0x3

    goto :goto_2

    .line 109
    :cond_5
    const-string v7, "removedb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 110
    const/4 v15, 0x5

    goto :goto_2

    .line 111
    :cond_6
    const-string v7, "removedbAndClean"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 112
    const/4 v15, 0x6

    goto :goto_2

    .line 113
    :cond_7
    const-string v7, "activateCleaner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 114
    const/4 v15, 0x7

    goto :goto_2

    .line 115
    :cond_8
    const-string v7, "verifyUtilization"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 116
    const/16 v15, 0x8

    goto :goto_2

    .line 118
    :cond_9
    invoke-static {}, Lcom/sleepycat/je/util/DbRunAction;->usage()V

    .line 119
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 121
    .end local v6    # "action":Ljava/lang/String;
    :goto_2
    goto :goto_3

    :cond_a
    const-string v6, "-ro"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 122
    const/4 v6, 0x1

    move/from16 v21, v6

    .end local v21    # "readOnly":Z
    .local v6, "readOnly":Z
    goto :goto_3

    .line 123
    .end local v6    # "readOnly":Z
    .restart local v21    # "readOnly":Z
    :cond_b
    const-string v6, "-s"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 124
    add-int/lit8 v0, v0, 0x1

    aget-object v6, v1, v0

    move-object v14, v6

    .end local v14    # "dbName":Ljava/lang/String;
    .local v6, "dbName":Ljava/lang/String;
    goto :goto_3

    .line 125
    .end local v6    # "dbName":Ljava/lang/String;
    .restart local v14    # "dbName":Ljava/lang/String;
    :cond_c
    const-string v6, "-stats"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 126
    const/4 v6, 0x1

    move/from16 v22, v6

    .line 131
    :goto_3
    const/4 v6, 0x1

    .end local v13    # "nextArg":Ljava/lang/String;
    add-int/2addr v0, v6

    .line 132
    move-wide/from16 v6, v23

    const/4 v13, 0x1

    goto/16 :goto_1

    .line 128
    .restart local v13    # "nextArg":Ljava/lang/String;
    :cond_d
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v25, v0

    .end local v0    # "whichArg":I
    .local v25, "whichArg":I
    const-string v0, " is not a supported option."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v8    # "actionStart":J
    .end local v10    # "actionEnd":J
    .end local v23    # "recoveryStart":J
    .end local p0    # "argv":[Ljava/lang/String;
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 246
    .end local v12    # "envHome":Ljava/lang/String;
    .end local v13    # "nextArg":Ljava/lang/String;
    .end local v14    # "dbName":Ljava/lang/String;
    .end local v15    # "doAction":I
    .end local v21    # "readOnly":Z
    .end local v22    # "printStats":Z
    .end local v25    # "whichArg":I
    .restart local v8    # "actionStart":J
    .restart local v10    # "actionEnd":J
    .restart local v23    # "recoveryStart":J
    .restart local p0    # "argv":[Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-wide/from16 v6, v23

    goto/16 :goto_a

    .line 240
    :catch_1
    move-exception v0

    move-wide/from16 v6, v23

    goto/16 :goto_8

    .line 246
    .end local v23    # "recoveryStart":J
    .local v6, "recoveryStart":J
    :catchall_2
    move-exception v0

    move-wide/from16 v23, v6

    .end local v6    # "recoveryStart":J
    .restart local v23    # "recoveryStart":J
    goto/16 :goto_a

    .line 240
    .end local v23    # "recoveryStart":J
    .restart local v6    # "recoveryStart":J
    :catch_2
    move-exception v0

    move-wide/from16 v23, v6

    .end local v6    # "recoveryStart":J
    .restart local v23    # "recoveryStart":J
    goto/16 :goto_8

    .line 134
    .end local v23    # "recoveryStart":J
    .restart local v0    # "whichArg":I
    .restart local v6    # "recoveryStart":J
    .restart local v12    # "envHome":Ljava/lang/String;
    .restart local v14    # "dbName":Ljava/lang/String;
    .restart local v15    # "doAction":I
    .restart local v21    # "readOnly":Z
    .restart local v22    # "printStats":Z
    :cond_e
    move/from16 v25, v0

    move-wide/from16 v23, v6

    .end local v0    # "whichArg":I
    .end local v6    # "recoveryStart":J
    .restart local v23    # "recoveryStart":J
    .restart local v25    # "whichArg":I
    :try_start_5
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 137
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const-string v6, "false"

    if-eqz v21, :cond_f

    .line 138
    :try_start_6
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->JE_LOGGING_DBLOG:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 139
    invoke-virtual {v7}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 141
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 148
    :cond_f
    const/4 v7, 0x3

    if-ne v15, v7, :cond_10

    .line 149
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_EVICTOR:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 150
    invoke-virtual {v7}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 151
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->EVICTOR_CRITICAL_PERCENTAGE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 152
    invoke-virtual {v7}, Lcom/sleepycat/je/config/IntConfigParam;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v13, "1000"

    invoke-virtual {v0, v7, v13}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;

    .line 161
    :cond_10
    const/4 v7, 0x1

    if-ne v15, v7, :cond_11

    .line 162
    sget-object v7, Lcom/sleepycat/je/config/EnvironmentParams;->ENV_RUN_CLEANER:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 163
    invoke-virtual {v7}, Lcom/sleepycat/je/config/BooleanConfigParam;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/sleepycat/je/EnvironmentConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentConfig;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 166
    :cond_11
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    .line 168
    .end local v23    # "recoveryStart":J
    .restart local v6    # "recoveryStart":J
    :try_start_8
    new-instance v13, Lcom/sleepycat/je/Environment;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v1, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    move-object v1, v13

    .line 171
    .local v1, "env":Lcom/sleepycat/je/Environment;
    new-instance v13, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v13}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 172
    .local v13, "forceConfig":Lcom/sleepycat/je/CheckpointConfig;
    move-wide/from16 v26, v8

    const/4 v8, 0x1

    .end local v8    # "actionStart":J
    .local v26, "actionStart":J
    :try_start_9
    invoke-virtual {v13, v8}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 174
    const/4 v8, 0x0

    .line 175
    .local v8, "statsPrinter":Ljava/lang/Thread;
    if-eqz v22, :cond_12

    .line 176
    :try_start_a
    new-instance v9, Lcom/sleepycat/je/util/DbRunAction$StatsPrinter;

    invoke-direct {v9, v1}, Lcom/sleepycat/je/util/DbRunAction$StatsPrinter;-><init>(Lcom/sleepycat/je/Environment;)V

    move-object v8, v9

    .line 177
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .line 246
    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v1    # "env":Lcom/sleepycat/je/Environment;
    .end local v8    # "statsPrinter":Ljava/lang/Thread;
    .end local v12    # "envHome":Ljava/lang/String;
    .end local v13    # "forceConfig":Lcom/sleepycat/je/CheckpointConfig;
    .end local v14    # "dbName":Ljava/lang/String;
    .end local v15    # "doAction":I
    .end local v21    # "readOnly":Z
    .end local v22    # "printStats":Z
    .end local v25    # "whichArg":I
    :catchall_3
    move-exception v0

    move-wide/from16 v8, v26

    goto/16 :goto_a

    .line 240
    :catch_3
    move-exception v0

    move-wide/from16 v8, v26

    goto/16 :goto_8

    .line 180
    .restart local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v1    # "env":Lcom/sleepycat/je/Environment;
    .restart local v8    # "statsPrinter":Ljava/lang/Thread;
    .restart local v12    # "envHome":Ljava/lang/String;
    .restart local v13    # "forceConfig":Lcom/sleepycat/je/CheckpointConfig;
    .restart local v14    # "dbName":Ljava/lang/String;
    .restart local v15    # "doAction":I
    .restart local v21    # "readOnly":Z
    .restart local v22    # "printStats":Z
    .restart local v25    # "whichArg":I
    :cond_12
    :goto_4
    const/4 v9, 0x0

    .line 181
    .local v9, "promptForShutdown":Z
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 182
    .end local v26    # "actionStart":J
    .local v23, "actionStart":J
    packed-switch v15, :pswitch_data_0

    move-object/from16 v28, v0

    move/from16 v29, v9

    move-wide/from16 v30, v10

    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v9    # "promptForShutdown":Z
    .end local v10    # "actionEnd":J
    .local v28, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .local v29, "promptForShutdown":Z
    .local v30, "actionEnd":J
    goto/16 :goto_6

    .line 216
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v29    # "promptForShutdown":Z
    .end local v30    # "actionEnd":J
    .restart local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v9    # "promptForShutdown":Z
    .restart local v10    # "actionEnd":J
    :pswitch_0
    nop

    .line 217
    :try_start_c
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v26

    move-object/from16 v27, v26

    .line 218
    .local v27, "envImpl2":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    nop

    .line 219
    move-object/from16 v28, v0

    move/from16 v29, v9

    move-object/from16 v0, v27

    const/4 v9, 0x1

    .end local v9    # "promptForShutdown":Z
    .end local v27    # "envImpl2":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v0, "envImpl2":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    invoke-static {v0, v9, v9}, Lcom/sleepycat/je/cleaner/VerifyUtils;->verifyUtilization(Lcom/sleepycat/je/dbi/EnvironmentImpl;ZZ)V

    move-wide/from16 v30, v10

    goto/16 :goto_6

    .line 210
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v29    # "promptForShutdown":Z
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v9    # "promptForShutdown":Z
    :pswitch_1
    move-object/from16 v28, v0

    move/from16 v29, v9

    .line 211
    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v9    # "promptForShutdown":Z
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    invoke-static {v1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    .line 212
    .local v0, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getCleaner()Lcom/sleepycat/je/cleaner/Cleaner;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/cleaner/Cleaner;->wakeupActivate()V

    .line 213
    const/4 v9, 0x1

    .line 214
    .end local v29    # "promptForShutdown":Z
    .restart local v9    # "promptForShutdown":Z
    move-wide/from16 v30, v10

    goto/16 :goto_7

    .line 207
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .local v0, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :pswitch_2
    move-object/from16 v28, v0

    move/from16 v29, v9

    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v9    # "promptForShutdown":Z
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    const/4 v9, 0x1

    invoke-static {v1, v14, v9}, Lcom/sleepycat/je/util/DbRunAction;->removeAndClean(Lcom/sleepycat/je/Environment;Ljava/lang/String;Z)V

    .line 208
    move-wide/from16 v30, v10

    goto/16 :goto_6

    .line 204
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v29    # "promptForShutdown":Z
    .restart local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v9    # "promptForShutdown":Z
    :pswitch_3
    move-object/from16 v28, v0

    move/from16 v29, v9

    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v9    # "promptForShutdown":Z
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    const/4 v0, 0x0

    invoke-static {v1, v14, v0}, Lcom/sleepycat/je/util/DbRunAction;->removeAndClean(Lcom/sleepycat/je/Environment;Ljava/lang/String;Z)V

    .line 205
    move-wide/from16 v30, v10

    goto/16 :goto_6

    .line 198
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v29    # "promptForShutdown":Z
    .restart local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v9    # "promptForShutdown":Z
    :pswitch_4
    move-object/from16 v28, v0

    move/from16 v29, v9

    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v9    # "promptForShutdown":Z
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    invoke-virtual {v1, v13}, Lcom/sleepycat/je/Environment;->checkpoint(Lcom/sleepycat/je/CheckpointConfig;)V

    .line 199
    move-wide/from16 v30, v10

    goto :goto_6

    .line 201
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v29    # "promptForShutdown":Z
    .restart local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v9    # "promptForShutdown":Z
    :pswitch_5
    move-object/from16 v28, v0

    move/from16 v29, v9

    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v9    # "promptForShutdown":Z
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    invoke-static {v1, v14}, Lcom/sleepycat/je/util/DbRunAction;->preload(Lcom/sleepycat/je/Environment;Ljava/lang/String;)V

    .line 202
    move-wide/from16 v30, v10

    goto :goto_6

    .line 195
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v29    # "promptForShutdown":Z
    .restart local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v9    # "promptForShutdown":Z
    :pswitch_6
    move-object/from16 v28, v0

    move/from16 v29, v9

    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v9    # "promptForShutdown":Z
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->compress()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 196
    move-wide/from16 v30, v10

    goto :goto_6

    .line 246
    .end local v1    # "env":Lcom/sleepycat/je/Environment;
    .end local v8    # "statsPrinter":Ljava/lang/Thread;
    .end local v12    # "envHome":Ljava/lang/String;
    .end local v13    # "forceConfig":Lcom/sleepycat/je/CheckpointConfig;
    .end local v14    # "dbName":Ljava/lang/String;
    .end local v15    # "doAction":I
    .end local v21    # "readOnly":Z
    .end local v22    # "printStats":Z
    .end local v25    # "whichArg":I
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v29    # "promptForShutdown":Z
    :catchall_4
    move-exception v0

    move-wide/from16 v8, v23

    goto/16 :goto_a

    .line 240
    :catch_4
    move-exception v0

    move-wide/from16 v8, v23

    goto/16 :goto_8

    .line 182
    .restart local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v1    # "env":Lcom/sleepycat/je/Environment;
    .restart local v8    # "statsPrinter":Ljava/lang/Thread;
    .restart local v9    # "promptForShutdown":Z
    .restart local v12    # "envHome":Ljava/lang/String;
    .restart local v13    # "forceConfig":Lcom/sleepycat/je/CheckpointConfig;
    .restart local v14    # "dbName":Ljava/lang/String;
    .restart local v15    # "doAction":I
    .restart local v21    # "readOnly":Z
    .restart local v22    # "printStats":Z
    .restart local v25    # "whichArg":I
    :pswitch_7
    move-object/from16 v28, v0

    move/from16 v29, v9

    .line 186
    .end local v0    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v9    # "promptForShutdown":Z
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    :goto_5
    :try_start_d
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->cleanLog()I

    move-result v0

    .line 187
    .local v0, "nFiles":I
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move-wide/from16 v30, v10

    .end local v10    # "actionEnd":J
    .restart local v30    # "actionEnd":J
    :try_start_e
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Files cleaned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 188
    if-nez v0, :cond_13

    .line 189
    nop

    .line 192
    .end local v0    # "nFiles":I
    invoke-virtual {v1, v13}, Lcom/sleepycat/je/Environment;->checkpoint(Lcom/sleepycat/je/CheckpointConfig;)V

    .line 193
    goto :goto_6

    .line 191
    :cond_13
    move-wide/from16 v10, v30

    goto :goto_5

    .line 246
    .end local v1    # "env":Lcom/sleepycat/je/Environment;
    .end local v8    # "statsPrinter":Ljava/lang/Thread;
    .end local v12    # "envHome":Ljava/lang/String;
    .end local v13    # "forceConfig":Lcom/sleepycat/je/CheckpointConfig;
    .end local v14    # "dbName":Ljava/lang/String;
    .end local v15    # "doAction":I
    .end local v21    # "readOnly":Z
    .end local v22    # "printStats":Z
    .end local v25    # "whichArg":I
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v29    # "promptForShutdown":Z
    .end local v30    # "actionEnd":J
    .restart local v10    # "actionEnd":J
    :catchall_5
    move-exception v0

    move-wide/from16 v30, v10

    move-wide/from16 v8, v23

    .end local v10    # "actionEnd":J
    .restart local v30    # "actionEnd":J
    goto/16 :goto_a

    .line 240
    .end local v30    # "actionEnd":J
    .restart local v10    # "actionEnd":J
    :catch_5
    move-exception v0

    move-wide/from16 v30, v10

    move-wide/from16 v8, v23

    .end local v10    # "actionEnd":J
    .restart local v30    # "actionEnd":J
    goto/16 :goto_8

    .line 224
    .restart local v1    # "env":Lcom/sleepycat/je/Environment;
    .restart local v8    # "statsPrinter":Ljava/lang/Thread;
    .restart local v12    # "envHome":Ljava/lang/String;
    .restart local v13    # "forceConfig":Lcom/sleepycat/je/CheckpointConfig;
    .restart local v14    # "dbName":Ljava/lang/String;
    .restart local v15    # "doAction":I
    .restart local v21    # "readOnly":Z
    .restart local v22    # "printStats":Z
    .restart local v25    # "whichArg":I
    .restart local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v29    # "promptForShutdown":Z
    :goto_6
    move/from16 v9, v29

    .end local v29    # "promptForShutdown":Z
    .restart local v9    # "promptForShutdown":Z
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 226
    .end local v30    # "actionEnd":J
    .restart local v10    # "actionEnd":J
    if-eqz v9, :cond_14

    .line 233
    :try_start_f
    invoke-static {}, Lcom/sleepycat/je/util/DbRunAction;->waitForShutdown()V

    .line 235
    :cond_14
    if-eqz v8, :cond_15

    .line 236
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    .line 237
    invoke-virtual {v8}, Ljava/lang/Thread;->join()V

    .line 239
    :cond_15
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 246
    .end local v1    # "env":Lcom/sleepycat/je/Environment;
    .end local v8    # "statsPrinter":Ljava/lang/Thread;
    .end local v9    # "promptForShutdown":Z
    .end local v12    # "envHome":Ljava/lang/String;
    .end local v13    # "forceConfig":Lcom/sleepycat/je/CheckpointConfig;
    .end local v14    # "dbName":Ljava/lang/String;
    .end local v15    # "doAction":I
    .end local v21    # "readOnly":Z
    .end local v22    # "printStats":Z
    .end local v25    # "whichArg":I
    .end local v28    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 247
    .local v0, "f":Ljava/text/DecimalFormat;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 249
    sub-long v8, v23, v6

    .line 250
    .local v8, "recoveryDuration":J
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-double v12, v8

    const-wide v14, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v12, v14

    .line 253
    invoke-virtual {v0, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    sub-long v12, v10, v23

    .line 257
    .local v12, "actionDuration":J
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v14, 0xea60

    div-long v14, v12, v14

    .line 260
    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    .end local v0    # "f":Ljava/text/DecimalFormat;
    .end local v8    # "recoveryDuration":J
    .end local v12    # "actionDuration":J
    goto/16 :goto_9

    .line 246
    .end local v10    # "actionEnd":J
    .restart local v30    # "actionEnd":J
    :catchall_6
    move-exception v0

    move-wide/from16 v8, v23

    move-wide/from16 v10, v30

    goto/16 :goto_a

    .line 240
    :catch_6
    move-exception v0

    move-wide/from16 v8, v23

    move-wide/from16 v10, v30

    goto :goto_8

    .line 246
    .end local v23    # "actionStart":J
    .end local v30    # "actionEnd":J
    .restart local v10    # "actionEnd":J
    .restart local v26    # "actionStart":J
    :catchall_7
    move-exception v0

    move-wide/from16 v30, v10

    move-wide/from16 v8, v26

    .end local v10    # "actionEnd":J
    .restart local v30    # "actionEnd":J
    goto/16 :goto_a

    .line 240
    .end local v30    # "actionEnd":J
    .restart local v10    # "actionEnd":J
    :catch_7
    move-exception v0

    move-wide/from16 v30, v10

    move-wide/from16 v8, v26

    .end local v10    # "actionEnd":J
    .restart local v30    # "actionEnd":J
    goto :goto_8

    .line 246
    .end local v26    # "actionStart":J
    .end local v30    # "actionEnd":J
    .local v8, "actionStart":J
    .restart local v10    # "actionEnd":J
    :catchall_8
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v30, v10

    .end local v8    # "actionStart":J
    .end local v10    # "actionEnd":J
    .restart local v26    # "actionStart":J
    .restart local v30    # "actionEnd":J
    goto/16 :goto_a

    .line 240
    .end local v26    # "actionStart":J
    .end local v30    # "actionEnd":J
    .restart local v8    # "actionStart":J
    .restart local v10    # "actionEnd":J
    :catch_8
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v30, v10

    .end local v8    # "actionStart":J
    .end local v10    # "actionEnd":J
    .restart local v26    # "actionStart":J
    .restart local v30    # "actionEnd":J
    goto :goto_8

    .line 246
    .end local v6    # "recoveryStart":J
    .end local v26    # "actionStart":J
    .end local v30    # "actionEnd":J
    .restart local v8    # "actionStart":J
    .restart local v10    # "actionEnd":J
    .local v23, "recoveryStart":J
    :catchall_9
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v30, v10

    move-wide/from16 v6, v23

    .end local v8    # "actionStart":J
    .end local v10    # "actionEnd":J
    .restart local v26    # "actionStart":J
    .restart local v30    # "actionEnd":J
    goto/16 :goto_a

    .line 240
    .end local v26    # "actionStart":J
    .end local v30    # "actionEnd":J
    .restart local v8    # "actionStart":J
    .restart local v10    # "actionEnd":J
    :catch_9
    move-exception v0

    move-wide/from16 v26, v8

    move-wide/from16 v30, v10

    move-wide/from16 v6, v23

    .end local v8    # "actionStart":J
    .end local v10    # "actionEnd":J
    .restart local v26    # "actionStart":J
    .restart local v30    # "actionEnd":J
    goto :goto_8

    .line 246
    .end local v23    # "recoveryStart":J
    .end local v26    # "actionStart":J
    .end local v30    # "actionEnd":J
    .restart local v6    # "recoveryStart":J
    .restart local v8    # "actionStart":J
    .restart local v10    # "actionEnd":J
    :catchall_a
    move-exception v0

    move-wide/from16 v23, v6

    move-wide/from16 v26, v8

    move-wide/from16 v30, v10

    .end local v6    # "recoveryStart":J
    .end local v8    # "actionStart":J
    .end local v10    # "actionEnd":J
    .restart local v23    # "recoveryStart":J
    .restart local v26    # "actionStart":J
    .restart local v30    # "actionEnd":J
    goto/16 :goto_a

    .line 240
    .end local v23    # "recoveryStart":J
    .end local v26    # "actionStart":J
    .end local v30    # "actionEnd":J
    .restart local v6    # "recoveryStart":J
    .restart local v8    # "actionStart":J
    .restart local v10    # "actionEnd":J
    :catch_a
    move-exception v0

    move-wide/from16 v23, v6

    move-wide/from16 v26, v8

    move-wide/from16 v30, v10

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/sleepycat/je/util/DbRunAction;->usage()V

    .line 244
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 247
    .local v0, "f":Ljava/text/DecimalFormat;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 249
    sub-long v12, v8, v6

    .line 250
    .local v12, "recoveryDuration":J
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {v0, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    long-to-double v14, v12

    const-wide v18, 0x40ed4c0000000000L    # 60000.0

    div-double v14, v14, v18

    .line 253
    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    sub-long v14, v10, v8

    .line 257
    .local v14, "actionDuration":J
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v21, v6

    const-wide/32 v16, 0xea60

    .end local v6    # "recoveryStart":J
    .local v21, "recoveryStart":J
    div-long v5, v14, v16

    .line 260
    invoke-virtual {v0, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    .end local v0    # "f":Ljava/text/DecimalFormat;
    .end local v12    # "recoveryDuration":J
    .end local v14    # "actionDuration":J
    move-wide/from16 v23, v8

    move-wide/from16 v6, v21

    .line 263
    .end local v8    # "actionStart":J
    .end local v21    # "recoveryStart":J
    .restart local v6    # "recoveryStart":J
    .local v23, "actionStart":J
    :goto_9
    return-void

    .line 246
    .end local v23    # "actionStart":J
    .restart local v8    # "actionStart":J
    :catchall_b
    move-exception v0

    move-wide/from16 v21, v6

    :goto_a
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    .line 247
    .local v1, "f":Ljava/text/DecimalFormat;
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 249
    sub-long v12, v8, v6

    .line 250
    .restart local v12    # "recoveryDuration":J
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 251
    invoke-virtual {v1, v12, v13}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v20, v6

    .end local v6    # "recoveryStart":J
    .local v20, "recoveryStart":J
    long-to-double v6, v12

    const-wide v18, 0x40ed4c0000000000L    # 60000.0

    div-double v6, v6, v18

    .line 253
    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-virtual {v14, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    sub-long v6, v10, v8

    .line 257
    .local v6, "actionDuration":J
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/32 v14, 0xea60

    div-long v14, v6, v14

    .line 260
    invoke-virtual {v1, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 262
    .end local v1    # "f":Ljava/text/DecimalFormat;
    .end local v6    # "actionDuration":J
    .end local v12    # "recoveryDuration":J
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static preload(Lcom/sleepycat/je/Environment;Ljava/lang/String;)V
    .locals 8
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "dbName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Preload starting"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v1

    .line 312
    .local v1, "db":Lcom/sleepycat/je/Database;
    invoke-virtual {v1, v0, v0}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v0

    .line 314
    .local v0, "cursor":Lcom/sleepycat/je/Cursor;
    :try_start_0
    new-instance v2, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v2}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 315
    .local v2, "key":Lcom/sleepycat/je/DatabaseEntry;
    new-instance v3, Lcom/sleepycat/je/DatabaseEntry;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseEntry;-><init>()V

    .line 316
    .local v3, "data":Lcom/sleepycat/je/DatabaseEntry;
    const/4 v4, 0x0

    .line 317
    .local v4, "count":I
    :cond_0
    :goto_0
    sget-object v5, Lcom/sleepycat/je/LockMode;->DEFAULT:Lcom/sleepycat/je/LockMode;

    invoke-virtual {v0, v2, v3, v5}, Lcom/sleepycat/je/Cursor;->getNext(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/LockMode;)Lcom/sleepycat/je/OperationStatus;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/OperationStatus;->SUCCESS:Lcom/sleepycat/je/OperationStatus;

    if-ne v5, v6, :cond_1

    .line 319
    add-int/lit8 v4, v4, 0x1

    .line 320
    const v5, 0xc350

    rem-int v5, v4, v5

    if-nez v5, :cond_0

    .line 321
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preloaded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v2    # "key":Lcom/sleepycat/je/DatabaseEntry;
    .end local v3    # "data":Lcom/sleepycat/je/DatabaseEntry;
    .end local v4    # "count":I
    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    .line 327
    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->close()V

    .line 328
    nop

    .line 329
    return-void

    .line 326
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/sleepycat/je/Cursor;->close()V

    .line 327
    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->close()V

    throw v2
.end method

.method private static removeAndClean(Lcom/sleepycat/je/Environment;Ljava/lang/String;Z)V
    .locals 17
    .param p0, "env"    # Lcom/sleepycat/je/Environment;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doCleaning"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 273
    .local v2, "txn":Lcom/sleepycat/je/Transaction;
    new-instance v3, Lcom/sleepycat/je/CheckpointConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/CheckpointConfig;-><init>()V

    .line 274
    .local v3, "force":Lcom/sleepycat/je/CheckpointConfig;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/CheckpointConfig;->setForce(Z)Lcom/sleepycat/je/CheckpointConfig;

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 277
    .local v4, "a":J
    invoke-virtual {v0, v2, v1}, Lcom/sleepycat/je/Environment;->removeDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 280
    .local v6, "c":J
    const/4 v8, 0x0

    .line 281
    .local v8, "cleanedCount":I
    if-eqz p2, :cond_0

    .line 282
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/Environment;->cleanLog()I

    move-result v9

    if-lez v9, :cond_0

    .line 283
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 286
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 288
    .local v9, "d":J
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cleanedCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 289
    const-wide/16 v11, 0x0

    .line 290
    .local v11, "e":J
    const-wide/16 v13, 0x0

    .line 291
    .local v13, "f":J
    if-lez v8, :cond_1

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 293
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/Environment;->checkpoint(Lcom/sleepycat/je/CheckpointConfig;)V

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 297
    :cond_1
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "txn":Lcom/sleepycat/je/Transaction;
    .local v16, "txn":Lcom/sleepycat/je/Transaction;
    const-string v2, "Remove of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " remove: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    invoke-static {v4, v5, v6, v7}, Lcom/sleepycat/je/util/DbRunAction;->getSecs(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " clean: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 299
    invoke-static {v6, v7, v9, v10}, Lcom/sleepycat/je/util/DbRunAction;->getSecs(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " checkpoint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 300
    invoke-static {v11, v12, v13, v14}, Lcom/sleepycat/je/util/DbRunAction;->getSecs(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {v15, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private static usage()V
    .locals 3

    .line 402
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: \n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sleepycat/je/util/DbRunAction;

    .line 403
    invoke-static {v2}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -h <environment home> "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -a <batchClean|compress|evict|checkpoint|removeDb|removeDbAndClean|activateCleaner|verifyUtilization>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 408
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -ro (read-only - defaults to read-write)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 409
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -s <dbName> (for removeDb)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -stats (print every 30 seconds)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method private static waitForShutdown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 355
    const-string v1, "Wait for daemon activity to run. When ready to stop, type (y)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 359
    .local v0, "reader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "val":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 361
    const-string v2, "y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 362
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    .end local v1    # "val":Ljava/lang/String;
    :cond_0
    return-void

    .line 365
    .restart local v1    # "val":Ljava/lang/String;
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Shutdown? (y)"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    .end local v1    # "val":Ljava/lang/String;
    goto :goto_0
.end method
