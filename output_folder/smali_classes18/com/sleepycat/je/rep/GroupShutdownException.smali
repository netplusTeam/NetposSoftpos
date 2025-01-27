.class public Lcom/sleepycat/je/rep/GroupShutdownException;
.super Lcom/sleepycat/je/EnvironmentFailureException;
.source "GroupShutdownException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final masterNodeName:Ljava/lang/String;

.field private final shutdownTimeMs:J

.field private final shutdownVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/sleepycat/je/rep/GroupShutdownException;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "shutdownException"    # Lcom/sleepycat/je/rep/GroupShutdownException;

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/EnvironmentFailureException;)V

    .line 98
    iget-object v0, p2, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownVLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 99
    iget-wide v0, p2, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownTimeMs:J

    iput-wide v0, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownTimeMs:J

    .line 100
    iget-object v0, p2, Lcom/sleepycat/je/rep/GroupShutdownException;->masterNodeName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->masterNodeName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/lang/String;Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 4
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p3, "masterNodeName"    # Ljava/lang/String;
    .param p4, "shutdownVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p5, "shutdownTimeMs"    # J

    .line 75
    sget-object v0, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->SHUTDOWN_REQUESTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 79
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 77
    const-string v2, "Master:%s, initiated shutdown at %1tc."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-direct {p0, p2, v0, v1}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 81
    iput-object p4, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 82
    iput-object p3, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->masterNodeName:Ljava/lang/String;

    .line 83
    iput-wide p5, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownTimeMs:J

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Explicit shutdown request from Master:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/node/RepNode;J)V
    .locals 5
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p2, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p3, "shutdownTimeMs"    # J

    .line 49
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->SHUTDOWN_REQUESTED:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 51
    const-string v3, "Master:%s, initiated shutdown at %1tc."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-direct {p0, v0, v1, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 57
    nop

    .line 58
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/stream/MasterStatus;->getNodeMasterNameId()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->masterNodeName:Ljava/lang/String;

    .line 59
    iput-wide p3, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownTimeMs:J

    .line 61
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Explicit shutdown request from Master:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getShutdownVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sleepycat/je/rep/GroupShutdownException;->shutdownVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public bridge synthetic wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/GroupShutdownException;->wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/GroupShutdownException;

    move-result-object p1

    return-object p1
.end method

.method public wrapSelf(Ljava/lang/String;)Lcom/sleepycat/je/rep/GroupShutdownException;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/sleepycat/je/rep/GroupShutdownException;

    invoke-direct {v0, p1, p0}, Lcom/sleepycat/je/rep/GroupShutdownException;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/GroupShutdownException;)V

    return-object v0
.end method
