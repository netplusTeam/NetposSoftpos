.class public Lcom/sleepycat/je/log/FileCacheWarmer;
.super Ljava/lang/Thread;
.source "FileCacheWarmer.java"


# instance fields
.field private final bufSize:I

.field private final endOfLogLsn:J

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final recoveryStartLsn:J

.field private volatile stop:Z

.field private final warmUpSize:I


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JJII)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "recoveryStartLsn"    # J
    .param p4, "endOfLogLsn"    # J
    .param p6, "warmUpSize"    # I
    .param p7, "bufSize"    # I

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 46
    iput-wide p2, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->recoveryStartLsn:J

    .line 47
    iput-wide p4, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->endOfLogLsn:J

    .line 48
    iput p6, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->warmUpSize:I

    .line 49
    iput p7, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->bufSize:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->stop:Z

    .line 51
    return-void
.end method

.method private doRun()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    move-object/from16 v1, p0

    const-string/jumbo v2, "r"

    iget-object v0, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v3

    .line 86
    .local v3, "fm":Lcom/sleepycat/je/log/FileManager;
    const-wide/32 v4, 0x100000

    .line 88
    .local v4, "ONE_MB":J
    iget v0, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->warmUpSize:I

    int-to-long v6, v0

    const-wide/32 v8, 0x100000

    mul-long/2addr v6, v8

    iget-wide v8, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->recoveryStartLsn:J

    iget-wide v10, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->endOfLogLsn:J

    .line 89
    invoke-static {v8, v9, v10, v11, v3}, Lcom/sleepycat/je/utilint/DbLsn;->getTrueDistance(JJLcom/sleepycat/je/log/FileManager;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 91
    .local v6, "remaining":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gtz v0, :cond_0

    .line 92
    return-void

    .line 97
    :cond_0
    iget v0, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->bufSize:I

    new-array v10, v0, [B

    .line 99
    .local v10, "buf":[B
    iget-wide v11, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->recoveryStartLsn:J

    invoke-static {v11, v12}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v11

    .line 100
    .local v11, "fileNum":J
    iget-wide v13, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->recoveryStartLsn:J

    invoke-static {v13, v14}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v13

    .line 102
    .local v13, "fileOff":J
    invoke-virtual {v3, v11, v12}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v15

    .line 103
    .local v15, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v0

    .line 104
    .local v16, "file":Ljava/io/File;
    const/16 v17, 0x0

    .line 107
    .local v17, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object/from16 v8, v16

    .end local v16    # "file":Ljava/io/File;
    .local v8, "file":Ljava/io/File;
    :try_start_1
    invoke-direct {v0, v8, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .end local v17    # "raf":Ljava/io/RandomAccessFile;
    .local v0, "raf":Ljava/io/RandomAccessFile;
    move-object/from16 v17, v0

    move-object/from16 v16, v8

    .line 109
    .end local v0    # "raf":Ljava/io/RandomAccessFile;
    .end local v8    # "file":Ljava/io/File;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v17    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    :try_start_2
    iget-boolean v0, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->stop:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-nez v0, :cond_6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_6

    .line 111
    cmp-long v0, v13, v8

    const/4 v8, 0x0

    if-gtz v0, :cond_4

    .line 112
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V

    .line 113
    const/16 v17, 0x0

    .line 115
    :goto_1
    iget-boolean v0, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->stop:Z

    if-nez v0, :cond_3

    .line 116
    invoke-virtual {v3, v11, v12, v8}, Lcom/sleepycat/je/log/FileManager;->getFollowingFileNum(JZ)Ljava/lang/Long;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v9, v0

    .line 119
    .local v9, "nextFileNum":Ljava/lang/Long;
    if-nez v9, :cond_2

    .line 159
    if-eqz v17, :cond_1

    .line 161
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 164
    goto :goto_2

    .line 162
    :catch_0
    move-exception v0

    .line 120
    :cond_1
    :goto_2
    return-void

    .line 123
    :cond_2
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 124
    invoke-virtual {v3, v11, v12}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(J)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v16, v0

    .line 127
    :try_start_6
    new-instance v0, Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v8, v16

    .end local v16    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    :try_start_7
    invoke-direct {v0, v8, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v17, v0

    .line 130
    nop

    .line 131
    :try_start_8
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-wide/from16 v13, v19

    .line 132
    move-object/from16 v16, v8

    move-object/from16 v8, v17

    goto :goto_4

    .line 159
    .end local v9    # "nextFileNum":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-object/from16 v16, v8

    goto/16 :goto_7

    .line 128
    .restart local v9    # "nextFileNum":Ljava/lang/Long;
    :catch_1
    move-exception v0

    goto :goto_3

    .line 159
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "nextFileNum":Ljava/lang/Long;
    .restart local v16    # "file":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v8, v16

    move-object v1, v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    .end local v16    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    goto/16 :goto_7

    .line 128
    .end local v8    # "file":Ljava/io/File;
    .restart local v9    # "nextFileNum":Ljava/lang/Long;
    .restart local v16    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v8, v16

    .line 129
    .end local v16    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v8    # "file":Ljava/io/File;
    :goto_3
    move-object/from16 v16, v8

    const/4 v8, 0x0

    goto :goto_1

    .line 115
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "nextFileNum":Ljava/lang/Long;
    .restart local v16    # "file":Ljava/io/File;
    :cond_3
    move-object/from16 v8, v17

    goto :goto_4

    .line 159
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    goto/16 :goto_7

    .line 111
    :cond_4
    move-object/from16 v8, v17

    .line 136
    .end local v17    # "raf":Ljava/io/RandomAccessFile;
    .local v8, "raf":Ljava/io/RandomAccessFile;
    :goto_4
    :try_start_9
    iget v0, v1, Lcom/sleepycat/je/log/FileCacheWarmer;->bufSize:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    int-to-long v0, v0

    sub-long v0, v13, v0

    move-object v9, v2

    move-object/from16 v19, v3

    const-wide/16 v2, 0x0

    .end local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .local v19, "fm":Lcom/sleepycat/je/log/FileManager;
    :try_start_a
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 137
    .local v0, "pos":J
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 139
    sub-long v2, v13, v0

    long-to-int v2, v2

    .line 140
    .local v2, "bytes":I
    const/4 v3, 0x0

    invoke-virtual {v8, v10, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 142
    .local v3, "read":I
    if-ne v3, v2, :cond_5

    .line 147
    move-wide/from16 v20, v4

    .end local v4    # "ONE_MB":J
    .local v20, "ONE_MB":J
    int-to-long v4, v2

    sub-long/2addr v6, v4

    .line 148
    move-wide v13, v0

    .line 149
    .end local v0    # "pos":J
    .end local v2    # "bytes":I
    .end local v3    # "read":I
    move-object/from16 v1, p0

    move-object/from16 v17, v8

    move-object v2, v9

    move-object/from16 v3, v19

    move-wide/from16 v4, v20

    goto/16 :goto_0

    .line 143
    .end local v20    # "ONE_MB":J
    .restart local v0    # "pos":J
    .restart local v2    # "bytes":I
    .restart local v3    # "read":I
    .restart local v4    # "ONE_MB":J
    :cond_5
    move-wide/from16 v20, v4

    .end local v4    # "ONE_MB":J
    .restart local v20    # "ONE_MB":J
    :try_start_b
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requested "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " bytes but read "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "remaining":J
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local v10    # "buf":[B
    .end local v11    # "fileNum":J
    .end local v13    # "fileOff":J
    .end local v15    # "filePath":Ljava/lang/String;
    .end local v16    # "file":Ljava/io/File;
    .end local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v20    # "ONE_MB":J
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 159
    .end local v0    # "pos":J
    .end local v2    # "bytes":I
    .end local v3    # "read":I
    .restart local v6    # "remaining":J
    .restart local v8    # "raf":Ljava/io/RandomAccessFile;
    .restart local v10    # "buf":[B
    .restart local v11    # "fileNum":J
    .restart local v13    # "fileOff":J
    .restart local v15    # "filePath":Ljava/lang/String;
    .restart local v16    # "file":Ljava/io/File;
    .restart local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v20    # "ONE_MB":J
    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v17, v8

    goto :goto_7

    .end local v20    # "ONE_MB":J
    .restart local v4    # "ONE_MB":J
    :catchall_4
    move-exception v0

    move-wide/from16 v20, v4

    move-object v1, v0

    move-object/from16 v17, v8

    .end local v4    # "ONE_MB":J
    .restart local v20    # "ONE_MB":J
    goto :goto_7

    .end local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v20    # "ONE_MB":J
    .local v3, "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v4    # "ONE_MB":J
    :catchall_5
    move-exception v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-object v1, v0

    move-object/from16 v17, v8

    .end local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v4    # "ONE_MB":J
    .restart local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v20    # "ONE_MB":J
    goto :goto_7

    .line 109
    .end local v8    # "raf":Ljava/io/RandomAccessFile;
    .end local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v20    # "ONE_MB":J
    .restart local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v4    # "ONE_MB":J
    .restart local v17    # "raf":Ljava/io/RandomAccessFile;
    :cond_6
    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    .line 151
    .end local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v4    # "ONE_MB":J
    .restart local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v20    # "ONE_MB":J
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 152
    const/4 v1, 0x0

    .line 159
    .end local v17    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    if-eqz v1, :cond_7

    .line 161
    :try_start_d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 164
    :goto_5
    goto :goto_6

    .line 162
    :catch_3
    move-exception v0

    goto :goto_5

    .line 167
    :cond_7
    :goto_6
    return-void

    .line 159
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v17    # "raf":Ljava/io/RandomAccessFile;
    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_7

    .end local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v20    # "ONE_MB":J
    .restart local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v4    # "ONE_MB":J
    :catchall_7
    move-exception v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-object v1, v0

    .end local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v4    # "ONE_MB":J
    .restart local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v20    # "ONE_MB":J
    goto :goto_7

    .end local v16    # "file":Ljava/io/File;
    .end local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v20    # "ONE_MB":J
    .restart local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v4    # "ONE_MB":J
    .local v8, "file":Ljava/io/File;
    :catchall_8
    move-exception v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-object v1, v0

    move-object/from16 v16, v8

    .end local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v4    # "ONE_MB":J
    .restart local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v20    # "ONE_MB":J
    goto :goto_7

    .end local v8    # "file":Ljava/io/File;
    .end local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v20    # "ONE_MB":J
    .restart local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v4    # "ONE_MB":J
    .restart local v16    # "file":Ljava/io/File;
    :catchall_9
    move-exception v0

    move-object/from16 v19, v3

    move-wide/from16 v20, v4

    move-object/from16 v8, v16

    move-object v1, v0

    .end local v3    # "fm":Lcom/sleepycat/je/log/FileManager;
    .end local v4    # "ONE_MB":J
    .restart local v19    # "fm":Lcom/sleepycat/je/log/FileManager;
    .restart local v20    # "ONE_MB":J
    :goto_7
    if-eqz v17, :cond_8

    .line 161
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 164
    goto :goto_8

    .line 162
    :catch_4
    move-exception v0

    .line 164
    :cond_8
    :goto_8
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileCacheWarmer;->doRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->clearFileCacheWarmer()V

    .line 78
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-class v2, Lcom/sleepycat/je/log/FileCacheWarmer;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "run"

    const-string v4, "Unable to warm file system cache due to exception"

    .line 71
    invoke-static {v1, v2, v3, v4, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 79
    :goto_1
    return-void

    .line 77
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->clearFileCacheWarmer()V

    throw v0
.end method

.method shutdown()V
    .locals 1

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/log/FileCacheWarmer;->stop:Z

    .line 59
    return-void
.end method
