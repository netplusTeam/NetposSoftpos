.class public Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;
.super Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNScanner;
.source "VLSNIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackwardVLSNScanner"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2263
    const-class v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)V
    .locals 0
    .param p1, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 2266
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNScanner;-><init>(Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)V

    .line 2267
    return-void
.end method


# virtual methods
.method public getPreciseLsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 3
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 2287
    iget v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->startingLsnInvocations:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 2294
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 2295
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->precedes(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2305
    return-wide v1

    .line 2312
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 2320
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    if-nez v0, :cond_2

    .line 2321
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 2328
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2329
    return-wide v1

    .line 2333
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2337
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v0

    return-wide v0

    .line 2333
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vlsn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentBucket="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 2287
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startingLsns() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->startingLsnInvocations:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getStartingLsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 2277
    iget v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->startingLsnInvocations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->startingLsnInvocations:I

    .line 2278
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 2279
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$BackwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getGTELsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v0

    return-wide v0
.end method
