.class public Lcom/sleepycat/je/rep/utilint/DbFeederPrintLog;
.super Ljava/lang/Object;
.source "DbFeederPrintLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dump(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/sleepycat/je/utilint/VLSN;Z)V
    .locals 33
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "nodeName"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "forward"    # Z
    .param p6, "startLsn"    # J
    .param p8, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p9, "verbose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;,
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    move-object v1, v0

    .line 79
    .local v1, "durability":Lcom/sleepycat/je/Durability;
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    move-object v2, v0

    .line 80
    .local v2, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/EnvironmentConfig;->setAllowCreate(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 81
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/EnvironmentConfig;->setTransactional(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 82
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 84
    new-instance v3, Lcom/sleepycat/je/rep/ReplicationConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/rep/ReplicationConfig;-><init>()V

    .line 85
    .local v3, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    nop

    .line 86
    const-string v4, "je.rep.envConsistencyTimeout"

    const-string v5, "1 min"

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/rep/ReplicationConfig;->setConfigParam(Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 87
    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/ReplicationConfig;->setGroupName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 88
    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeName(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 89
    sget-object v6, Lcom/sleepycat/je/rep/impl/RepParams;->DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v6}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 90
    .local v6, "port":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "hostName":Ljava/lang/String;
    invoke-virtual {v3, v7}, Lcom/sleepycat/je/rep/ReplicationConfig;->setNodeHostPort(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationConfig;

    .line 92
    invoke-virtual {v3, v7}, Lcom/sleepycat/je/rep/ReplicationConfig;->setHelperHosts(Ljava/lang/String;)Lcom/sleepycat/je/rep/ReplicationMutableConfig;

    .line 93
    nop

    .line 94
    move-object/from16 v9, p1

    invoke-static {v9, v3, v2}, Lcom/sleepycat/je/rep/RepInternal;->createDetachedEnv(Ljava/io/File;Lcom/sleepycat/je/rep/ReplicationConfig;Lcom/sleepycat/je/EnvironmentConfig;)Lcom/sleepycat/je/rep/ReplicatedEnvironment;

    move-result-object v10

    .line 96
    .local v10, "rep":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    :try_start_0
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->getState()Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    move-result-object v11

    .line 97
    .local v11, "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    sget-object v12, Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;->DETACHED:Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;

    if-ne v11, v12, :cond_8

    .line 102
    invoke-static {v10}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v14

    .line 103
    .local v14, "envImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v15

    .line 104
    .local v15, "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    if-eqz p5, :cond_0

    .line 105
    const-wide/16 v12, -0x1

    move-wide/from16 v28, v12

    .end local p6    # "startLsn":J
    .local v12, "startLsn":J
    goto :goto_0

    .line 107
    .end local v12    # "startLsn":J
    .restart local p6    # "startLsn":J
    :cond_0
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sleepycat/je/log/FileManager;->getLastUsedLsn()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-wide/from16 v28, v12

    .line 110
    .end local p6    # "startLsn":J
    .local v28, "startLsn":J
    :goto_0
    nop

    .line 111
    :try_start_1
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/impl/RepImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v12

    sget-object v13, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 112
    invoke-virtual {v12, v13}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v18

    .line 113
    .local v18, "readBufferSize":I
    const/4 v12, 0x0

    .line 114
    .local v12, "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    const/16 v30, 0x0

    .line 116
    .local v30, "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    move-object/from16 v13, p8

    .line 117
    .local v13, "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object/from16 v31, v1

    move-object/from16 v1, p8

    .end local v1    # "durability":Lcom/sleepycat/je/Durability;
    .local v31, "durability":Lcom/sleepycat/je/Durability;
    :try_start_2
    invoke-virtual {v1, v0}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v0, :cond_2

    .line 118
    :try_start_3
    invoke-static {v10}, Lcom/sleepycat/je/rep/RepInternal;->getNonNullRepImpl(Lcom/sleepycat/je/rep/ReplicatedEnvironment;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    .line 119
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v16

    .line 120
    .local v16, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    if-eqz p5, :cond_1

    .line 121
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v17

    move-object/from16 v13, v17

    move-object v0, v13

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual/range {v16 .. v16}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v13, v17

    move-object v0, v13

    goto :goto_1

    .line 166
    .end local v0    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .end local v12    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .end local v13    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v14    # "envImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v15    # "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .end local v16    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v18    # "readBufferSize":I
    .end local v30    # "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    :catchall_0
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v16, v3

    goto/16 :goto_6

    .line 117
    .restart local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .restart local v12    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .restart local v13    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v14    # "envImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local v15    # "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .restart local v18    # "readBufferSize":I
    .restart local v30    # "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    :cond_2
    move-object v0, v13

    .line 126
    .end local v13    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v0, "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :goto_1
    :try_start_4
    sget-object v13, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v13}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const-string v1, "</DbPrintLog>"

    move-object/from16 v32, v2

    .end local v2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .local v32, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    const-string v2, "<DbPrintLog>"

    if-eqz v13, :cond_3

    .line 128
    :try_start_5
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v13, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 166
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 130
    return-void

    .line 166
    .end local v0    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .end local v12    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .end local v14    # "envImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v15    # "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .end local v18    # "readBufferSize":I
    .end local v30    # "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_6

    .line 133
    .restart local v0    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .restart local v12    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .restart local v14    # "envImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local v15    # "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .restart local v18    # "readBufferSize":I
    .restart local v30    # "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    :cond_3
    if-eqz p5, :cond_4

    .line 134
    :try_start_6
    new-instance v19, Lcom/sleepycat/je/rep/stream/FeederReader;

    move-object/from16 v13, v19

    move-wide/from16 v16, v28

    invoke-direct/range {v13 .. v18}, Lcom/sleepycat/je/rep/stream/FeederReader;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JI)V

    move-object/from16 v12, v19

    .line 136
    invoke-virtual {v12, v0}, Lcom/sleepycat/je/rep/stream/FeederReader;->initScan(Lcom/sleepycat/je/utilint/VLSN;)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v13, v30

    goto :goto_2

    .line 138
    :cond_4
    :try_start_7
    new-instance v13, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;

    const-wide/16 v26, -0x1

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    move-wide/from16 v22, v28

    move/from16 v24, v18

    move-object/from16 v25, v0

    invoke-direct/range {v19 .. v27}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JILcom/sleepycat/je/utilint/VLSN;J)V

    move-object/from16 v30, v13

    move-object/from16 v13, v30

    .line 145
    .end local v30    # "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    .local v13, "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    :goto_2
    const/16 v16, 0x0

    .line 146
    .local v16, "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    move-object/from16 v17, v0

    .end local v0    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v17, "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 147
    const-wide/16 v19, 0x0

    move-object/from16 v0, v17

    .line 149
    .end local v17    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v0    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v19, "lastLsn":J
    :goto_3
    if-eqz p5, :cond_5

    .line 150
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v12, v0, v2}, Lcom/sleepycat/je/rep/stream/FeederReader;->scanForwards(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v17

    move-object/from16 v16, v17

    .line 151
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v17

    move-object/from16 v0, v17

    .line 152
    invoke-virtual {v12}, Lcom/sleepycat/je/rep/stream/FeederReader;->getLastLsn()J

    move-result-wide v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-wide/from16 v19, v21

    move-object/from16 v2, v16

    goto :goto_4

    .line 154
    :cond_5
    const/4 v2, 0x0

    :try_start_9
    invoke-virtual {v13, v0}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->scanBackwards(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v17

    move-object/from16 v16, v17

    .line 155
    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/VLSN;->getPrev()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v17

    move-object/from16 v0, v17

    .line 156
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->getLastLsn()J

    move-result-wide v21

    move-wide/from16 v19, v21

    move-object/from16 v2, v16

    .line 158
    .end local v16    # "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .local v2, "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    :goto_4
    if-eqz v2, :cond_6

    .line 159
    move-object/from16 p6, v0

    .end local v0    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local p6, "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v16, v3

    .end local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .local v16, "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lsn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    invoke-static/range {v19 .. v20}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 158
    .end local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .end local p6    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v0    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    :cond_6
    move-object/from16 p6, v0

    move-object/from16 v16, v3

    .line 162
    .end local v0    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local p6    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :goto_5
    if-nez v2, :cond_7

    .line 164
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 166
    .end local v2    # "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .end local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .end local v12    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .end local v13    # "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    .end local v14    # "envImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v15    # "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .end local v18    # "readBufferSize":I
    .end local v19    # "lastLsn":J
    .end local p6    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    .line 167
    nop

    .line 168
    return-void

    .line 166
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 162
    .restart local v2    # "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .restart local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .restart local v12    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .restart local v13    # "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    .restart local v14    # "envImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local v15    # "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .restart local v18    # "readBufferSize":I
    .restart local v19    # "lastLsn":J
    .restart local p6    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :cond_7
    move-object/from16 v4, p2

    move-object/from16 v0, p6

    move-object/from16 v3, v16

    move-object/from16 v16, v2

    goto :goto_3

    .line 166
    .end local v2    # "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .end local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .end local v12    # "feederReader":Lcom/sleepycat/je/rep/stream/FeederReader;
    .end local v13    # "backwardsReader":Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    .end local v14    # "envImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v15    # "vlsnIndex":Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
    .end local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .end local v18    # "readBufferSize":I
    .end local v19    # "lastLsn":J
    .end local p6    # "scanVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    goto :goto_6

    .end local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .end local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .local v2, "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    :catchall_4
    move-exception v0

    move-object/from16 v32, v2

    move-object/from16 v16, v3

    .end local v2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    goto :goto_6

    .end local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .end local v31    # "durability":Lcom/sleepycat/je/Durability;
    .end local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v1    # "durability":Lcom/sleepycat/je/Durability;
    .restart local v2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    :catchall_5
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v16, v3

    .end local v1    # "durability":Lcom/sleepycat/je/Durability;
    .end local v2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v31    # "durability":Lcom/sleepycat/je/Durability;
    .restart local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    goto :goto_6

    .line 98
    .end local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .end local v28    # "startLsn":J
    .end local v31    # "durability":Lcom/sleepycat/je/Durability;
    .end local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v1    # "durability":Lcom/sleepycat/je/Durability;
    .restart local v2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .local p6, "startLsn":J
    :cond_8
    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v16, v3

    .end local v1    # "durability":Lcom/sleepycat/je/Durability;
    .end local v2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v31    # "durability":Lcom/sleepycat/je/Durability;
    .restart local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "joinState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    .end local v6    # "port":I
    .end local v7    # "hostName":Ljava/lang/String;
    .end local v10    # "rep":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .end local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .end local v31    # "durability":Lcom/sleepycat/je/Durability;
    .end local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local p1    # "envHome":Ljava/io/File;
    .end local p2    # "groupName":Ljava/lang/String;
    .end local p3    # "nodeName":Ljava/lang/String;
    .end local p4    # "host":Ljava/lang/String;
    .end local p5    # "forward":Z
    .end local p6    # "startLsn":J
    .end local p8    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p9    # "verbose":Z
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 166
    .end local v11    # "state":Lcom/sleepycat/je/rep/ReplicatedEnvironment$State;
    .restart local v6    # "port":I
    .restart local v7    # "hostName":Ljava/lang/String;
    .restart local v10    # "rep":Lcom/sleepycat/je/rep/ReplicatedEnvironment;
    .restart local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v31    # "durability":Lcom/sleepycat/je/Durability;
    .restart local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local p1    # "envHome":Ljava/io/File;
    .restart local p2    # "groupName":Ljava/lang/String;
    .restart local p3    # "nodeName":Ljava/lang/String;
    .restart local p4    # "host":Ljava/lang/String;
    .restart local p5    # "forward":Z
    .restart local p6    # "startLsn":J
    .restart local p8    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local p9    # "verbose":Z
    :catchall_6
    move-exception v0

    move-wide/from16 v28, p6

    goto :goto_6

    .end local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .end local v31    # "durability":Lcom/sleepycat/je/Durability;
    .end local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v1    # "durability":Lcom/sleepycat/je/Durability;
    .restart local v2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .restart local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    :catchall_7
    move-exception v0

    move-object/from16 v31, v1

    move-object/from16 v32, v2

    move-object/from16 v16, v3

    move-wide/from16 v28, p6

    .end local v1    # "durability":Lcom/sleepycat/je/Durability;
    .end local v2    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    .end local v3    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .end local p6    # "startLsn":J
    .restart local v16    # "repConfig":Lcom/sleepycat/je/rep/ReplicationConfig;
    .restart local v28    # "startLsn":J
    .restart local v31    # "durability":Lcom/sleepycat/je/Durability;
    .restart local v32    # "envConfig":Lcom/sleepycat/je/EnvironmentConfig;
    :goto_6
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/ReplicatedEnvironment;->close()V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 21
    .param p0, "argv"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "whichArg":I
    const/4 v2, 0x1

    :try_start_0
    const-string/jumbo v5, "repGroup"

    .line 174
    .local v5, "groupName":Ljava/lang/String;
    const-string v7, "localHost"

    .line 175
    .local v7, "host":Ljava/lang/String;
    const-string v6, "Node1"

    .line 176
    .local v6, "nodeName":Ljava/lang/String;
    const-wide/16 v3, -0x1

    .line 177
    .local v3, "startLsn":J
    sget-object v8, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 178
    .local v8, "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    const/4 v9, 0x1

    .line 179
    .local v9, "verbose":Z
    const/4 v10, 0x1

    .line 182
    .local v10, "forward":Z
    new-instance v11, Ljava/io/File;

    const-string v12, "."

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v11, "envHome":Ljava/io/File;
    sget-object v12, Lcom/sleepycat/je/tree/Key$DumpType;->BINARY:Lcom/sleepycat/je/tree/Key$DumpType;

    sput-object v12, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    move-wide v13, v3

    move-object v15, v8

    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v11

    .line 185
    .end local v3    # "startLsn":J
    .end local v8    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v9    # "verbose":Z
    .end local v10    # "forward":Z
    .end local v11    # "envHome":Ljava/io/File;
    .local v13, "startLsn":J
    .local v15, "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v16, "verbose":Z
    .local v17, "forward":Z
    .local v18, "envHome":Ljava/io/File;
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_8

    .line 186
    aget-object v3, v1, v0

    .line 187
    .local v3, "nextArg":Ljava/lang/String;
    const-string v4, "-h"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    add-int/lit8 v0, v0, 0x1

    .line 189
    new-instance v4, Ljava/io/File;

    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v4

    .end local v18    # "envHome":Ljava/io/File;
    .local v4, "envHome":Ljava/io/File;
    goto/16 :goto_3

    .line 190
    .end local v4    # "envHome":Ljava/io/File;
    .restart local v18    # "envHome":Ljava/io/File;
    :cond_0
    const-string v4, "-s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "/"

    const/4 v9, 0x0

    if-eqz v4, :cond_2

    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 192
    :try_start_1
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "arg":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 194
    .local v8, "slashOff":I
    if-gez v8, :cond_1

    .line 195
    invoke-static {v4}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v10

    .line 196
    .local v10, "startFileNum":J
    invoke-static {v10, v11, v9}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v19

    move-wide/from16 v9, v19

    .line 197
    .end local v10    # "startFileNum":J
    .end local v13    # "startLsn":J
    .local v9, "startLsn":J
    goto :goto_1

    .line 198
    .end local v9    # "startLsn":J
    .restart local v13    # "startLsn":J
    :cond_1
    nop

    .line 199
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v9

    .line 200
    .local v9, "startFileNum":J
    add-int/lit8 v11, v8, 0x1

    .line 201
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v11

    .line 202
    .local v11, "startOffset":J
    invoke-static {v9, v10, v11, v12}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v19

    move-wide/from16 v13, v19

    move-wide v9, v13

    .line 204
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "slashOff":I
    .end local v11    # "startOffset":J
    .end local v13    # "startLsn":J
    .local v9, "startLsn":J
    :goto_1
    move-wide v13, v9

    goto/16 :goto_3

    .end local v9    # "startLsn":J
    .restart local v13    # "startLsn":J
    :cond_2
    const-string v4, "-e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 205
    add-int/lit8 v0, v0, 0x1

    .line 206
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .restart local v4    # "arg":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 209
    .restart local v8    # "slashOff":I
    if-gez v8, :cond_3

    .line 211
    invoke-static {v4}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    .line 212
    goto :goto_2

    .line 214
    :cond_3
    nop

    .line 215
    invoke-virtual {v4, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v9

    .line 217
    .local v9, "endFileNum":J
    add-int/lit8 v11, v8, 0x1

    .line 218
    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    .line 220
    .end local v4    # "arg":Ljava/lang/String;
    .end local v8    # "slashOff":I
    .end local v9    # "endFileNum":J
    :goto_2
    goto :goto_3

    :cond_4
    const-string v4, "-q"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 221
    const/4 v4, 0x0

    move/from16 v16, v4

    .end local v16    # "verbose":Z
    .local v4, "verbose":Z
    goto :goto_3

    .line 222
    .end local v4    # "verbose":Z
    .restart local v16    # "verbose":Z
    :cond_5
    const-string v4, "-backward"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 223
    const/4 v4, 0x0

    move/from16 v17, v4

    .end local v17    # "forward":Z
    .local v4, "forward":Z
    goto :goto_3

    .line 224
    .end local v4    # "forward":Z
    .restart local v17    # "forward":Z
    :cond_6
    const-string v4, "-vlsn"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 227
    .local v4, "arg":Ljava/lang/String;
    new-instance v8, Lcom/sleepycat/je/utilint/VLSN;

    invoke-static {v4}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    move-object v4, v8

    .line 228
    .end local v15    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v4, "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    move-object v15, v4

    goto :goto_3

    .line 229
    .end local v4    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v15    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :cond_7
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not a supported option."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 230
    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/DbFeederPrintLog;->usage()V

    .line 232
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 234
    :goto_3
    nop

    .end local v3    # "nextArg":Ljava/lang/String;
    add-int/2addr v0, v2

    .line 235
    goto/16 :goto_0

    .line 237
    :cond_8
    new-instance v3, Lcom/sleepycat/je/rep/utilint/DbFeederPrintLog;

    invoke-direct {v3}, Lcom/sleepycat/je/rep/utilint/DbFeederPrintLog;-><init>()V

    .line 238
    .local v3, "printer":Lcom/sleepycat/je/rep/utilint/DbFeederPrintLog;
    move-object/from16 v4, v18

    move/from16 v8, v17

    move-wide v9, v13

    move-object v11, v15

    move/from16 v12, v16

    invoke-direct/range {v3 .. v12}, Lcom/sleepycat/je/rep/utilint/DbFeederPrintLog;->dump(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLcom/sleepycat/je/utilint/VLSN;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v0    # "whichArg":I
    .end local v3    # "printer":Lcom/sleepycat/je/rep/utilint/DbFeederPrintLog;
    .end local v5    # "groupName":Ljava/lang/String;
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "host":Ljava/lang/String;
    .end local v13    # "startLsn":J
    .end local v15    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v16    # "verbose":Z
    .end local v17    # "forward":Z
    .end local v18    # "envHome":Ljava/io/File;
    goto :goto_4

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/DbFeederPrintLog;->usage()V

    .line 245
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 247
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4
    return-void
.end method

.method private static usage()V
    .locals 3

    .line 250
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sleepycat/je/util/DbPrintLog;

    .line 251
    invoke-static {v2}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 252
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -h  <envHomeDir>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -e  <end file number or LSN, in hex>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -s  <start file number or LSN, in hex>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -backward if specified, scan is backwards"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "  -vlsn <startVLSN>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 257
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -tx <targeted txn ids, comma separated>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -q  if specified, concise version is printed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "     Default is verbose version.)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 260
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "All arguments are optional"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    return-void
.end method
