.class public Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;
.super Ljava/lang/Object;
.source "PointConsistencyPolicy.java"

# interfaces
.implements Lcom/sleepycat/je/ReplicaConsistencyPolicy;


# static fields
.field public static final NAME:Ljava/lang/String; = "PointConsistencyPolicy"


# instance fields
.field private final targetVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 3
    .param p1, "targetVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x7fffffff

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;-><init>(Lcom/sleepycat/je/utilint/VLSN;JLjava/util/concurrent/TimeUnit;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/utilint/VLSN;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "targetVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "timeout"    # J
    .param p4, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->targetVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 58
    invoke-static {p2, p3, p4}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->timeout:I

    .line 59
    return-void
.end method


# virtual methods
.method public ensureConsistency(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 5
    .param p1, "replicatorImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 85
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 86
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v1

    .line 87
    .local v1, "replica":Lcom/sleepycat/je/rep/impl/node/Replica;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica;->getConsistencyTracker()Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->targetVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->awaitVLSN(JLcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .line 89
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 108
    return v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 111
    return v1

    .line 113
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 114
    return v1

    .line 116
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;

    .line 117
    .local v2, "other":Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->targetVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-nez v3, :cond_3

    .line 118
    iget-object v3, v2, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->targetVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-eqz v3, :cond_4

    .line 119
    return v1

    .line 121
    :cond_3
    iget-object v4, v2, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->targetVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 122
    return v1

    .line 124
    :cond_4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "PointConsistencyPolicy"

    return-object v0
.end method

.method public getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 93
    iget v0, p0, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->timeout:I

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/PropUtil;->millisToDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 98
    const/16 v0, 0x1f

    .line 99
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 100
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->targetVLSN:Lcom/sleepycat/je/utilint/VLSN;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/VLSN;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 102
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetVLSN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/PointConsistencyPolicy;->targetVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
