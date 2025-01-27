.class public Lcom/sleepycat/je/util/DbPrintLog;
.super Ljava/lang/Object;
.source "DbPrintLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dump(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZZZZZLjava/lang/String;)V
    .locals 26
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "entryTypes"    # Ljava/lang/String;
    .param p3, "dbIds"    # Ljava/lang/String;
    .param p4, "txnIds"    # Ljava/lang/String;
    .param p5, "startLsn"    # J
    .param p7, "endLsn"    # J
    .param p9, "verbose"    # Z
    .param p10, "stats"    # Z
    .param p11, "repEntriesOnly"    # Z
    .param p12, "csvFormat"    # Z
    .param p13, "forwards"    # Z
    .param p14, "vlsnDistribution"    # Z
    .param p15, "customDumpReaderClass"    # Ljava/lang/String;

    .line 81
    move/from16 v1, p12

    .line 82
    const/4 v0, 0x1

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->makeUtilityEnvironment(Ljava/io/File;Z)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v15

    .line 83
    .local v15, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v14

    .line 84
    .local v14, "fileManager":Lcom/sleepycat/je/log/FileManager;
    invoke-virtual {v14, v0}, Lcom/sleepycat/je/log/FileManager;->setIncludeDeletedFiles(Z)V

    .line 85
    nop

    .line 86
    invoke-virtual {v15}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 87
    invoke-virtual {v0, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v13

    .line 90
    .local v13, "readBufferSize":I
    const-wide/16 v3, -0x1

    .line 91
    .local v3, "endOfFileLsn":J
    const-wide/16 v5, -0x1

    cmp-long v0, p5, v5

    if-nez v0, :cond_1

    cmp-long v0, p7, v5

    if-nez v0, :cond_1

    if-nez p13, :cond_1

    .line 93
    new-instance v0, Lcom/sleepycat/je/log/LastFileReader;

    invoke-direct {v0, v15, v13}, Lcom/sleepycat/je/log/LastFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    .line 95
    .local v0, "fileReader":Lcom/sleepycat/je/log/LastFileReader;
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LastFileReader;->readNextEntry()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LastFileReader;->getLastValidLsn()J

    move-result-wide v5

    .line 98
    .end local p5    # "startLsn":J
    .local v5, "startLsn":J
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LastFileReader;->getEndOfLog()J

    move-result-wide v3

    move-wide/from16 v20, v3

    move-wide/from16 v18, v5

    goto :goto_1

    .line 107
    .end local v0    # "fileReader":Lcom/sleepycat/je/log/LastFileReader;
    .end local v5    # "startLsn":J
    .restart local p5    # "startLsn":J
    :cond_1
    move-wide/from16 v18, p5

    move-wide/from16 v20, v3

    .end local v3    # "endOfFileLsn":J
    .end local p5    # "startLsn":J
    .local v18, "startLsn":J
    .local v20, "endOfFileLsn":J
    :goto_1
    const/4 v0, 0x0

    .line 108
    .local v0, "reader":Lcom/sleepycat/je/log/DumpFileReader;
    if-eqz p15, :cond_2

    .line 110
    move-object/from16 v3, p0

    move-object/from16 v4, p15

    move-object v5, v15

    move v6, v13

    move-wide/from16 v7, v18

    move-wide/from16 v9, p7

    move-wide/from16 v11, v20

    move/from16 v22, v13

    .end local v13    # "readBufferSize":I
    .local v22, "readBufferSize":I
    move-object/from16 v13, p2

    move-object/from16 v23, v14

    .end local v14    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .local v23, "fileManager":Lcom/sleepycat/je/log/FileManager;
    move-object/from16 v14, p4

    move-object/from16 v24, v15

    .end local v15    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .local v24, "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    move/from16 v15, p9

    move/from16 v16, p11

    move/from16 v17, p13

    :try_start_0
    invoke-direct/range {v3 .. v17}, Lcom/sleepycat/je/util/DbPrintLog;->getDebugReader(Ljava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;ZZZ)Lcom/sleepycat/je/log/DumpFileReader;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_2

    .line 151
    .end local v0    # "reader":Lcom/sleepycat/je/log/DumpFileReader;
    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 116
    .end local v22    # "readBufferSize":I
    .end local v23    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v24    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v0    # "reader":Lcom/sleepycat/je/log/DumpFileReader;
    .restart local v13    # "readBufferSize":I
    .restart local v14    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v15    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    :cond_2
    move/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v13    # "readBufferSize":I
    .end local v14    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v15    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .restart local v22    # "readBufferSize":I
    .restart local v23    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v24    # "env":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    if-eqz p10, :cond_3

    .line 118
    new-instance v25, Lcom/sleepycat/je/log/StatsFileReader;

    move-object/from16 v3, v25

    move-object/from16 v4, v24

    move/from16 v5, v22

    move-wide/from16 v6, v18

    move-wide/from16 v8, p7

    move-wide/from16 v10, v20

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p9

    move/from16 v16, p11

    move/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/sleepycat/je/log/StatsFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, v25

    goto :goto_2

    .line 123
    :cond_3
    if-eqz p14, :cond_4

    .line 125
    new-instance v14, Lcom/sleepycat/je/log/VLSNDistributionReader;

    move-object v3, v14

    move-object/from16 v4, v24

    move/from16 v5, v22

    move-wide/from16 v6, v18

    move-wide/from16 v8, p7

    move-wide/from16 v10, v20

    move/from16 v12, p9

    move/from16 v13, p13

    invoke-direct/range {v3 .. v13}, Lcom/sleepycat/je/log/VLSNDistributionReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJZZ)V

    move-object v0, v14

    goto :goto_2

    .line 131
    :cond_4
    new-instance v25, Lcom/sleepycat/je/log/PrintFileReader;

    move-object/from16 v3, v25

    move-object/from16 v4, v24

    move/from16 v5, v22

    move-wide/from16 v6, v18

    move-wide/from16 v8, p7

    move-wide/from16 v10, v20

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p9

    move/from16 v16, p11

    move/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/sleepycat/je/log/PrintFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v0, v25

    .line 139
    :goto_2
    if-nez v1, :cond_5

    .line 140
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "<DbPrintLog>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/sleepycat/je/log/DumpFileReader;->readNextEntry()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    .line 146
    :cond_6
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/log/DumpFileReader;->summarize(Z)V

    .line 147
    if-nez v1, :cond_7

    .line 148
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "</DbPrintLog>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v0    # "reader":Lcom/sleepycat/je/log/DumpFileReader;
    :cond_7
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->close()V

    .line 152
    nop

    .line 153
    return-void

    .line 151
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->close()V

    throw v0
