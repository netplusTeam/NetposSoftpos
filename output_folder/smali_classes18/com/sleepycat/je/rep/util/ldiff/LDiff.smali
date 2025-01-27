.class public Lcom/sleepycat/je/rep/util/ldiff/LDiff;
.super Ljava/lang/Object;
.source "LDiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;,
        Lcom/sleepycat/je/rep/util/ldiff/LDiff$MismatchException;
    }
.end annotation


# static fields
.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final usageString:Ljava/lang/String;


# instance fields
.field private cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

.field private file1:Ljava/lang/String;

.field private file2:Ljava/lang/String;

.field private home1:Ljava/io/File;

.field private home2:Ljava/io/File;

.field private tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/LDiff;

    .line 69
    invoke-static {v1}, Lcom/sleepycat/je/utilint/CmdUtil;->getJavaCommand(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  -h <dir>[,<dir2>]   # environment home directory\n  [-a]                # analyze diff\n  [-b <blockSize>]    # number of records to put in each block\n  [-m <maxErrors>]    # abort diff after a number of errors\n  [-s <databaseName>,<databaseName>] # database(s) to compare\n  [-q]                # be quiet, do not print to stdout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->usageString:Ljava/lang/String;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;)V
    .locals 0
    .param p1, "cfg"    # Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/util/ldiff/LDiff;)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/util/ldiff/LDiff;

    .line 61
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    return-object v0
.end method

.method private connect(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 5
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .param p2, "dcFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getMaxConnectionAttempts()I

    move-result v0

    .line 727
    .local v0, "triesLeft":I
    const/4 v1, 0x0

    .line 730
    .local v1, "ret":Lcom/sleepycat/je/rep/net/DataChannel;
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    invoke-direct {v3}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;-><init>()V

    .line 733
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setBlocking(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v3

    .line 734
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setTcpNoDelay(Z)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v3

    .line 735
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setOpenTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v3

    .line 736
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;->setReadTimeout(I)Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;

    move-result-object v3

    .line 730
    invoke-interface {p2, p1, v2, v3}, Lcom/sleepycat/je/rep/net/DataChannelFactory;->connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v2

    move-object v1, v2

    .line 737
    const-string v2, "LDiff"

    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->doServiceHandshake(Lcom/sleepycat/je/rep/net/DataChannel;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    nop

    .line 759
    return-object v1

    .line 739
    :catch_0
    move-exception v2

    .line 740
    .local v2, "scfe":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 741
    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 749
    :cond_0
    if-lez v0, :cond_1

    .line 750
    add-int/lit8 v0, v0, -0x1

    .line 753
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getWaitIfBusy()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 756
    .end local v2    # "scfe":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    goto :goto_0

    .line 754
    .restart local v2    # "scfe":Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;
    :cond_2
    throw v2
.end method

.method private diff()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 222
    new-instance v0, Lcom/sleepycat/je/EnvironmentConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/EnvironmentConfig;-><init>()V

    .line 223
    .local v0, "envConfiguration":Lcom/sleepycat/je/EnvironmentConfig;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/EnvironmentConfig;->setReadOnly(Z)Lcom/sleepycat/je/EnvironmentConfig;

    .line 224
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/EnvironmentConfig;->setCachePercent(I)Lcom/sleepycat/je/EnvironmentMutableConfig;

    .line 225
    new-instance v2, Lcom/sleepycat/je/Environment;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->home1:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 227
    .local v2, "env1":Lcom/sleepycat/je/Environment;
    new-instance v3, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v3}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 228
    .local v3, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v3, v1}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 229
    invoke-static {v3, v1}, Lcom/sleepycat/je/DbInternal;->setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V

    .line 232
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->home2:Ljava/io/File;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 233
    new-instance v1, Lcom/sleepycat/je/Environment;

    iget-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->home2:Ljava/io/File;

    invoke-direct {v1, v5, v0}, Lcom/sleepycat/je/Environment;-><init>(Ljava/io/File;Lcom/sleepycat/je/EnvironmentConfig;)V

    .line 234
    .local v1, "env2":Lcom/sleepycat/je/Environment;
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->file1:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 236
    invoke-virtual {p0, v2, v1}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Environment;)Z

    move-result v4

    .line 237
    .local v4, "ret":Z
    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->close()V

    .line 238
    invoke-virtual {v1}, Lcom/sleepycat/je/Environment;->close()V

    .line 239
    return v4

    .line 241
    .end local v4    # "ret":Z
    :cond_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->file2:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v3}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v1

    .line 242
    .local v1, "db2":Lcom/sleepycat/je/Database;
    goto :goto_0

    .line 243
    .end local v1    # "db2":Lcom/sleepycat/je/Database;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->file2:Ljava/lang/String;

    invoke-virtual {v2, v4, v1, v3}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v1

    .line 245
    .restart local v1    # "db2":Lcom/sleepycat/je/Database;
    :goto_0
    iget-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->file1:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v3}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v4

    .line 247
    .local v4, "db1":Lcom/sleepycat/je/Database;
    invoke-virtual {p0, v4, v1}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Database;)Z

    move-result v5

    .line 248
    .local v5, "ret":Z
    invoke-virtual {v4}, Lcom/sleepycat/je/Database;->close()V

    .line 249
    invoke-virtual {v1}, Lcom/sleepycat/je/Database;->close()V

    .line 250
    invoke-virtual {v2}, Lcom/sleepycat/je/Environment;->close()V

    .line 252
    return v5
