.class public Lcom/sleepycat/je/util/DbVerifyLog;
.super Ljava/lang/Object;
.source "DbVerifyLog.java"


# static fields
.field private static final USAGE:Ljava/lang/String;


# instance fields
.field private delayMs:J

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private volatile filesDeleted:I

.field private volatile filesToVerify:I

.field private volatile filesVerified:I

.field private final readBufferSize:I

.field private volatile stopVerify:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/util/DbVerifyLog;

    .line 65
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n   [-h <dir>]       # environment home directory\n   [-s <file>]      # starting (minimum) file number\n   [-e <file>]      # ending (one past the maximum) file number\n   [-d <millis>]    # delay in ms between reads (default is zero)\n   [-V]             # print JE version number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/util/DbVerifyLog;->USAGE:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/util/DbVerifyLog;-><init>(Lcom/sleepycat/je/Environment;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;I)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "readBufferSize"    # I

    .line 108
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/je/util/DbVerifyLog;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->stopVerify:Z

    .line 75
    iput v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->filesToVerify:I

    .line 76
    iput v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->filesVerified:I

    .line 77
    iput v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->filesDeleted:I

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->delayMs:J

    .line 116
    if-lez p2, :cond_0

    move v0, p2

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 119
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->readBufferSize:I

    .line 120
    iput-object p1, p0, Lcom/sleepycat/je/util/DbVerifyLog;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 121
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 15
    .param p0, "argv"    # [Ljava/lang/String;

    .line 297
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "envHome":Ljava/io/File;
    const-wide/16 v1, 0x0

    .line 299
    .local v1, "startFile":J
    const-wide v3, 0x7fffffffffffffffL

    .line 300
    .local v3, "endFile":J
    const-wide/16 v5, 0x0

    .line 302
    .local v5, "delayMs":J
    const/4 v7, 0x0

    .local v7, "whichArg":I
    :goto_0
    array-length v8, p0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v7, v8, :cond_7

    .line 303
    aget-object v8, p0, v7

    .line 304
    .local v8, "nextArg":Ljava/lang/String;
    const-string v11, "-h"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 305
    add-int/lit8 v7, v7, 0x1

    .line 306
    new-instance v9, Ljava/io/File;

    invoke-static {p0, v7}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    goto/16 :goto_1

    .line 307
    :cond_0
    const-string v11, "-s"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v12, "/"

    if-eqz v11, :cond_2

    .line 308
    add-int/lit8 v7, v7, 0x1

    .line 309
    :try_start_1
    invoke-static {p0, v7}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 310
    .local v11, "arg":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 311
    .local v12, "slashOff":I
    if-ltz v12, :cond_1

    .line 312
    invoke-virtual {v11, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    .line 314
    :cond_1
    invoke-static {v11}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v1, v13

    .line 315
    .end local v11    # "arg":Ljava/lang/String;
    .end local v12    # "slashOff":I
    goto :goto_1

    :cond_2
    const-string v11, "-e"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 316
    add-int/lit8 v7, v7, 0x1

    .line 317
    invoke-static {p0, v7}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 318
    .restart local v11    # "arg":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 319
    .restart local v12    # "slashOff":I
    if-ltz v12, :cond_3

    .line 320
    invoke-virtual {v11, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v11, v9

    .line 322
    :cond_3
    invoke-static {v11}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v3, v13

    .line 323
    .end local v11    # "arg":Ljava/lang/String;
    .end local v12    # "slashOff":I
    goto :goto_1

    :cond_4
    const-string v11, "-d"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 324
    add-int/lit8 v7, v7, 0x1

    .line 325
    nop

    .line 326
    invoke-static {p0, v7}, Lcom/sleepycat/je/utilint/CmdUtil;->getArg([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sleepycat/je/utilint/CmdUtil;->readLongNumber(Ljava/lang/String;)J

    move-result-wide v11

    move-wide v5, v11

    goto :goto_1

    .line 327
    :cond_5
    const-string v11, "-V"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 328
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v12, Lcom/sleepycat/je/JEVersion;->CURRENT_VERSION:Lcom/sleepycat/je/JEVersion;

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 329
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 331
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown argument: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sleepycat/je/util/DbVerifyLog;->printUsageAndExit(Ljava/lang/String;)V

    .line 302
    .end local v8    # "nextArg":Ljava/lang/String;
    :goto_1
    add-int/2addr v7, v10

    goto/16 :goto_0

    .line 335
    .end local v7    # "whichArg":I
    :cond_7
    nop

    .line 336
    invoke-static {v0, v10}, Lcom/sleepycat/je/utilint/CmdUtil;->makeUtilityEnvironment(Ljava/io/File;Z)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    .line 337
    .local v7, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    new-instance v8, Lcom/sleepycat/je/util/DbVerifyLog;

    invoke-direct {v8, v7, v9}, Lcom/sleepycat/je/util/DbVerifyLog;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V

    .line 339
    .local v8, "verifier":Lcom/sleepycat/je/util/DbVerifyLog;
    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v5, v6, v10}, Lcom/sleepycat/je/util/DbVerifyLog;->setReadDelay(JLjava/util/concurrent/TimeUnit;)V

    .line 340
    invoke-virtual {v8, v1, v2, v3, v4}, Lcom/sleepycat/je/util/DbVerifyLog;->verify(JJ)V

    .line 341
    invoke-static {v9}, Ljava/lang/System;->exit(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    .end local v0    # "envHome":Ljava/io/File;
    .end local v1    # "startFile":J
    .end local v3    # "endFile":J
    .end local v5    # "delayMs":J
    .end local v7    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v8    # "verifier":Lcom/sleepycat/je/util/DbVerifyLog;
    goto :goto_2

    .line 342
    :catchall_0
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/util/DbVerifyLog;->printUsageAndExit(Ljava/lang/String;)V

    .line 346
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private static printUsageAndExit(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 349
    if-eqz p0, :cond_0

    .line 350
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 352
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/util/DbVerifyLog;->USAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 353
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 354
    return-void
.end method


# virtual methods
.method public getNFilesDeleted()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->filesDeleted:I

    return v0
.end method

.method public getNFilesToVerify()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->filesToVerify:I

    return v0
.end method

.method public getNFilesVerified()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->filesVerified:I

    return v0
.end method

.method public setReadDelay(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 373
    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->delayMs:J

    .line 374
    return-void
.end method

.method public setStopVerifyFlag(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 381
    iput-boolean p1, p0, Lcom/sleepycat/je/util/DbVerifyLog;->stopVerify:Z

    .line 382
    return-void
.end method

.method public verify(JJ)V
    .locals 20
    .param p1, "startFile"    # J
    .param p3, "endFile"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/LogVerificationException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 171
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/util/DbVerifyLog;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    move-object v2, v0

    .line 172
    .local v2, "fileManager":Lcom/sleepycat/je/log/FileManager;
    iget-object v0, v1, Lcom/sleepycat/je/util/DbVerifyLog;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getEnvironmentHome()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_0 .. :try_end_0} :catch_9

    move-object v3, v0

    .line 173
    .local v3, "homeDir":Ljava/io/File;
    const-wide/16 v4, 0x1

    sub-long v4, p3, v4

    .line 174
    move-wide/from16 v6, p1

    :try_start_1
    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/sleepycat/je/log/FileManager;->listFileNames(JJ)[Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 175
    .local v4, "fileNames":[Ljava/lang/String;
    array-length v0, v4

    iput v0, v1, Lcom/sleepycat/je/util/DbVerifyLog;->filesToVerify:I

    .line 176
    iget v0, v1, Lcom/sleepycat/je/util/DbVerifyLog;->readBufferSize:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v5, v0

    .line 178
    .local v5, "buf":Ljava/nio/ByteBuffer;
    array-length v8, v4

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_7

    aget-object v0, v4, v9

    move-object v10, v0

    .line 186
    .local v10, "fileName":Ljava/lang/String;
    iget-boolean v0, v1, Lcom/sleepycat/je/util/DbVerifyLog;->stopVerify:Z

    if-eqz v0, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_1 .. :try_end_1} :catch_8

    move-object v11, v0

    .line 207
    .local v11, "file":Ljava/io/File;
    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_2 .. :try_end_2} :catch_8

    move-object v12, v0

    .line 211
    .local v12, "fis":Ljava/io/FileInputStream;
    nop

    .line 213
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    move-object v13, v0

    .line 215
    .local v13, "fic":Ljava/nio/channels/FileChannel;
    new-instance v0, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;

    iget-object v14, v1, Lcom/sleepycat/je/util/DbVerifyLog;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, v14, v13, v10}, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_3 .. :try_end_3} :catch_8

    move-object v14, v0

    .line 219
    .local v14, "vic":Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
    const/4 v15, 0x0

    .line 221
    .local v15, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v14, v5}, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v2

    .end local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .local v16, "fileManager":Lcom/sleepycat/je/log/FileManager;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 222
    :try_start_5
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 225
    iget-boolean v0, v1, Lcom/sleepycat/je/util/DbVerifyLog;->stopVerify:Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_2

    .line 250
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 251
    invoke-virtual {v14}, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_6 .. :try_end_6} :catch_8

    .line 256
    goto :goto_2

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    if-eqz v15, :cond_1

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 254
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_1
    nop

    .end local p1    # "startFile":J
    .end local p3    # "endFile":J
    :try_start_7
    throw v0
    :try_end_7
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_7 .. :try_end_7} :catch_8

    .line 229
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "startFile":J
    .restart local p3    # "endFile":J
    :cond_2
    move-object/from16 v17, v3

    .end local v3    # "homeDir":Ljava/io/File;
    .local v17, "homeDir":Ljava/io/File;
    :try_start_8
    iget-wide v2, v1, Lcom/sleepycat/je/util/DbVerifyLog;->delayMs:J
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-wide/16 v18, 0x0

    cmp-long v0, v2, v18

    if-lez v0, :cond_3

    .line 231
    :try_start_9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 235
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_1

    .line 232
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 233
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    new-instance v2, Lcom/sleepycat/je/ThreadInterruptedException;

    iget-object v3, v1, Lcom/sleepycat/je/util/DbVerifyLog;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v2, v3, v0}, Lcom/sleepycat/je/ThreadInterruptedException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Throwable;)V

    .end local v4    # "fileNames":[Ljava/lang/String;
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "fic":Ljava/nio/channels/FileChannel;
    .end local v14    # "vic":Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
    .end local v15    # "ioe":Ljava/io/IOException;
    .end local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v17    # "homeDir":Ljava/io/File;
    .end local p1    # "startFile":J
    .end local p3    # "endFile":J
    throw v2

    .line 229
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v4    # "fileNames":[Ljava/lang/String;
    .restart local v5    # "buf":Ljava/nio/ByteBuffer;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fic":Ljava/nio/channels/FileChannel;
    .restart local v14    # "vic":Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
    .restart local v15    # "ioe":Ljava/io/IOException;
    .restart local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v17    # "homeDir":Ljava/io/File;
    .restart local p1    # "startFile":J
    .restart local p3    # "endFile":J
    :cond_3
    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_1

    .line 244
    .end local v17    # "homeDir":Ljava/io/File;
    .restart local v3    # "homeDir":Ljava/io/File;
    :catchall_0
    move-exception v0

    move-object/from16 v17, v3

    move-object v2, v0

    .end local v3    # "homeDir":Ljava/io/File;
    .restart local v17    # "homeDir":Ljava/io/File;
    goto :goto_5

    .line 239
    .end local v17    # "homeDir":Ljava/io/File;
    .restart local v3    # "homeDir":Ljava/io/File;
    :catch_2
    move-exception v0

    move-object/from16 v17, v3

    .end local v3    # "homeDir":Ljava/io/File;
    .restart local v17    # "homeDir":Ljava/io/File;
    goto :goto_4

    .line 238
    .end local v17    # "homeDir":Ljava/io/File;
    .restart local v3    # "homeDir":Ljava/io/File;
    :cond_4
    move-object/from16 v17, v3

    .end local v3    # "homeDir":Ljava/io/File;
    .restart local v17    # "homeDir":Ljava/io/File;
    iget v0, v1, Lcom/sleepycat/je/util/DbVerifyLog;->filesVerified:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/sleepycat/je/util/DbVerifyLog;->filesVerified:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 250
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 251
    invoke-virtual {v14}, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_b .. :try_end_b} :catch_8

    .line 256
    goto :goto_7

    .line 252
    :catch_3
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    if-eqz v15, :cond_5

    .line 257
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 254
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    nop

    .end local p1    # "startFile":J
    .end local p3    # "endFile":J
    :try_start_c
    throw v0
    :try_end_c
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_c .. :try_end_c} :catch_8

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    .restart local p1    # "startFile":J
    .restart local p3    # "endFile":J
    :catch_4
    move-exception v0

    goto :goto_4

    .line 244
    .end local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v17    # "homeDir":Ljava/io/File;
    .restart local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v3    # "homeDir":Ljava/io/File;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object v2, v0

    .end local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v3    # "homeDir":Ljava/io/File;
    .restart local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v17    # "homeDir":Ljava/io/File;
    goto :goto_5

    .line 239
    .end local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v17    # "homeDir":Ljava/io/File;
    .restart local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v3    # "homeDir":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 240
    .end local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v3    # "homeDir":Ljava/io/File;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v17    # "homeDir":Ljava/io/File;
    :goto_4
    move-object v15, v0

    .line 241
    nop

    .end local v4    # "fileNames":[Ljava/lang/String;
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "fic":Ljava/nio/channels/FileChannel;
    .end local v14    # "vic":Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
    .end local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v17    # "homeDir":Ljava/io/File;
    .end local p1    # "startFile":J
    .end local p3    # "endFile":J
    :try_start_d
    throw v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 244
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "fileNames":[Ljava/lang/String;
    .restart local v5    # "buf":Ljava/nio/ByteBuffer;
    .restart local v10    # "fileName":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fic":Ljava/nio/channels/FileChannel;
    .restart local v14    # "vic":Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
    .restart local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v17    # "homeDir":Ljava/io/File;
    .restart local p1    # "startFile":J
    .restart local p3    # "endFile":J
    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 250
    :goto_5
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V

    .line 251
    invoke-virtual {v14}, Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_e .. :try_end_e} :catch_8

    .line 256
    goto :goto_6

    .line 252
    :catch_6
    move-exception v0

    .line 253
    .restart local v0    # "e":Ljava/io/IOException;
    if-nez v15, :cond_6

    .line 254
    goto :goto_3

    .line 256
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_6
    nop

    .end local p1    # "startFile":J
    .end local p3    # "endFile":J
    :try_start_f
    throw v2

    .line 208
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "fic":Ljava/nio/channels/FileChannel;
    .end local v14    # "vic":Lcom/sleepycat/je/util/LogVerificationReadableByteChannel;
    .end local v15    # "ioe":Ljava/io/IOException;
    .end local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v17    # "homeDir":Ljava/io/File;
    .restart local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v3    # "homeDir":Ljava/io/File;
    .restart local p1    # "startFile":J
    .restart local p3    # "endFile":J
    :catch_7
    move-exception v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 209
    .end local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v3    # "homeDir":Ljava/io/File;
    .local v0, "fne":Ljava/io/FileNotFoundException;
    .restart local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v17    # "homeDir":Ljava/io/File;
    iget v2, v1, Lcom/sleepycat/je/util/DbVerifyLog;->filesDeleted:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sleepycat/je/util/DbVerifyLog;->filesDeleted:I
    :try_end_f
    .catch Lcom/sleepycat/je/util/LogVerificationException; {:try_start_f .. :try_end_f} :catch_8

    .line 210
    nop

    .line 178
    .end local v0    # "fne":Ljava/io/FileNotFoundException;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto/16 :goto_0

    .end local v16    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v17    # "homeDir":Ljava/io/File;
    .restart local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .restart local v3    # "homeDir":Ljava/io/File;
    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 268
    .end local v2    # "fileManager":Lcom/sleepycat/je/log/FileManager;
    .end local v3    # "homeDir":Ljava/io/File;
    .end local v4    # "fileNames":[Ljava/lang/String;
    .end local v5    # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 269
    return-void

    .line 259
    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    move-wide/from16 v6, p1

    .line 261
    .local v0, "lve":Lcom/sleepycat/je/util/LogVerificationException;
    :goto_8
    sget-object v2, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->LOG_CHECKSUM:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    iget-object v3, v1, Lcom/sleepycat/je/util/DbVerifyLog;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v4, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-static {v2, v0, v3, v4}, Lcom/sleepycat/je/util/verify/VerifierUtils;->createMarkerFileFromException(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/lang/Throwable;Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;)Lcom/sleepycat/je/EnvironmentFailureException;

    .line 267
    throw v0
.end method

.method public verifyAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/LogVerificationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-boolean v0, p0, Lcom/sleepycat/je/util/DbVerifyLog;->stopVerify:Z

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 142
    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v1, p0, Lcom/sleepycat/je/util/DbVerifyLog;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v2, "Start verify of data files"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 145
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sleepycat/je/util/DbVerifyLog;->verify(JJ)V

    .line 147
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v1, p0, Lcom/sleepycat/je/util/DbVerifyLog;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    const-string v2, "End verify of data files"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 149
    return-void
.end method
