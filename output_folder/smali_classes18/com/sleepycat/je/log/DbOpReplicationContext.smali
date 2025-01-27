.class public Lcom/sleepycat/je/log/DbOpReplicationContext;
.super Lcom/sleepycat/je/log/ReplicationContext;
.source "DbOpReplicationContext.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static NO_REPLICATE:Lcom/sleepycat/je/log/DbOpReplicationContext;


# instance fields
.field private createConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

.field private final opType:Lcom/sleepycat/je/log/entry/DbOperationType;

.field private truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    nop

    .line 35
    new-instance v0, Lcom/sleepycat/je/log/DbOpReplicationContext;

    const/4 v1, 0x0

    sget-object v2, Lcom/sleepycat/je/log/entry/DbOperationType;->NONE:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/log/DbOpReplicationContext;-><init>(ZLcom/sleepycat/je/log/entry/DbOperationType;)V

    sput-object v0, Lcom/sleepycat/je/log/DbOpReplicationContext;->NO_REPLICATE:Lcom/sleepycat/je/log/DbOpReplicationContext;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/log/entry/NameLNLogEntry;)V
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "nameLNEntry"    # Lcom/sleepycat/je/log/entry/NameLNLogEntry;

    .line 64
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/ReplicationContext;-><init>(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->createConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    .line 41
    iput-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 65
    invoke-virtual {p2}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getOperationType()Lcom/sleepycat/je/log/entry/DbOperationType;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->opType:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 67
    invoke-static {v0}, Lcom/sleepycat/je/log/entry/DbOperationType;->isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p2}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getReplicatedCreateConfig()Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->createConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    goto :goto_0

    .line 69
    :cond_0
    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne v0, v1, :cond_1

    .line 70
    invoke-virtual {p2}, Lcom/sleepycat/je/log/entry/NameLNLogEntry;->getTruncateOldDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method public constructor <init>(ZLcom/sleepycat/je/log/entry/DbOperationType;)V
    .locals 1
    .param p1, "inReplicationStream"    # Z
    .param p2, "opType"    # Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 49
    invoke-direct {p0, p1}, Lcom/sleepycat/je/log/ReplicationContext;-><init>(Z)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->createConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    .line 41
    iput-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 50
    iput-object p2, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->opType:Lcom/sleepycat/je/log/entry/DbOperationType;

    .line 51
    return-void
.end method


# virtual methods
.method public getCreateConfig()Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->opType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-static {v0}, Lcom/sleepycat/je/log/entry/DbOperationType;->isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->createConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    return-object v0

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getDbOperationType()Lcom/sleepycat/je/log/entry/DbOperationType;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->opType:Lcom/sleepycat/je/log/entry/DbOperationType;

    return-object v0
.end method

.method public getTruncateOldDbId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->opType:Lcom/sleepycat/je/log/entry/DbOperationType;

    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setCreateConfig(Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;)V
    .locals 1
    .param p1, "createConfig"    # Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->opType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-static {v0}, Lcom/sleepycat/je/log/entry/DbOperationType;->isWriteConfigType(Lcom/sleepycat/je/log/entry/DbOperationType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iput-object p1, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->createConfig:Lcom/sleepycat/je/dbi/ReplicatedDatabaseConfig;

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public setTruncateOldDbId(Lcom/sleepycat/je/dbi/DatabaseId;)V
    .locals 2
    .param p1, "truncateOldDbId"    # Lcom/sleepycat/je/dbi/DatabaseId;

    .line 90
    iget-object v0, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->opType:Lcom/sleepycat/je/log/entry/DbOperationType;

    sget-object v1, Lcom/sleepycat/je/log/entry/DbOperationType;->TRUNCATE:Lcom/sleepycat/je/log/entry/DbOperationType;

    if-ne v0, v1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 92
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/sleepycat/je/log/ReplicationContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, "opType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->opType:Lcom/sleepycat/je/log/entry/DbOperationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    const-string/jumbo v1, "truncDbId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/DbOpReplicationContext;->truncateOldDbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
