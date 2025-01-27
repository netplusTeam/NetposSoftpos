.class public Lcom/sleepycat/je/TransactionConfig;
.super Ljava/lang/Object;
.source "TransactionConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/TransactionConfig;


# instance fields
.field private consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

.field private durability:Lcom/sleepycat/je/Durability;

.field private localWrite:Z

.field private noSync:Z

.field private noWait:Z

.field private readCommitted:Z

.field private readOnly:Z

.field private readUncommitted:Z

.field private serializableIsolation:Z

.field private sync:Z

.field private txnTimeout:I

.field private writeNoSync:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/sleepycat/je/TransactionConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/TransactionConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/TransactionConfig;->DEFAULT:Lcom/sleepycat/je/TransactionConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    .line 33
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    .line 34
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/TransactionConfig;->durability:Lcom/sleepycat/je/Durability;

    .line 37
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->noWait:Z

    .line 38
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->readUncommitted:Z

    .line 39
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->readCommitted:Z

    .line 40
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->serializableIsolation:Z

    .line 41
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->readOnly:Z

    .line 42
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->localWrite:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/TransactionConfig;->txnTimeout:I

    .line 50
    return-void
.end method

.method static checkMixedMode(ZZZLcom/sleepycat/je/Durability;)V
    .locals 2
    .param p0, "sync"    # Z
    .param p1, "noSync"    # Z
    .param p2, "writeNoSync"    # Z
    .param p3, "durability"    # Lcom/sleepycat/je/Durability;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 669
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-nez p3, :cond_6

    .line 675
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_4

    :cond_2
    if-eqz p0, :cond_3

    if-nez p2, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    .line 678
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of TxnSync, TxnNoSync, and TxnWriteNoSync can be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 682
    :cond_5
    :goto_0
    return-void

    .line 670
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mixed use of deprecated and current durability APIs is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/TransactionConfig;
    .locals 2

    .line 647
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/TransactionConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, "willNeverOccur":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/sleepycat/je/TransactionConfig;->clone()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getConsistencyPolicy()Lcom/sleepycat/je/ReplicaConsistencyPolicy;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/sleepycat/je/TransactionConfig;->consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    return-object v0
.end method

.method public getDurability()Lcom/sleepycat/je/Durability;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/sleepycat/je/TransactionConfig;->durability:Lcom/sleepycat/je/Durability;

    return-object v0
.end method

