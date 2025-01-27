.class public Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;
.super Ljava/lang/Object;
.source "DiskOrderedScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/DiskOrderedScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredLsnsBatch"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final LSN_MEM_OVERHEAD:I


# instance fields
.field final lsns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field memoryUsage:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 367
    const-class v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    .line 372
    sget v0, Lcom/sleepycat/je/dbi/MemoryBudget;->HASHSET_ENTRY_OVERHEAD:I

    sget v1, Lcom/sleepycat/je/dbi/MemoryBudget;->LONG_OVERHEAD:I

    add-int/2addr v0, v1

    sput v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    .line 381
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    .line 382
    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    .line 383
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V
    .locals 4
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    .line 386
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    .line 387
    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$000()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 388
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$000()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    .line 389
    return-void
.end method


# virtual methods
.method addLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JI)Z
    .locals 6
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p2, "lsn"    # J
    .param p4, "memSize"    # I

    .line 407
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 409
    sget v0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    .line 410
    .local v0, "currentMemConsumption":I
    int-to-long v1, v0

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 418
    move v1, p4

    .line 421
    .local v1, "futureMemConsumption":I
    add-int/lit8 v1, v1, 0x8

    .line 427
    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$200()I

    move-result v2

    add-int/2addr v1, v2

    .line 429
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    add-int v4, v0, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    .line 431
    iget-object v4, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$300(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JJ)Z

    move-result v2

    return v2
.end method

.method containsLsn(J)Z
    .locals 2
    .param p1, "lsn"    # J

    .line 398
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method free(Lcom/sleepycat/je/dbi/DiskOrderedScanner;)V
    .locals 4
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;

    .line 392
    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$000()I

    move-result v0

    neg-int v0, v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 393
    iget-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$000()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    .line 394
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 395
    return-void

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method removeLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JI)Z
    .locals 6
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p2, "lsn"    # J
    .param p4, "memSize"    # I

    .line 443
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 445
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 447
    sget v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    neg-int v1, v1

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 454
    sget v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    .line 455
    .local v1, "memDelta":I
    add-int/2addr v1, p4

    .line 456
    add-int/lit8 v1, v1, 0x8

    .line 457
    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$200()I

    move-result v2

    add-int/2addr v1, v2

    .line 458
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    .line 461
    .end local v1    # "memDelta":I
    :cond_0
    return v0
.end method

.method undoLsn(Lcom/sleepycat/je/dbi/DiskOrderedScanner;JI)V
    .locals 6
    .param p1, "scanner"    # Lcom/sleepycat/je/dbi/DiskOrderedScanner;
    .param p2, "lsn"    # J
    .param p4, "memSize"    # I

    .line 469
    iget-object v0, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->lsns:Ljava/util/HashSet;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 470
    .local v0, "found":Z
    if-eqz v0, :cond_0

    .line 472
    sget v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    neg-int v1, v1

    int-to-long v1, v1

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$100(Lcom/sleepycat/je/dbi/DiskOrderedScanner;J)V

    .line 474
    sget v1, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->LSN_MEM_OVERHEAD:I

    .line 475
    .local v1, "memDelta":I
    add-int/2addr v1, p4

    .line 476
    add-int/lit8 v1, v1, 0x8

    .line 477
    invoke-static {}, Lcom/sleepycat/je/dbi/DiskOrderedScanner;->access$200()I

    move-result v2

    add-int/2addr v1, v2

    .line 478
    iget-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/dbi/DiskOrderedScanner$DeferredLsnsBatch;->memoryUsage:J

    .line 479
    return-void

    .line 470
    .end local v1    # "memDelta":I
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method
