.class public Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;
.super Ljava/lang/Object;
.source "LocalCBVLSNUpdater.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final HEARTBEAT_SOURCE:Ljava/lang/String; = "heartbeat"

.field private static final MASTER_SOURCE:Ljava/lang/String; = "master"

.field private static suppressGroupDBUpdates:Z


# instance fields
.field private final defunct:Z

.field private final logger:Ljava/util/logging/Logger;

.field private final nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

.field private nodeCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

.field private final trackedNodeType:Lcom/sleepycat/je/rep/NodeType;

.field private updatePending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    nop

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->suppressGroupDBUpdates:Z

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Lcom/sleepycat/je/rep/impl/node/RepNode;)V
    .locals 1
    .param p1, "nameIdPair"    # Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .param p2, "trackedNodeType"    # Lcom/sleepycat/je/rep/NodeType;
    .param p3, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isGlobalCBVLSNDefunct()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->defunct:Z

    .line 117
    if-nez v0, :cond_0

    .line 118
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 119
    iput-object p2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->trackedNodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 120
    iput-object p3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getLogger(Ljava/lang/Class;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->logger:Ljava/util/logging/Logger;

    goto :goto_0

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 125
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->trackedNodeType:Lcom/sleepycat/je/rep/NodeType;

    .line 126
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 127
    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->logger:Ljava/util/logging/Logger;

    .line 129
    :goto_0
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nodeCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->updatePending:Z

    .line 131
    return-void
.end method

.method private doUpdate(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V
    .locals 1
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "source"    # Ljava/lang/String;

    .line 199
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->defunct:Z

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->set(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sleepycat/je/rep/impl/RepImpl;->updateCBVLSN(Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;)V

    .line 202
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private set(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V
    .locals 4
    .param p1, "syncableVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "source"    # Ljava/lang/String;

    .line 140
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->defunct:Z

    if-nez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isMaster()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nodeCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update local CBVLSN for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from nodeCBVLSN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nodeCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nodeCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-gez v0, :cond_0

    .line 163
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nodeCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->updatePending:Z

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    .line 158
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nodeCBVLSN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nodeCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempted update local CBVLSN for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "LocalCBVLSNUpdater.set() can only be called by the master"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 140
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static setSuppressGroupDBUpdates(Z)V
    .locals 0
    .param p0, "suppressGroupDBUpdates"    # Z

    .line 287
    sput-boolean p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->suppressGroupDBUpdates:Z

    .line 288
    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    .line 212
    const-string v0, " Error: "

    iget-boolean v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->defunct:Z

    if-eqz v1, :cond_0

    .line 213
    return-void

    .line 216
    :cond_0
    iget-boolean v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->updatePending:Z

    if-nez v1, :cond_1

    .line 217
    return-void

    .line 220
    :cond_1
    sget-boolean v1, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->suppressGroupDBUpdates:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 222
    iput-boolean v2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->updatePending:Z

    .line 223
    return-void

    .line 226
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 232
    return-void

    .line 236
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nodeCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 238
    .local v1, "candidate":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->isNull()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 239
    return-void

    .line 242
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getGlobalCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-gez v3, :cond_5

    .line 244
    return-void

    .line 247
    :cond_5
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepGroupDB()Lcom/sleepycat/je/rep/impl/RepGroupDB;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->trackedNodeType:Lcom/sleepycat/je/rep/NodeType;

    invoke-virtual {v3, v4, v1, v5}, Lcom/sleepycat/je/rep/impl/RepGroupDB;->updateLocalCBVLSN(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/NodeType;)Z

    move-result v3

    .line 250
    .local v3, "updated":Z
    if-eqz v3, :cond_6

    .line 251
    iput-boolean v2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->updatePending:Z
    :try_end_0
    .catch Lcom/sleepycat/je/EnvironmentFailureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/LockNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    .end local v1    # "candidate":Lcom/sleepycat/je/utilint/VLSN;
    .end local v3    # "updated":Z
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local cbvlsn update failed for node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 271
    invoke-virtual {v1}, Lcom/sleepycat/je/DatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 272
    invoke-static {v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    goto :goto_1

    .line 260
    .end local v1    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v1

    .line 264
    .local v1, "lnae":Lcom/sleepycat/je/LockNotAvailableException;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getLogger()Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->repNode:Lcom/sleepycat/je/rep/impl/node/RepNode;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " lock not available without waiting. local cbvlsn update skipped for node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->nameIdPair:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    invoke-virtual {v1}, Lcom/sleepycat/je/LockNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v2, v3, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 273
    .end local v1    # "lnae":Lcom/sleepycat/je/LockNotAvailableException;
    :cond_6
    :goto_0
    nop

    .line 274
    :goto_1
    return-void

    .line 253
    :catch_2
    move-exception v0

    .line 259
    .local v0, "e":Lcom/sleepycat/je/EnvironmentFailureException;
    throw v0
.end method

.method public updateForMaster(Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;)V
    .locals 2
    .param p1, "tracker"    # Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;

    .line 192
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->defunct:Z

    if-eqz v0, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNTracker;->getBroadcastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    const-string v1, "master"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->doUpdate(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public updateForReplica(Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;)V
    .locals 2
    .param p1, "heartbeat"    # Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;

    .line 178
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->defunct:Z

    if-eqz v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->getSyncupVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    const-string v1, "heartbeat"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->doUpdate(Lcom/sleepycat/je/utilint/VLSN;Ljava/lang/String;)V

    .line 182
    return-void
.end method
