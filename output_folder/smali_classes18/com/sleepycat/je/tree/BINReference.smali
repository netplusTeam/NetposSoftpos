.class public Lcom/sleepycat/je/tree/BINReference;
.super Ljava/lang/Object;
.source "BINReference.java"


# instance fields
.field private final databaseId:Lcom/sleepycat/je/dbi/DatabaseId;

.field private final idKey:[B

.field private final nodeId:J


# direct methods
.method constructor <init>(JLcom/sleepycat/je/dbi/DatabaseId;[B)V
    .locals 0
    .param p1, "nodeId"    # J
    .param p3, "databaseId"    # Lcom/sleepycat/je/dbi/DatabaseId;
    .param p4, "idKey"    # [B

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/sleepycat/je/tree/BINReference;->nodeId:J

    .line 31
    iput-object p3, p0, Lcom/sleepycat/je/tree/BINReference;->databaseId:Lcom/sleepycat/je/dbi/DatabaseId;

    .line 32
    iput-object p4, p0, Lcom/sleepycat/je/tree/BINReference;->idKey:[B

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 53
    return v0

    .line 56
    :cond_0
    instance-of v1, p1, Lcom/sleepycat/je/tree/BINReference;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 57
    return v2

    .line 60
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/tree/BINReference;

    iget-wide v3, v1, Lcom/sleepycat/je/tree/BINReference;->nodeId:J

    iget-wide v5, p0, Lcom/sleepycat/je/tree/BINReference;->nodeId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDatabaseId()Lcom/sleepycat/je/dbi/DatabaseId;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sleepycat/je/tree/BINReference;->databaseId:Lcom/sleepycat/je/dbi/DatabaseId;

    return-object v0
.end method

.method public getKey()[B
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sleepycat/je/tree/BINReference;->idKey:[B

    return-object v0
.end method

.method public getNodeId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/sleepycat/je/tree/BINReference;->nodeId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/sleepycat/je/tree/BINReference;->nodeId:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "idKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/BINReference;->idKey:[B

    invoke-static {v1}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nodeId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/tree/BINReference;->nodeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/tree/BINReference;->databaseId:Lcom/sleepycat/je/dbi/DatabaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
