.class public Lcom/sleepycat/je/Durability;
.super Ljava/lang/Object;
.source "Durability.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/Durability$ReplicaAckPolicy;,
        Lcom/sleepycat/je/Durability$SyncPolicy;
    }
.end annotation


# static fields
.field public static final COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

.field public static final COMMIT_SYNC:Lcom/sleepycat/je/Durability;

.field public static final COMMIT_WRITE_NO_SYNC:Lcom/sleepycat/je/Durability;

.field public static final READ_ONLY_TXN:Lcom/sleepycat/je/Durability;


# instance fields
.field private final localSync:Lcom/sleepycat/je/Durability$SyncPolicy;

.field private final replicaAck:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

.field private final replicaSync:Lcom/sleepycat/je/Durability$SyncPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    sput-object v0, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    .line 49
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    sput-object v0, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    .line 62
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->WRITE_NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    sput-object v0, Lcom/sleepycat/je/Durability;->COMMIT_WRITE_NO_SYNC:Lcom/sleepycat/je/Durability;

    .line 81
    new-instance v0, Lcom/sleepycat/je/Durability;

    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->NONE:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    sput-object v0, Lcom/sleepycat/je/Durability;->READ_ONLY_TXN:Lcom/sleepycat/je/Durability;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V
    .locals 0
    .param p1, "localSync"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .param p2, "replicaSync"    # Lcom/sleepycat/je/Durability$SyncPolicy;
    .param p3, "replicaAck"    # Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/sleepycat/je/Durability;->localSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 232
    iput-object p2, p0, Lcom/sleepycat/je/Durability;->replicaSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 233
    iput-object p3, p0, Lcom/sleepycat/je/Durability;->replicaAck:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 234
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sleepycat/je/Durability;
    .locals 5
    .param p0, "durabilityString"    # Ljava/lang/String;

    .line 268
    if-nez p0, :cond_0

    .line 269
    const/4 v0, 0x0

    return-object v0

    .line 271
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    .line 272
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .local v0, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    nop

    .line 279
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/Durability$SyncPolicy;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v1

    .line 280
    .local v1, "localSync":Lcom/sleepycat/je/Durability$SyncPolicy;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/Durability$SyncPolicy;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 283
    .local v2, "replicaSync":Lcom/sleepycat/je/Durability$SyncPolicy;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->valueOf(Ljava/lang/String;)Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    move-result-object v3

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->SIMPLE_MAJORITY:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 286
    .local v3, "replicaAck":Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    :goto_1
    new-instance v4, Lcom/sleepycat/je/Durability;

    invoke-direct {v4, v1, v2, v3}, Lcom/sleepycat/je/Durability;-><init>(Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/Durability$ReplicaAckPolicy;)V

    return-object v4

    .line 275
    .end local v1    # "localSync":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local v2    # "replicaSync":Lcom/sleepycat/je/Durability$SyncPolicy;
    .end local v3    # "replicaAck":Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad string format: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 341
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 342
    return v0

    .line 344
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 345
    return v1

    .line 347
    :cond_1
    instance-of v2, p1, Lcom/sleepycat/je/Durability;

    if-nez v2, :cond_2

    .line 348
    return v1

    .line 350
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/sleepycat/je/Durability;

    .line 351
    .local v2, "other":Lcom/sleepycat/je/Durability;
    iget-object v3, p0, Lcom/sleepycat/je/Durability;->localSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-nez v3, :cond_3

    .line 352
    iget-object v3, v2, Lcom/sleepycat/je/Durability;->localSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-eqz v3, :cond_4

    .line 353
    return v1

    .line 355
    :cond_3
    iget-object v4, v2, Lcom/sleepycat/je/Durability;->localSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/Durability$SyncPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 356
    return v1

    .line 358
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/Durability;->replicaAck:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    if-nez v3, :cond_5

    .line 359
    iget-object v3, v2, Lcom/sleepycat/je/Durability;->replicaAck:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    if-eqz v3, :cond_6

    .line 360
    return v1

    .line 362
    :cond_5
    iget-object v4, v2, Lcom/sleepycat/je/Durability;->replicaAck:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 363
    return v1

    .line 365
    :cond_6
    iget-object v3, p0, Lcom/sleepycat/je/Durability;->replicaSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-nez v3, :cond_7

    .line 366
    iget-object v3, v2, Lcom/sleepycat/je/Durability;->replicaSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-eqz v3, :cond_8

    .line 367
    return v1

    .line 369
    :cond_7
    iget-object v4, v2, Lcom/sleepycat/je/Durability;->replicaSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/Durability$SyncPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 370
    return v1

    .line 372
    :cond_8
    return v0
.end method

.method public getLocalSync()Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/sleepycat/je/Durability;->localSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    return-object v0
.end method

.method public getReplicaAck()Lcom/sleepycat/je/Durability$ReplicaAckPolicy;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/sleepycat/je/Durability;->replicaAck:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    return-object v0
.end method

.method public getReplicaSync()Lcom/sleepycat/je/Durability$SyncPolicy;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/sleepycat/je/Durability;->replicaSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 328
    const/16 v0, 0x1f

    .line 329
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 330
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/Durability;->localSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v3}, Lcom/sleepycat/je/Durability$SyncPolicy;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 332
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/Durability;->replicaAck:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    .line 333
    :cond_1
    invoke-virtual {v3}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    .line 334
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sleepycat/je/Durability;->replicaSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    if-nez v3, :cond_2

    goto :goto_2

    .line 335
    :cond_2
    invoke-virtual {v3}, Lcom/sleepycat/je/Durability$SyncPolicy;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    .line 336
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sleepycat/je/Durability;->localSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    invoke-virtual {v1}, Lcom/sleepycat/je/Durability$SyncPolicy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sleepycat/je/Durability;->replicaSync:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 298
    invoke-virtual {v2}, Lcom/sleepycat/je/Durability$SyncPolicy;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/Durability;->replicaAck:Lcom/sleepycat/je/Durability$ReplicaAckPolicy;

    .line 299
    invoke-virtual {v1}, Lcom/sleepycat/je/Durability$ReplicaAckPolicy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    return-object v0
.end method
