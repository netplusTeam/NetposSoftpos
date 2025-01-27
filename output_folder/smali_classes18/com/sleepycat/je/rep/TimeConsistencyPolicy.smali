.class public Lcom/sleepycat/je/rep/TimeConsistencyPolicy;
.super Ljava/lang/Object;
.source "TimeConsistencyPolicy.java"

# interfaces
.implements Lcom/sleepycat/je/ReplicaConsistencyPolicy;


# static fields
.field public static final NAME:Ljava/lang/String; = "TimeConsistencyPolicy"


# instance fields
.field private final permissibleLag:I

.field private final timeout:I


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "permissibleLag"    # J
    .param p3, "permissibleLagUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "timeout"    # J
    .param p6, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->permissibleLag:I

    .line 85
    invoke-static {p4, p5, p6}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->timeout:I

    .line 86
    return-void
.end method


# virtual methods
.method public ensureConsistency(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 3
    .param p1, "replicatorImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;
        }
    .end annotation

    .line 136
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 137
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v1

    .line 138
    .local v1, "replica":Lcom/sleepycat/je/rep/impl/node/Replica;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica;->getConsistencyTracker()Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->lagAwait(Lcom/sleepycat/je/rep/TimeConsistencyPolicy;)V

    .line 139
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 153
    return v0

    .line 155
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 156
    return v1

    .line 158
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 159
    return v1

    .line 161
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;

    .line 163
    .local v2, "other":Lcom/sleepycat/je/rep/TimeConsistencyPolicy;
    iget v3, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->permissibleLag:I

    iget v4, v2, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->permissibleLag:I

    if-eq v3, v4, :cond_3

    .line 164
    return v1

    .line 166
    :cond_3
    iget v3, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->timeout:I

    iget v4, v2, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->timeout:I

    if-eq v3, v4, :cond_4

    .line 167
    return v1

    .line 169
    :cond_4
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "TimeConsistencyPolicy"

    return-object v0
.end method

.method public getPermissibleLag(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 105
    iget v0, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->permissibleLag:I

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/PropUtil;->millisToDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 117
    iget v0, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->timeout:I

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/PropUtil;->millisToDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 143
    const/16 v0, 0x1f

    .line 144
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 145
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->permissibleLag:I

    add-int/2addr v2, v3

    .line 146
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->timeout:I

    add-int/2addr v1, v3

    .line 147
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permissibleLag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/rep/TimeConsistencyPolicy;->permissibleLag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