.method public getDurabilityFromSync(Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/Durability;
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 74
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    return-object v0

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_WRITE_NO_SYNC:Lcom/sleepycat/je/Durability;

    return-object v0

    .line 78
    :cond_1
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    if-eqz v0, :cond_2

    .line 79
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    return-object v0

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->isReplicated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_NO_SYNC:Lcom/sleepycat/je/Durability;

    return-object v0

    .line 89
    :cond_3
    sget-object v0, Lcom/sleepycat/je/Durability;->COMMIT_SYNC:Lcom/sleepycat/je/Durability;

    return-object v0
.end method

.method public getLocalWrite()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->localWrite:Z

    return v0
.end method

.method public getNoSync()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    return v0
.end method

.method public getNoWait()Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->noWait:Z

    return v0
.end method

.method public getReadCommitted()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->readCommitted:Z

    return v0
.end method

.method public getReadOnly()Z
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->readOnly:Z

    return v0
.end method

.method public getReadUncommitted()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->readUncommitted:Z

    return v0
.end method

.method public getSerializableIsolation()Z
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->serializableIsolation:Z

    return v0
.end method

.method public getSync()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    return v0
.end method

.method public getTxnTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 635
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sleepycat/je/TransactionConfig;->txnTimeout:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 636
    const-wide/16 v0, -0x1

    return-wide v0

    .line 638
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/TransactionConfig;->txnTimeout:I

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/PropUtil;->millisToDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWriteNoSync()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    return v0
.end method

.method overrideDurability(Lcom/sleepycat/je/Durability;)V
    .locals 1
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    .line 284
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    .line 285
    iput-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    .line 286
    iput-object p1, p0, Lcom/sleepycat/je/TransactionConfig;->durability:Lcom/sleepycat/je/Durability;

    .line 287
    return-void
.end method

.method public setConsistencyPolicy(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 299
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setConsistencyPolicyVoid(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V

    .line 300
    return-object p0
.end method

.method public setConsistencyPolicyVoid(Lcom/sleepycat/je/ReplicaConsistencyPolicy;)V
    .locals 0
    .param p1, "consistencyPolicy"    # Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 310
    iput-object p1, p0, Lcom/sleepycat/je/TransactionConfig;->consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    .line 311
    return-void
.end method

.method public setDurability(Lcom/sleepycat/je/Durability;)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;

    .line 249
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setDurabilityVoid(Lcom/sleepycat/je/Durability;)V

    .line 250
    return-object p0
.end method

.method public setDurabilityVoid(Lcom/sleepycat/je/Durability;)V
    .locals 3
    .param p1, "durability"    # Lcom/sleepycat/je/Durability;

    .line 258
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    iget-boolean v2, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    invoke-static {v0, v1, v2, p1}, Lcom/sleepycat/je/TransactionConfig;->checkMixedMode(ZZZLcom/sleepycat/je/Durability;)V

    .line 259
    iput-object p1, p0, Lcom/sleepycat/je/TransactionConfig;->durability:Lcom/sleepycat/je/Durability;

    .line 260
    return-void
.end method

.method public setLocalWrite(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "localWrite"    # Z

    .line 570
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setLocalWriteVoid(Z)V

    .line 571
    return-object p0
.end method

.method public setLocalWriteVoid(Z)V
    .locals 2
    .param p1, "localWrite"    # Z

    .line 579
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->readOnly:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localWrite and readOnly may not both be true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->localWrite:Z

    .line 584
    return-void
.end method

.method public setNoSync(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "noSync"    # Z

    .line 161
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setNoSyncVoid(Z)V

    .line 162
    return-object p0
.end method

.method public setNoSyncVoid(Z)V
    .locals 3
    .param p1, "noSync"    # Z

    .line 170
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    iget-object v2, p0, Lcom/sleepycat/je/TransactionConfig;->durability:Lcom/sleepycat/je/Durability;

    invoke-static {v0, p1, v1, v2}, Lcom/sleepycat/je/TransactionConfig;->checkMixedMode(ZZZLcom/sleepycat/je/Durability;)V

    .line 171
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    .line 172
    return-void
.end method

.method public setNoWait(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "noWait"    # Z

    .line 335
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setNoWaitVoid(Z)V

    .line 336
    return-object p0
.end method

.method public setNoWaitVoid(Z)V
    .locals 0
    .param p1, "noWait"    # Z

    .line 344
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->noWait:Z

    .line 345
    return-void
.end method

.method public setReadCommitted(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "readCommitted"    # Z

    .line 412
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setReadCommittedVoid(Z)V

    .line 413
    return-object p0
.end method

.method public setReadCommittedVoid(Z)V
    .locals 0
    .param p1, "readCommitted"    # Z

    .line 421
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->readCommitted:Z

    .line 422
    return-void
.end method

.method public setReadOnly(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "readOnly"    # Z

    .line 509
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setReadOnlyVoid(Z)V

    .line 510
    return-object p0
.end method

.method public setReadOnlyVoid(Z)V
    .locals 2
    .param p1, "readOnly"    # Z

    .line 518
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->localWrite:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "localWrite and readOnly may not both be true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->readOnly:Z

    .line 523
    return-void
.end method

.method public setReadUncommitted(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "readUncommitted"    # Z

    .line 372
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setReadUncommittedVoid(Z)V

    .line 373
    return-object p0
.end method

.method public setReadUncommittedVoid(Z)V
    .locals 0
    .param p1, "readUncommitted"    # Z

    .line 381
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->readUncommitted:Z

    .line 382
    return-void
.end method

.method public setSerializableIsolation(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "serializableIsolation"    # Z

    .line 457
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setSerializableIsolationVoid(Z)V

    .line 458
    return-object p0
.end method

.method public setSerializableIsolationVoid(Z)V
    .locals 0
    .param p1, "serializableIsolation"    # Z

    .line 468
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->serializableIsolation:Z

    .line 469
    return-void
.end method

.method public setSync(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "sync"    # Z

    .line 113
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setSyncVoid(Z)V

    .line 114
    return-object p0
.end method

.method public setSyncVoid(Z)V
    .locals 3
    .param p1, "sync"    # Z

    .line 122
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    iget-object v2, p0, Lcom/sleepycat/je/TransactionConfig;->durability:Lcom/sleepycat/je/Durability;

    invoke-static {p1, v0, v1, v2}, Lcom/sleepycat/je/TransactionConfig;->checkMixedMode(ZZZLcom/sleepycat/je/Durability;)V

    .line 123
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    .line 124
    return-void
.end method

.method public setTxnTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "timeOut"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 611
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/TransactionConfig;->setTxnTimeoutVoid(JLjava/util/concurrent/TimeUnit;)V

    .line 612
    return-object p0
.end method

.method public setTxnTimeoutVoid(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeOut"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 620
    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/TransactionConfig;->txnTimeout:I

    .line 621
    return-void
.end method

.method public setWriteNoSync(Z)Lcom/sleepycat/je/TransactionConfig;
    .locals 0
    .param p1, "writeNoSync"    # Z

    .line 210
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/TransactionConfig;->setWriteNoSyncVoid(Z)V

    .line 211
    return-object p0
.end method

.method public setWriteNoSyncVoid(Z)V
    .locals 3
    .param p1, "writeNoSync"    # Z

    .line 219
    iget-boolean v0, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    iget-object v2, p0, Lcom/sleepycat/je/TransactionConfig;->durability:Lcom/sleepycat/je/Durability;

    invoke-static {v0, v1, p1, v2}, Lcom/sleepycat/je/TransactionConfig;->checkMixedMode(ZZZLcom/sleepycat/je/Durability;)V

    .line 220
    iput-boolean p1, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->sync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nnoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->noSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nwriteNoSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->writeNoSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ndurability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/TransactionConfig;->durability:Lcom/sleepycat/je/Durability;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nconsistencyPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/TransactionConfig;->consistencyPolicy:Lcom/sleepycat/je/ReplicaConsistencyPolicy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nnoWait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->noWait:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreadUncommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->readUncommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nreadCommitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->readCommitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSerializableIsolation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/TransactionConfig;->serializableIsolation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
