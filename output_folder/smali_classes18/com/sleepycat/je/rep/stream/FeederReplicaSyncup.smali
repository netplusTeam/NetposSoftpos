.class public Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;
.super Ljava/lang/Object;
.source "FeederReplicaSyncup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_INITIAL_REPLAY:I = 0x249f00

.field private static volatile afterSyncupEndedHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/impl/node/Feeder;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile afterSyncupStartedHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/impl/node/Feeder;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile testMaxInitialReplay:I


# instance fields
.field private backwardsReader:Lcom/sleepycat/je/rep/stream/FeederSyncupReader;

.field private final feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

.field private final logger:Ljava/util/logging/Logger;

.field private final namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

.field private final protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private final vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/utilint/NamedChannel;Lcom/sleepycat/je/rep/stream/Protocol;)V
    .locals 2
    .param p1, "feeder"    # Lcom/sleepycat/je/rep/impl/node/Feeder;
    .param p2, "namedChannel"    # Lcom/sleepycat/je/rep/utilint/NamedChannel;
    .param p3, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 92
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    .line 94
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 95
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 96
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 97
    return-void
.end method

.method private answerRestore(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;
    .locals 5
    .param p1, "range"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .param p2, "failedMatchpoint"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    new-instance v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 460
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRestoreResponseVLSN(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 461
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getLogProviders()[Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;[Lcom/sleepycat/je/rep/impl/RepNodeImpl;)V

    .line 462
    .local v0, "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v1, v0, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 464
    new-instance v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;

    .line 465
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 466
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 467
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-direct {v1, p2, v2, v3, v4}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;-><init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)V

    .line 464
    return-object v1
.end method

.method public static getDBId(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/lang/String;)Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 7
    .param p0, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p1, "dbName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseNotFoundException;
        }
    .end annotation

    .line 313
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getDbTree()Lcom/sleepycat/je/dbi/DbTree;

    move-result-object v0

    .line 316
    .local v0, "dbTree":Lcom/sleepycat/je/dbi/DbTree;
    new-instance v1, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v1}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    .line 317
    .local v1, "txnConfig":Lcom/sleepycat/je/TransactionConfig;
    new-instance v2, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;

    invoke-direct {v2, p0, v1}, Lcom/sleepycat/je/rep/txn/ReadonlyTxn;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;)V

    .line 320
    .local v2, "txn":Lcom/sleepycat/je/txn/Txn;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, v2, p1, v3, v4}, Lcom/sleepycat/je/dbi/DbTree;->getDbIdFromName(Lcom/sleepycat/je/txn/Locker;Ljava/lang/String;Lcom/sleepycat/je/txn/HandleLocker;Z)Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v3

    .line 321
    .local v3, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->commit()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    nop

    .line 328
    if-eqz v3, :cond_0

    .line 332
    return-object v3

    .line 329
    :cond_0
    new-instance v4, Lcom/sleepycat/je/DatabaseNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find db id for JE database "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sleepycat/je/DatabaseNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 322
    .end local v3    # "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    :catch_0
    move-exception v3

    .line 323
    .local v3, "exp":Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/sleepycat/je/txn/Txn;->abort()V

    .line 324
    throw v3
.end method

