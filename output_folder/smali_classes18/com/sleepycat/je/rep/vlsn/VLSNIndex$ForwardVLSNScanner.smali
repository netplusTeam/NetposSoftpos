.class public Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;
.super Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNScanner;
.source "VLSNIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardVLSNScanner"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2357
    const-class v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)V
    .locals 0
    .param p1, "vlsnIndex"    # Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 2361
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$VLSNScanner;-><init>(Lcom/sleepycat/je/rep/vlsn/VLSNIndex;)V

    .line 2362
    return-void
.end method

.method private findPrevLsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 4
    .param p1, "target"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 2485
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    .line 2486
    .local v0, "prevBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2488
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLastLsn()J

    move-result-wide v1

    return-wide v1

    .line 2486
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "prevBucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentBucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private getLsn(Lcom/sleepycat/je/utilint/VLSN;Z)J
    .locals 4
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "approximate"    # Z

    .line 2417
    iget v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->startingLsnInvocations:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 2419
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 2425
    .local v0, "debugBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_2

    .line 2426
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2435
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->follows(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2437
    if-eqz p2, :cond_0

    .line 2438
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->findPrevLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    nop

    .line 2437
    :goto_0
    return-wide v2

    .line 2442
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 2450
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    if-nez v1, :cond_4

    .line 2451
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v1, p1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getGTEBucket(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/vlsn/VLSNBucket;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 2458
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2459
    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->findPrevLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v2

    :cond_3
    return-wide v2

    .line 2463
    :cond_4
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->owns(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2466
    if-eqz p2, :cond_5

    .line 2473
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLTELsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v1

    return-wide v1

    .line 2476
    :cond_5
    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v1

    return-wide v1

    .line 2463
    :cond_6
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vlsn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentBucket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2417
    .end local v0    # "debugBucket":Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startingLsns() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->startingLsnInvocations:I

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


# virtual methods
.method public getApproximateLsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 2412
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->getLsn(Lcom/sleepycat/je/utilint/VLSN;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreciseLsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 2383
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->getLsn(Lcom/sleepycat/je/utilint/VLSN;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartingLsn(Lcom/sleepycat/je/utilint/VLSN;)J
    .locals 2
    .param p1, "vlsn"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 2372
    iget v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->startingLsnInvocations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->startingLsnInvocations:I

    .line 2373
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLTEBucket(Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 2374
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNIndex$ForwardVLSNScanner;->currentBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    invoke-virtual {v0, p1}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->getLTELsn(Lcom/sleepycat/je/utilint/VLSN;)J

    move-result-wide v0

    return-wide v0
.end method
