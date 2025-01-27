.class public Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
.super Ljava/lang/Object;
.source "CleanerBarrierState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final barrierTime:J

.field private final lastLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 0
    .param p1, "lastLocalCBVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "barrierTime"    # J

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->lastLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 48
    iput-wide p2, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->barrierTime:J

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 68
    return v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 71
    return v1

    .line 73
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;

    .line 74
    .local v2, "other":Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->lastLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-nez v3, :cond_3

    .line 75
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->lastLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-eqz v3, :cond_4

    .line 76
    return v1

    .line 78
    :cond_3
    iget-object v4, v2, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->lastLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 79
    return v1

    .line 81
    :cond_4
    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->barrierTime:J

    iget-wide v5, v2, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->barrierTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 82
    return v1

    .line 84
    :cond_5
    return v0
.end method

.method public getBarrierTime()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->barrierTime:J

    return-wide v0
.end method

.method public getLastCBVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->lastLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 53
    const/16 v0, 0x1f

    .line 54
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 55
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->lastLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 57
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->barrierTime:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v1, v3

    .line 59
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->lastLocalCBVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 98
    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/cbvlsn/CleanerBarrierState;->barrierTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 97
    const-string v1, "LocalCBVLSN:%,d at:%tc"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
