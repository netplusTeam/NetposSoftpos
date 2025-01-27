.class public Lcom/sleepycat/je/log/ReplicationContext;
.super Ljava/lang/Object;
.source "ReplicationContext.java"


# static fields
.field public static final MASTER:Lcom/sleepycat/je/log/ReplicationContext;

.field public static final NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;


# instance fields
.field private final clientVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final inReplicationStream:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/sleepycat/je/log/ReplicationContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/ReplicationContext;-><init>(Z)V

    sput-object v0, Lcom/sleepycat/je/log/ReplicationContext;->MASTER:Lcom/sleepycat/je/log/ReplicationContext;

    .line 63
    new-instance v0, Lcom/sleepycat/je/log/ReplicationContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/ReplicationContext;-><init>(Z)V

    sput-object v0, Lcom/sleepycat/je/log/ReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/ReplicationContext;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 1
    .param p1, "clientVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream:Z

    .line 89
    iput-object p1, p0, Lcom/sleepycat/je/log/ReplicationContext;->clientVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Z)V
    .locals 0
    .param p1, "clientVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "inReplicationStream"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/sleepycat/je/log/ReplicationContext;->clientVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 97
    iput-boolean p2, p0, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream:Z

    .line 98
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "inReplicationStream"    # Z

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/ReplicationContext;->clientVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 81
    return-void
.end method


# virtual methods
.method public getClientVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sleepycat/je/log/ReplicationContext;->clientVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getDbOperationType()Lcom/sleepycat/je/log/entry/DbOperationType;
    .locals 1

    .line 128
    sget-object v0, Lcom/sleepycat/je/log/entry/DbOperationType;->NONE:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v0
.end method

.method public inReplicationStream()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream:Z

    return v0
.end method

.method public mustGenerateVLSN()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/log/ReplicationContext;->clientVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "inRepStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/je/log/ReplicationContext;->inReplicationStream:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, " clientVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/ReplicationContext;->clientVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
