.class public Lcom/sleepycat/je/VerifyConfig;
.super Ljava/lang/Object;
.source "VerifyConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/sleepycat/je/VerifyConfig;


# instance fields
.field private aggressive:Z

.field private batchDelayMs:I

.field private batchSize:I

.field private printInfo:Z

.field private propagateExceptions:Z

.field private repairReservedFiles:Z

.field private showProgressInterval:I

.field private showProgressStream:Ljava/io/PrintStream;

.field private verifyDataRecords:Z

.field private verifyObsoleteRecords:Z

.field private verifySecondaries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/sleepycat/je/VerifyConfig;

    invoke-direct {v0}, Lcom/sleepycat/je/VerifyConfig;-><init>()V

    sput-object v0, Lcom/sleepycat/je/VerifyConfig;->DEFAULT:Lcom/sleepycat/je/VerifyConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->propagateExceptions:Z

    .line 33
    iput-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->aggressive:Z

    .line 34
    iput-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->printInfo:Z

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/VerifyConfig;->showProgressStream:Ljava/io/PrintStream;

    .line 36
    iput v0, p0, Lcom/sleepycat/je/VerifyConfig;->showProgressInterval:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sleepycat/je/VerifyConfig;->verifySecondaries:Z

    .line 38
    iput-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->verifyDataRecords:Z

    .line 39
    iput-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->verifyObsoleteRecords:Z

    .line 40
    iput-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->repairReservedFiles:Z

    .line 41
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sleepycat/je/VerifyConfig;->batchSize:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, Lcom/sleepycat/je/VerifyConfig;->batchDelayMs:I

    .line 49
    return-void
.end method


# virtual methods
.method public clone()Lcom/sleepycat/je/VerifyConfig;
    .locals 2

    .line 477
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/VerifyConfig;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 478
    :catch_0
    move-exception v0

    .line 479
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
    invoke-virtual {p0}, Lcom/sleepycat/je/VerifyConfig;->clone()Lcom/sleepycat/je/VerifyConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAggressive()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->aggressive:Z

    return v0
.end method

