.class final Lio/netty/buffer/PoolThreadCache;
.super Ljava/lang/Object;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;,
        Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;,
        Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private allocations:I

.field final directArena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final freeSweepAllocationThreshold:I

.field private final freed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final heapArena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "[B>;"
        }
    .end annotation
.end field

.field private final normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "[B>;"
        }
    .end annotation
.end field

.field private final numShiftsNormalDirect:I

.field private final numShiftsNormalHeap:I

.field private final smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "[B>;"
        }
    .end annotation
.end field

.field private final tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lio/netty/buffer/PoolThreadCache;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolArena;IIIII)V
    .locals 5
    .param p3, "tinyCacheSize"    # I
    .param p4, "smallCacheSize"    # I
    .param p5, "normalCacheSize"    # I
    .param p6, "maxCachedBufferCapacity"    # I
    .param p7, "freeSweepAllocationThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "[B>;",
            "Lio/netty/buffer/PoolArena<",
            "Ljava/nio/ByteBuffer;",
            ">;IIIII)V"
        }
    .end annotation

    .line 70
    .local p1, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    .local p2, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->freed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    const-string v0, "maxCachedBufferCapacity"

    invoke-static {p6, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 72
    iput p7, p0, Lio/netty/buffer/PoolThreadCache;->freeSweepAllocationThreshold:I

    .line 73
    iput-object p1, p0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    .line 74
    iput-object p2, p0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    .line 75
    const/16 v0, 0x20

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 76
    sget-object v3, Lio/netty/buffer/PoolArena$SizeClass;->Tiny:Lio/netty/buffer/PoolArena$SizeClass;

    invoke-static {p3, v0, v3}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(IILio/netty/buffer/PoolArena$SizeClass;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v3

    iput-object v3, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 78
    iget v3, p2, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    sget-object v4, Lio/netty/buffer/PoolArena$SizeClass;->Small:Lio/netty/buffer/PoolArena$SizeClass;

    invoke-static {p4, v3, v4}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(IILio/netty/buffer/PoolArena$SizeClass;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v3

    iput-object v3, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 81
    iget v3, p2, Lio/netty/buffer/PoolArena;->pageSize:I

    invoke-static {v3}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v3

    iput v3, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalDirect:I

    .line 82
    invoke-static {p5, p6, p2}, Lio/netty/buffer/PoolThreadCache;->createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v3

    iput-object v3, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 85
    iget-object v3, p2, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_0

    .line 88
    :cond_0
    iput-object v2, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 89
    iput-object v2, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 90
    iput-object v2, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 91
    iput v1, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalDirect:I

    .line 93
    :goto_0
    if-eqz p1, :cond_1

    .line 95
    sget-object v1, Lio/netty/buffer/PoolArena$SizeClass;->Tiny:Lio/netty/buffer/PoolArena$SizeClass;

    invoke-static {p3, v0, v1}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(IILio/netty/buffer/PoolArena$SizeClass;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 97
    iget v0, p1, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    sget-object v1, Lio/netty/buffer/PoolArena$SizeClass;->Small:Lio/netty/buffer/PoolArena$SizeClass;

    invoke-static {p4, v0, v1}, Lio/netty/buffer/PoolThreadCache;->createSubPageCaches(IILio/netty/buffer/PoolArena$SizeClass;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 100
    iget v0, p1, Lio/netty/buffer/PoolArena;->pageSize:I

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalHeap:I

    .line 101
    invoke-static {p5, p6, p1}, Lio/netty/buffer/PoolThreadCache;->createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 104
    iget-object v0, p1, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    goto :goto_1

    .line 107
    :cond_1
    iput-object v2, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 108
    iput-object v2, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 109
    iput-object v2, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 110
    iput v1, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalHeap:I

    .line 114
    :goto_1
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    if-lt p7, v0, :cond_4

    .line 120
    :cond_3
    return-void

    .line 117
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "freeSweepAllocationThreshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: > 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z
    .locals 4
    .param p2, "buf"    # Lio/netty/buffer/PooledByteBuf;
    .param p3, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;",
            "Lio/netty/buffer/PooledByteBuf;",
            "I)Z"
        }
    .end annotation

    .line 186
    .local p1, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 188
    return v0

    .line 190
    :cond_0
    invoke-virtual {p1, p2, p3}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->allocate(Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v1

    .line 191
    .local v1, "allocated":Z
    iget v2, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    iget v3, p0, Lio/netty/buffer/PoolThreadCache;->freeSweepAllocationThreshold:I

    if-lt v2, v3, :cond_1

    .line 192
    iput v0, p0, Lio/netty/buffer/PoolThreadCache;->allocations:I

    .line 193
    invoke-virtual {p0}, Lio/netty/buffer/PoolThreadCache;->trim()V

    .line 195
    :cond_1
    return v1
.end method

.method private cache(Lio/netty/buffer/PoolArena;ILio/netty/buffer/PoolArena$SizeClass;)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "normCapacity"    # I
    .param p3, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;I",
            "Lio/netty/buffer/PoolArena$SizeClass;",
            ")",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;"
        }
    .end annotation

    .line 213
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    sget-object v0, Lio/netty/buffer/PoolThreadCache$1;->$SwitchMap$io$netty$buffer$PoolArena$SizeClass:[I

    invoke-virtual {p3}, Lio/netty/buffer/PoolArena$SizeClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 219
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolThreadCache;->cacheForTiny(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    return-object v0

    .line 217
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolThreadCache;->cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    return-object v0

    .line 215
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolThreadCache;->cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "TT;>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "TT;>;"
        }
    .end annotation

    .line 334
    .local p0, "cache":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    if-eqz p0, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    aget-object v0, p0, p1

    return-object v0

    .line 335
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;"
        }
    .end annotation

    .line 325
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-virtual {p1}, Lio/netty/buffer/PoolArena;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget v0, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalDirect:I

    shr-int v0, p2, v0

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v0

    .line 327
    .local v0, "idx":I
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    return-object v1

    .line 329
    .end local v0    # "idx":I
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolThreadCache;->numShiftsNormalHeap:I

    shr-int v0, p2, v0

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v0

    .line 330
    .restart local v0    # "idx":I
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    return-object v1
.end method

.method private cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;"
        }
    .end annotation

    .line 317
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-static {p2}, Lio/netty/buffer/PoolArena;->smallIdx(I)I

    move-result v0

    .line 318
    .local v0, "idx":I
    invoke-virtual {p1}, Lio/netty/buffer/PoolArena;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    return-object v1

    .line 321
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    return-object v1
.end method

.method private cacheForTiny(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 2
    .param p2, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;I)",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;"
        }
    .end annotation

    .line 309
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-static {p2}, Lio/netty/buffer/PoolArena;->tinyIdx(I)I

    move-result v0

    .line 310
    .local v0, "idx":I
    invoke-virtual {p1}, Lio/netty/buffer/PoolArena;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    return-object v1

    .line 313
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v1, v0}, Lio/netty/buffer/PoolThreadCache;->cache([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v1

    return-object v1
.end method

.method private static createNormalCaches(IILio/netty/buffer/PoolArena;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 5
    .param p0, "cacheSize"    # I
    .param p1, "maxCachedBufferCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;)[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "TT;>;"
        }
    .end annotation

    .line 139
    .local p2, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 140
    iget v0, p2, Lio/netty/buffer/PoolArena;->chunkSize:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    .local v0, "max":I
    iget v1, p2, Lio/netty/buffer/PoolArena;->pageSize:I

    div-int v1, v0, v1

    invoke-static {v1}, Lio/netty/buffer/PoolThreadCache;->log2(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 144
    .local v1, "arraySize":I
    new-array v2, v1, [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 145
    .local v2, "cache":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 146
    new-instance v4, Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;

    invoke-direct {v4, p0}, Lio/netty/buffer/PoolThreadCache$NormalMemoryRegionCache;-><init>(I)V

    aput-object v4, v2, v3

    .line 145
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    .end local v3    # "i":I
    :cond_0
    return-object v2

    .line 150
    .end local v0    # "max":I
    .end local v1    # "arraySize":I
    .end local v2    # "cache":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createSubPageCaches(IILio/netty/buffer/PoolArena$SizeClass;)[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
    .locals 3
    .param p0, "cacheSize"    # I
    .param p1, "numCaches"    # I
    .param p2, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Lio/netty/buffer/PoolArena$SizeClass;",
            ")[",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "TT;>;"
        }
    .end annotation

    .line 124
    if-lez p0, :cond_1

    if-lez p1, :cond_1

    .line 126
    new-array v0, p1, [Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 127
    .local v0, "cache":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 129
    new-instance v2, Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;

    invoke-direct {v2, p0, p2}, Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;-><init>(ILio/netty/buffer/PoolArena$SizeClass;)V

    aput-object v2, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 133
    .end local v0    # "cache":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<TT;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static free(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I
    .locals 1
    .param p1, "finalizer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;Z)I"
        }
    .end annotation

    .line 277
    .local p0, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez p0, :cond_0

    .line 278
    const/4 v0, 0x0

    return v0

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->free(Z)I

    move-result v0

    return v0
.end method

.method private static free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I
    .locals 5
    .param p1, "finalizer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;Z)I"
        }
    .end annotation

    .line 265
    .local p0, "caches":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 266
    return v0

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 270
    .local v1, "numFreed":I
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 271
    .local v3, "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    invoke-static {v3, p1}, Lio/netty/buffer/PoolThreadCache;->free(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 270
    .end local v3    # "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    return v1
.end method

.method private static log2(I)I
    .locals 2
    .param p0, "val"    # I

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "res":I
    :goto_0
    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    .line 157
    shr-int/lit8 p0, p0, 0x1

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return v0
.end method

.method private static trim(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;)V"
        }
    .end annotation

    .line 302
    .local p0, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez p0, :cond_0

    .line 303
    return-void

    .line 305
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->trim()V

    .line 306
    return-void
.end method

.method private static trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
            "*>;)V"
        }
    .end annotation

    .line 293
    .local p0, "caches":[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez p0, :cond_0

    .line 294
    return-void

    .line 296
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 297
    .local v2, "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    invoke-static {v2}, Lio/netty/buffer/PoolThreadCache;->trim(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 296
    .end local v2    # "c":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    return-void
.end method


# virtual methods
.method add(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolArena$SizeClass;)Z
    .locals 2
    .param p2, "chunk"    # Lio/netty/buffer/PoolChunk;
    .param p3, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p4, "handle"    # J
    .param p6, "normCapacity"    # I
    .param p7, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;",
            "Lio/netty/buffer/PoolChunk;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lio/netty/buffer/PoolArena$SizeClass;",
            ")Z"
        }
    .end annotation

    .line 205
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-direct {p0, p1, p6, p7}, Lio/netty/buffer/PoolThreadCache;->cache(Lio/netty/buffer/PoolArena;ILio/netty/buffer/PoolArena$SizeClass;)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    .line 206
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<*>;"
    if-nez v0, :cond_0

    .line 207
    const/4 v1, 0x0

    return v1

    .line 209
    :cond_0
    invoke-virtual {v0, p2, p3, p4, p5}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;->add(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;J)Z

    move-result v1

    return v1
.end method

.method allocateNormal(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 1
    .param p3, "reqCapacity"    # I
    .param p4, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;",
            "Lio/netty/buffer/PooledByteBuf<",
            "*>;II)Z"
        }
    .end annotation

    .line 181
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<*>;"
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/PoolThreadCache;->cacheForNormal(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/buffer/PoolThreadCache;->allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    return v0
.end method

.method allocateSmall(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 1
    .param p3, "reqCapacity"    # I
    .param p4, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;",
            "Lio/netty/buffer/PooledByteBuf<",
            "*>;II)Z"
        }
    .end annotation

    .line 174
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<*>;"
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/PoolThreadCache;->cacheForSmall(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/buffer/PoolThreadCache;->allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    return v0
.end method

.method allocateTiny(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 1
    .param p3, "reqCapacity"    # I
    .param p4, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "*>;",
            "Lio/netty/buffer/PooledByteBuf<",
            "*>;II)Z"
        }
    .end annotation

    .line 167
    .local p1, "area":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<*>;"
    invoke-direct {p0, p1, p4}, Lio/netty/buffer/PoolThreadCache;->cacheForTiny(Lio/netty/buffer/PoolArena;I)Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lio/netty/buffer/PoolThreadCache;->allocate(Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Lio/netty/buffer/PooledByteBuf;I)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 229
    const/4 v0, 0x1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p0, v0}, Lio/netty/buffer/PoolThreadCache;->free(Z)V

    .line 232
    nop

    .line 233
    return-void

    .line 231
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lio/netty/buffer/PoolThreadCache;->free(Z)V

    .line 232
    throw v1
.end method

.method free(Z)V
    .locals 5
    .param p1, "finalizer"    # Z

    .line 241
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->freed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v0

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 243
    invoke-static {v1, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 244
    invoke-static {v1, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 245
    invoke-static {v1, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 246
    invoke-static {v1, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    .line 247
    invoke-static {v1, p1}, Lio/netty/buffer/PoolThreadCache;->free([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    .local v0, "numFreed":I
    if-lez v0, :cond_0

    sget-object v1, Lio/netty/buffer/PoolThreadCache;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 250
    const-string v4, "Freed {} thread-local buffer(s) from thread: {}"

    invoke-interface {v1, v4, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, v1, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 258
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, v1, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 262
    .end local v0    # "numFreed":I
    :cond_2
    return-void
.end method

.method trim()V
    .locals 1

    .line 284
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 285
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 286
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalDirectCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 287
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->tinySubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 288
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->smallSubPageHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 289
    iget-object v0, p0, Lio/netty/buffer/PoolThreadCache;->normalHeapCaches:[Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;

    invoke-static {v0}, Lio/netty/buffer/PoolThreadCache;->trim([Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;)V

    .line 290
    return-void
.end method
