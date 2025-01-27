.class public Lio/netty/buffer/PooledByteBufAllocator;
.super Lio/netty/buffer/AbstractByteBufAllocator;
.source "PooledByteBufAllocator.java"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocatorMetricProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

.field private static final DEFAULT_CACHE_TRIM_INTERVAL:I

.field private static final DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

.field private static final DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

.field private static final DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

.field static final DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

.field private static final DEFAULT_MAX_ORDER:I

.field private static final DEFAULT_NORMAL_CACHE_SIZE:I

.field private static final DEFAULT_NUM_DIRECT_ARENA:I

.field private static final DEFAULT_NUM_HEAP_ARENA:I

.field private static final DEFAULT_PAGE_SIZE:I

.field private static final DEFAULT_SMALL_CACHE_SIZE:I

.field private static final DEFAULT_TINY_CACHE_SIZE:I

.field private static final DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

.field private static final MAX_CHUNK_SIZE:I = 0x40000000

.field private static final MIN_PAGE_SIZE:I = 0x1000

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final chunkSize:I

.field private final directArenaMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final directArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenaMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation
.end field

.field private final heapArenas:[Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolArena<",
            "[B>;"
        }
    .end annotation
.end field

.field private final metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

.field private final normalCacheSize:I

.field private final smallCacheSize:I

.field private final threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

.field private final tinyCacheSize:I