.end method

.method private diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/net/DataChannel;)Z
    .locals 5
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    new-instance v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const-string v2, "Ldiff"

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    .line 491
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 492
    .local v0, "protocol":Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    new-instance v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getBlockSize()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$DbBlocks;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;Ljava/lang/String;I)V

    .line 492
    invoke-virtual {v0, v1, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 499
    const-class v1, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockListStart;

    invoke-virtual {v0, p2, v1}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 501
    new-instance v1, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-direct {v1}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;-><init>()V

    .line 505
    .local v1, "bag":Lcom/sleepycat/je/rep/util/ldiff/BlockBag;
    :goto_0
    :try_start_0
    const-class v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;

    invoke-virtual {v0, p2, v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v2

    check-cast v2, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;

    .line 506
    .local v2, "blockMsg":Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;->getBlock()Lcom/sleepycat/je/rep/util/ldiff/Block;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->add(Lcom/sleepycat/je/rep/util/ldiff/Block;)V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    goto :goto_0

    .line 507
    .end local v2    # "blockMsg":Lcom/sleepycat/je/rep/util/ldiff/Protocol$BlockInfo;
    :catch_0
    move-exception v2

    .line 508
    .local v2, "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;->getUnexpectedMessage()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v3

    sget-object v4, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->BLOCK_LIST_END:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v3, v4, :cond_2

    .line 512
    nop

    .line 517
    .end local v2    # "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)Z

    move-result v2

    .line 518
    .local v2, "match":Z
    if-eqz v2, :cond_0

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " matches remote database."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    goto :goto_1

    .line 521
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "does not match remote database."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    .line 524
    :goto_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getDiffAnalysis()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->getDiffRegions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    .line 525
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    .line 526
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getVerbose()Z

    move-result v4

    invoke-static {p1, v0, p2, v3, v4}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->doAnalysis(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/util/ldiff/Protocol;Lcom/sleepycat/je/rep/net/DataChannel;Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;Z)V

    .line 528
    :cond_1
    new-instance v3, Lcom/sleepycat/je/rep/util/ldiff/Protocol$Done;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$Done;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    invoke-virtual {v0, v3, p2}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 530
    return v2

    .line 510
    .local v2, "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :cond_2
    throw v2
.end method

.method private findMatch(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/rep/util/ldiff/BlockBag;Lcom/sleepycat/je/rep/util/ldiff/Window;)Lcom/sleepycat/je/rep/util/ldiff/Block;
    .locals 9
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "blkBag"    # Lcom/sleepycat/je/rep/util/ldiff/BlockBag;
    .param p3, "window"    # Lcom/sleepycat/je/rep/util/ldiff/Window;

    .line 663
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getChecksum()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->get(J)Ljava/util/List;

    move-result-object v0

    .line 664
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/util/ldiff/Block;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 665
    return-object v1

    .line 669
    :cond_0
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getMd5Hash()[B

    move-result-object v2

    .line 670
    .local v2, "md5":[B
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 671
    .local v4, "b":Lcom/sleepycat/je/rep/util/ldiff/Block;
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getMd5Hash()[B

    move-result-object v5

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 672
    return-object v4

    .line 674
    :cond_1
    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 676
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found a remote block whose rolling checksum matches LB but md5 hash doesn\'t:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 675
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 679
    .end local v4    # "b":Lcom/sleepycat/je/rep/util/ldiff/Block;
    goto :goto_0

    .line 681
    :cond_2
    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 110
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;-><init>()V

    .line 111
    .local v0, "differ":Lcom/sleepycat/je/rep/util/ldiff/LDiff;
    invoke-direct {v0, p0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->parseArgs([Ljava/lang/String;)V

    .line 113
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {v1}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    goto :goto_1

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 122
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private output(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 763
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 766
    :cond_0
    return-void
.end method

.method private parseArgs([Ljava/lang/String;)V
    .locals 8
    .param p1, "argv"    # [Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    .line 126
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setVerbose(Z)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "argc":I
    array-length v2, p1

    .line 130
    .local v2, "nArgs":I
    :goto_0
    if-ge v0, v2, :cond_d

    .line 131
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "argc":I
    .local v3, "argc":I
    aget-object v0, p1, v0

    .line 132
    .local v0, "thisArg":Ljava/lang/String;
    const-string v4, "-a"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v4, v1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setDiffAnalysis(Z)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    goto/16 :goto_5

    .line 134
    :cond_0
    const-string v4, "-b"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    if-ge v3, v2, :cond_1

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "argc":I
    .local v5, "argc":I
    :try_start_1
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setBlockSize(I)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 138
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v5    # "argc":I
    .restart local v3    # "argc":I
    :catch_1
    move-exception v4

    move v5, v3

    move-object v3, v4

    .line 139
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    .restart local v5    # "argc":I
    :goto_1
    const-string v4, "-b requires an integer argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    .line 140
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :goto_2
    move v0, v5

    goto/16 :goto_6

    .line 142
    .end local v5    # "argc":I
    .local v3, "argc":I
    :cond_1
    const-string v4, "-b requires an argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 144
    :cond_2
    const-string v4, "-h"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_6

    .line 145
    if-ge v3, v2, :cond_5

    .line 146
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .local v4, "argc":I
    aget-object v3, p1, v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "envDirs":[Ljava/lang/String;
    array-length v5, v3

    if-le v5, v7, :cond_3

    .line 148
    const-string v5, "Only 2 environments supported"

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    .line 151
    :cond_3
    new-instance v5, Ljava/io/File;

    aget-object v6, v3, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->home1:Ljava/io/File;

    .line 152
    array-length v5, v3

    if-ne v5, v7, :cond_4

    .line 153
    new-instance v5, Ljava/io/File;

    aget-object v6, v3, v1

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->home2:Ljava/io/File;

    .line 155
    .end local v3    # "envDirs":[Ljava/lang/String;
    :cond_4
    move v0, v4

    goto/16 :goto_6

    .line 156
    .end local v4    # "argc":I
    .local v3, "argc":I
    :cond_5
    const-string v4, "-h requires an argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 158
    :cond_6
    const-string v4, "-m"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 159
    if-ge v3, v2, :cond_7

    .line 161
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "argc":I
    .restart local v5    # "argc":I
    :try_start_3
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setMaxErrors(I)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 162
    :catch_2
    move-exception v3

    goto :goto_3

    .end local v5    # "argc":I
    .restart local v3    # "argc":I
    :catch_3
    move-exception v4

    move v5, v3

    move-object v3, v4

    .line 163
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    .restart local v5    # "argc":I
    :goto_3
    const-string v4, "-m requires an integer argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    .line 164
    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    :goto_4
    move v0, v5

    goto :goto_6

    .line 166
    .end local v5    # "argc":I
    .local v3, "argc":I
    :cond_7
    const-string v4, "-m requires an argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    goto :goto_5

    .line 168
    :cond_8
    const-string v4, "-s"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 169
    if-ge v3, v2, :cond_a

    .line 170
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "argc":I
    .restart local v4    # "argc":I
    aget-object v3, p1, v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "dbNames":[Ljava/lang/String;
    array-length v5, v3

    if-eq v5, v7, :cond_9

    .line 172
    const-string v5, "-s requires two database names"

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    .line 174
    :cond_9
    aget-object v5, v3, v6

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->file1:Ljava/lang/String;

    .line 175
    aget-object v5, v3, v1

    iput-object v5, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->file2:Ljava/lang/String;

    .line 176
    .end local v3    # "dbNames":[Ljava/lang/String;
    move v0, v4

    goto :goto_6

    .line 177
    .end local v4    # "argc":I
    .local v3, "argc":I
    :cond_a
    const-string v4, "-s requires an argument"

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    goto :goto_5

    .line 179
    :cond_b
    const-string v4, "-q"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 180
    iget-object v4, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v4, v6}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->setVerbose(Z)Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    goto :goto_5

    .line 182
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a valid option."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    .line 184
    .end local v0    # "thisArg":Ljava/lang/String;
    :goto_5
    move v0, v3

    .end local v3    # "argc":I
    .local v0, "argc":I
    :goto_6
    goto/16 :goto_0

    .line 186
    :cond_d
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->home1:Ljava/io/File;

    if-nez v1, :cond_e

    .line 187
    const-string v1, "-h is a required argument"

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    .line 190
    :cond_e
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->home2:Ljava/io/File;

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->file1:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 191
    const-string v1, "2 databases must be specified with 1 environment"

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->printUsage(Ljava/lang/String;)V

    .line 193
    :cond_f
    return-void
.end method

.method private printUsage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 196
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 197
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    sget-object v1, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->usageString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 199
    return-void
.end method


# virtual methods
.method public createBlockBag(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/rep/util/ldiff/BlockBag;
    .locals 11
    .param p1, "db"    # Lcom/sleepycat/je/Database;

    .line 692
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;-><init>()V

    .line 695
    .local v0, "bag":Lcom/sleepycat/je/rep/util/ldiff/BlockBag;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 696
    .local v1, "start":J
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->iterator(Lcom/sleepycat/je/Database;)Ljava/util/Iterator;

    move-result-object v3

    .line 697
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sleepycat/je/rep/util/ldiff/Block;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 698
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/util/ldiff/Block;

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->add(Lcom/sleepycat/je/rep/util/ldiff/Block;)V

    goto :goto_0

    .line 700
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 701
    .local v4, "end":J
    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 703
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v7

    invoke-static {v7}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Block bag created in : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v4, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 702
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 705
    return-object v0
.end method

.method public diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Database;)Z
    .locals 7
    .param p1, "db1"    # Lcom/sleepycat/je/Database;
    .param p2, "db2"    # Lcom/sleepycat/je/Database;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->createBlockBag(Lcom/sleepycat/je/Database;)Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    move-result-object v0

    .line 321
    .local v0, "bag":Lcom/sleepycat/je/rep/util/ldiff/BlockBag;
    invoke-virtual {p0, p1, v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)Z

    move-result v1

    .line 322
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getVerbose()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 323
    invoke-virtual {p1}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "db1Name":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/sleepycat/je/Database;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "db2Name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 326
    .local v4, "namesMatch":Z
    if-eqz v1, :cond_1

    .line 327
    if-eqz v4, :cond_0

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No differences in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " matches "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_1
    if-eqz v4, :cond_2

    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Differences in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " does not match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    .line 342
    .end local v2    # "db1Name":Ljava/lang/String;
    .end local v3    # "db2Name":Ljava/lang/String;
    .end local v4    # "namesMatch":Z
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getDiffAnalysis()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->getDiffRegions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 343
    iget-object v2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getVerbose()Z

    move-result v3

    invoke-static {p1, p2, v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/DiffRecordAnalyzer;->doAnalysis(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;Z)V

    .line 346
    :cond_4
    return v1
.end method

.method public diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)Z
    .locals 17
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "blkBag"    # Lcom/sleepycat/je/rep/util/ldiff/BlockBag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 547
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x1

    .line 553
    .local v2, "identical":Z
    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v4, v3, v3}, Lcom/sleepycat/je/Database;->openCursor(Lcom/sleepycat/je/Transaction;Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/je/Cursor;

    move-result-object v3

    .line 555
    .local v3, "cursor":Lcom/sleepycat/je/Cursor;
    const-wide/16 v5, 0x1

    .line 556
    .local v5, "pos":J
    iget-object v7, v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getBlockSize()I

    move-result v7

    .line 557
    .local v7, "numKeys":I
    new-instance v8, Lcom/sleepycat/je/rep/util/ldiff/Window;

    invoke-direct {v8, v3, v7}, Lcom/sleepycat/je/rep/util/ldiff/Window;-><init>(Lcom/sleepycat/je/Cursor;I)V

    .line 559
    .local v8, "window":Lcom/sleepycat/je/rep/util/ldiff/Window;
    const/4 v9, 0x0

    .line 560
    .local v9, "errors":I
    iget-object v10, v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->cfg:Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/util/ldiff/LDiffConfig;->getMaxErrors()I

    move-result v10

    .line 561
    .local v10, "maxerrors":I
    new-instance v11, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    int-to-long v12, v7

    invoke-direct {v11, v12, v13}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;-><init>(J)V

    iput-object v11, v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    .line 562
    :goto_0
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getChecksum()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 568
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v11

    invoke-direct {v0, v11, v1, v8}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->findMatch(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/rep/util/ldiff/BlockBag;Lcom/sleepycat/je/rep/util/ldiff/Window;)Lcom/sleepycat/je/rep/util/ldiff/Block;

    move-result-object v11

    .line 569
    .local v11, "match":Lcom/sleepycat/je/rep/util/ldiff/Block;
    if-eqz v11, :cond_1

    .line 570
    iget-object v12, v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    .line 571
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->getBlock()Lcom/sleepycat/je/rep/util/ldiff/Block;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->getBlockIndex()I

    move-result v13

    invoke-virtual {v12, v15, v13}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->setBlockDiffBegin(Lcom/sleepycat/je/rep/util/ldiff/Block;I)V

    .line 573
    invoke-virtual {v1, v11}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->remove(Lcom/sleepycat/je/rep/util/ldiff/Block;)Ljava/util/List;

    move-result-object v12

    .line 574
    .local v12, "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/util/ldiff/Block;>;"
    if-eqz v12, :cond_0

    .line 575
    const/4 v2, 0x0

    .line 576
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    add-int/2addr v9, v13

    .line 577
    iget-object v13, v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->getBlockIndex()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->calBlockDiffSize(I)V

    .line 578
    if-lez v10, :cond_0

    if-lt v9, v10, :cond_0

    .line 579
    goto :goto_1

    .line 583
    :cond_0
    iget-object v13, v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    invoke-virtual {v13, v8}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->addDiffRegion(Lcom/sleepycat/je/rep/util/ldiff/Window;)V

    .line 586
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/util/ldiff/Window;->nextWindow()V

    .line 587
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/util/ldiff/Window;->size()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v5, v13

    .line 589
    goto :goto_0

    .line 592
    .end local v12    # "removed":Ljava/util/List;, "Ljava/util/List<Lcom/sleepycat/je/rep/util/ldiff/Block;>;"
    :cond_1
    const/4 v2, 0x0

    .line 593
    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 595
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v13

    invoke-static {v13}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unmatched block at position "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 594
    invoke-static {v12, v13, v14}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 597
    add-int/lit8 v9, v9, 0x1

    .line 598
    if-lez v10, :cond_2

    if-lt v9, v10, :cond_2

    .line 599
    goto :goto_1

    .line 603
    :cond_2
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/util/ldiff/Window;->rollWindow()V

    .line 605
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getChecksum()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    .line 606
    const-wide/16 v12, 0x1

    add-long/2addr v5, v12

    .line 608
    .end local v11    # "match":Lcom/sleepycat/je/rep/util/ldiff/Block;
    :cond_3
    goto/16 :goto_0

    .line 610
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/sleepycat/je/Cursor;->close()V

    .line 612
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getChecksum()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_5

    .line 618
    sget-object v11, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 620
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v12

    invoke-static {v12}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Local Db has addtional records starting at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 619
    invoke-static {v11, v12, v13}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 622
    const/4 v2, 0x0

    .line 623
    iget-object v11, v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    invoke-virtual {v11, v8}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->addWindowAdditionalDiffs(Lcom/sleepycat/je/rep/util/ldiff/Window;)V

    .line 626
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 628
    invoke-virtual/range {p2 .. p2}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 629
    .local v12, "b":Lcom/sleepycat/je/rep/util/ldiff/Block;
    sget-object v13, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 631
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Database;->getEnvironment()Lcom/sleepycat/je/Environment;

    move-result-object v14

    invoke-static {v14}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v2

    .end local v2    # "identical":Z
    .local v16, "identical":Z
    const-string v2, "Unmatched remote block: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-static {v13, v14, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->envLogMsg(Ljava/util/logging/Level;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 633
    .end local v12    # "b":Lcom/sleepycat/je/rep/util/ldiff/Block;
    move/from16 v2, v16

    goto :goto_2

    .line 634
    .end local v16    # "identical":Z
    .restart local v2    # "identical":Z
    :cond_6
    move/from16 v16, v2

    .end local v2    # "identical":Z
    .restart local v16    # "identical":Z
    const/4 v2, 0x0

    .line 635
    .end local v16    # "identical":Z
    .restart local v2    # "identical":Z
    iget-object v11, v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    invoke-virtual {v11, v8, v1}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->addBlockBagAdditionalDiffs(Lcom/sleepycat/je/rep/util/ldiff/Window;Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)V

    goto :goto_3

    .line 626
    :cond_7
    move/from16 v16, v2

    .line 638
    :goto_3
    return v2
.end method

.method public diff(Lcom/sleepycat/je/Database;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)Z
    .locals 2
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .param p2, "addr"    # Ljava/net/InetSocketAddress;
    .param p3, "dcFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    invoke-direct {p0, p2, p3}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->connect(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v0

    .line 478
    .local v0, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/net/DataChannel;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    .local v1, "ret":Z
    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 481
    nop

    .line 483
    return v1

    .line 480
    .end local v1    # "ret":Z
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    throw v1
.end method

.method public diff(Lcom/sleepycat/je/Environment;Lcom/sleepycat/je/Environment;)Z
    .locals 11
    .param p1, "env1"    # Lcom/sleepycat/je/Environment;
    .param p2, "env2"    # Lcom/sleepycat/je/Environment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    invoke-virtual {p1}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v0

    .line 268
    .local v0, "env1names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v1

    .line 269
    .local v1, "env2names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 270
    .local v2, "ret":Z
    :goto_0
    if-nez v2, :cond_1

    .line 271
    const-string v3, "Environments have different number of databases."

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    .line 273
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 274
    .local v5, "dbName":Ljava/lang/String;
    new-instance v6, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v6}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    .line 275
    .local v6, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v6, v4}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 276
    invoke-static {v6, v4}, Lcom/sleepycat/je/DbInternal;->setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V

    .line 279
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v7, v5, v6}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v8
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    .local v8, "db1":Lcom/sleepycat/je/Database;
    nop

    .line 285
    :try_start_1
    invoke-virtual {p2, v7, v5, v6}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v7
    :try_end_1
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    .local v7, "db2":Lcom/sleepycat/je/Database;
    nop

    .line 295
    invoke-virtual {p0, v8, v7}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/Database;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 296
    const/4 v2, 0x0

    .line 298
    :cond_2
    invoke-virtual {v8}, Lcom/sleepycat/je/Database;->close()V

    .line 299
    invoke-virtual {v7}, Lcom/sleepycat/je/Database;->close()V

    .line 300
    .end local v5    # "dbName":Ljava/lang/String;
    .end local v6    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v7    # "db2":Lcom/sleepycat/je/Database;
    .end local v8    # "db1":Lcom/sleepycat/je/Database;
    goto :goto_1

    .line 286
    .restart local v5    # "dbName":Ljava/lang/String;
    .restart local v6    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v8    # "db1":Lcom/sleepycat/je/Database;
    :catch_0
    move-exception v7

    .line 288
    .local v7, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    invoke-virtual {v8}, Lcom/sleepycat/je/Database;->close()V

    .line 289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " does not exist in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 290
    invoke-virtual {p2}, Lcom/sleepycat/je/Environment;->getHome()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 289
    invoke-direct {p0, v9}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    .line 291
    const/4 v2, 0x0

    .line 292
    goto :goto_1

    .line 280
    .end local v7    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    .end local v8    # "db1":Lcom/sleepycat/je/Database;
    :catch_1
    move-exception v3

    .line 282
    .local v3, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 301
    .end local v3    # "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    .end local v5    # "dbName":Ljava/lang/String;
    .end local v6    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    :cond_3
    if-eqz v2, :cond_4

    .line 302
    const-string v3, "No differences exist between the two environments."

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    goto :goto_2

    .line 304
    :cond_4
    const-string v3, "Differences exist between the two environments."

    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    .line 306
    :goto_2
    return v2
.end method

.method public diff(Lcom/sleepycat/je/Environment;Ljava/net/InetSocketAddress;)Z
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "addr"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SimpleChannelFactory;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/utilint/net/SimpleChannelFactory;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff(Lcom/sleepycat/je/Environment;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)Z

    move-result v0

    return v0
.end method

.method public diff(Lcom/sleepycat/je/Environment;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)Z
    .locals 17
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "addr"    # Ljava/net/InetSocketAddress;
    .param p3, "dcFactory"    # Lcom/sleepycat/je/rep/net/DataChannelFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;,
            Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 391
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/Environment;->getDatabaseNames()Ljava/util/List;

    move-result-object v4

    .line 392
    .local v4, "envNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 394
    .local v0, "ret":Z
    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->connect(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v5

    .line 396
    .local v5, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    new-instance v6, Lcom/sleepycat/je/rep/util/ldiff/Protocol;

    new-instance v7, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    const-string v8, "Ldiff"

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;-><init>(Ljava/lang/String;I)V

    .line 398
    invoke-static/range {p1 .. p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    .line 399
    .local v6, "protocol":Lcom/sleepycat/je/rep/util/ldiff/Protocol;
    new-instance v7, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvDiff;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v6}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvDiff;-><init>(Lcom/sleepycat/je/rep/util/ldiff/Protocol;)V

    invoke-virtual {v6, v7, v5}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Ljava/nio/channels/WritableByteChannel;)V

    .line 406
    const-class v7, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;

    invoke-virtual {v6, v5, v7}, Lcom/sleepycat/je/rep/util/ldiff/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/Class;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;

    .line 407
    .local v7, "msg":Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/util/ldiff/Protocol$EnvInfo;->getNumberOfDBs()I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move v0, v8

    .line 408
    if-nez v0, :cond_1

    .line 409
    const-string v8, "Number of databases in local and remote environments does not match."

    invoke-direct {v1, v8}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    .line 412
    :cond_1
    invoke-interface {v5}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 418
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object/from16 v16, v5

    move v5, v0

    move-object/from16 v0, v16

    .local v0, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .local v5, "ret":Z
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 419
    .local v9, "dbName":Ljava/lang/String;
    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->connect(Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory;)Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v11

    .line 421
    .end local v0    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .local v11, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    new-instance v0, Lcom/sleepycat/je/DatabaseConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DatabaseConfig;-><init>()V

    move-object v12, v0

    .line 422
    .local v12, "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    invoke-virtual {v12, v10}, Lcom/sleepycat/je/DatabaseConfig;->setReadOnly(Z)Lcom/sleepycat/je/DatabaseConfig;

    .line 423
    invoke-static {v12, v10}, Lcom/sleepycat/je/DbInternal;->setUseExistingConfig(Lcom/sleepycat/je/DatabaseConfig;Z)V

    .line 426
    const/4 v0, 0x0

    move-object/from16 v13, p1

    :try_start_0
    invoke-virtual {v13, v0, v9, v12}, Lcom/sleepycat/je/Environment;->openDatabase(Lcom/sleepycat/je/Transaction;Ljava/lang/String;Lcom/sleepycat/je/DatabaseConfig;)Lcom/sleepycat/je/Database;

    move-result-object v0
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v14, v0

    .line 430
    .local v14, "db":Lcom/sleepycat/je/Database;
    nop

    .line 433
    :try_start_1
    invoke-direct {v1, v14, v11}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->diff(Lcom/sleepycat/je/Database;Lcom/sleepycat/je/rep/net/DataChannel;)Z

    move-result v0
    :try_end_1
    .catch Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 434
    const/4 v5, 0x0

    .line 440
    :cond_2
    invoke-virtual {v14}, Lcom/sleepycat/je/Database;->close()V

    .line 441
    invoke-interface {v11}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 442
    invoke-interface {v11}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    goto :goto_2

    .line 440
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 436
    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 437
    .local v0, "pe":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$ProtocolException;
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v10, " does not exist in remote environment."

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 438
    const/4 v0, 0x0

    .line 440
    .end local v5    # "ret":Z
    .local v0, "ret":Z
    invoke-virtual {v14}, Lcom/sleepycat/je/Database;->close()V

    .line 441
    invoke-interface {v11}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    invoke-interface {v11}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    .line 445
    .end local v9    # "dbName":Ljava/lang/String;
    .end local v12    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .end local v14    # "db":Lcom/sleepycat/je/Database;
    :cond_3
    move v5, v0

    .end local v0    # "ret":Z
    .restart local v5    # "ret":Z
    :cond_4
    :goto_2
    move-object v0, v11

    const/4 v10, 0x1

    goto :goto_1

    .line 440
    .restart local v9    # "dbName":Ljava/lang/String;
    .restart local v12    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .restart local v14    # "db":Lcom/sleepycat/je/Database;
    :goto_3
    invoke-virtual {v14}, Lcom/sleepycat/je/Database;->close()V

    .line 441
    invoke-interface {v11}, Lcom/sleepycat/je/rep/net/DataChannel;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 442
    invoke-interface {v11}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V

    :cond_5
    throw v0

    .line 427
    .end local v14    # "db":Lcom/sleepycat/je/Database;
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 429
    .local v0, "e":Lcom/sleepycat/je/DatabaseNotFoundException;
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v8

    throw v8

    .line 446
    .end local v9    # "dbName":Ljava/lang/String;
    .end local v11    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    .end local v12    # "dbConfig":Lcom/sleepycat/je/DatabaseConfig;
    .local v0, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :cond_6
    move-object/from16 v13, p1

    if-eqz v5, :cond_7

    .line 447
    const-string v8, "Local environment matches remote."

    invoke-direct {v1, v8}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    goto :goto_4

    .line 449
    :cond_7
    const-string v8, "Local environment does not match remote."

    invoke-direct {v1, v8}, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->output(Ljava/lang/String;)V

    .line 451
    :goto_4
    return v5
.end method

.method public getDiffRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;",
            ">;"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiff;->tracker:Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;

    if-nez v0, :cond_0

    .line 644
    const/4 v0, 0x0

    return-object v0

    .line 647
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->getDiffRegions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Lcom/sleepycat/je/Database;)Ljava/util/Iterator;
    .locals 1
    .param p1, "db"    # Lcom/sleepycat/je/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/Database;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/sleepycat/je/rep/util/ldiff/Block;",
            ">;"
        }
    .end annotation

    .line 709
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiff$LDiffIterator;-><init>(Lcom/sleepycat/je/rep/util/ldiff/LDiff;Lcom/sleepycat/je/Database;)V

    return-object v0
.end method
