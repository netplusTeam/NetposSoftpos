.class public Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;
.super Ljava/lang/Object;
.source "NetworkBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;,
        Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;,
        Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$RejectedServerException;,
        Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException;,
        Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DIGEST_RETRIES:I = 0x5

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710


# instance fields
.field private final backupFileCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

.field private channel:Lcom/sleepycat/je/rep/net/DataChannel;

.field private final channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

.field private final clientNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private final disposedCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

.field private final envDir:Ljava/io/File;

.field private final exceptionProperties:Ljava/util/Properties;

.field private final expectedBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;

.field private final fetchCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

.field private final fileManager:Lcom/sleepycat/je/log/FileManager;

.field private interruptHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Ljava/util/logging/Logger;

.field private final messageDigest:Ljava/security/MessageDigest;

.field private final minVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

.field private final receiveBufferSize:I

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final restoreMarker:Lcom/sleepycat/je/log/RestoreMarker;

.field private final retainLogfiles:Z

.field private final serverAddress:Ljava/net/InetSocketAddress;

.field private final serverLoadThreshold:I

.field private final skipCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

.field private final statistics:Lcom/sleepycat/je/utilint/StatGroup;

.field private testBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private final transferRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

.field private final transferredBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/io/File;Lcom/sleepycat/je/rep/impl/node/NameIdPair;ZILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/log/LogManager;Lcom/sleepycat/je/rep/net/DataChannelFactory;Ljava/util/Properties;)V
    .locals 18
    .param p1, "serverSocket"    # Ljava/net/InetSocketAddress;
    .param p2, "receiveBufferSize"    # I
    .param p3, "envDir"    # Ljava/io/File;
    .param p4, "clientNameId"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p5, "retainLogfiles"    # Z
    .param p6, "serverLoadThreshold"    # I
    .param p7, "minVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p8, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p9, "fileManager"    # Lcom/sleepycat/je/log/FileManager;
    .param p10, "logManager"    # Lcom/sleepycat/je/log/LogManager;
    .param p11, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .param p12, "exceptionProperties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 238
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->testBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 239
    move-object/from16 v5, p1

    iput-object v5, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->serverAddress:Ljava/net/InetSocketAddress;

    .line 240
    move/from16 v6, p2

    iput v6, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->receiveBufferSize:I

    .line 242
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iput-object v2, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->envDir:Ljava/io/File;

    .line 247
    move-object/from16 v7, p4

    iput-object v7, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->clientNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 248
    move/from16 v8, p5

    iput-boolean v8, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->retainLogfiles:Z

    .line 249
    move/from16 v9, p6

    iput v9, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->serverLoadThreshold:I

    .line 250
    move-object/from16 v10, p7

    iput-object v10, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->minVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 251
    iput-object v3, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 252
    iput-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 253
    move-object/from16 v11, p11

    iput-object v11, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    .line 256
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->messageDigest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    nop

    .line 262
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 263
    invoke-virtual/range {p4 .. p4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->toString()Ljava/lang/String;

    move-result-object v12

    .line 262
    invoke-static {v0, v12, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLoggerFixedPrefix(Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    .line 265
    new-instance v13, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v0, "NetworkBackup"

    const-string v12, "NetworkBackup statistics"

    invoke-direct {v13, v0, v12}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    .line 267
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicIntStat;

    sget-object v12, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->BACKUP_FILE_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v13, v12}, Lcom/sleepycat/je/utilint/AtomicIntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->backupFileCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 268
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicIntStat;

    sget-object v12, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->DISPOSED_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v13, v12}, Lcom/sleepycat/je/utilint/AtomicIntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->disposedCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 269
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicIntStat;

    sget-object v12, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->FETCH_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v13, v12}, Lcom/sleepycat/je/utilint/AtomicIntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fetchCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 270
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicIntStat;

    sget-object v12, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->SKIP_COUNT:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v13, v12}, Lcom/sleepycat/je/utilint/AtomicIntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->skipCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 271
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v12, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->EXPECTED_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v13, v12}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->expectedBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 272
    new-instance v0, Lcom/sleepycat/je/utilint/AtomicLongStat;

    sget-object v12, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->TRANSFERRED_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v0, v13, v12}, Lcom/sleepycat/je/utilint/AtomicLongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->transferredBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 274
    new-instance v0, Lcom/sleepycat/je/utilint/LongAvgRateStat;

    sget-object v14, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStatDefinition;->TRANSFER_RATE:Lcom/sleepycat/je/utilint/StatDefinition;

    const-wide/16 v15, 0x2710

    sget-object v17, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lcom/sleepycat/je/utilint/LongAvgRateStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;JLjava/util/concurrent/TimeUnit;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->transferRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    .line 277
    move-object/from16 v12, p12

    iput-object v12, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->exceptionProperties:Ljava/util/Properties;

    .line 278
    new-instance v0, Lcom/sleepycat/je/log/RestoreMarker;

    move-object/from16 v13, p10

    invoke-direct {v0, v4, v13}, Lcom/sleepycat/je/log/RestoreMarker;-><init>(Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/log/LogManager;)V

    iput-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->restoreMarker:Lcom/sleepycat/je/log/RestoreMarker;

    .line 279
    return-void

    .line 257
    :catch_0
    move-exception v0

    move-object/from16 v13, p10

    move-object/from16 v12, p12

    .line 259
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v14

    throw v14

    .line 243
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v13, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Environment directory: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/io/File;Lcom/sleepycat/je/rep/impl/node/NameIdPair;ZLcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/log/LogManager;Lcom/sleepycat/je/rep/net/DataChannelFactory;)V
    .locals 13
    .param p1, "serverSocket"    # Ljava/net/InetSocketAddress;
    .param p2, "envDir"    # Ljava/io/File;
    .param p3, "clientNameId"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p4, "retainLogfiles"    # Z
    .param p5, "fileManager"    # Lcom/sleepycat/je/log/FileManager;
    .param p6, "logManager"    # Lcom/sleepycat/je/log/LogManager;
    .param p7, "channelFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 297
    sget-object v7, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    const v6, 0x7fffffff

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v12}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;-><init>(Ljava/net/InetSocketAddress;ILjava/io/File;Lcom/sleepycat/je/rep/impl/node/NameIdPair;ZILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/log/FileManager;Lcom/sleepycat/je/log/LogManager;Lcom/sleepycat/je/rep/net/DataChannelFactory;Ljava/util/Properties;)V

    .line 309
    return-void