.method private getMatchPtRecord(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 1
    .param p1, "matchPointVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/FeederSyncupReader;

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->setupReader(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/FeederSyncupReader;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/FeederSyncupReader;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/FeederSyncupReader;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;->scanBackwards(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v0

    return-object v0
.end method

.method private static getMaxInitialReplay()I
    .locals 1

    .line 254
    sget v0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->testMaxInitialReplay:I

    if-eqz v0, :cond_0

    sget v0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->testMaxInitialReplay:I

    goto :goto_0

    :cond_0
    const v0, 0x249f00

    :goto_0
    return v0
.end method

.method private makeResponseToDBIdRequest(Lcom/sleepycat/je/rep/impl/node/RepNode;Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .locals 3
    .param p1, "rn"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "dbName"    # Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->getDBId(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/lang/String;)Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    .line 298
    .local v0, "dbId":Lcom/sleepycat/je/dbi/DatabaseId;
    new-instance v1, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2, v0}, Lcom/sleepycat/je/rep/stream/Protocol$DBIdResponse;-><init>(Lcom/sleepycat/je/rep/stream/Protocol;Lcom/sleepycat/je/dbi/DatabaseId;)V

    return-object v1
.end method

.method private makeResponseToEntryRequest(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;Z)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .locals 6
    .param p1, "range"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .param p2, "request"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;
    .param p3, "isFirstResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 340
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 341
    .local v0, "requestMatchpoint":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;->getType()Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    move-result-object v1

    .line 344
    .local v1, "type":Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;
    sget-object v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->NOW:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->getMatchPtRecord(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    return-object v2

    .line 359
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-lez v2, :cond_2

    .line 361
    sget-object v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->AVAILABLE:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->getMatchPtRecord(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    return-object v2

    .line 366
    :cond_1
    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    return-object v2

    .line 369
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v2

    if-gez v2, :cond_8

    .line 371
    sget-object v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->AVAILABLE:Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequestType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 372
    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->getMatchPtRecord(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    return-object v2

    .line 391
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/FeederSyncupReader;

    if-nez v2, :cond_7

    .line 395
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 400
    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    return-object v2

    .line 403
    :cond_4
    if-eqz p3, :cond_6

    .line 404
    nop

    .line 405
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->getMatchPtRecord(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v2

    .line 406
    .local v2, "lastSync":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    if-eqz v2, :cond_5

    .line 408
    new-instance v3, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    return-object v3

    .line 406
    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Look for alternative, range="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 411
    .end local v2    # "lastSync":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 412
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestMatchpoint="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "should only happen on first response"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 391
    :cond_7
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Replica request for vlsn > feeder range should only happen on the first exchange."

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 422
    :cond_8
    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->FIRST_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v2}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 423
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v2

    invoke-static {}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->getMaxInitialReplay()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 425
    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;)V

    return-object v2

    .line 429
    :cond_9
    nop

    .line 430
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->getMatchPtRecord(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v2

    .line 431
    .local v2, "matchRecord":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    if-eqz v2, :cond_a

    .line 438
    new-instance v3, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    return-object v3

    .line 432
    :cond_a
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 433
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find matchpoint "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in log. VLSN range="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method public static setAfterSyncupEndedHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/impl/node/Feeder;",
            ">;)V"
        }
    .end annotation

    .line 270
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    sput-object p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->afterSyncupEndedHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 271
    return-void
.end method

.method public static setAfterSyncupStartedHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/impl/node/Feeder;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p0, "hook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/impl/node/Feeder;>;"
    sput-object p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->afterSyncupStartedHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 266
    return-void
.end method

.method public static setTestMaxInitialReplay(I)V
    .locals 0
    .param p0, "val"    # I

    .line 260
    sput p0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->testMaxInitialReplay:I

    .line 261
    return-void
.end method

.method private setupReader(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/FeederSyncupReader;
    .locals 20
    .param p1, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    .line 277
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 278
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v11

    .line 283
    .local v11, "readBufferSize":I
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->getLastUsedLsn()J

    move-result-wide v12

    .line 285
    .local v12, "lastUsedLsn":J
    iget-object v2, v0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v14

    .line 286
    .local v14, "firstVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v2, v0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v2, v14}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEFileNumber(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v9

    .line 287
    .local v9, "firstFile":J
    const/4 v2, 0x0

    invoke-static {v9, v10, v2}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v15

    .line 288
    .local v15, "finishLsn":J
    new-instance v17, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;

    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-object/from16 v2, v17

    move-object v3, v1

    move-wide v5, v12

    move v7, v11

    move-object/from16 v8, p1

    move-wide/from16 v18, v9

    .end local v9    # "firstFile":J
    .local v18, "firstFile":J
    move-wide v9, v15

    invoke-direct/range {v2 .. v10}, Lcom/sleepycat/je/rep/stream/FeederSyncupReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JILcom/sleepycat/je/utilint/VLSN;J)V

    return-object v17
.end method


# virtual methods
.method public execute()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 111
    move-object/from16 v1, p0

    const-string v2, " syncup ended. Elapsed time: %,dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 112
    .local v3, "startTime":J
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    .line 113
    .local v5, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Feeder-replica "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 115
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " syncup started. Feeder range: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 117
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-static {v0, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 124
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v6, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 125
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->syncupStarted(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    move-result-object v6

    .line 128
    .local v6, "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    const/4 v9, 0x1

    :try_start_0
    sget-object v0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->afterSyncupStartedHook:Lcom/sleepycat/je/utilint/TestHook;

    iget-object v10, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0, v10}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 141
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    .line 142
    .local v0, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    iget-object v10, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v11, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 143
    invoke-virtual {v10, v11}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v10

    check-cast v10, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;

    .line 144
    .local v10, "firstRequest":Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;
    invoke-direct {v1, v0, v10, v9}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->makeResponseToEntryRequest(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;Z)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v11

    .line 148
    .local v11, "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v12, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v13, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v12, v11, v13}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 164
    :goto_0
    iget-object v12, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v13, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v12, v13}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v12

    .line 165
    .local v12, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v13, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "Replica "

    if-eqz v13, :cond_0

    .line 166
    :try_start_1
    iget-object v13, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 168
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, " message op: "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 169
    invoke-virtual {v12}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    invoke-static {v13, v5, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 171
    :cond_0
    instance-of v8, v12, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;

    if-eqz v8, :cond_7

    .line 172
    move-object v8, v12

    check-cast v8, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;

    .line 173
    .local v8, "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v13

    .line 176
    .local v13, "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;

    move-result-object v15

    .line 177
    .local v15, "filter":Lcom/sleepycat/je/rep/stream/FeederFilter;
    if-eqz v15, :cond_1

    .line 178
    iget-object v9, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    invoke-interface {v15, v9}, Lcom/sleepycat/je/rep/stream/FeederFilter;->setLogger(Ljava/util/logging/Logger;)V

    .line 180
    :cond_1
    iget-object v9, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v9, v15}, Lcom/sleepycat/je/rep/impl/node/Feeder;->setFeederFilter(Lcom/sleepycat/je/rep/stream/FeederFilter;)V

    .line 186
    iget-object v9, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/Feeder;->needSecurityChecks()Z

    move-result v9

    if-nez v9, :cond_2

    .line 187
    goto :goto_2

    .line 190
    :cond_2
    iget-object v9, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getAuthenticator()Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;

    move-result-object v9

    .line 192
    .local v9, "auth":Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    if-eqz v9, :cond_6

    .line 194
    if-eqz v15, :cond_3

    .line 195
    move-object/from16 v16, v8

    .end local v8    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    .local v16, "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    invoke-interface {v15}, Lcom/sleepycat/je/rep/stream/FeederFilter;->getTableIds()[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->setTableIds([Ljava/lang/String;)V

    goto :goto_1

    .line 198
    .end local v16    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    .restart local v8    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    :cond_3
    move-object/from16 v16, v8

    .end local v8    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    .restart local v16    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    const/4 v8, 0x0

    invoke-interface {v9, v8}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->setTableIds([Ljava/lang/String;)V

    .line 201
    :goto_1
    invoke-interface {v9}, Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;->checkAccess()Z

    move-result v8

    if-nez v8, :cond_4

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v14, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 203
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v14

    .line 204
    invoke-virtual {v14}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, " fails security check in start stream syncup"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "err":Ljava/lang/String;
    iget-object v14, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    invoke-static {v14, v5, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 210
    iget-object v14, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v14, v8}, Lcom/sleepycat/je/rep/impl/node/Feeder;->makeSecurityCheckResponse(Ljava/lang/String;)V

    .line 233
    .end local v8    # "err":Ljava/lang/String;
    .end local v9    # "auth":Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    .end local v12    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v15    # "filter":Lcom/sleepycat/je/rep/stream/FeederFilter;
    .end local v16    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    :cond_4
    :goto_2
    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v12, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 235
    invoke-virtual {v12}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, " start stream at VLSN: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 233
    invoke-static {v8, v5, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 238
    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v8, v13}, Lcom/sleepycat/je/rep/impl/node/Feeder;->initMasterFeederSource(Lcom/sleepycat/je/utilint/VLSN;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    .end local v0    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v10    # "firstRequest":Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;
    .end local v11    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v13    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0, v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->syncupEnded(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 242
    sget-object v0, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->afterSyncupEndedHook:Lcom/sleepycat/je/utilint/TestHook;

    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0, v8}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    iget-object v0, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 246
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 245
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v0, v5, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 250
    nop

    .line 251
    return-void

    .line 242
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    .restart local v0    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .local v8, "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    .restart local v9    # "auth":Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    .restart local v10    # "firstRequest":Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;
    .restart local v11    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v12    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v13    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v15    # "filter":Lcom/sleepycat/je/rep/stream/FeederFilter;
    :cond_6
    move-object/from16 v16, v8

    .end local v8    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    .restart local v16    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    :try_start_2
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "startTime":J
    .end local v5    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v6    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    throw v8

    .line 213
    .end local v9    # "auth":Lcom/sleepycat/je/rep/subscription/StreamAuthenticator;
    .end local v13    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v15    # "filter":Lcom/sleepycat/je/rep/stream/FeederFilter;
    .end local v16    # "startMessage":Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
    .restart local v3    # "startTime":J
    .restart local v5    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local v6    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :cond_7
    instance-of v8, v12, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;

    if-eqz v8, :cond_8

    .line 214
    move-object v8, v12

    check-cast v8, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;

    .line 215
    const/4 v9, 0x0

    invoke-direct {v1, v0, v8, v9}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->makeResponseToEntryRequest(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;Z)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v8

    .line 216
    .end local v11    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .local v8, "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v9, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v11, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v9, v8, v11}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    move-object v11, v8

    goto :goto_3

    .line 217
    .end local v8    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v11    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_8
    instance-of v8, v12, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;

    if-nez v8, :cond_a

    .line 220
    instance-of v8, v12, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;

    if-eqz v8, :cond_9

    .line 221
    move-object v8, v12

    check-cast v8, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;

    .line 222
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/stream/Protocol$DBIdRequest;->getDbName()Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "dbName":Ljava/lang/String;
    iget-object v9, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-direct {v1, v9, v8}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->makeResponseToDBIdRequest(Lcom/sleepycat/je/rep/impl/node/RepNode;Ljava/lang/String;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v9

    .line 224
    .end local v11    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .local v9, "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v11, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v13, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v11, v9, v13}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 225
    .end local v8    # "dbName":Ljava/lang/String;
    move-object v11, v9

    .line 231
    .end local v9    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v12    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v11    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 226
    .restart local v12    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected StartStream or EntryRequest but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 227
    invoke-static {v5, v8}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v8

    .end local v3    # "startTime":J
    .end local v5    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v6    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    throw v8

    .line 218
    .restart local v3    # "startTime":J
    .restart local v5    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local v6    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :cond_a
    move-object v8, v12

    check-cast v8, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;

    .line 219
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    .line 218
    invoke-direct {v1, v0, v8}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->answerRestore(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;

    move-result-object v8

    .end local v3    # "startTime":J
    .end local v5    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v6    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    throw v8

    .line 241
    .end local v0    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v10    # "firstRequest":Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;
    .end local v11    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v12    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v3    # "startTime":J
    .restart local v5    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local v6    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 128
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local v3    # "startTime":J
    .end local v5    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v6    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .restart local v3    # "startTime":J
    .restart local v5    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .restart local v6    # "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    :goto_4
    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v8, v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->syncupEnded(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 242
    sget-object v8, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->afterSyncupEndedHook:Lcom/sleepycat/je/utilint/TestHook;

    iget-object v9, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v8, v9}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_c
    iget-object v8, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->logger:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v1, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->feeder:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 246
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v7, v10

    .line 245
    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {v8, v5, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    throw v0
.end method
