.class public Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;
.super Ljava/lang/Object;
.source "CommitPointConsistencyPolicy.java"

# interfaces
.implements Lcom/sleepycat/je/ReplicaConsistencyPolicy;


# static fields
.field public static final NAME:Ljava/lang/String; = "CommitPointConsistencyPolicy"


# instance fields
.field private final commitToken:Lcom/sleepycat/je/CommitToken;

.field private final timeout:I


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/CommitToken;JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p1, "commitToken"    # Lcom/sleepycat/je/CommitToken;
    .param p2, "timeout"    # J
    .param p4, "timeoutUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    .line 114
    invoke-static {p2, p3, p4}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->timeout:I

    .line 115
    return-void

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "commitToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ensureConsistency(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 5
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/rep/ReplicaConsistencyException;
        }
    .end annotation

    .line 143
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 144
    .local v0, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    iget-object v1, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    invoke-virtual {v1}, Lcom/sleepycat/je/CommitToken;->getRepenvUUID()Ljava/util/UUID;

    move-result-object v1

    .line 145
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->replica()Lcom/sleepycat/je/rep/impl/node/Replica;

    move-result-object v1

    .line 154
    .local v1, "replica":Lcom/sleepycat/je/rep/impl/node/Replica;
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica;->getConsistencyTracker()Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    .line 155
    invoke-virtual {v3}, Lcom/sleepycat/je/CommitToken;->getVLSN()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p0}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->awaitVLSN(JLcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .line 156
    return-void

    .line 146
    .end local v1    # "replica":Lcom/sleepycat/je/rep/impl/node/Replica;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replication environment mismatch. The UUID associated with the commit token is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    .line 149
    invoke-virtual {v3}, Lcom/sleepycat/je/CommitToken;->getRepenvUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but this replica environment has the UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 151
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 198
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 199
    return v0

    .line 201
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 202
    return v1

    .line 204
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;

    if-nez v2, :cond_2

    .line 205
    return v1

    .line 207
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;

    .line 209
    .local v2, "other":Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;
    iget-object v3, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    if-nez v3, :cond_3

    .line 210
    iget-object v3, v2, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    if-eqz v3, :cond_4

    .line 211
    return v1

    .line 213
    :cond_3
    iget-object v4, v2, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/CommitToken;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 214
    return v1

    .line 216
    :cond_4
    iget v3, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->timeout:I

    iget v4, v2, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->timeout:I

    if-eq v3, v4, :cond_5

    .line 217
    return v1

    .line 219
    :cond_5
    return v0
.end method

.method public getCommitToken()Lcom/sleepycat/je/CommitToken;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    const-string v0, "CommitPointConsistencyPolicy"

    return-object v0
.end method

.method public getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 177
    iget v0, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->timeout:I

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/PropUtil;->millisToDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 185
    const/16 v0, 0x1f

    .line 186
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 187
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/CommitToken;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 189
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->timeout:I

    add-int/2addr v1, v3

    .line 190
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commitToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/CommitPointConsistencyPolicy;->commitToken:Lcom/sleepycat/je/CommitToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
