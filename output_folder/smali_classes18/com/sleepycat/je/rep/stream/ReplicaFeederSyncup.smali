.class public Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;
.super Ljava/lang/Object;
.source "ReplicaFeederSyncup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static globalSyncupEndHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static rollbackHook:Lcom/sleepycat/je/utilint/TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private backwardsReader:Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

.field private final hardRecoveryNeedsElection:Z

.field private final logger:Ljava/util/logging/Logger;

.field private matchedVLSNTime:Ljava/lang/Long;

.field private matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

.field private final protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private final replay:Lcom/sleepycat/je/rep/impl/node/Replay;

.field private final searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

.field private final syncupEndHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;Lcom/sleepycat/je/rep/utilint/NamedChannel;Lcom/sleepycat/je/rep/stream/Protocol;Z)V
    .locals 2
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "replay"    # Lcom/sleepycat/je/rep/impl/node/Replay;
    .param p3, "namedChannel"    # Lcom/sleepycat/je/rep/utilint/NamedChannel;
    .param p4, "protocol"    # Lcom/sleepycat/je/rep/stream/Protocol;
    .param p5, "hardRecoveryNeedsElection"    # Z

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 78
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchedVLSNTime:Ljava/lang/Long;

    .line 101
    iput-object p2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    .line 103
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 104
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 105
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 106
    iput-object p4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 107
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 108
    iput-boolean p5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->hardRecoveryNeedsElection:Z

    .line 109
    new-instance v0, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 110
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->getReplicaFeederSyncupHook()Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->syncupEndHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;

    .line 111
    return-void
.end method