.end method

.method private checkProtocol(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .locals 4
    .param p1, "candidateProtocol"    # Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
        }
    .end annotation

    .line 817
    new-instance v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ClientVersion;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 818
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 819
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v1, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;

    .line 820
    invoke-virtual {p1, v0, v1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;

    .line 822
    .local v0, "serverVersion":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;->getVersion()I

    move-result v1

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->getVersion()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 835
    return-object p1

    .line 823
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server requested protocol version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 824
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ServerVersion;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but the client version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 826
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-static {v2, v3, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 828
    new-instance v2, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;

    invoke-direct {v2, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkServer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;,
            Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    new-instance v1, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoReq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoReq;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 407
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v2, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;

    .line 408
    .local v0, "resp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getRangeLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->minVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 414
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getActiveFeeders()I

    move-result v1

    iget v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->serverLoadThreshold:I

    if-gt v1, v2, :cond_0

    .line 420
    return-void

    .line 415
    :cond_0
    new-instance v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;

    iget v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->serverLoadThreshold:I

    .line 417
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getRangeFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getRangeLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    .line 418
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getActiveFeeders()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;-><init>(ILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;I)V

    throw v1

    .line 409
    :cond_1
    new-instance v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->minVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 411
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getRangeFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getRangeLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    .line 412
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FeederInfoResp;->getActiveFeeders()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;I)V

    throw v1
.end method

.method private cleanup([Ljava/lang/String;)V
    .locals 8
    .param p1, "fileNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v2, "Cleaning up"

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 435
    .local v0, "logFileSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->listJDBFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 436
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 437
    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->disposeFile(Ljava/io/File;)V

    .line 435
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 441
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v1, "logFiles":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 448
    .local v4, "string":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v6, v4}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 453
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    goto :goto_1

    .line 450
    .restart local v4    # "string":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 456
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "names":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 458
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 460
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log file set: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method private disposeFile(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .line 753
    const-string v0, "Could not rename log file "

    const-string v1, "Could not delete log file "

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->disposedCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/AtomicIntStat;->increment()V

    .line 754
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/log/FileManager;->getNumFromName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 755
    .local v2, "fileNumber":J
    iget-boolean v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->retainLogfiles:Z

    if-eqz v4, :cond_1

    .line 756
    const/4 v1, 0x0

    .line 758
    .local v1, "renamed":Z
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    const-string v5, ".bup"

    .line 759
    invoke-virtual {v4, v2, v3, v5}, Lcom/sleepycat/je/log/FileManager;->renameFile(JLjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 764
    nop

    .line 766
    if-eqz v1, :cond_0

    .line 770
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Renamed log file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 771
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 770
    invoke-static {v0, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 772
    .end local v1    # "renamed":Z
    goto :goto_0

    .line 767
    .restart local v1    # "renamed":Z
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 768
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 760
    :catch_0
    move-exception v4

    .line 761
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 762
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " because of exception: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 763
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 773
    .end local v1    # "renamed":Z
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v0, 0x0

    .line 775
    .local v0, "deleted":Z
    :try_start_1
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v4, v2, v3}, Lcom/sleepycat/je/log/FileManager;->deleteFile(J)Z

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    .line 780
    nop

    .line 781
    if-eqz v0, :cond_2

    .line 785
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleted log file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 786
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 785
    invoke-static {v1, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 788
    .end local v0    # "deleted":Z
    :goto_0
    return-void

    .line 782
    .restart local v0    # "deleted":Z
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 783
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 776
    :catch_1
    move-exception v4

    .line 777
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 778
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " during network restore."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method private disposeObsoleteFiles(Ljava/io/File;)V
    .locals 5
    .param p1, "startFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->listJDBFiles()[Ljava/io/File;

    move-result-object v0

    .line 731
    .local v0, "dirFiles":[Ljava/io/File;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 734
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 735
    aget-object v2, v0, v1

    .line 738
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sleepycat/je/log/RestoreMarker;->getMarkerFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 739
    goto :goto_1

    .line 741
    :cond_0
    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->disposeFile(Ljava/io/File;)V

    .line 742
    invoke-virtual {p1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 743
    goto :goto_2

    .line 734
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 746
    .end local v1    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private getFileList()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    new-instance v1, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListReq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListReq;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 800
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v2, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;

    .line 802
    .local v0, "fileListResp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileListResp;->getFileNames()[Ljava/lang/String;

    move-result-object v1

    .line 803
    .local v1, "fileList":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 804
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->backupFileCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/AtomicIntStat;->set(Ljava/lang/Integer;)V

    .line 805
    return-object v1
.end method

.method private getFileTransferLengths([Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "fileNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .local v0, "fileTransferLengths":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 541
    .local v4, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v6, v4}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v5, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    new-instance v7, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v6, v4, v2}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v6, v7, v8}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 543
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v8, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;

    .line 544
    invoke-virtual {v6, v7, v8}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;

    .line 545
    .local v6, "statResp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->getFileLength()J

    move-result-wide v7

    .line 550
    .local v7, "fileLength":J
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-nez v9, :cond_1

    .line 553
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->getDigestSHA1()[B

    move-result-object v9

    array-length v9, v9

    if-nez v9, :cond_0

    .line 554
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    new-instance v10, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x1

    invoke-direct {v10, v9, v4, v11}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoReq;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;Z)V

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v9, v10, v11}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 556
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v11, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;

    .line 557
    invoke-virtual {v9, v10, v11}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;

    .line 559
    :cond_0
    nop

    .line 560
    invoke-static {v5, v7, v8}, Lcom/sleepycat/je/rep/impl/networkRestore/LogFileFeeder;->getSHA1Digest(Ljava/io/File;J)Ljava/security/MessageDigest;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    .line 561
    .local v9, "digest":[B
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;->getDigestSHA1()[B

    move-result-object v10

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 562
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 563
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " length: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " available with matching SHA1, copy skipped"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 562
    invoke-static {v10, v11, v12}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 566
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->skipCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/AtomicIntStat;->increment()V

    .line 567
    goto :goto_1

    .line 570
    .end local v9    # "digest":[B
    :cond_1
    new-instance v9, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;

    invoke-direct {v9, v5, v7, v8}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;-><init>(Ljava/io/File;J)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->expectedBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v9, v7, v8}, Lcom/sleepycat/je/utilint/AtomicLongStat;->add(J)V

    .line 535
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "statResp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileInfoResp;
    .end local v7    # "fileLength":J
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 573
    :cond_2
    return-object v0
.end method

.method private getFiles([Ljava/lang/String;)V
    .locals 8
    .param p1, "fileNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " files in backup set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 475
    nop

    .line 476
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->getFileTransferLengths([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 478
    .local v0, "fileTransferLengths":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;

    .line 479
    .local v2, "entry":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->testBarrier:Ljava/util/concurrent/CyclicBarrier;

    if-eqz v3, :cond_0

    .line 481
    :try_start_0
    invoke-virtual {v3}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/BrokenBarrierException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Ljava/util/concurrent/BrokenBarrierException;
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3

    .line 482
    .end local v1    # "e":Ljava/util/concurrent/BrokenBarrierException;
    :catch_1
    move-exception v3

    .line 489
    :cond_0
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    const/4 v4, 0x5

    if-ge v3, v4, :cond_2

    .line 491
    :try_start_1
    iget-object v5, v2, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;->file:Ljava/io/File;

    invoke-virtual {p0, v5}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->getFile(Ljava/io/File;)V

    .line 492
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fetchCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/AtomicIntStat;->increment()V
    :try_end_1
    .catch Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException; {:try_start_1 .. :try_end_1} :catch_2

    .line 493
    goto :goto_3

    .line 494
    :catch_2
    move-exception v5

    .line 495
    .local v5, "e":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException;
    add-int/lit8 v6, v3, 0x1

    if-eq v6, v4, :cond_1

    .line 501
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->expectedBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    iget-wide v6, v2, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;->length:J

    invoke-virtual {v4, v6, v7}, Lcom/sleepycat/je/utilint/AtomicLongStat;->add(J)V

    .line 502
    nop

    .line 489
    .end local v5    # "e":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 496
    .restart local v5    # "e":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Digest mismatch despite 5 attempts"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    .end local v2    # "entry":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$FileAndLength;
    .end local v3    # "i":I
    .end local v5    # "e":Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException;
    :cond_2
    :goto_3
    goto :goto_0

    .line 507
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->restoreMarker:Lcom/sleepycat/je/log/RestoreMarker;

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/log/RestoreMarker;->removeMarkerFile(Lcom/sleepycat/je/log/FileManager;)V

    .line 510
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    new-instance v2, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$Done;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)V

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 511
    return-void
.end method


# virtual methods
.method public execute()[Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;,
            Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$LoadThresholdExceededException;,
            Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$InsufficientVLSNRangeException;,
            Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
        }
    .end annotation

    .line 334
    const-string v0, ".  Local files renamed/deleted: "

    const-string v1, ".  Files skipped(available locally): "

    const-string v2, ".  Files actually fetched: "

    const-string v3, "Backup file total: "

    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channelFactory:Lcom/sleepycat/je/rep/net/DataChannelFactory;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->serverAddress:Ljava/net/InetSocketAddress;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-eqz v6, :cond_0

    .line 336
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->getHostAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    new-instance v7, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    invoke-direct {v7}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;-><init>()V

    .line 338
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v7

    iget v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->receiveBufferSize:I

    .line 339
    invoke-virtual {v7, v9}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReceiveBufferSize(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v7

    .line 340
    const/16 v9, 0x2710

    invoke-virtual {v7, v9}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v7

    .line 341
    invoke-virtual {v7, v9}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReadTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v7

    .line 335
    invoke-interface {v4, v5, v6, v7}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 342
    const-string v5, "LogFileFeeder"

    .line 343
    invoke-static {v4, v5}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V

    .line 345
    new-instance v4, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->clientNameId:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-direct {v4, v5, v6, v7}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;ILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->checkProtocol(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;)Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    .line 348
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->checkServer()V

    .line 349
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->getFileList()[Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "fileNames":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restoring from:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->serverAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " Allocated network receive buffer size:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    .line 354
    invoke-interface {v9}, Lcom/sleepycat/je/rep/net/DataChannel;->socket()Ljava/net/Socket;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->receiveBufferSize:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ") candidate log file count:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v9, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->getFiles([Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->cleanup([Ljava/lang/String;)V

    .line 360
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v5}, Lcom/sleepycat/je/log/FileManager;->listJDBFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    array-length v6, v4

    if-ne v5, v6, :cond_2

    .line 370
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/log/FileManager;->getNumFromName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 371
    .local v5, "fileBegin":J
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    array-length v9, v4

    sub-int/2addr v9, v8

    aget-object v8, v4, v9

    .line 372
    invoke-virtual {v7, v8}, Lcom/sleepycat/je/log/FileManager;->getNumFromName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 374
    .local v7, "fileEnd":J
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v9, v5, v6, v7, v8}, Lcom/sleepycat/je/log/FileManager;->listFileNames(JJ)[Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    if-eqz v10, :cond_1

    .line 381
    invoke-interface {v10}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 383
    :cond_1
    iget-object v10, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v11, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->backupFileCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 385
    invoke-virtual {v12}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fetchCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 387
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->skipCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 389
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->disposedCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 391
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v10, v11, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 374
    return-object v9

    .line 360
    .end local v5    # "fileBegin":J
    .end local v7    # "fileEnd":J
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "envDir="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->envDir:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " list="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 362
    invoke-virtual {v7}, Lcom/sleepycat/je/log/FileManager;->listJDBFiles()[Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fileNames="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 363
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    .end local v4    # "fileNames":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    if-eqz v5, :cond_3

    .line 381
    invoke-interface {v5}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 383
    :cond_3
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->backupFileCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 385
    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fetchCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 387
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->skipCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 389
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->disposedCount:Lcom/sleepycat/je/utilint/AtomicIntStat;

    .line 391
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/AtomicIntStat;->get()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v4
.end method

.method protected getFile(Ljava/io/File;)V
    .locals 19
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException;,
            Lcom/sleepycat/je/log/RestoreMarker$FileCreationException;
        }
    .end annotation

    .line 587
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 588
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    new-instance v3, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileReq;-><init>(Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 589
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v3, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v4, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;

    invoke-virtual {v0, v3, v4}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;

    .line 597
    .local v3, "fileResp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/log/FileManager;->getFullFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 599
    .local v4, "tmpFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    .line 601
    .local v0, "deleted":Z
    if-eqz v0, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not delete file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 603
    invoke-static {v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    throw v5

    .line 611
    .end local v0    # "deleted":Z
    :cond_1
    :goto_0
    const/16 v0, 0x2000

    .line 612
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 613
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 616
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v6, v0

    .line 617
    .local v6, "fileStream":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    .line 621
    .local v7, "fileChannel":Ljava/nio/channels/FileChannel;
    const/16 v0, 0x80

    .line 622
    .local v0, "rateInterval":I
    const/4 v8, 0x0

    .line 625
    .local v8, "count":I
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->getFileLength()J

    move-result-wide v9

    .local v9, "bytes":J
    :goto_1
    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-lez v13, :cond_5

    .line 626
    const-wide/16 v13, 0x2000

    .line 627
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    long-to-int v13, v13

    .line 628
    .local v13, "readSize":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 629
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 630
    iget-object v14, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v14, v5}, Lcom/sleepycat/je/rep/net/DataChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v14

    .line 631
    .local v14, "actualBytes":I
    const/4 v15, -0x1

    if-eq v14, v15, :cond_4

    .line 635
    int-to-long v11, v14

    sub-long/2addr v9, v11

    .line 637
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 638
    invoke-virtual {v7, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 640
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 641
    iget-object v11, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v11, v5}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 642
    iget-object v11, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->transferredBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v12, v4

    move-object/from16 v16, v5

    .end local v4    # "tmpFile":Ljava/io/File;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .local v12, "tmpFile":Ljava/io/File;
    .local v16, "buffer":Ljava/nio/ByteBuffer;
    int-to-long v4, v14

    :try_start_1
    invoke-virtual {v11, v4, v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;->add(J)V

    .line 645
    add-int/lit8 v8, v8, 0x1

    rem-int/lit16 v4, v8, 0x80

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v11, v7

    move v15, v8

    move-wide/from16 v17, v9

    goto :goto_3

    .line 646
    :cond_3
    :goto_2
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->transferRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    iget-object v5, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->transferredBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 647
    invoke-virtual {v5}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v7

    move v15, v8

    .end local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v8    # "count":I
    .local v11, "fileChannel":Ljava/nio/channels/FileChannel;
    .local v15, "count":I
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-wide/from16 v17, v9

    .end local v9    # "bytes":J
    .local v17, "bytes":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 646
    invoke-virtual {v4, v7, v8, v9, v10}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->add(JJ)V

    .line 649
    .end local v13    # "readSize":I
    .end local v14    # "actualBytes":I
    :goto_3
    move-object v7, v11

    move-object v4, v12

    move v8, v15

    move-object/from16 v5, v16

    move-wide/from16 v9, v17

    goto :goto_1

    .line 665
    .end local v0    # "rateInterval":I
    .end local v11    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v15    # "count":I
    .end local v17    # "bytes":J
    .restart local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v0

    move-object v11, v7

    .end local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v11    # "fileChannel":Ljava/nio/channels/FileChannel;
    goto/16 :goto_4

    .line 632
    .end local v11    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v12    # "tmpFile":Ljava/io/File;
    .end local v16    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v0    # "rateInterval":I
    .restart local v4    # "tmpFile":Ljava/io/File;
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v8    # "count":I
    .restart local v9    # "bytes":J
    .restart local v13    # "readSize":I
    .restart local v14    # "actualBytes":I
    :cond_4
    move-object v12, v4

    move-object/from16 v16, v5

    move-object v11, v7

    .end local v4    # "tmpFile":Ljava/io/File;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v11    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v12    # "tmpFile":Ljava/io/File;
    .restart local v16    # "buffer":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Premature EOF. Was expecting:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "fileResp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;
    .end local v6    # "fileStream":Ljava/io/FileOutputStream;
    .end local v11    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v12    # "tmpFile":Ljava/io/File;
    .end local v16    # "buffer":Ljava/nio/ByteBuffer;
    .end local p1    # "file":Ljava/io/File;
    throw v4

    .line 625
    .end local v13    # "readSize":I
    .end local v14    # "actualBytes":I
    .restart local v3    # "fileResp":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;
    .restart local v4    # "tmpFile":Ljava/io/File;
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local p1    # "file":Ljava/io/File;
    :cond_5
    move-object v12, v4

    move-object/from16 v16, v5

    move-object v11, v7

    .line 651
    .end local v4    # "tmpFile":Ljava/io/File;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v9    # "bytes":J
    .restart local v11    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v12    # "tmpFile":Ljava/io/File;
    .restart local v16    # "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 652
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v7, "Fetched log file: %s, size: %,d bytes, %s bytes, %s bytes, %s bytes/second"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 658
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v10

    .line 659
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileStart;->getFileLength()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v13, 0x1

    aput-object v10, v9, v13

    const/4 v10, 0x2

    iget-object v13, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->transferredBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    aput-object v13, v9, v10

    const/4 v10, 0x3

    iget-object v13, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->expectedBytes:Lcom/sleepycat/je/utilint/AtomicLongStat;

    aput-object v13, v9, v10

    const/4 v10, 0x4

    iget-object v13, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->transferRate:Lcom/sleepycat/je/utilint/LongAvgRateStat;

    aput-object v13, v9, v10

    .line 653
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 652
    invoke-static {v4, v5, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 665
    .end local v0    # "rateInterval":I
    .end local v8    # "count":I
    :cond_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 666
    nop

    .line 668
    iget-object v0, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->protocol:Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;

    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->channel:Lcom/sleepycat/je/rep/net/DataChannel;

    const-class v5, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;

    .line 671
    .local v0, "fileEnd":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->messageDigest:Ljava/security/MessageDigest;

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;->getDigestSHA1()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 685
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->restoreMarker:Lcom/sleepycat/je/log/RestoreMarker;

    sget-object v5, Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;->NETWORK_RESTORE:Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;

    iget-object v7, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->exceptionProperties:Ljava/util/Properties;

    .line 686
    invoke-virtual {v4, v5, v7}, Lcom/sleepycat/je/log/RestoreMarker;->createMarkerFile(Lcom/sleepycat/je/log/entry/RestoreRequired$FailureType;Ljava/util/Properties;)V

    .line 689
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->interruptHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v4, v2}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 692
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 698
    invoke-direct/range {p0 .. p1}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->disposeObsoleteFiles(Ljava/io/File;)V

    .line 702
    :cond_7
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Renamed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 703
    invoke-virtual {v12, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 704
    .local v4, "renamed":Z
    if-eqz v4, :cond_8

    .line 715
    return-void

    .line 705
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rename from: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " failed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 706
    invoke-static {v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v5

    throw v5

    .line 689
    .end local v4    # "renamed":Z
    :cond_9
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 672
    :cond_a
    iget-object v4, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "digest mismatch on file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 674
    new-instance v4, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException;

    invoke-direct {v4}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup$DigestException;-><init>()V

    throw v4

    .line 665
    .end local v0    # "fileEnd":Lcom/sleepycat/je/rep/impl/networkRestore/Protocol$FileEnd;
    :catchall_1
    move-exception v0

    goto :goto_4

    .end local v11    # "fileChannel":Ljava/nio/channels/FileChannel;
    .end local v12    # "tmpFile":Ljava/io/File;
    .end local v16    # "buffer":Ljava/nio/ByteBuffer;
    .local v4, "tmpFile":Ljava/io/File;
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_2
    move-exception v0

    move-object v12, v4

    move-object/from16 v16, v5

    move-object v11, v7

    .end local v4    # "tmpFile":Ljava/io/File;
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v11    # "fileChannel":Ljava/nio/channels/FileChannel;
    .restart local v12    # "tmpFile":Ljava/io/File;
    .restart local v16    # "buffer":Ljava/nio/ByteBuffer;
    :goto_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    throw v0
.end method

.method public getStats()Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;
    .locals 3

    .line 315
    new-instance v0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->statistics:Lcom/sleepycat/je/utilint/StatGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackupStats;-><init>(Lcom/sleepycat/je/utilint/StatGroup;)V

    return-object v0
.end method

.method public setInterruptHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 849
    .local p1, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Ljava/io/File;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->interruptHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 850
    return-void
.end method

.method public setTestBarrier(Ljava/util/concurrent/CyclicBarrier;)V
    .locals 0
    .param p1, "testBarrier"    # Ljava/util/concurrent/CyclicBarrier;

    .line 844
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/networkRestore/NetworkBackup;->testBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 845
    return-void
.end method
