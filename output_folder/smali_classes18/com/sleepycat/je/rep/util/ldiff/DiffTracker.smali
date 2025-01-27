.class public Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;
.super Ljava/lang/Object;
.source "DiffTracker.java"


# instance fields
.field private final blockSize:J

.field private final regions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;",
            ">;"
        }
    .end annotation
.end field

.field private remoteDiffSize:J

.field private remoteStart:J

.field private startBlock:Lcom/sleepycat/je/rep/util/ldiff/Block;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "blockSize"    # J

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->blockSize:J

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->regions:Ljava/util/List;

    .line 39
    return-void
.end method

.method private setBlockDiff(Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Lcom/sleepycat/je/rep/util/ldiff/Block;JZ)V
    .locals 4
    .param p1, "region"    # Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    .param p2, "block"    # Lcom/sleepycat/je/rep/util/ldiff/Block;
    .param p3, "diffSize"    # J
    .param p5, "doCheck"    # Z

    .line 82
    if-eqz p5, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->remoteDiffSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getBeginKey()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->setRemoteBeginKey([B)V

    .line 87
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/Block;->getBeginData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->setRemoteBeginData([B)V

    .line 88
    invoke-virtual {p1, p3, p4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->setRemoteDiffSize(J)V

    .line 89
    return-void
.end method

.method private setWindowDiff(Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Lcom/sleepycat/je/rep/util/ldiff/Window;JZ)V
    .locals 4
    .param p1, "region"    # Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    .param p2, "window"    # Lcom/sleepycat/je/rep/util/ldiff/Window;
    .param p3, "diffSize"    # J
    .param p5, "doCheck"    # Z

    .line 69
    if-eqz p5, :cond_0

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getDiffSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getBeginKey()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->setLocalBeginKey([B)V

    .line 74
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getBeginData()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->setLocalBeginData([B)V

    .line 75
    invoke-virtual {p1, p3, p4}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->setLocalDiffSize(J)V

    .line 76
    return-void
.end method


# virtual methods
.method public addBlockBagAdditionalDiffs(Lcom/sleepycat/je/rep/util/ldiff/Window;Lcom/sleepycat/je/rep/util/ldiff/BlockBag;)V
    .locals 7
    .param p1, "window"    # Lcom/sleepycat/je/rep/util/ldiff/Window;
    .param p2, "blkBag"    # Lcom/sleepycat/je/rep/util/ldiff/BlockBag;

    .line 100
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;-><init>()V

    .line 101
    .local v0, "region":Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    invoke-virtual {p2}, Lcom/sleepycat/je/rep/util/ldiff/BlockBag;->getBlock()Lcom/sleepycat/je/rep/util/ldiff/Block;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->setBlockDiff(Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Lcom/sleepycat/je/rep/util/ldiff/Block;JZ)V

    .line 103
    const/4 v6, 0x1

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->setWindowDiff(Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Lcom/sleepycat/je/rep/util/ldiff/Window;JZ)V

    .line 104
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->regions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public addDiffRegion(Lcom/sleepycat/je/rep/util/ldiff/Window;)V
    .locals 7
    .param p1, "window"    # Lcom/sleepycat/je/rep/util/ldiff/Window;

    .line 54
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;-><init>()V

    .line 55
    .local v0, "region":Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    iget-object v3, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->startBlock:Lcom/sleepycat/je/rep/util/ldiff/Block;

    iget-wide v4, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->remoteDiffSize:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->setBlockDiff(Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Lcom/sleepycat/je/rep/util/ldiff/Block;JZ)V

    .line 56
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/util/ldiff/Window;->getDiffSize()J

    move-result-wide v4

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->setWindowDiff(Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Lcom/sleepycat/je/rep/util/ldiff/Window;JZ)V

    .line 58
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->regions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->remoteDiffSize:J

    .line 63
    return-void
.end method

.method public addWindowAdditionalDiffs(Lcom/sleepycat/je/rep/util/ldiff/Window;)V
    .locals 7
    .param p1, "window"    # Lcom/sleepycat/je/rep/util/ldiff/Window;

    .line 93
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;

    invoke-direct {v0}, Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;-><init>()V

    .line 94
    .local v0, "region":Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->setWindowDiff(Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;Lcom/sleepycat/je/rep/util/ldiff/Window;JZ)V

    .line 95
    iget-object v1, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->regions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public calBlockDiffSize(I)V
    .locals 4
    .param p1, "currentIndex"    # I

    .line 49
    add-int/lit8 v0, p1, -0x1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->blockSize:J

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->remoteStart:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->remoteDiffSize:J

    .line 50
    return-void
.end method

.method public getDiffRegions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sleepycat/je/rep/util/ldiff/MismatchedRegion;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->regions:Ljava/util/List;

    return-object v0
.end method

.method public setBlockDiffBegin(Lcom/sleepycat/je/rep/util/ldiff/Block;I)V
    .locals 4
    .param p1, "startBlock"    # Lcom/sleepycat/je/rep/util/ldiff/Block;
    .param p2, "startIndex"    # I

    .line 43
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->startBlock:Lcom/sleepycat/je/rep/util/ldiff/Block;

    .line 44
    int-to-long v0, p2

    iget-wide v2, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->blockSize:J

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/rep/util/ldiff/DiffTracker;->remoteStart:J

    .line 45
    return-void
.end method