.field private final trimTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 38
    nop

    .line 40
    const-class v0, Lio/netty/buffer/PooledByteBufAllocator;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 67
    const-string v0, "io.netty.allocator.pageSize"

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 68
    .local v2, "defaultPageSize":I
    const/4 v3, 0x0

    .line 70
    .local v3, "pageSizeFallbackCause":Ljava/lang/Throwable;
    :try_start_0
    invoke-static {v2}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 72
    .local v0, "t":Ljava/lang/Throwable;
    move-object v3, v0

    .line 73
    const/16 v2, 0x2000

    .line 75
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    sput v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    .line 77
    const/16 v0, 0xb

    const-string v4, "io.netty.allocator.maxOrder"

    invoke-static {v4, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 78
    .local v4, "defaultMaxOrder":I
    const/4 v5, 0x0

    .line 80
    .local v5, "maxOrderFallbackCause":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v2, v4}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    goto :goto_1

    .line 81
    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 82
    .restart local v0    # "t":Ljava/lang/Throwable;
    move-object v5, v0

    .line 83
    const/16 v4, 0xb

    .line 85
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    sput v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    .line 89
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 98
    .local v0, "runtime":Ljava/lang/Runtime;
    invoke-static {}, Lio/netty/util/NettyRuntime;->availableProcessors()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    .line 99
    .local v6, "defaultMinNumArena":I
    sget v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    shl-int v8, v7, v4

    .line 100
    .local v8, "defaultChunkSize":I
    int-to-long v9, v6

    .line 105
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v11

    int-to-long v13, v8

    div-long/2addr v11, v13

    const-wide/16 v13, 0x2

    div-long/2addr v11, v13

    const-wide/16 v15, 0x3

    div-long/2addr v11, v15

    .line 103
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v9, v9

    .line 101
    const-string v10, "io.netty.allocator.numHeapArenas"

    invoke-static {v10, v9}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 100
    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    sput v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    .line 106
    int-to-long v11, v6

    .line 111
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->maxDirectMemory()J

    move-result-wide v17

    move/from16 v19, v2

    .end local v2    # "defaultPageSize":I
    .local v19, "defaultPageSize":I
    int-to-long v1, v8

    div-long v17, v17, v1

    div-long v17, v17, v13

    div-long v1, v17, v15

    .line 109
    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 107
    const-string v2, "io.netty.allocator.numDirectArenas"

    invoke-static {v2, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 106
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    .line 114
    const/16 v2, 0x200

    const-string v11, "io.netty.allocator.tinyCacheSize"

    invoke-static {v11, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    .line 115
    const/16 v11, 0x100

    const-string v12, "io.netty.allocator.smallCacheSize"

    invoke-static {v12, v11}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v11

    sput v11, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    .line 116
    const/16 v12, 0x40

    const-string v13, "io.netty.allocator.normalCacheSize"

    invoke-static {v13, v12}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    .line 120
    const v13, 0x8000

    const-string v14, "io.netty.allocator.maxCachedBufferCapacity"

    invoke-static {v14, v13}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    .line 124
    const-string v14, "io.netty.allocator.cacheTrimInterval"

    const/16 v15, 0x2000

    invoke-static {v14, v15}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v14

    sput v14, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    .line 127
    const-string v15, "io.netty.allocation.cacheTrimIntervalMillis"

    invoke-static {v15}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v16

    move/from16 v18, v11

    const-string v10, "io.netty.allocator.cacheTrimIntervalMillis"

    if-eqz v16, :cond_1

    .line 128
    sget-object v11, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    move-object/from16 v16, v0

    .end local v0    # "runtime":Ljava/lang/Runtime;
    .local v16, "runtime":Ljava/lang/Runtime;
    const-string v0, "-Dio.netty.allocation.cacheTrimIntervalMillis is deprecated, use -Dio.netty.allocator.cacheTrimIntervalMillis"

    invoke-interface {v11, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 131
    invoke-static {v10}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    move v0, v13

    move v11, v14

    const-wide/16 v13, 0x0

    invoke-static {v10, v13, v14}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    sput-wide v13, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    goto :goto_2

    .line 136
    :cond_0
    move v0, v13

    move v11, v14

    const-wide/16 v13, 0x0

    invoke-static {v15, v13, v14}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    sput-wide v13, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    goto :goto_2

    .line 140
    .end local v16    # "runtime":Ljava/lang/Runtime;
    .restart local v0    # "runtime":Ljava/lang/Runtime;
    :cond_1
    move-object/from16 v16, v0

    move v0, v13

    move v11, v14

    const-wide/16 v13, 0x0

    .end local v0    # "runtime":Ljava/lang/Runtime;
    .restart local v16    # "runtime":Ljava/lang/Runtime;
    invoke-static {v10, v13, v14}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    sput-wide v13, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    .line 144
    :goto_2
    const/4 v10, 0x1

    const-string v13, "io.netty.allocator.useCacheForAllThreads"

    invoke-static {v13, v10}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    .line 147
    const-string v13, "io.netty.allocator.directMemoryCacheAlignment"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    .line 152
    const/16 v13, 0x3ff

    const-string v14, "io.netty.allocator.maxCachedByteBuffersPerChunk"

    invoke-static {v14, v13}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

    .line 155
    sget-object v14, Lio/netty/buffer/PooledByteBufAllocator;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v14}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 156
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v15, "-Dio.netty.allocator.numHeapArenas: {}"

    invoke-interface {v14, v15, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v9, "-Dio.netty.allocator.numDirectArenas: {}"

    invoke-interface {v14, v9, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    const-string v1, "-Dio.netty.allocator.pageSize: {}"

    if-nez v3, :cond_2

    .line 159
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v1, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 161
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v1, v9, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    :goto_3
    const-string v1, "-Dio.netty.allocator.maxOrder: {}"

    if-nez v5, :cond_3

    .line 164
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v1, v9}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 166
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v14, v1, v9, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 168
    :goto_4
    shl-int v1, v7, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "-Dio.netty.allocator.chunkSize: {}"

    invoke-interface {v14, v7, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.allocator.tinyCacheSize: {}"

    invoke-interface {v14, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 170
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.allocator.smallCacheSize: {}"

    invoke-interface {v14, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-Dio.netty.allocator.normalCacheSize: {}"

    invoke-interface {v14, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.maxCachedBufferCapacity: {}"

    invoke-interface {v14, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.cacheTrimInterval: {}"

    invoke-interface {v14, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    sget-wide v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.cacheTrimIntervalMillis: {}"

    invoke-interface {v14, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "-Dio.netty.allocator.useCacheForAllThreads: {}"

    invoke-interface {v14, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    nop

    .line 177
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 176
    const-string v1, "-Dio.netty.allocator.maxCachedByteBuffersPerChunk: {}"

    invoke-interface {v14, v1, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    .end local v3    # "pageSizeFallbackCause":Ljava/lang/Throwable;
    .end local v4    # "defaultMaxOrder":I
    .end local v5    # "maxOrderFallbackCause":Ljava/lang/Throwable;
    .end local v6    # "defaultMinNumArena":I
    .end local v8    # "defaultChunkSize":I
    .end local v16    # "runtime":Ljava/lang/Runtime;
    .end local v19    # "defaultPageSize":I
    :cond_4
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator;

    .line 182
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    sput-object v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/PooledByteBufAllocator;

    .line 181
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(Z)V

    .line 197
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "nHeapArena"    # I
    .param p2, "nDirectArena"    # I
    .param p3, "pageSize"    # I
    .param p4, "maxOrder"    # I

    .line 206
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    .line 207
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "preferDirect"    # Z

    .line 201
    sget v2, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    sget v4, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    sget v5, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIII)V

    .line 202
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .locals 9
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    sget v6, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    sget v7, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    sget v8, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIII)V

    .line 217
    return-void
.end method

.method public constructor <init>(ZIIIIIII)V
    .locals 11
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "tinyCacheSize"    # I
    .param p7, "smallCacheSize"    # I
    .param p8, "normalCacheSize"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    sget-boolean v9, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    sget v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIIZI)V

    .line 228
    return-void
.end method

.method public constructor <init>(ZIIIIIIIZ)V
    .locals 11
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "tinyCacheSize"    # I
    .param p7, "smallCacheSize"    # I
    .param p8, "normalCacheSize"    # I
    .param p9, "useCacheForAllThreads"    # Z

    .line 234
    sget v10, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_DIRECT_MEMORY_CACHE_ALIGNMENT:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lio/netty/buffer/PooledByteBufAllocator;-><init>(ZIIIIIIIZI)V

    .line 237
    return-void
.end method

.method public constructor <init>(ZIIIIIIIZI)V
    .locals 19
    .param p1, "preferDirect"    # Z
    .param p2, "nHeapArena"    # I
    .param p3, "nDirectArena"    # I
    .param p4, "pageSize"    # I
    .param p5, "maxOrder"    # I
    .param p6, "tinyCacheSize"    # I
    .param p7, "smallCacheSize"    # I
    .param p8, "normalCacheSize"    # I
    .param p9, "useCacheForAllThreads"    # Z
    .param p10, "directMemoryCacheAlignment"    # I

    .line 242
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p10

    invoke-direct/range {p0 .. p1}, Lio/netty/buffer/AbstractByteBufAllocator;-><init>(Z)V

    .line 59
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator$1;

    invoke-direct {v0, v7}, Lio/netty/buffer/PooledByteBufAllocator$1;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->trimTask:Ljava/lang/Runnable;

    .line 243
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    move/from16 v11, p9

    invoke-direct {v0, v7, v11}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;-><init>(Lio/netty/buffer/PooledByteBufAllocator;Z)V

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    .line 244
    move/from16 v12, p6

    iput v12, v7, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    .line 245
    move/from16 v13, p7

    iput v13, v7, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    .line 246
    move/from16 v14, p8

    iput v14, v7, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    .line 247
    invoke-static/range {p4 .. p5}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculateChunkSize(II)I

    move-result v0

    iput v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    .line 249
    const-string v0, "nHeapArena"

    invoke-static {v8, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 250
    const-string v0, "nDirectArena"

    invoke-static {v9, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 252
    const-string v0, "directMemoryCacheAlignment"

    invoke-static {v10, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 253
    if-lez v10, :cond_1

    invoke-static {}, Lio/netty/buffer/PooledByteBufAllocator;->isDirectMemoryCacheAlignmentSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "directMemoryCacheAlignment is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    :goto_0
    neg-int v0, v10

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_6

    .line 262
    invoke-static/range {p4 .. p4}, Lio/netty/buffer/PooledByteBufAllocator;->validateAndCalculatePageShifts(I)I

    move-result v15

    .line 264
    .local v15, "pageShifts":I
    const/4 v6, 0x0

    if-lez v8, :cond_3

    .line 265
    invoke-static/range {p2 .. p2}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v1

    .line 267
    .local v5, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_1
    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v0, v0

    if-ge v4, v0, :cond_2

    .line 268
    new-instance v16, Lio/netty/buffer/PoolArena$HeapArena;

    iget v3, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v17, v3

    move/from16 v3, p5

    move/from16 v18, v4

    .end local v4    # "i":I
    .local v18, "i":I
    move v4, v15

    move-object v8, v5

    .end local v5    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    .local v8, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    move/from16 v5, v17

    move-object v11, v6

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolArena$HeapArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    .line 271
    .local v0, "arena":Lio/netty/buffer/PoolArena$HeapArena;
    iget-object v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    aput-object v0, v1, v18

    .line 272
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v0    # "arena":Lio/netty/buffer/PoolArena$HeapArena;
    add-int/lit8 v4, v18, 0x1

    move-object v5, v8

    move-object v6, v11

    move/from16 v8, p2

    move/from16 v11, p9

    .end local v18    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    .end local v8    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    .restart local v5    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    :cond_2
    move/from16 v18, v4

    move-object v8, v5

    move-object v11, v6

    .line 274
    .end local v4    # "i":I
    .end local v5    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    .restart local v8    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    .line 275
    .end local v8    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    goto :goto_2

    .line 276
    :cond_3
    move-object v11, v6

    iput-object v11, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    .line 280
    :goto_2
    if-lez v9, :cond_5

    .line 281
    invoke-static/range {p3 .. p3}, Lio/netty/buffer/PooledByteBufAllocator;->newArenaArray(I)[Lio/netty/buffer/PoolArena;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v1

    .line 283
    .restart local v8    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_3
    iget-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v0, v0

    if-ge v11, v0, :cond_4

    .line 284
    new-instance v16, Lio/netty/buffer/PoolArena$DirectArena;

    iget v5, v7, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v15

    move/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolArena$DirectArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    .line 286
    .local v0, "arena":Lio/netty/buffer/PoolArena$DirectArena;
    iget-object v1, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    aput-object v0, v1, v11

    .line 287
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v0    # "arena":Lio/netty/buffer/PoolArena$DirectArena;
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 289
    .end local v11    # "i":I
    :cond_4
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    .line 290
    .end local v8    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolArenaMetric;>;"
    goto :goto_4

    .line 291
    :cond_5
    iput-object v11, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    .line 292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    .line 294
    :goto_4
    new-instance v0, Lio/netty/buffer/PooledByteBufAllocatorMetric;

    invoke-direct {v0, v7}, Lio/netty/buffer/PooledByteBufAllocatorMetric;-><init>(Lio/netty/buffer/PooledByteBufAllocator;)V

    iput-object v0, v7, Lio/netty/buffer/PooledByteBufAllocator;->metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

    .line 295
    return-void

    .line 258
    .end local v15    # "pageShifts":I
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directMemoryCacheAlignment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: power of two)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method static synthetic access$100(Lio/netty/buffer/PooledByteBufAllocator;)[Lio/netty/buffer/PoolArena;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    return v0
.end method

.method static synthetic access$300(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return v0
.end method

.method static synthetic access$400(Lio/netty/buffer/PooledByteBufAllocator;)I
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 38
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BUFFER_CAPACITY:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .line 38
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL:I

    return v0
.end method

.method static synthetic access$700()J
    .locals 2

    .line 38
    sget-wide v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_CACHE_TRIM_INTERVAL_MILLIS:J

    return-wide v0
.end method

.method static synthetic access$800(Lio/netty/buffer/PooledByteBufAllocator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/PooledByteBufAllocator;

    .line 38
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->trimTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static defaultMaxOrder()I
    .locals 1

    .line 391
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_ORDER:I

    return v0
.end method

.method public static defaultNormalCacheSize()I
    .locals 1

    .line 426
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NORMAL_CACHE_SIZE:I

    return v0
.end method

.method public static defaultNumDirectArena()I
    .locals 1

    .line 377
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_DIRECT_ARENA:I

    return v0
.end method

.method public static defaultNumHeapArena()I
    .locals 1

    .line 370
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_NUM_HEAP_ARENA:I

    return v0
.end method

.method public static defaultPageSize()I
    .locals 1

    .line 384
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_PAGE_SIZE:I

    return v0
.end method

.method public static defaultPreferDirect()Z
    .locals 1

    .line 405
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->directBufferPreferred()Z

    move-result v0

    return v0
.end method

.method public static defaultSmallCacheSize()I
    .locals 1

    .line 419
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_SMALL_CACHE_SIZE:I

    return v0
.end method

.method public static defaultTinyCacheSize()I
    .locals 1

    .line 412
    sget v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_TINY_CACHE_SIZE:I

    return v0
.end method

.method public static defaultUseCacheForAllThreads()Z
    .locals 1

    .line 398
    sget-boolean v0, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_USE_CACHE_FOR_ALL_THREADS:Z

    return v0
.end method

.method public static isDirectMemoryCacheAlignmentSupported()Z
    .locals 1

    .line 433
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    return v0
.end method

.method private static newArenaArray(I)[Lio/netty/buffer/PoolArena;
    .locals 1
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation

    .line 299
    new-array v0, p0, [Lio/netty/buffer/PoolArena;

    return-object v0
.end method

.method private static usedMemory([Lio/netty/buffer/PoolArena;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolArena<",
            "*>;)J"
        }
    .end annotation

    .line 625
    .local p0, "arenas":[Lio/netty/buffer/PoolArena;, "[Lio/netty/buffer/PoolArena<*>;"
    if-nez p0, :cond_0

    .line 626
    const-wide/16 v0, -0x1

    return-wide v0

    .line 628
    :cond_0
    const-wide/16 v0, 0x0

    .line 629
    .local v0, "used":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 630
    .local v4, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    invoke-virtual {v4}, Lio/netty/buffer/PoolArena;->numActiveBytes()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 631
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_1

    .line 632
    const-wide v2, 0x7fffffffffffffffL

    return-wide v2

    .line 629
    .end local v4    # "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 635
    :cond_2
    return-wide v0
.end method

.method private static validateAndCalculateChunkSize(II)I
    .locals 6
    .param p0, "pageSize"    # I
    .param p1, "maxOrder"    # I

    .line 316
    const/16 v0, 0xe

    if-gt p1, v0, :cond_2

    .line 321
    move v0, p0

    .line 322
    .local v0, "chunkSize":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 323
    const/high16 v2, 0x20000000

    if-gt v0, v2, :cond_0

    .line 327
    shl-int/lit8 v0, v0, 0x1

    .line 322
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 324
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 325
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 324
    const-string v4, "pageSize (%d) << maxOrder (%d) must not exceed %d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 317
    .end local v0    # "chunkSize":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxOrder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-14)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateAndCalculatePageShifts(I)I
    .locals 4
    .param p0, "pageSize"    # I

    .line 303
    const-string v0, "pageSize: "

    const/16 v1, 0x1000

    if-lt p0, v1, :cond_1

    .line 307
    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    .line 312
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0

    .line 308
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (expected: power of 2)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (expected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final chunkSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 613
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->chunkSize:I

    return v0
.end method

.method public directArenas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 553
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    return-object v0
.end method

.method public dumpStats()Ljava/lang/String;
    .locals 7

    .line 664
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 665
    .local v0, "heapArenasLen":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 666
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 667
    const-string v3, " heap arena(s):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 668
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 669
    .local v2, "buf":Ljava/lang/StringBuilder;
    if-lez v0, :cond_1

    .line 670
    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    array-length v4, v3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 671
    .local v6, "a":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 670
    .end local v6    # "a":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 675
    :cond_1
    iget-object v3, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    array-length v3, v3

    .line 677
    .local v3, "directArenasLen":I
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 678
    const-string v5, " direct arena(s):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 679
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    if-lez v3, :cond_3

    .line 681
    iget-object v4, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    array-length v5, v4

    :goto_3
    if-ge v1, v5, :cond_3

    aget-object v6, v4, v1

    .line 682
    .local v6, "a":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 681
    .end local v6    # "a":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 686
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public freeThreadLocalCache()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->remove()V

    .line 456
    return-void
.end method

.method public hasThreadLocalCache()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 447
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->isSet()Z

    move-result v0

    return v0
.end method

.method public heapArenas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolArenaMetric;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    return-object v0
.end method

.method public isDirectBufferPooled()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic metric()Lio/netty/buffer/ByteBufAllocatorMetric;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBufAllocator;->metric()Lio/netty/buffer/PooledByteBufAllocatorMetric;

    move-result-object v0

    return-object v0
.end method

.method public metric()Lio/netty/buffer/PooledByteBufAllocatorMetric;
    .locals 1

    .line 513
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->metric:Lio/netty/buffer/PooledByteBufAllocatorMetric;

    return-object v0
.end method

.method protected newDirectBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 351
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    .line 352
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache;
    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache;->directArena:Lio/netty/buffer/PoolArena;

    .line 355
    .local v1, "directArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<Ljava/nio/ByteBuffer;>;"
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1, v0, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object v2

    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 358
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    invoke-static {p0, p1, p2}, Lio/netty/buffer/UnsafeByteBufUtil;->newUnsafeDirectByteBuf(Lio/netty/buffer/ByteBufAllocator;II)Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Lio/netty/buffer/UnpooledDirectByteBuf;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/buffer/UnpooledDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 363
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-static {v2}, Lio/netty/buffer/PooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3
.end method

.method protected newHeapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 334
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    .line 335
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache;
    iget-object v1, v0, Lio/netty/buffer/PoolThreadCache;->heapArena:Lio/netty/buffer/PoolArena;

    .line 338
    .local v1, "heapArena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<[B>;"
    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {v1, v0, p1, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;

    move-result-object v2

    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 341
    .end local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    goto :goto_0

    :cond_1
    new-instance v2, Lio/netty/buffer/UnpooledHeapByteBuf;

    invoke-direct {v2, p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;II)V

    .line 346
    .restart local v2    # "buf":Lio/netty/buffer/ByteBuf;
    :goto_0
    invoke-static {v2}, Lio/netty/buffer/PooledByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    return-object v3
.end method

.method public normalCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 603
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->normalCacheSize:I

    return v0
.end method

.method public numDirectArenas()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenaMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numHeapArenas()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenaMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numThreadLocalCaches()I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    .line 564
    .local v0, "arenas":[Lio/netty/buffer/PoolArena;, "[Lio/netty/buffer/PoolArena<*>;"
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 565
    return v1

    .line 568
    :cond_1
    const/4 v2, 0x0

    .line 569
    .local v2, "total":I
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 570
    .local v4, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    iget-object v5, v4, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    add-int/2addr v2, v5

    .line 569
    .end local v4    # "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 573
    :cond_2
    return v2
.end method

.method public smallCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->smallCacheSize:I

    return v0
.end method

.method final threadCache()Lio/netty/buffer/PoolThreadCache;
    .locals 2

    .line 639
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    .line 640
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache;
    if-eqz v0, :cond_0

    .line 641
    return-object v0

    .line 640
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public tinyCacheSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 583
    iget v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->tinyCacheSize:I

    return v0
.end method

.method public trimCurrentThreadCache()Z
    .locals 2

    .line 651
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->threadCache:Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator$PoolThreadLocalCache;->getIfExists()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PoolThreadCache;

    .line 652
    .local v0, "cache":Lio/netty/buffer/PoolThreadCache;
    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {v0}, Lio/netty/buffer/PoolThreadCache;->trim()V

    .line 654
    const/4 v1, 0x1

    return v1

    .line 656
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method final usedDirectMemory()J
    .locals 2

    .line 621
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->directArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->usedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method

.method final usedHeapMemory()J
    .locals 2

    .line 617
    iget-object v0, p0, Lio/netty/buffer/PooledByteBufAllocator;->heapArenas:[Lio/netty/buffer/PoolArena;

    invoke-static {v0}, Lio/netty/buffer/PooledByteBufAllocator;->usedMemory([Lio/netty/buffer/PoolArena;)J

    move-result-wide v0

    return-wide v0
.end method
