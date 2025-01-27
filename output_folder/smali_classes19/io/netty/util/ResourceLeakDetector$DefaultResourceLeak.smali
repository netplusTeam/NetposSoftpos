.class final Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;
.super Ljava/lang/ref/WeakReference;
.source "ResourceLeakDetector.java"

# interfaces
.implements Lio/netty/util/ResourceLeakTracker;
.implements Lio/netty/util/ResourceLeak;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/ResourceLeakDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultResourceLeak"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/netty/util/ResourceLeakTracker<",
        "TT;>;",
        "Lio/netty/util/ResourceLeak;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final droppedRecordsUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;",
            "Lio/netty/util/ResourceLeakDetector$Record;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allLeaks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile droppedRecords:I

.field private volatile head:Lio/netty/util/ResourceLeakDetector$Record;

.field private final trackedHash:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 346
    const-class v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;

    const-class v1, Lio/netty/util/ResourceLeakDetector;

    .line 351
    const-class v1, Lio/netty/util/ResourceLeakDetector$Record;

    .line 353
    const-string v2, "head"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 356
    nop

    .line 358
    const-string v1, "droppedRecords"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->droppedRecordsUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 356
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V
    .locals 3
    .param p1, "referent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set<",
            "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<",
            "*>;>;)V"
        }
    .end annotation

    .line 372
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    .local p2, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    .local p3, "allLeaks":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<*>;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 374
    if-eqz p1, :cond_0

    .line 379
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->trackedHash:I

    .line 380
    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v1, Lio/netty/util/ResourceLeakDetector$Record;

    invoke-static {}, Lio/netty/util/ResourceLeakDetector$Record;->access$100()Lio/netty/util/ResourceLeakDetector$Record;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/util/ResourceLeakDetector$Record;-><init>(Lio/netty/util/ResourceLeakDetector$Record;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 383
    iput-object p3, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->allLeaks:Ljava/util/Set;

    .line 384
    return-void

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static reachabilityFence0(Ljava/lang/Object;)V
    .locals 1
    .param p0, "ref"    # Ljava/lang/Object;

    .line 503
    if-eqz p0, :cond_0

    .line 504
    monitor-enter p0

    .line 506
    :try_start_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 508
    :cond_0
    :goto_0
    return-void
.end method

.method private record0(Ljava/lang/Object;)V
    .locals 8
    .param p1, "hint"    # Ljava/lang/Object;

    .line 424
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$200()I

    move-result v0

    if-lez v0, :cond_6

    .line 430
    :cond_0
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/util/ResourceLeakDetector$Record;

    move-object v2, v1

    .local v2, "oldHead":Lio/netty/util/ResourceLeakDetector$Record;
    move-object v3, v1

    .local v3, "prevHead":Lio/netty/util/ResourceLeakDetector$Record;
    if-nez v1, :cond_1

    .line 432
    return-void

    .line 434
    :cond_1
    invoke-static {v2}, Lio/netty/util/ResourceLeakDetector$Record;->access$300(Lio/netty/util/ResourceLeakDetector$Record;)I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 435
    .local v1, "numElements":I
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$200()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 436
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$200()I

    move-result v5

    sub-int v5, v1, v5

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 437
    .local v5, "backOffFactor":I
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->threadLocalRandom()Ljava/util/Random;

    move-result-object v6

    shl-int v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    move v6, v4

    .local v6, "dropped":Z
    if-eqz v4, :cond_3

    .line 438
    invoke-static {v2}, Lio/netty/util/ResourceLeakDetector$Record;->access$400(Lio/netty/util/ResourceLeakDetector$Record;)Lio/netty/util/ResourceLeakDetector$Record;

    move-result-object v3

    .line 440
    .end local v5    # "backOffFactor":I
    :cond_3
    goto :goto_1

    .line 441
    .end local v6    # "dropped":Z
    :cond_4
    const/4 v6, 0x0

    .line 443
    .restart local v6    # "dropped":Z
    :goto_1
    new-instance v4, Lio/netty/util/ResourceLeakDetector$Record;

    if-eqz p1, :cond_5

    invoke-direct {v4, v3, p1}, Lio/netty/util/ResourceLeakDetector$Record;-><init>(Lio/netty/util/ResourceLeakDetector$Record;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-direct {v4, v3}, Lio/netty/util/ResourceLeakDetector$Record;-><init>(Lio/netty/util/ResourceLeakDetector$Record;)V

    :goto_2
    move-object v1, v4

    .line 444
    .local v1, "newHead":Lio/netty/util/ResourceLeakDetector$Record;
    invoke-static {v0, p0, v2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    if-eqz v6, :cond_6

    .line 446
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->droppedRecordsUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 449
    .end local v1    # "newHead":Lio/netty/util/ResourceLeakDetector$Record;
    .end local v2    # "oldHead":Lio/netty/util/ResourceLeakDetector$Record;
    .end local v3    # "prevHead":Lio/netty/util/ResourceLeakDetector$Record;
    .end local v6    # "dropped":Z
    :cond_6
    return-void
.end method


# virtual methods
.method public close()Z
    .locals 2

    .line 458
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->allLeaks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->clear()V

    .line 461
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    const/4 v0, 0x1

    return v0

    .line 464
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public close(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 470
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    .local p1, "trackedObject":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->trackedHash:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 473
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->close()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->reachabilityFence0(Ljava/lang/Object;)V

    .line 473
    return v0

    .line 479
    :catchall_0
    move-exception v0

    invoke-static {p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->reachabilityFence0(Ljava/lang/Object;)V

    .line 480
    throw v0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method dispose()Z
    .locals 1

    .line 452
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    invoke-virtual {p0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->clear()V

    .line 453
    iget-object v0, p0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->allLeaks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public record()V
    .locals 1

    .line 388
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->record0(Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public record(Ljava/lang/Object;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 393
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->record0(Ljava/lang/Object;)V

    .line 394
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 512
    .local p0, "this":Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;, "Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak<TT;>;"
    sget-object v0, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->headUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/ResourceLeakDetector$Record;

    .line 513
    .local v0, "oldHead":Lio/netty/util/ResourceLeakDetector$Record;
    if-nez v0, :cond_0

    .line 515
    const-string v1, ""

    return-object v1

    .line 518
    :cond_0
    sget-object v1, Lio/netty/util/ResourceLeakDetector$DefaultResourceLeak;->droppedRecordsUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    .line 519
    .local v1, "dropped":I
    const/4 v2, 0x0

    .line 521
    .local v2, "duped":I
    invoke-static {v0}, Lio/netty/util/ResourceLeakDetector$Record;->access$300(Lio/netty/util/ResourceLeakDetector$Record;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 523
    .local v3, "present":I
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit16 v5, v3, 0x800

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v5, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    .local v4, "buf":Ljava/lang/StringBuilder;
    const-string v5, "Recent access records: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    const/4 v5, 0x1

    .line 527
    .local v5, "i":I
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 528
    .local v6, "seen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Lio/netty/util/ResourceLeakDetector$Record;->access$100()Lio/netty/util/ResourceLeakDetector$Record;

    move-result-object v7

    if-eq v0, v7, :cond_3

    .line 529
    invoke-virtual {v0}, Lio/netty/util/ResourceLeakDetector$Record;->toString()Ljava/lang/String;

    move-result-object v7

    .line 530
    .local v7, "s":Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 531
    invoke-static {v0}, Lio/netty/util/ResourceLeakDetector$Record;->access$400(Lio/netty/util/ResourceLeakDetector$Record;)Lio/netty/util/ResourceLeakDetector$Record;

    move-result-object v8

    invoke-static {}, Lio/netty/util/ResourceLeakDetector$Record;->access$100()Lio/netty/util/ResourceLeakDetector$Record;

    move-result-object v9

    if-ne v8, v9, :cond_1

    .line 532
    const-string v8, "Created at:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 534
    :cond_1
    const/16 v8, 0x23

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "i":I
    .local v9, "i":I
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v8, 0x3a

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v9

    goto :goto_1

    .line 537
    .end local v9    # "i":I
    .restart local v5    # "i":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 528
    .end local v7    # "s":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lio/netty/util/ResourceLeakDetector$Record;->access$400(Lio/netty/util/ResourceLeakDetector$Record;)Lio/netty/util/ResourceLeakDetector$Record;

    move-result-object v0

    goto :goto_0

    .line 541
    :cond_3
    const-string v7, ": "

    if-lez v2, :cond_4

    .line 542
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 543
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 544
    const-string v9, " leak records were discarded because they were duplicates"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 545
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_4
    if-lez v1, :cond_5

    .line 549
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 550
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 551
    const-string v8, " leak records were discarded because the leak record count is targeted to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 552
    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->access$200()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 553
    const-string v8, ". Use system property "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 554
    const-string v8, "io.netty.leakDetection.targetRecords"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 555
    const-string v8, " to increase the limit."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 556
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sget-object v8, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 560
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