.end method

.method private getDebugReader(Ljava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;ZZZ)Lcom/sleepycat/je/log/DumpFileReader;
    .locals 18
    .param p1, "customDumpReaderClass"    # Ljava/lang/String;
    .param p2, "env"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "readBufferSize"    # I
    .param p4, "startLsn"    # J
    .param p6, "finishLsn"    # J
    .param p8, "endOfFileLsn"    # J
    .param p10, "entryTypes"    # Ljava/lang/String;
    .param p11, "txnIds"    # Ljava/lang/String;
    .param p12, "verbose"    # Z
    .param p13, "repEntriesOnly"    # Z
    .param p14, "forwards"    # Z

    .line 351
    move-object/from16 v1, p1

    const-string v2, " "

    const/4 v3, 0x0

    .line 353
    .local v3, "debugClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 358
    nop

    .line 360
    const/16 v0, 0xa

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Integer;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/Long;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    const-class v5, Ljava/lang/Long;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    const-class v5, Ljava/lang/Long;

    const/4 v10, 0x4

    aput-object v5, v4, v10

    const-class v5, Ljava/lang/String;

    const/4 v11, 0x5

    aput-object v5, v4, v11

    const-class v5, Ljava/lang/String;

    const/4 v12, 0x6

    aput-object v5, v4, v12

    const-class v5, Ljava/lang/Boolean;

    const/4 v13, 0x7

    aput-object v5, v4, v13

    const-class v5, Ljava/lang/Boolean;

    const/16 v14, 0x8

    aput-object v5, v4, v14

    const-class v5, Ljava/lang/Boolean;

    const/16 v15, 0x9

    aput-object v5, v4, v15

    .line 371
    .local v4, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 373
    .local v5, "debugReader":Lcom/sleepycat/je/log/DumpFileReader;
    nop

    .line 374
    :try_start_1
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    move-object/from16 v17, v16

    .line 375
    .local v17, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v6

    .line 376
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v7

    .line 377
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v8

    .line 378
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v9

    .line 379
    invoke-static/range {p8 .. p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v10

    aput-object p10, v0, v11

    aput-object p11, v0, v12

    .line 382
    invoke-static/range {p12 .. p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v13

    .line 383
    invoke-static/range {p13 .. p13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v14

    .line 384
    invoke-static/range {p14 .. p14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v0, v15

    .line 375
    move-object/from16 v6, v17

    .end local v17    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v6, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/log/DumpFileReader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 389
    .end local v5    # "debugReader":Lcom/sleepycat/je/log/DumpFileReader;
    .end local v6    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v0, "debugReader":Lcom/sleepycat/je/log/DumpFileReader;
    nop

    .line 391
    return-object v0

    .line 385
    .end local v0    # "debugReader":Lcom/sleepycat/je/log/DumpFileReader;
    .restart local v5    # "debugReader":Lcom/sleepycat/je/log/DumpFileReader;
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-c was specified, but couldn\'t instantiate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 354
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "debugReader":Lcom/sleepycat/je/log/DumpFileReader;
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 355
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-c was specified, but couldn\'t load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 38
    .param p0, "argv"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "whichArg":I
    const/4 v2, 0x0

    .line 191
    .local v2, "entryTypes":Ljava/lang/String;
    const/4 v3, 0x0

    .line 192
    .local v3, "dbIds":Ljava/lang/String;
    const/4 v4, 0x0

    .line 193
    .local v4, "txnIds":Ljava/lang/String;
    const-wide/16 v5, -0x1

    .line 194
    .local v5, "startLsn":J
    const-wide/16 v7, -0x1

    .line 195
    .local v7, "endLsn":J
    const/4 v9, 0x1

    .line 196
    .local v9, "verbose":Z
    const/4 v10, 0x0

    .line 197
    .local v10, "stats":Z
    const/4 v11, 0x0

    .line 198
    .local v11, "csvFormat":Z
    const/4 v12, 0x0

    .line 199
    .local v12, "repEntriesOnly":Z
    const/4 v13, 0x1

    .line 200
    .local v13, "forwards":Z
    const/4 v14, 0x0

    .line 201
    .local v14, "customDumpReaderClass":Ljava/lang/String;
    const/4 v15, 0x0

    .line 204
    .local v15, "vlsnDistribution":Z
    const/16 v16, 0x1

    move/from16 v17, v0

    .end local v0    # "whichArg":I
    .local v17, "whichArg":I
    :try_start_0
    new-instance v0, Ljava/io/File;

    move-object/from16 v18, v2

    .end local v2    # "entryTypes":Ljava/lang/String;
    .local v18, "entryTypes":Ljava/lang/String;
    const-string v2, "."

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "envHome":Ljava/io/File;
    sget-object v2, Lcom/sleepycat/je/tree/Key$DumpType;->BINARY:Lcom/sleepycat/je/tree/Key$DumpType;

    sput-object v2, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    move-object v2, v0

    move/from16 v33, v15

    move/from16 v0, v17

    move-object v15, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move-wide v8, v7

    move-wide v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v18

    .line 207
    .end local v7    # "endLsn":J
    .end local v9    # "verbose":Z
    .end local v17    # "whichArg":I
    .end local v18    # "entryTypes":Ljava/lang/String;
    .local v0, "whichArg":I
    .local v2, "envHome":Ljava/io/File;
    .local v3, "entryTypes":Ljava/lang/String;
    .local v4, "dbIds":Ljava/lang/String;
    .local v5, "txnIds":Ljava/lang/String;
    .local v6, "startLsn":J
    .local v8, "endLsn":J
    .local v10, "verbose":Z
    .local v11, "stats":Z
    .local v12, "csvFormat":Z
    .local v13, "repEntriesOnly":Z
    .local v14, "forwards":Z
    .local v15, "customDumpReaderClass":Ljava/lang/String;
    .local v33, "vlsnDistribution":Z
    :goto_0
    move-object/from16 v34, v15

    .end local v15    # "customDumpReaderClass":Ljava/lang/String;
    .local v34, "customDumpReaderClass":Ljava/lang/String;
    array-length v15, v1

    if-ge v0, v15, :cond_12

    .line 208
    aget-object v15, v1, v0

    .line 209
    .local v15, "nextArg":Ljava/lang/String;
    move/from16 v35, v12

    .end local v12    # "csvFormat":Z
    .local v35, "csvFormat":Z
    const-string v12, "-h"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    new-instance v12, Ljava/io/File;

    move/from16 v36, v13

    .end local v13    # "repEntriesOnly":Z
    .local v36, "repEntriesOnly":Z
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v12

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .line 212
    .end local v36    # "repEntriesOnly":Z
    .restart local v13    # "repEntriesOnly":Z
    :cond_0
    move/from16 v36, v13

    .end local v13    # "repEntriesOnly":Z
    .restart local v36    # "repEntriesOnly":Z
    const-string v12, "-ty"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .line 215
    :cond_1
    const-string v12, "-db"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 217
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .line 218
    :cond_2
    const-string v12, "-tx"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 219
    add-int/lit8 v0, v0, 0x1

    .line 220
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .line 221
    :cond_3
    const-string v12, "-s"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 222
    add-int/lit8 v0, v0, 0x1

    .line 223
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sleepycat/je/utilint/CmdUtil;->readLsn(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v6, v12

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .line 224
    :cond_4
    const-string v12, "-e"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 225
    add-int/lit8 v0, v0, 0x1

    .line 226
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sleepycat/je/utilint/CmdUtil;->readLsn(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v8, v12

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .line 227
    :cond_5
    const-string v12, "-k"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 228
    add-int/lit8 v0, v0, 0x1

    .line 229
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 230
    .local v12, "dumpType":Ljava/lang/String;
    const-string v13, "text"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 231
    sget-object v13, Lcom/sleepycat/je/tree/Key$DumpType;->TEXT:Lcom/sleepycat/je/tree/Key$DumpType;

    sput-object v13, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    move/from16 v17, v0

    goto :goto_1

    .line 232
    :cond_6
    const-string v13, "hex"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 233
    sget-object v13, Lcom/sleepycat/je/tree/Key$DumpType;->HEX:Lcom/sleepycat/je/tree/Key$DumpType;

    sput-object v13, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    move/from16 v17, v0

    goto :goto_1

    .line 234
    :cond_7
    const-string v13, "binary"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 235
    sget-object v13, Lcom/sleepycat/je/tree/Key$DumpType;->BINARY:Lcom/sleepycat/je/tree/Key$DumpType;

    sput-object v13, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    move/from16 v17, v0

    goto :goto_1

    .line 236
    :cond_8
    const-string v13, "obfuscate"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 237
    sget-object v13, Lcom/sleepycat/je/tree/Key$DumpType;->OBFUSCATE:Lcom/sleepycat/je/tree/Key$DumpType;

    sput-object v13, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    move/from16 v17, v0

    goto :goto_1

    .line 239
    :cond_9
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move/from16 v17, v0

    .end local v0    # "whichArg":I
    .restart local v17    # "whichArg":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v18, v12

    .end local v12    # "dumpType":Ljava/lang/String;
    .local v18, "dumpType":Ljava/lang/String;
    const-string v12, " is not a supported dump format type."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v13, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 243
    .end local v18    # "dumpType":Ljava/lang/String;
    :goto_1
    move/from16 v0, v17

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .end local v17    # "whichArg":I
    .restart local v0    # "whichArg":I
    :cond_a
    const-string v12, "-q"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 244
    const/4 v10, 0x0

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .line 245
    :cond_b
    const-string v12, "-b"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 246
    const/4 v12, 0x0

    move v14, v12

    move/from16 v12, v35

    move/from16 v13, v36

    .end local v14    # "forwards":Z
    .local v12, "forwards":Z
    goto/16 :goto_2

    .line 247
    .end local v12    # "forwards":Z
    .restart local v14    # "forwards":Z
    :cond_c
    const-string v12, "-S"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 248
    const/4 v11, 0x1

    move/from16 v12, v35

    move/from16 v13, v36

    goto/16 :goto_2

    .line 249
    :cond_d
    const-string v12, "-SC"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 250
    const/4 v11, 0x1

    .line 251
    const/4 v12, 0x1

    move/from16 v13, v36

    .end local v35    # "csvFormat":Z
    .local v12, "csvFormat":Z
    goto :goto_2

    .line 252
    .end local v12    # "csvFormat":Z
    .restart local v35    # "csvFormat":Z
    :cond_e
    const-string v12, "-r"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 253
    const/4 v12, 0x1

    move v13, v12

    move/from16 v12, v35

    .end local v36    # "repEntriesOnly":Z
    .local v12, "repEntriesOnly":Z
    goto :goto_2

    .line 254
    .end local v12    # "repEntriesOnly":Z
    .restart local v36    # "repEntriesOnly":Z
    :cond_f
    const-string v12, "-c"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 255
    add-int/lit8 v0, v0, 0x1

    .line 256
    invoke-static {v1, v0}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v34, v12

    move/from16 v12, v35

    move/from16 v13, v36

    .end local v34    # "customDumpReaderClass":Ljava/lang/String;
    .local v12, "customDumpReaderClass":Ljava/lang/String;
    goto :goto_2

    .line 257
    .end local v12    # "customDumpReaderClass":Ljava/lang/String;
    .restart local v34    # "customDumpReaderClass":Ljava/lang/String;
    :cond_10
    const-string v12, "-vd"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 262
    const/4 v12, 0x1

    move/from16 v33, v12

    move/from16 v12, v35

    move/from16 v13, v36

    .end local v33    # "vlsnDistribution":Z
    .local v12, "vlsnDistribution":Z
    goto :goto_2

    .line 264
    .end local v12    # "vlsnDistribution":Z
    .restart local v33    # "vlsnDistribution":Z
    :cond_11
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v37, v0

    .end local v0    # "whichArg":I
    .local v37, "whichArg":I
    const-string v0, " is not a supported option."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {v12, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/sleepycat/je/util/DbPrintLog;->usage()V

    .line 267
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    move/from16 v12, v35

    move/from16 v13, v36

    move/from16 v0, v37

    .line 269
    .end local v35    # "csvFormat":Z
    .end local v36    # "repEntriesOnly":Z
    .end local v37    # "whichArg":I
    .restart local v0    # "whichArg":I
    .local v12, "csvFormat":Z
    .restart local v13    # "repEntriesOnly":Z
    :goto_2
    nop

    .end local v15    # "nextArg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 270
    move-object/from16 v15, v34

    goto/16 :goto_0

    .line 273
    :cond_12
    move/from16 v37, v0

    move/from16 v35, v12

    move/from16 v36, v13

    .end local v0    # "whichArg":I
    .end local v12    # "csvFormat":Z
    .end local v13    # "repEntriesOnly":Z
    .restart local v35    # "csvFormat":Z
    .restart local v36    # "repEntriesOnly":Z
    .restart local v37    # "whichArg":I
    const-wide/16 v12, -0x1

    cmp-long v0, v6, v12

    if-nez v0, :cond_13

    cmp-long v0, v8, v12

    if-eqz v0, :cond_14

    :cond_13
    if-eqz v14, :cond_15

    .line 280
    :cond_14
    new-instance v17, Lcom/sleepycat/je/util/DbPrintLog;

    invoke-direct/range {v17 .. v17}, Lcom/sleepycat/je/util/DbPrintLog;-><init>()V

    .line 281
    .local v17, "printer":Lcom/sleepycat/je/util/DbPrintLog;
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v28, v36

    move/from16 v29, v35

    move/from16 v30, v14

    move/from16 v31, v33

    move-object/from16 v32, v34

    invoke-direct/range {v17 .. v32}, Lcom/sleepycat/je/util/DbPrintLog;->dump(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZZZZZLjava/lang/String;)V

    .line 290
    .end local v2    # "envHome":Ljava/io/File;
    .end local v3    # "entryTypes":Ljava/lang/String;
    .end local v4    # "dbIds":Ljava/lang/String;
    .end local v5    # "txnIds":Ljava/lang/String;
    .end local v6    # "startLsn":J
    .end local v8    # "endLsn":J
    .end local v10    # "verbose":Z
    .end local v11    # "stats":Z
    .end local v14    # "forwards":Z
    .end local v17    # "printer":Lcom/sleepycat/je/util/DbPrintLog;
    .end local v33    # "vlsnDistribution":Z
    .end local v34    # "customDumpReaderClass":Ljava/lang/String;
    .end local v35    # "csvFormat":Z
    .end local v36    # "repEntriesOnly":Z
    .end local v37    # "whichArg":I
    goto :goto_3

    .line 275
    .restart local v2    # "envHome":Ljava/io/File;
    .restart local v3    # "entryTypes":Ljava/lang/String;
    .restart local v4    # "dbIds":Ljava/lang/String;
    .restart local v5    # "txnIds":Ljava/lang/String;
    .restart local v6    # "startLsn":J
    .restart local v8    # "endLsn":J
    .restart local v10    # "verbose":Z
    .restart local v11    # "stats":Z
    .restart local v14    # "forwards":Z
    .restart local v33    # "vlsnDistribution":Z
    .restart local v34    # "customDumpReaderClass":Ljava/lang/String;
    .restart local v35    # "csvFormat":Z
    .restart local v36    # "repEntriesOnly":Z
    .restart local v37    # "whichArg":I
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v12, "Backwards scans are not supported when -s or -e are used. They can only be used against the entire log."

    invoke-direct {v0, v12}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "argv":[Ljava/lang/String;
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v2    # "envHome":Ljava/io/File;
    .end local v3    # "entryTypes":Ljava/lang/String;
    .end local v4    # "dbIds":Ljava/lang/String;
    .end local v5    # "txnIds":Ljava/lang/String;
    .end local v6    # "startLsn":J
    .end local v8    # "endLsn":J
    .end local v10    # "verbose":Z
    .end local v11    # "stats":Z
    .end local v14    # "forwards":Z
    .end local v33    # "vlsnDistribution":Z
    .end local v34    # "customDumpReaderClass":Ljava/lang/String;
    .end local v35    # "csvFormat":Z
    .end local v36    # "repEntriesOnly":Z
    .end local v37    # "whichArg":I
    .restart local p0    # "argv":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 287
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/sleepycat/je/util/DbPrintLog;->usage()V

    .line 289
    invoke-static/range {v16 .. v16}, Ljava/lang/System;->exit(I)V

    .line 291
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method private static usage()V
    .locals 3

    .line 294
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/sleepycat/je/util/DbPrintLog;

    .line 295
    invoke-static {v2}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -h  <envHomeDir>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 297
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -s  <start file number or LSN, in hex>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -e  <end file number or LSN, in hex>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 299
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -k  <binary|text|hex|obfuscate> (format for dumping the key and data)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -db <targeted db ids, comma separated>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -tx <targeted txn ids, comma separated>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -ty <targeted entry types, comma separated>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 304
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -S  show Summary of log entries"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 305
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -SC show Summary of log entries in CSV format"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -r  only print replicated log entries"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 307
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -b  scan all the log files backwards, don\'t "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 308
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "     support scan between two log files"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -q  if specified, concise version is printed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 310
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "     Default is verbose version.)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " -c  <custom dump reader class> if specified, "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 312
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "     attempt to load this class to use for the "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "     formatting of dumped log entries"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 314
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "All arguments are optional"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 315
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJZZZZZZLjava/lang/String;)V
    .locals 16
    .param p1, "envHome"    # Ljava/io/File;
    .param p2, "entryTypes"    # Ljava/lang/String;
    .param p3, "txnIds"    # Ljava/lang/String;
    .param p4, "startLsn"    # J
    .param p6, "endLsn"    # J
    .param p8, "verbose"    # Z
    .param p9, "stats"    # Z
    .param p10, "repEntriesOnly"    # Z
    .param p11, "csvFormat"    # Z
    .param p12, "forwards"    # Z
    .param p13, "vlsnDistribution"    # Z
    .param p14, "customDumpReaderClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/EnvironmentNotFoundException;,
            Lcom/sleepycat/je/EnvironmentLockedException;
        }
    .end annotation

    .line 63
    const-string v3, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lcom/sleepycat/je/util/DbPrintLog;->dump(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZZZZZLjava/lang/String;)V

    .line 66
    return-void
.end method
