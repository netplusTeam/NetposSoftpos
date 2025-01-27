.class abstract Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "MemoryRegionCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allocations:I

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final size:I

.field private final sizeClass:Lio/netty/buffer/PoolArena$SizeClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 496
    new-instance v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$1;

    invoke-direct {v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$1;-><init>()V

    invoke-static {v0}, Lio/netty/util/internal/ObjectPool;->newPool(Lio/netty/util/internal/ObjectPool$ObjectCreator;)Lio/netty/util/internal/ObjectPool;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    return-void
.end method

.method constructor <init>(ILio/netty/buffer/PoolArena$SizeClass;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;

    .line 376
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    invoke-static {p1}, Lio/netty/util/internal/MathUtil;->safeFindNextPositivePowerOfTwo(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size:I

    .line 378
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->newFixedMpscQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    .line 379
    iput-object p2, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->sizeClass:Lio/netty/buffer/PoolArena$SizeClass;

    .line 380
    return-void
.end method

.method private free(IZ)I
    .locals 2
    .param p1, "max"    # I
    .param p2, "finalizer"    # Z

    .line 427
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const/4 v0, 0x0

    .line 428
    .local v0, "numFreed":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 429
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    .line 430
    .local v1, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    if-eqz v1, :cond_0

    .line 431
    invoke-direct {p0, v1, p2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;Z)V

    .line 428
    .end local v1    # "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    .restart local v1    # "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    :cond_0
    return v0

    .line 437
    .end local v1    # "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    :cond_1
    return v0
.end method

.method private freeEntry(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;Z)V
    .locals 11
    .param p1, "entry"    # Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    .param p2, "finalizer"    # Z

    .line 455
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    iget-object v7, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 456
    .local v7, "chunk":Lio/netty/buffer/PoolChunk;
    iget-wide v8, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 457
    .local v8, "handle":J
    iget-object v10, p1, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    .line 459
    .local v10, "nioBuffer":Ljava/nio/ByteBuffer;
    if-nez p2, :cond_0

    .line 462
    invoke-virtual {p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recycle()V

    .line 465
    :cond_0
    iget-object v0, v7, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v4, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->sizeClass:Lio/netty/buffer/PoolArena$SizeClass;

    move-object v1, v7

    move-wide v2, v8

    move-object v5, v10

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PoolArena;->freeChunk(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V

    .line 466
    return-void
.end method

.method private static newEntry(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;J)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    .locals 1
    .param p1, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "handle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "*>;",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;"
        }
    .end annotation

    .line 488
    .local p0, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<*>;"
    sget-object v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->RECYCLER:Lio/netty/util/internal/ObjectPool;

    invoke-virtual {v0}, Lio/netty/util/internal/ObjectPool;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    .line 489
    .local v0, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;
    iput-object p0, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    .line 490
    iput-object p1, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    .line 491
    iput-wide p2, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    .line 492
    return-object v0
.end method


# virtual methods
.method public final add(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;J)Z
    .locals 2
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "J)Z"
        }
    .end annotation

    .line 393
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-static {p1, p2, p3, p4}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->newEntry(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;J)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    move-result-object v0

    .line 394
    .local v0, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 395
    .local v1, "queued":Z
    if-nez v1, :cond_0

    .line 397
    invoke-virtual {v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recycle()V

    .line 400
    :cond_0
    return v1
.end method

.method public final allocate(Lio/netty/buffer/PooledByteBuf;I)Z
    .locals 9
    .param p2, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 407
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;

    .line 408
    .local v0, "entry":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry<TT;>;"
    if-nez v0, :cond_0

    .line 409
    const/4 v1, 0x0

    return v1

    .line 411
    :cond_0
    iget-object v3, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v4, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->nioBuffer:Ljava/nio/ByteBuffer;

    iget-wide v5, v0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->handle:J

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v2 .. v8}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->initBuf(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JLio/netty/buffer/PooledByteBuf;I)V

    .line 412
    invoke-virtual {v0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache$Entry;->recycle()V

    .line 415
    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    .line 416
    return v2
.end method

.method public final free(Z)I
    .locals 1
    .param p1, "finalizer"    # Z

    .line 423
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0, p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free(IZ)I

    move-result v0

    return v0
.end method

.method protected abstract initBuf(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JLio/netty/buffer/PooledByteBuf;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method public final trim()V
    .locals 2

    .line 444
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->size:I

    iget v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    sub-int/2addr v0, v1

    .line 445
    .local v0, "free":I
    const/4 v1, 0x0

    iput v1, p0, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocations:I

    .line 448
    if-lez v0, :cond_0

    .line 449
    invoke-direct {p0, v0, v1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free(IZ)I

    .line 451
    :cond_0
    return-void
.end method