.method private findMatchpoint(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)V
    .locals 14
    .param p1, "range"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;
        }
    .end annotation

    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "matchCounter":I
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v2, Lcom/sleepycat/je/rep/SyncupProgress;->FIND_MATCHPOINT:Lcom/sleepycat/je/rep/SyncupProgress;

    add-int/lit8 v7, v0, 0x1

    .end local v0    # "matchCounter":I
    .local v7, "matchCounter":I
    int-to-long v3, v0

    const-wide/16 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/sleepycat/je/rep/impl/RepImpl;->setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;JJ)V

    .line 438
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 439
    .local v0, "candidateMatchpoint":Lcom/sleepycat/je/utilint/VLSN;
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 451
    sget-object v1, Lcom/sleepycat/je/utilint/VLSN;->FIRST_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {p0, p1, v1, v2}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->getFeederRecord(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/rep/stream/InputWireRecord;

    .line 453
    return-void

    .line 460
    :cond_0
    nop

    .line 461
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->getFeederRecord(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v1

    .line 468
    .local v1, "feederRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 469
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "first candidate matchpoint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 482
    :cond_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 484
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileManager;->getLastUsedLsn()J

    move-result-wide v3

    .line 483
    invoke-direct {p0, v0, v3, v4}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupBackwardsReader(Lcom/sleepycat/je/utilint/VLSN;J)Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    .line 485
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->getReplicaRecord(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v3

    .line 487
    .local v3, "replicaRecord":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    :goto_0
    invoke-virtual {v3, v1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->match(Lcom/sleepycat/je/rep/stream/InputWireRecord;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 488
    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v9, Lcom/sleepycat/je/rep/SyncupProgress;->FIND_MATCHPOINT:Lcom/sleepycat/je/rep/SyncupProgress;

    add-int/lit8 v4, v7, 0x1

    .end local v7    # "matchCounter":I
    .local v4, "matchCounter":I
    int-to-long v10, v7

    const-wide/16 v12, -0x1

    invoke-virtual/range {v8 .. v13}, Lcom/sleepycat/je/rep/impl/RepImpl;->setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;JJ)V

    .line 495
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->scanMatchpointEntries()Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v3

    .line 497
    if-eqz v3, :cond_3

    .line 517
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 518
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 519
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next candidate matchpoint: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 523
    :cond_2
    invoke-direct {p0, p1, v0, v2}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->getFeederRecord(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v1

    move v7, v4

    goto :goto_0

    .line 504
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Looking at candidate matchpoint vlsn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but this node went past its available contiguous VLSN range, need network restore."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupLogRefresh(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/InsufficientLogException;

    move-result-object v2

    throw v2

    .line 528
    .end local v4    # "matchCounter":I
    .restart local v7    # "matchCounter":I
    :cond_4
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getTimeStamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchedVLSNTime:Ljava/lang/Long;

    .line 529
    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 530
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->getLastLsn()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->setMatchpoint(J)V

    .line 531
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after setting  matchpoint, searchResults="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method private getFeederRecord(Lcom/sleepycat/je/rep/vlsn/VLSNRange;Lcom/sleepycat/je/utilint/VLSN;Z)Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .locals 5
    .param p1, "range"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .param p2, "requestVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "acceptAlternative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryRequest;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 763
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    .line 764
    .local v0, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    if-eqz v1, :cond_0

    .line 765
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    .line 766
    .local v1, "entry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->getWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v2

    return-object v2

    .line 769
    .end local v1    # "entry":Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;
    :cond_0
    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$EntryNotFound;

    if-nez v1, :cond_3

    .line 776
    if-eqz p3, :cond_2

    instance-of v1, v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;

    if-eqz v1, :cond_2

    .line 779
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;

    .line 780
    .local v1, "alt":Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;->getAlternateWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v2

    .line 781
    .local v2, "feederRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    .line 782
    .local v3, "altMatchpoint":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getFirst()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 790
    return-object v2

    .line 788
    :cond_1
    invoke-direct {p0, v3}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupLogRefresh(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/InsufficientLogException;

    move-result-object v4

    throw v4

    .line 793
    .end local v1    # "alt":Lcom/sleepycat/je/rep/stream/BaseProtocol$AlternateMatchpoint;
    .end local v2    # "feederRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v3    # "altMatchpoint":Lcom/sleepycat/je/utilint/VLSN;
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 794
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sent EntryRequest, got unexpected response of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 770
    :cond_3
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 771
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but that node did not have that vlsn."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 770
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 773
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupLogRefresh(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/InsufficientLogException;

    move-result-object v1

    throw v1
.end method

.method private getReplicaRecord(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 6
    .param p1, "candidateMatchpoint"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 561
    const/4 v0, 0x0

    .line 564
    .local v0, "replicaRecord":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    .line 565
    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->scanBackwards(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v1

    move-object v0, v1

    .line 571
    if-eqz v0, :cond_0

    .line 580
    return-object v0

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Searching for candidate matchpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got null record back "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 573
    invoke-static {v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    .end local v0    # "replicaRecord":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .end local p1    # "candidateMatchpoint":Lcom/sleepycat/je/utilint/VLSN;
    throw v1
    :try_end_0
    .catch Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .restart local v0    # "replicaRecord":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .restart local p1    # "candidateMatchpoint":Lcom/sleepycat/je/utilint/VLSN;
    :catch_0
    move-exception v1

    .line 603
    .local v1, "e":Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 604
    .local v2, "gapRepositionVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v2, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 611
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getGTELsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v3

    .line 612
    .local v3, "startScanLsn":J
    invoke-direct {p0, p1, v3, v4}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupBackwardsReader(Lcom/sleepycat/je/utilint/VLSN;J)Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    move-result-object v5

    iput-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    .line 622
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->noteSkippedGap()V

    .line 624
    .end local v1    # "e":Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;
    .end local v2    # "gapRepositionVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v3    # "startScanLsn":J
    goto :goto_0

    .line 605
    .restart local v1    # "e":Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;
    .restart local v2    # "gapRepositionVLSN":Lcom/sleepycat/je/utilint/VLSN;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gap reposition point of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " should always be >= candidate matchpoint VLSN of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    invoke-static {v3}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v3

    throw v3
.end method

.method private runHook()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->syncupEndHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;

    if-eqz v0, :cond_0

    .line 808
    invoke-interface {v0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;->doHook()V

    .line 811
    :cond_0
    sget-object v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->globalSyncupEndHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;

    if-eqz v0, :cond_1

    .line 812
    invoke-interface {v0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;->doHook()V

    .line 814
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private scanMatchpointEntries()Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .locals 6

    .line 632
    const/4 v0, 0x0

    .line 633
    .local v0, "replicaRecord":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    const/4 v1, 0x1

    .line 644
    .local v1, "firstAttempt":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    .line 645
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;->findPrevSyncEntry(Z)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v2
    :try_end_0
    .catch Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 652
    return-object v0

    .line 653
    :catch_0
    move-exception v2

    .line 675
    .local v2, "e":Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    .line 676
    .local v3, "gapRepositionVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 678
    invoke-virtual {v4, v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getGTELsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v4

    .line 677
    invoke-direct {p0, v3, v4, v5}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupBackwardsReader(Lcom/sleepycat/je/utilint/VLSN;J)Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    move-result-object v4

    iput-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->backwardsReader:Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    .line 679
    const/4 v1, 0x0

    .line 680
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->noteSkippedGap()V

    .line 682
    .end local v2    # "e":Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader$SkipGapException;
    .end local v3    # "gapRepositionVLSN":Lcom/sleepycat/je/utilint/VLSN;
    goto :goto_0
.end method

.method public static setGlobalSyncupEndHook(Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 801
    .local p0, "syncupEndHook":Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;, "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook<Ljava/lang/Object;>;"
    sput-object p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->globalSyncupEndHook:Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup$TestHook;

    .line 802
    return-void
.end method

.method public static setRollbackTestHook(Lcom/sleepycat/je/utilint/TestHook;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TestHook<",
            "Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;",
            ">;)V"
        }
    .end annotation

    .line 828
    .local p0, "rollbackHook":Lcom/sleepycat/je/utilint/TestHook;, "Lcom/sleepycat/je/utilint/TestHook<Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;>;"
    sput-object p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->rollbackHook:Lcom/sleepycat/je/utilint/TestHook;

    .line 829
    return-void
.end method

.method private setupBackwardsReader(Lcom/sleepycat/je/utilint/VLSN;J)Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;
    .locals 14
    .param p1, "startScanVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "startScanLsn"    # J

    .line 539
    move-object v0, p0

    iget-object v1, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    .line 540
    .local v1, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v2

    sget-object v3, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_READ_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 541
    invoke-virtual {v2, v3}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v12

    .line 543
    .local v12, "readBufferSize":I
    new-instance v13, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;

    iget-object v2, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 545
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v4

    iget-object v2, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 549
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getProtectedRangeStartFile()J

    move-result-wide v2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v9

    iget-object v11, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    move-object v2, v13

    move-object v3, v1

    move-wide/from16 v5, p2

    move v7, v12

    move-object v8, p1

    invoke-direct/range {v2 .. v11}, Lcom/sleepycat/je/rep/stream/ReplicaSyncupReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/rep/vlsn/VLSNIndex;JILcom/sleepycat/je/utilint/VLSN;JLcom/sleepycat/je/rep/stream/MatchpointSearchResults;)V

    .line 543
    return-object v13
.end method

.method private setupLogRefresh(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/InsufficientLogException;
    .locals 5
    .param p1, "failedMatchpoint"    # Lcom/sleepycat/je/utilint/VLSN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreRequest;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 701
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 702
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;

    .line 704
    .local v0, "response":Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;
    new-instance v1, Lcom/sleepycat/je/rep/InsufficientLogException;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    new-instance v3, Ljava/util/HashSet;

    .line 706
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$RestoreResponse;->getLogProviders()[Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/InsufficientLogException;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Ljava/util/Set;)V

    .line 704
    return-object v1
.end method

.method private verifyRollback(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)V
    .locals 19
    .param p1, "range"    # Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/rep/RollbackException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;,
            Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v3, Lcom/sleepycat/je/rep/SyncupProgress;->CHECK_FOR_ROLLBACK:Lcom/sleepycat/je/rep/SyncupProgress;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;)V

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastTxnEnd()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 245
    .local v2, "lastTxnEnd":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    .line 247
    .local v3, "lastSync":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "verify rollback vlsn range="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " searchResults="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->finest(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 252
    sget-object v4, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->rollbackHook:Lcom/sleepycat/je/utilint/TestHook;

    invoke-static {v4, v0}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 259
    invoke-virtual/range {p1 .. p1}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLastSync()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 261
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shouldn\'t be possible to find a matchpoint of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when the sync VLSN is null. Range="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4

    .line 267
    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const-string v6, "normal rollback, no txn end"

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 268
    return-void

    .line 271
    :cond_2
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v4

    if-nez v4, :cond_a

    .line 283
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v4

    if-nez v4, :cond_9

    .line 300
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v4}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v4

    if-gtz v4, :cond_3

    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 301
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getNumPassedCommits()I

    move-result v4

    if-nez v4, :cond_3

    .line 302
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "txn end vlsn of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<= matchpointVLSN of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", normal rollback"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 305
    return-void

    .line 310
    :cond_3
    iget-boolean v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->hardRecoveryNeedsElection:Z

    if-nez v4, :cond_8

    .line 351
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getPassedCheckpointEnd()Z

    move-result v4

    const-string v5, "matchpointVLSN of "

    if-nez v4, :cond_7

    .line 363
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getSkippedGap()Z

    move-result v4

    if-nez v4, :cond_6

    .line 376
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    .line 377
    .local v4, "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    invoke-virtual {v4}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v5

    .line 378
    .local v5, "configMgr":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v6, Lcom/sleepycat/je/rep/impl/RepParams;->TXN_ROLLBACK_LIMIT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 379
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v6

    .line 380
    .local v6, "rollbackTxnLimit":I
    sget-object v7, Lcom/sleepycat/je/rep/impl/RepParams;->TXN_ROLLBACK_DISABLED:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 381
    invoke-virtual {v5, v7}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v13

    .line 383
    .local v13, "rollbackDisabled":Z
    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 384
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getNumPassedDurableCommits()I

    move-result v14

    .line 385
    .local v14, "numPassedDurableCommits":I
    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 386
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getNumPassedCommits()I

    move-result v15

    .line 387
    .local v15, "numPassedCommits":I
    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getDTVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v16

    .line 388
    .local v16, "dtvlsn":J
    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v8, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 394
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 395
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    .line 396
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    .line 397
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 389
    const-string v10, "Rollback info. Number of passed commits:%,d. (durable commits:%,d). Durable commit VLSN:%,d Rollback transaction limit:%,d"

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 388
    invoke-static {v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 399
    if-gt v14, v6, :cond_5

    if-eqz v13, :cond_4

    goto :goto_1

    .line 417
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupHardRecovery()Lcom/sleepycat/je/rep/RollbackException;

    move-result-object v7

    throw v7

    .line 401
    :cond_5
    :goto_1
    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v8, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Limited list of transactions that would  be truncated for hard recovery:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 404
    invoke-virtual {v10}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dumpPassedTxns()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 401
    invoke-static {v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 406
    new-instance v18, Lcom/sleepycat/je/rep/RollbackProhibitedException;

    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v8

    iget-object v11, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v12, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    move-object/from16 v7, v18

    move v9, v6

    move v10, v13

    invoke-direct/range {v7 .. v12}, Lcom/sleepycat/je/rep/RollbackProhibitedException;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;IZLcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;)V

    throw v18

    .line 364
    .end local v4    # "envImpl":Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .end local v5    # "configMgr":Lcom/sleepycat/je/dbi/DbConfigManager;
    .end local v6    # "rollbackTxnLimit":I
    .end local v13    # "rollbackDisabled":Z
    .end local v14    # "numPassedDurableCommits":I
    .end local v15    # "numPassedCommits":I
    .end local v16    # "dtvlsn":J
    :cond_6
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v6, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " was found in a replica log with gaps. Since we can\'t be sure if it precedes a checkpoint end, do network restore."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 368
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v0, v4}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupLogRefresh(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/InsufficientLogException;

    move-result-object v4

    throw v4

    .line 352
    :cond_7
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v6, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " precedes a checkpoint end, needs network restore."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v6, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 355
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v0, v4}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupLogRefresh(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/InsufficientLogException;

    move-result-object v4

    throw v4

    .line 311
    :cond_8
    new-instance v4, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;

    iget-object v5, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 312
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    iget-object v6, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v4, v5, v2, v6}, Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;)V

    throw v4

    .line 290
    :cond_9
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This node had a txn end at vlsn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "but no matchpoint found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 293
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v0, v4}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->setupLogRefresh(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/InsufficientLogException;

    move-result-object v4

    throw v4

    .line 272
    :cond_a
    iget-object v4, v0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 273
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Shouldn\'t be possible to have a null sync VLSN when the  lastTxnVLSN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not null. Range="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public execute(Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;)V
    .locals 14
    .param p1, "cbvlsnTracker"    # Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/InsufficientLogException;,
            Lcom/sleepycat/je/rep/impl/node/Replica$HardRecoveryElectionException;
        }
    .end annotation

    .line 134
    const-string v0, " syncup ended. Elapsed time: %,dms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 135
    .local v1, "startTime":J
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "feederName":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Replica-feeder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " syncup started. Replica range: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 139
    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 147
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/NamedChannel;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->syncupStarted(Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;

    move-result-object v4

    .line 157
    .local v4, "protectedFileSet":Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v8

    .line 158
    .local v8, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    invoke-direct {p0, v8}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->findMatchpoint(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)V

    .line 164
    invoke-direct {p0, v8}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->verifyRollback(Lcom/sleepycat/je/rep/vlsn/VLSNRange;)V

    .line 166
    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->replay:Lcom/sleepycat/je/rep/impl/node/Replay;

    iget-object v10, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v11, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v11}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getMatchpointLSN()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/sleepycat/je/rep/impl/node/Replay;->rollback(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 169
    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v9}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v9

    .line 170
    .local v9, "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v10, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    iget-object v11, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 171
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getMatchpointLSN()J

    move-result-wide v11

    .line 170
    invoke-virtual {v10, v9, v11, v12}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->truncateFromTail(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 173
    iget-object v10, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    new-instance v11, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 174
    invoke-virtual {v12}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;

    move-result-object v12

    invoke-direct {v11, v10, v9, v12}, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/FeederFilter;)V

    iget-object v12, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->namedChannel:Lcom/sleepycat/je/rep/utilint/NamedChannel;

    .line 173
    invoke-virtual {v10, v11, v12}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 176
    iget-object v10, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v11, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " start stream at VLSN: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 188
    iget-object v10, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v10}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->registerMatchpoint(Lcom/sleepycat/je/utilint/VLSN;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .end local v8    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    .end local v9    # "startVLSN":Lcom/sleepycat/je/utilint/VLSN;
    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->runHook()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 194
    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v8, v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->syncupEnded(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 196
    iget-object v8, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    .line 199
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v8, v9, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v5, Lcom/sleepycat/je/rep/SyncupProgress;->END:Lcom/sleepycat/je/rep/SyncupProgress;

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;)V

    .line 204
    nop

    .line 205
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catchall_0
    move-exception v8

    invoke-direct {p0}, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->runHook()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_1
    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v9, v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->syncupEnded(Lcom/sleepycat/je/cleaner/FileProtector$ProtectedFileSet;)V

    .line 196
    iget-object v9, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v10, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v6, [Ljava/lang/Object;

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    .line 199
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v9, v10, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    sget-object v5, Lcom/sleepycat/je/rep/SyncupProgress;->END:Lcom/sleepycat/je/rep/SyncupProgress;

    invoke-virtual {v0, v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->setSyncupProgress(Lcom/sleepycat/je/rep/SyncupProgress;)V

    throw v8
.end method

.method public getMatchedVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getMatchedVLSNTime()J
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchedVLSNTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setupHardRecovery()Lcom/sleepycat/je/rep/RollbackException;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 721
    new-instance v0, Lcom/sleepycat/je/rep/RollbackException;

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->matchpointVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/rep/RollbackException;-><init>(Lcom/sleepycat/je/rep/impl/RepImpl;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;)V

    .line 724
    .local v0, "r":Lcom/sleepycat/je/rep/RollbackException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->logger:Ljava/util/logging/Logger;

    iget-object v2, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Limited list of transactions truncated for hard recovery:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    .line 727
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->dumpPassedTxns()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 724
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 733
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->searchResults:Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MatchpointSearchResults;->getMatchpointLSN()J

    move-result-wide v1

    .line 734
    .local v1, "matchpointLSN":J
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/ReplicaFeederSyncup;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v3

    .line 735
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v4

    .line 736
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v6

    .line 735
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sleepycat/je/log/FileManager;->truncateLog(JJ)V

    .line 738
    return-object v0
.end method
