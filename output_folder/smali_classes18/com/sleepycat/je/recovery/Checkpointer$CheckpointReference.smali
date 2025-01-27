.class public Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
.super Ljava/lang/Object;
.source "Checkpointer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/recovery/Checkpointer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckpointReference"
.end annotation


# instance fields
.field final dbId:Lcom/sleepycat/je/dbi/DatabaseId;

.field final isRoot:Z

.field final lsn:J

.field final nodeId:J

.field final nodeLevel:I

.field final treeKey:[B


# direct methods
.method constructor <init>(Lcom/sleepycat/je/dbi/DatabaseId;JIZ[BJ)V
    .locals 0
    .param p1, "dbId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p2, "nodeId"    # J
    .param p4, "nodeLevel"    # I
    .param p5, "isRoot"    # Z
    .param p6, "treeKey"    # [B
    .param p7, "lsn"    # J

    .line 1623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    iput-object p1, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 1625
    iput-wide p2, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeId:J

    .line 1626
    iput p4, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeLevel:I

    .line 1627
    iput-boolean p5, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->isRoot:Z

    .line 1628
    iput-object p6, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->treeKey:[B

    .line 1629
    iput-wide p7, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->lsn:J

    .line 1630
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1634
    instance-of v0, p1, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1635
    return v1

    .line 1638
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;

    .line 1639
    .local v0, "other":Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;
    iget-wide v2, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeId:J

    iget-wide v4, v0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1644
    iget-wide v0, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeId:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1650
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->dbId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1651
    const-string v1, " nodeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/recovery/Checkpointer$CheckpointReference;->nodeId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