.method public getBatchDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 468
    iget v0, p0, Lcom/sleepycat/je/VerifyConfig;->batchDelayMs:I

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/PropUtil;->millisToDuration(ILjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatchSize()I
    .locals 1

    .line 428
    iget v0, p0, Lcom/sleepycat/je/VerifyConfig;->batchSize:I

    return v0
.end method

.method public getPrintInfo()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->printInfo:Z

    return v0
.end method

.method public getPropagateExceptions()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->propagateExceptions:Z

    return v0
.end method

.method public getRepairReservedFiles()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->repairReservedFiles:Z

    return v0
.end method

.method public getShowProgressInterval()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/sleepycat/je/VerifyConfig;->showProgressInterval:I

    return v0
.end method

.method public getShowProgressStream()Ljava/io/PrintStream;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/sleepycat/je/VerifyConfig;->showProgressStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method public getVerifyDataRecords()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->verifyDataRecords:Z

    return v0
.end method

.method public getVerifyObsoleteRecords()Z
    .locals 1

    .line 394
    iget-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->verifyObsoleteRecords:Z

    return v0
.end method

.method public getVerifySecondaries()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/sleepycat/je/VerifyConfig;->verifySecondaries:Z

    return v0
.end method

.method public setAggressive(Z)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "aggressive"    # Z

    .line 178
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setAggressiveVoid(Z)V

    .line 179
    return-object p0
.end method

.method public setAggressiveVoid(Z)V
    .locals 0
    .param p1, "aggressive"    # Z

    .line 187
    iput-boolean p1, p0, Lcom/sleepycat/je/VerifyConfig;->aggressive:Z

    .line 188
    return-void
.end method

.method public setBatchDelay(JLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 450
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/je/VerifyConfig;->setBatchDelayVoid(JLjava/util/concurrent/TimeUnit;)V

    .line 451
    return-object p0
.end method

.method public setBatchDelayVoid(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "delayDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 459
    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/utilint/PropUtil;->durationToMillis(JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/VerifyConfig;->batchDelayMs:I

    .line 460
    return-void
.end method

.method public setBatchSize(I)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "batchSize"    # I

    .line 412
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setBatchSizeVoid(I)V

    .line 413
    return-object p0
.end method

.method public setBatchSizeVoid(I)V
    .locals 0
    .param p1, "batchSize"    # I

    .line 421
    iput p1, p0, Lcom/sleepycat/je/VerifyConfig;->batchSize:I

    .line 422
    return-void
.end method

.method public setPrintInfo(Z)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "printInfo"    # Z

    .line 226
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setPrintInfoVoid(Z)V

    .line 227
    return-object p0
.end method

.method public setPrintInfoVoid(Z)V
    .locals 0
    .param p1, "printInfo"    # Z

    .line 235
    iput-boolean p1, p0, Lcom/sleepycat/je/VerifyConfig;->printInfo:Z

    .line 236
    return-void
.end method

.method public setPropagateExceptions(Z)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "propagate"    # Z

    .line 125
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setPropagateExceptionsVoid(Z)V

    .line 126
    return-object p0
.end method

.method public setPropagateExceptionsVoid(Z)V
    .locals 0
    .param p1, "propagate"    # Z

    .line 134
    iput-boolean p1, p0, Lcom/sleepycat/je/VerifyConfig;->propagateExceptions:Z

    .line 135
    return-void
.end method

.method public setRepairReservedFiles(Z)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "repair"    # Z

    .line 85
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setRepairReservedFilesVoid(Z)V

    .line 86
    return-object p0
.end method

.method public setRepairReservedFilesVoid(Z)V
    .locals 0
    .param p1, "repair"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/sleepycat/je/VerifyConfig;->repairReservedFiles:Z

    .line 95
    return-void
.end method

.method public setShowProgressInterval(I)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "showProgressInterval"    # I

    .line 289
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setShowProgressIntervalVoid(I)V

    .line 290
    return-object p0
.end method

.method public setShowProgressIntervalVoid(I)V
    .locals 0
    .param p1, "showProgressInterval"    # I

    .line 298
    iput p1, p0, Lcom/sleepycat/je/VerifyConfig;->showProgressInterval:I

    .line 299
    return-void
.end method

.method public setShowProgressStream(Ljava/io/PrintStream;)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "showProgressStream"    # Ljava/io/PrintStream;

    .line 262
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setShowProgressStreamVoid(Ljava/io/PrintStream;)V

    .line 263
    return-object p0
.end method

.method public setShowProgressStreamVoid(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "showProgressStream"    # Ljava/io/PrintStream;

    .line 271
    iput-object p1, p0, Lcom/sleepycat/je/VerifyConfig;->showProgressStream:Ljava/io/PrintStream;

    .line 272
    return-void
.end method

.method public setVerifyDataRecords(Z)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "verifyDataRecords"    # Z

    .line 348
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setVerifyDataRecordsVoid(Z)V

    .line 349
    return-object p0
.end method

.method public setVerifyDataRecordsVoid(Z)V
    .locals 0
    .param p1, "verifyDataRecords"    # Z

    .line 357
    iput-boolean p1, p0, Lcom/sleepycat/je/VerifyConfig;->verifyDataRecords:Z

    .line 358
    return-void
.end method

.method public setVerifyObsoleteRecords(Z)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "verifyObsoleteRecords"    # Z

    .line 379
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setVerifyObsoleteRecordsVoid(Z)V

    .line 380
    return-object p0
.end method

.method public setVerifyObsoleteRecordsVoid(Z)V
    .locals 0
    .param p1, "verifyObsoleteRecords"    # Z

    .line 387
    iput-boolean p1, p0, Lcom/sleepycat/je/VerifyConfig;->verifyObsoleteRecords:Z

    .line 388
    return-void
.end method

.method public setVerifySecondaries(Z)Lcom/sleepycat/je/VerifyConfig;
    .locals 0
    .param p1, "verifySecondaries"    # Z

    .line 318
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/VerifyConfig;->setVerifySecondariesVoid(Z)V

    .line 319
    return-object p0
.end method

.method public setVerifySecondariesVoid(Z)V
    .locals 0
    .param p1, "verifySecondaries"    # Z

    .line 327
    iput-boolean p1, p0, Lcom/sleepycat/je/VerifyConfig;->verifySecondaries:Z

    .line 328
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 492
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "propagateExceptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sleepycat/je/VerifyConfig;->propagateExceptions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
