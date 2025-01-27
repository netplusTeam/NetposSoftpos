.class public Lcom/sleepycat/je/DiskOrderedCursorConfig;
.super Ljava/lang/Object;
.source "DiskOrderedCursorConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/DiskOrderedCursorConfig;


# instance fields
.field private binsOnly:Z

.field private countOnly:Z

.field private debug:Z

.field private internalMemoryLimit:J

.field private keysOnly:Z

.field private lsnBatchSize:J

.field private queueSize:I

.field private serialDBScan:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/sleepycat/je/DiskOrderedCursorConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/DiskOrderedCursorConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->DEFAULT:Lcom/sleepycat/je/DiskOrderedCursorConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->binsOnly:Z

    .line 32
    iput-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->keysOnly:Z

    .line 34
    iput-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->countOnly:Z

    .line 36
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->lsnBatchSize:J

    .line 38
    iput-wide v1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->internalMemoryLimit:J

    .line 40
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->queueSize:I

    .line 42
    iput-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->serialDBScan:Z

    .line 44
    iput-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->debug:Z

    .line 51
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 2

    .line 358
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/DiskOrderedCursorConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
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

    .line 21
    invoke-virtual {p0}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->clone()Lcom/sleepycat/je/DiskOrderedCursorConfig;

    move-result-object v0

    return-object v0
.end method

.method public getBINsOnly()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->binsOnly:Z

    return v0
.end method

.method public getCountOnly()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->countOnly:Z

    return v0
.end method

.method public getDebug()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->debug:Z

    return v0
.end method

.method public getInternalMemoryLimit()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->internalMemoryLimit:J

    return-wide v0
.end method

.method public getKeysOnly()Z
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->keysOnly:Z

    return v0
.end method

.method public getLSNBatchSize()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->lsnBatchSize:J

    return-wide v0
.end method

.method public getMaxSeedMillisecs()J
    .locals 2

    .line 282
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMaxSeedNodes()J
    .locals 2

    .line 305
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getQueueSize()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->queueSize:I

    return v0
.end method

.method public getSerialDBScan()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->serialDBScan:Z

    return v0
.end method

.method public setBINsOnly(Z)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "binsOnly"    # Z

    .line 124
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->setBINsOnlyVoid(Z)V

    .line 125
    return-object p0
.end method

.method public setBINsOnlyVoid(Z)V
    .locals 0
    .param p1, "binsOnly"    # Z

    .line 133
    iput-boolean p1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->binsOnly:Z

    .line 134
    return-void
.end method

.method public setCountOnly(Z)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "val"    # Z

    .line 91
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->setBINsOnlyVoid(Z)V

    .line 92
    return-object p0
.end method

.method public setCountOnlyVoid(Z)V
    .locals 0
    .param p1, "val"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->countOnly:Z

    .line 101
    return-void
.end method

.method public setDebug(Z)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "v"    # Z

    .line 334
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->setDebugVoid(Z)V

    .line 335
    return-object p0
.end method

.method public setDebugVoid(Z)V
    .locals 0
    .param p1, "v"    # Z

    .line 342
    iput-boolean p1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->debug:Z

    .line 343
    return-void
.end method

.method public setInternalMemoryLimit(J)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "internalMemoryLimit"    # J

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->setInternalMemoryLimitVoid(J)V

    .line 203
    return-object p0
.end method

.method public setInternalMemoryLimitVoid(J)V
    .locals 0
    .param p1, "internalMemoryLimit"    # J

    .line 211
    iput-wide p1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->internalMemoryLimit:J

    .line 212
    return-void
.end method

.method public setKeysOnly(Z)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "keysOnly"    # Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->setKeysOnlyVoid(Z)V

    .line 65
    return-object p0
.end method

.method public setKeysOnlyVoid(Z)V
    .locals 0
    .param p1, "keysOnly"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->keysOnly:Z

    .line 74
    return-void
.end method

.method public setLSNBatchSize(J)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "lsnBatchSize"    # J

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->setLSNBatchSizeVoid(J)V

    .line 162
    return-object p0
.end method

.method public setLSNBatchSizeVoid(J)V
    .locals 0
    .param p1, "lsnBatchSize"    # J

    .line 170
    iput-wide p1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->lsnBatchSize:J

    .line 171
    return-void
.end method

.method public setMaxSeedMillisecs(J)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "maxSeedMillisecs"    # J

    .line 267
    return-object p0
.end method

.method public setMaxSeedMillisecsVoid(J)V
    .locals 0
    .param p1, "maxSeedMillisecs"    # J

    .line 275
    return-void
.end method

.method public setMaxSeedNodes(J)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "maxSeedNodes"    # J

    .line 290
    return-object p0
.end method

.method public setMaxSeedNodesVoid(J)V
    .locals 0
    .param p1, "maxSeedNodes"    # J

    .line 298
    return-void
.end method

.method public setQueueSize(I)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "queueSize"    # I

    .line 238
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->setQueueSizeVoid(I)V

    .line 239
    return-object p0
.end method

.method public setQueueSizeVoid(I)V
    .locals 0
    .param p1, "queueSize"    # I

    .line 247
    iput p1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->queueSize:I

    .line 248
    return-void
.end method

.method public setSerialDBScan(Z)Lcom/sleepycat/je/DiskOrderedCursorConfig;
    .locals 0
    .param p1, "v"    # Z

    .line 312
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/DiskOrderedCursorConfig;->setSerialDBScanVoid(Z)V

    .line 313
    return-object p0
.end method

.method public setSerialDBScanVoid(Z)V
    .locals 0
    .param p1, "v"    # Z

    .line 320
    iput-boolean p1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->serialDBScan:Z

    .line 321
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keysOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->keysOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlsnBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->lsnBatchSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ninternalMemoryLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->internalMemoryLimit:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nqueueSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sleepycat/je/DiskOrderedCursorConfig;->queueSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
