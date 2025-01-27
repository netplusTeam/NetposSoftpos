.class abstract Lio/netty/buffer/PoolArena;
.super Ljava/lang/Object;
.source "PoolArena.java"

# interfaces
.implements Lio/netty/buffer/PoolArenaMetric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/PoolArena$DirectArena;,
        Lio/netty/buffer/PoolArena$HeapArena;,
        Lio/netty/buffer/PoolArena$SizeClass;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolArenaMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final HAS_UNSAFE:Z

.field static final numTinySubpagePools:I = 0x20


# instance fields
.field private final activeBytesHuge:Lio/netty/util/internal/LongCounter;

.field private final allocationsHuge:Lio/netty/util/internal/LongCounter;

.field private allocationsNormal:J

.field private final allocationsSmall:Lio/netty/util/internal/LongCounter;

.field private final allocationsTiny:Lio/netty/util/internal/LongCounter;

.field private final chunkListMetrics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolChunkListMetric;",
            ">;"
        }
    .end annotation
.end field

.field final chunkSize:I

.field private final deallocationsHuge:Lio/netty/util/internal/LongCounter;

.field private deallocationsNormal:J

.field private deallocationsSmall:J

.field private deallocationsTiny:J

.field final directMemoryCacheAlignment:I

.field final directMemoryCacheAlignmentMask:I

.field private final maxOrder:I

.field final numSmallSubpagePools:I

.field final numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

.field final pageShifts:I

.field final pageSize:I

.field final parent:Lio/netty/buffer/PooledByteBufAllocator;

.field private final q000:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q025:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q050:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q075:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final q100:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final qInit:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final smallSubpagePools:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field final subpageOverflowMask:I

.field private final tinySubpagePools:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    nop

    .line 33
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    sput-boolean v0, Lio/netty/buffer/PoolArena;->HAS_UNSAFE:Z

    return-void
.end method

.method protected constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V
    .locals 16
    .param p1, "parent"    # Lio/netty/buffer/PooledByteBufAllocator;
    .param p2, "pageSize"    # I
    .param p3, "maxOrder"    # I
    .param p4, "pageShifts"    # I
    .param p5, "chunkSize"    # I
    .param p6, "cacheAlignment"    # I

    .line 87
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p4

    move/from16 v9, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    .line 69
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    .line 70
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 71
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    .line 78
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newLongCounter()Lio/netty/util/internal/LongCounter;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 88
    move-object/from16 v10, p1

    iput-object v10, v6, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    .line 89
    iput v7, v6, Lio/netty/buffer/PoolArena;->pageSize:I

    .line 90
    move/from16 v11, p3

    iput v11, v6, Lio/netty/buffer/PoolArena;->maxOrder:I

    .line 91
    iput v8, v6, Lio/netty/buffer/PoolArena;->pageShifts:I

    .line 92
    move/from16 v12, p5

    iput v12, v6, Lio/netty/buffer/PoolArena;->chunkSize:I

    .line 93
    iput v9, v6, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    .line 94
    add-int/lit8 v0, v9, -0x1

    iput v0, v6, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignmentMask:I

    .line 95
    add-int/lit8 v0, v7, -0x1

    not-int v0, v0

    iput v0, v6, Lio/netty/buffer/PoolArena;->subpageOverflowMask:I

    .line 96
    const/16 v0, 0x20

    invoke-direct {v6, v0}, Lio/netty/buffer/PoolArena;->newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, v6, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 98
    invoke-direct {v6, v7}, Lio/netty/buffer/PoolArena;->newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v2

    aput-object v2, v1, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v8, -0x9

    iput v0, v6, Lio/netty/buffer/PoolArena;->numSmallSubpagePools:I

    .line 102
    invoke-direct {v6, v0}, Lio/netty/buffer/PoolArena;->newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object v0

    iput-object v0, v6, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 103
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, v6, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 104
    invoke-direct {v6, v7}, Lio/netty/buffer/PoolArena;->newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v2

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    .end local v0    # "i":I
    :cond_1
    new-instance v13, Lio/netty/buffer/PoolChunkList;

    const/4 v2, 0x0

    const/16 v3, 0x64

    const v4, 0x7fffffff

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v13, v6, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    .line 108
    new-instance v14, Lio/netty/buffer/PoolChunkList;

    const/16 v3, 0x4b

    const/16 v4, 0x64

    move-object v0, v14

    move-object v2, v13

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v14, v6, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 109
    new-instance v15, Lio/netty/buffer/PoolChunkList;

    const/16 v3, 0x32

    move-object v0, v15

    move-object v2, v14

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v15, v6, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    .line 110
    new-instance v5, Lio/netty/buffer/PoolChunkList;

    const/16 v3, 0x19

    const/16 v4, 0x4b

    move-object v0, v5

    move-object v2, v15

    move-object v7, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v7, v6, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    .line 111
    new-instance v5, Lio/netty/buffer/PoolChunkList;

    const/4 v3, 0x1

    const/16 v4, 0x32

    move-object v0, v5

    move-object v2, v7

    move-object v8, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v8, v6, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 112
    new-instance v5, Lio/netty/buffer/PoolChunkList;

    const/high16 v3, -0x80000000

    const/16 v4, 0x19

    move-object v0, v5

    move-object v2, v8

    move-object v9, v5

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PoolChunkList;-><init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V

    iput-object v9, v6, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 114
    invoke-virtual {v13, v14}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 115
    invoke-virtual {v14, v15}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 116
    invoke-virtual {v15, v7}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 117
    invoke-virtual {v7, v8}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 118
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 119
    invoke-virtual {v9, v9}, Lio/netty/buffer/PoolChunkList;->prevList(Lio/netty/buffer/PoolChunkList;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 122
    .local v0, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolChunkListMetric;>;"
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v6, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    .line 129
    return-void
.end method

.method private allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V
    .locals 18
    .param p1, "cache"    # Lio/netty/buffer/PoolThreadCache;
    .param p3, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache;",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p2, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual {v1, v10}, Lio/netty/buffer/PoolArena;->normalizeCapacity(I)I

    move-result v11

    .line 177
    .local v11, "normCapacity":I
    invoke-virtual {v1, v11}, Lio/netty/buffer/PoolArena;->isTinyOrSmall(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 180
    invoke-static {v11}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v12

    .line 181
    .local v12, "tiny":Z
    if-eqz v12, :cond_1

    .line 182
    invoke-virtual {v2, v1, v9, v10, v11}, Lio/netty/buffer/PoolThreadCache;->allocateTiny(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    invoke-static {v11}, Lio/netty/buffer/PoolArena;->tinyIdx(I)I

    move-result v0

    .line 187
    .local v0, "tableIdx":I
    iget-object v3, v1, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    move v13, v0

    move-object v14, v3

    .local v3, "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    goto :goto_0

    .line 189
    .end local v0    # "tableIdx":I
    .end local v3    # "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_1
    invoke-virtual {v2, v1, v9, v10, v11}, Lio/netty/buffer/PoolThreadCache;->allocateSmall(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    return-void

    .line 193
    :cond_2
    invoke-static {v11}, Lio/netty/buffer/PoolArena;->smallIdx(I)I

    move-result v0

    .line 194
    .restart local v0    # "tableIdx":I
    iget-object v3, v1, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    move v13, v0

    move-object v14, v3

    .line 197
    .end local v0    # "tableIdx":I
    .local v13, "tableIdx":I
    .local v14, "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    :goto_0
    aget-object v15, v14, v13

    .line 203
    .local v15, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    monitor-enter v15

    .line 204
    :try_start_0
    iget-object v0, v15, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 205
    .local v0, "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    if-eq v0, v15, :cond_5

    .line 206
    iget-boolean v3, v0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    if-ne v3, v11, :cond_4

    .line 207
    invoke-virtual {v0}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v3

    move-wide/from16 v16, v3

    .line 208
    .local v16, "handle":J
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-ltz v3, :cond_3

    .line 209
    iget-object v3, v0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move-wide/from16 v6, v16

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V

    .line 210
    invoke-direct {v1, v12}, Lio/netty/buffer/PoolArena;->incTinySmallAllocation(Z)V

    .line 211
    monitor-exit v15

    return-void

    .line 208
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "normCapacity":I
    .end local v12    # "tiny":Z
    .end local v13    # "tableIdx":I
    .end local v14    # "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v15    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local p1    # "cache":Lio/netty/buffer/PoolThreadCache;
    .end local p2    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .end local p3    # "reqCapacity":I
    throw v3

    .line 206
    .end local v16    # "handle":J
    .restart local v11    # "normCapacity":I
    .restart local v12    # "tiny":Z
    .restart local v13    # "tableIdx":I
    .restart local v14    # "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local v15    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local p1    # "cache":Lio/netty/buffer/PoolThreadCache;
    .restart local p2    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .restart local p3    # "reqCapacity":I
    :cond_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v11    # "normCapacity":I
    .end local v12    # "tiny":Z
    .end local v13    # "tableIdx":I
    .end local v14    # "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v15    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local p1    # "cache":Lio/netty/buffer/PoolThreadCache;
    .end local p2    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .end local p3    # "reqCapacity":I
    throw v3

    .line 213
    .end local v0    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local v11    # "normCapacity":I
    .restart local v12    # "tiny":Z
    .restart local v13    # "tableIdx":I
    .restart local v14    # "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local v15    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .restart local p1    # "cache":Lio/netty/buffer/PoolThreadCache;
    .restart local p2    # "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .restart local p3    # "reqCapacity":I
    :cond_5
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    monitor-enter p0

    .line 215
    :try_start_1
    invoke-direct {v1, v9, v10, v11}, Lio/netty/buffer/PoolArena;->allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V

    .line 216
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    invoke-direct {v1, v12}, Lio/netty/buffer/PoolArena;->incTinySmallAllocation(Z)V

    .line 219
    return-void

    .line 216
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 213
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 221
    .end local v12    # "tiny":Z
    .end local v13    # "tableIdx":I
    .end local v14    # "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v15    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_6
    iget v0, v1, Lio/netty/buffer/PoolArena;->chunkSize:I

    if-gt v11, v0, :cond_8

    .line 222
    invoke-virtual {v2, v1, v9, v10, v11}, Lio/netty/buffer/PoolThreadCache;->allocateNormal(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 224
    return-void

    .line 226
    :cond_7
    monitor-enter p0

    .line 227
    :try_start_4
    invoke-direct {v1, v9, v10, v11}, Lio/netty/buffer/PoolArena;->allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V

    .line 228
    iget-wide v3, v1, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    .line 229
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 232
    :cond_8
    invoke-direct {v1, v9, v10}, Lio/netty/buffer/PoolArena;->allocateHuge(Lio/netty/buffer/PooledByteBuf;I)V

    .line 234
    :goto_1
    return-void
.end method

.method private allocateHuge(Lio/netty/buffer/PooledByteBuf;I)V
    .locals 4
    .param p2, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation

    .line 260
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p2}, Lio/netty/buffer/PoolArena;->newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;

    move-result-object v0

    .line 261
    .local v0, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    invoke-virtual {v0}, Lio/netty/buffer/PoolChunk;->chunkSize()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 262
    invoke-virtual {p1, v0, p2}, Lio/netty/buffer/PooledByteBuf;->initUnpooled(Lio/netty/buffer/PoolChunk;I)V

    .line 263
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v1}, Lio/netty/util/internal/LongCounter;->increment()V

    .line 264
    return-void
.end method

.method private allocateNormal(Lio/netty/buffer/PooledByteBuf;II)V
    .locals 4
    .param p2, "reqCapacity"    # I
    .param p3, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II)V"
        }
    .end annotation

    .line 238
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 239
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 240
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunkList;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena;->pageSize:I

    iget v1, p0, Lio/netty/buffer/PoolArena;->maxOrder:I

    iget v2, p0, Lio/netty/buffer/PoolArena;->pageShifts:I

    iget v3, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lio/netty/buffer/PoolArena;->newChunk(IIII)Lio/netty/buffer/PoolChunk;

    move-result-object v0

    .line 246
    .local v0, "c":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunk;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v1

    .line 247
    .local v1, "success":Z
    if-eqz v1, :cond_1

    .line 248
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v2, v0}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    .line 249
    return-void

    .line 247
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 241
    .end local v0    # "c":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .end local v1    # "success":Z
    :cond_2
    :goto_0
    return-void
.end method

.method private static appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V
    .locals 4
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)V"
        }
    .end annotation

    .line 613
    .local p1, "subpages":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 614
    aget-object v1, p1, v0

    .line 615
    .local v1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    iget-object v2, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v2, v1, :cond_0

    .line 616
    goto :goto_1

    .line 619
    :cond_0
    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 620
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 621
    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    iget-object v2, v1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 624
    .local v2, "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v2, v2, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 626
    if-ne v2, v1, :cond_1

    .line 627
    nop

    .line 613
    .end local v1    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    .end local v2    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private varargs destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;)V"
        }
    .end annotation

    .line 651
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "chunkLists":[Lio/netty/buffer/PoolChunkList;, "[Lio/netty/buffer/PoolChunkList<TT;>;"
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 652
    .local v2, "chunkList":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    invoke-virtual {v2, p0}, Lio/netty/buffer/PoolChunkList;->destroy(Lio/netty/buffer/PoolArena;)V

    .line 651
    .end local v2    # "chunkList":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    :cond_0
    return-void
.end method

.method private static destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)V"
        }
    .end annotation

    .line 645
    .local p0, "pages":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<*>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 646
    .local v2, "page":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    invoke-virtual {v2}, Lio/netty/buffer/PoolSubpage;->destroy()V

    .line 645
    .end local v2    # "page":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_0
    return-void
.end method

.method private incTinySmallAllocation(Z)V
    .locals 1
    .param p1, "tiny"    # Z

    .line 252
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->increment()V

    goto :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->increment()V

    .line 257
    :goto_0
    return-void
.end method

.method static isTiny(I)Z
    .locals 1
    .param p0, "normCapacity"    # I

    .line 172
    and-int/lit16 v0, p0, -0x200

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private newSubpagePoolArray(I)[Lio/netty/buffer/PoolSubpage;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    new-array v0, p1, [Lio/netty/buffer/PoolSubpage;

    return-object v0
.end method

.method private newSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;
    .locals 1
    .param p1, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    new-instance v0, Lio/netty/buffer/PoolSubpage;

    invoke-direct {v0, p1}, Lio/netty/buffer/PoolSubpage;-><init>(I)V

    .line 133
    .local v0, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iput-object v0, v0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 134
    iput-object v0, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 135
    return-object v0
.end method

.method private sizeClass(I)Lio/netty/buffer/PoolArena$SizeClass;
    .locals 1
    .param p1, "normCapacity"    # I

    .line 284
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->isTinyOrSmall(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    sget-object v0, Lio/netty/buffer/PoolArena$SizeClass;->Normal:Lio/netty/buffer/PoolArena$SizeClass;

    return-object v0

    .line 287
    :cond_0
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lio/netty/buffer/PoolArena$SizeClass;->Tiny:Lio/netty/buffer/PoolArena$SizeClass;

    goto :goto_0

    :cond_1
    sget-object v0, Lio/netty/buffer/PoolArena$SizeClass;->Small:Lio/netty/buffer/PoolArena$SizeClass;

    :goto_0
    return-object v0
.end method

.method static smallIdx(I)I
    .locals 2
    .param p0, "normCapacity"    # I

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "tableIdx":I
    ushr-int/lit8 v1, p0, 0xa

    .line 158
    .local v1, "i":I
    :goto_0
    if-eqz v1, :cond_0

    .line 159
    ushr-int/lit8 v1, v1, 0x1

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return v0
.end method

.method private static subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/buffer/PoolSubpage<",
            "*>;)",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    .line 447
    .local p0, "pages":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<*>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolSubpageMetric;>;"
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 449
    .local v3, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    iget-object v4, v3, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v4, v3, :cond_0

    .line 450
    goto :goto_1

    .line 452
    :cond_0
    iget-object v4, v3, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 454
    .local v4, "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v4, v4, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 456
    if-ne v4, v3, :cond_1

    .line 457
    nop

    .line 448
    .end local v3    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    .end local v4    # "s":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<*>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    :cond_2
    return-object v0
.end method

.method static tinyIdx(I)I
    .locals 1
    .param p0, "normCapacity"    # I

    .line 152
    ushr-int/lit8 v0, p0, 0x4

    return v0
.end method


# virtual methods
.method alignCapacity(I)I
    .locals 2
    .param p1, "reqCapacity"    # I

    .line 377
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignmentMask:I

    and-int/2addr v0, p1

    .line 378
    .local v0, "delta":I
    if-nez v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget v1, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    :goto_0
    return v1
.end method

.method allocate(Lio/netty/buffer/PoolThreadCache;II)Lio/netty/buffer/PooledByteBuf;
    .locals 1
    .param p1, "cache"    # Lio/netty/buffer/PoolThreadCache;
    .param p2, "reqCapacity"    # I
    .param p3, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolThreadCache;",
            "II)",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    invoke-virtual {p0, p3}, Lio/netty/buffer/PoolArena;->newByteBuf(I)Lio/netty/buffer/PooledByteBuf;

    move-result-object v0

    .line 147
    .local v0, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-direct {p0, p1, v0, p2}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V

    .line 148
    return-object v0
.end method

.method public chunkLists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolChunkListMetric;",
            ">;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    return-object v0
.end method

.method protected abstract destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method protected final finalize()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 636
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x6

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    iget-object v7, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v7}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    .line 639
    iget-object v7, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v7}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    .line 640
    new-array v6, v6, [Lio/netty/buffer/PoolChunkList;

    iget-object v7, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    aput-object v7, v6, v5

    iget-object v5, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    aput-object v5, v6, v4

    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    aput-object v4, v6, v3

    iget-object v3, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    aput-object v3, v6, v2

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    aput-object v2, v6, v1

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    aput-object v1, v6, v0

    invoke-direct {p0, v6}, Lio/netty/buffer/PoolArena;->destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V

    .line 641
    nop

    .line 642
    return-void

    .line 638
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v8}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    .line 639
    iget-object v8, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v8}, Lio/netty/buffer/PoolArena;->destroyPoolSubPages([Lio/netty/buffer/PoolSubpage;)V

    .line 640
    new-array v6, v6, [Lio/netty/buffer/PoolChunkList;

    iget-object v8, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    aput-object v8, v6, v5

    iget-object v5, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    aput-object v5, v6, v4

    iget-object v4, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    aput-object v4, v6, v3

    iget-object v3, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    aput-object v3, v6, v2

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    aput-object v2, v6, v1

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    aput-object v1, v6, v0

    invoke-direct {p0, v6}, Lio/netty/buffer/PoolArena;->destroyPoolChunkLists([Lio/netty/buffer/PoolChunkList;)V

    .line 641
    throw v7
.end method

.method findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;
    .locals 3
    .param p1, "elemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    .line 321
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    ushr-int/lit8 v0, p1, 0x4

    .line 323
    .local v0, "tableIdx":I
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    .local v1, "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    goto :goto_1

    .line 325
    .end local v0    # "tableIdx":I
    .end local v1    # "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_0
    const/4 v0, 0x0

    .line 326
    .restart local v0    # "tableIdx":I
    ushr-int/lit8 p1, p1, 0xa

    .line 327
    :goto_0
    if-eqz p1, :cond_1

    .line 328
    ushr-int/lit8 p1, p1, 0x1

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 331
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    .line 334
    .restart local v1    # "table":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    :goto_1
    aget-object v2, v1, v0

    return-object v2
.end method

.method free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V
    .locals 12
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "normCapacity"    # I
    .param p6, "cache"    # Lio/netty/buffer/PoolThreadCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 267
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    move-object v8, p0

    move-object v9, p1

    iget-boolean v0, v9, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->chunkSize()I

    move-result v0

    .line 269
    .local v0, "size":I
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 270
    iget-object v1, v8, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    neg-int v2, v0

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lio/netty/util/internal/LongCounter;->add(J)V

    .line 271
    iget-object v1, v8, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v1}, Lio/netty/util/internal/LongCounter;->increment()V

    .line 272
    .end local v0    # "size":I
    move/from16 v10, p5

    goto :goto_0

    .line 273
    :cond_0
    move/from16 v10, p5

    invoke-direct {p0, v10}, Lio/netty/buffer/PoolArena;->sizeClass(I)Lio/netty/buffer/PoolArena$SizeClass;

    move-result-object v11

    .line 274
    .local v11, "sizeClass":Lio/netty/buffer/PoolArena$SizeClass;
    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object v7, v11

    invoke-virtual/range {v0 .. v7}, Lio/netty/buffer/PoolThreadCache;->add(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolArena$SizeClass;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    return-void

    .line 279
    :cond_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-object v4, v11

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PoolArena;->freeChunk(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V

    .line 281
    .end local v11    # "sizeClass":Lio/netty/buffer/PoolArena$SizeClass;
    :goto_0
    return-void
.end method

.method freeChunk(Lio/netty/buffer/PoolChunk;JLio/netty/buffer/PoolArena$SizeClass;Ljava/nio/ByteBuffer;Z)V
    .locals 5
    .param p2, "handle"    # J
    .param p4, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;
    .param p5, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p6, "finalizer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;J",
            "Lio/netty/buffer/PoolArena$SizeClass;",
            "Ljava/nio/ByteBuffer;",
            "Z)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    monitor-enter p0

    .line 295
    if-nez p6, :cond_0

    .line 296
    :try_start_0
    sget-object v0, Lio/netty/buffer/PoolArena$1;->$SwitchMap$io$netty$buffer$PoolArena$SizeClass:[I

    invoke-virtual {p4}, Lio/netty/buffer/PoolArena$SizeClass;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 307
    new-instance v0, Ljava/lang/Error;

    goto :goto_0

    .line 304
    :pswitch_0
    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    .line 305
    goto :goto_1

    .line 301
    :pswitch_1
    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    .line 302
    goto :goto_1

    .line 298
    :pswitch_2
    iget-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    .line 299
    goto :goto_1

    .line 307
    :goto_0
    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    .end local p1    # "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .end local p2    # "handle":J
    .end local p4    # "sizeClass":Lio/netty/buffer/PoolArena$SizeClass;
    .end local p5    # "nioBuffer":Ljava/nio/ByteBuffer;
    .end local p6    # "finalizer":Z
    throw v0

    .line 310
    .restart local p1    # "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .restart local p2    # "handle":J
    .restart local p4    # "sizeClass":Lio/netty/buffer/PoolArena$SizeClass;
    .restart local p5    # "nioBuffer":Ljava/nio/ByteBuffer;
    .restart local p6    # "finalizer":Z
    :cond_0
    :goto_1
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1, p2, p3, p5}, Lio/netty/buffer/PoolChunkList;->free(Lio/netty/buffer/PoolChunk;JLjava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 311
    .local v0, "destroyChunk":Z
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    if-eqz v0, :cond_2

    .line 314
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 316
    :cond_2
    return-void

    .line 311
    .end local v0    # "destroyChunk":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract isDirect()Z
.end method

.method isTinyOrSmall(I)Z
    .locals 1
    .param p1, "normCapacity"    # I

    .line 167
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolArena;->subpageOverflowMask:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;I)V"
        }
    .end annotation
.end method

.method protected abstract newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected abstract newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end method

.method normalizeCapacity(I)I
    .locals 2
    .param p1, "reqCapacity"    # I

    .line 338
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    const-string v0, "reqCapacity"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 340
    iget v0, p0, Lio/netty/buffer/PoolArena;->chunkSize:I

    if-lt p1, v0, :cond_1

    .line 341
    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    if-nez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->alignCapacity(I)I

    move-result v0

    :goto_0
    return v0

    .line 344
    :cond_1
    invoke-static {p1}, Lio/netty/buffer/PoolArena;->isTiny(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 347
    move v0, p1

    .line 348
    .local v0, "normalizedCapacity":I
    add-int/lit8 v0, v0, -0x1

    .line 349
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 350
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 351
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 352
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 353
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 354
    add-int/lit8 v0, v0, 0x1

    .line 356
    if-gez v0, :cond_2

    .line 357
    ushr-int/lit8 v0, v0, 0x1

    .line 359
    :cond_2
    iget v1, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    if-eqz v1, :cond_4

    iget v1, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignmentMask:I

    and-int/2addr v1, v0

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 361
    :cond_4
    :goto_1
    return v0

    .line 364
    .end local v0    # "normalizedCapacity":I
    :cond_5
    iget v0, p0, Lio/netty/buffer/PoolArena;->directMemoryCacheAlignment:I

    if-lez v0, :cond_6

    .line 365
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolArena;->alignCapacity(I)I

    move-result v0

    return v0

    .line 369
    :cond_6
    and-int/lit8 v0, p1, 0xf

    if-nez v0, :cond_7

    .line 370
    return p1

    .line 373
    :cond_7
    and-int/lit8 v0, p1, -0x10

    add-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public numActiveAllocations()J
    .locals 8

    .line 524
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    .line 525
    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 526
    .local v0, "val":J
    monitor-enter p0

    .line 527
    :try_start_0
    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    iget-wide v4, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    iget-wide v6, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    add-long/2addr v4, v6

    iget-wide v6, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    add-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 528
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 528
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public numActiveBytes()J
    .locals 7

    .line 558
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->activeBytesHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    .line 559
    .local v0, "val":J
    monitor-enter p0

    .line 560
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 561
    iget-object v3, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/buffer/PoolChunkListMetric;

    invoke-interface {v3}, Lio/netty/buffer/PoolChunkListMetric;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/buffer/PoolChunkMetric;

    .line 562
    .local v4, "m":Lio/netty/buffer/PoolChunkMetric;
    invoke-interface {v4}, Lio/netty/buffer/PoolChunkMetric;->chunkSize()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 563
    .end local v4    # "m":Lio/netty/buffer/PoolChunkMetric;
    goto :goto_1

    .line 560
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 565
    .end local v2    # "i":I
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 565
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public numActiveHugeAllocations()J
    .locals 4

    .line 553
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numHugeAllocations()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numHugeDeallocations()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public numActiveNormalAllocations()J
    .locals 4

    .line 545
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    .line 546
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    sub-long/2addr v0, v2

    .line 547
    .local v0, "val":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2

    .line 547
    .end local v0    # "val":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public numActiveSmallAllocations()J
    .locals 4

    .line 539
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numSmallAllocations()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numSmallDeallocations()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public numActiveTinyAllocations()J
    .locals 4

    .line 534
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numTinyAllocations()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/netty/buffer/PoolArena;->numTinyDeallocations()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public numAllocations()J
    .locals 6

    .line 467
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    .line 468
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J

    .line 469
    .local v0, "allocsNormal":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    iget-object v4, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    invoke-interface {v4}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object v4, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v4}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v4

    add-long/2addr v2, v4

    return-wide v2

    .line 469
    .end local v0    # "allocsNormal":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public numChunkLists()I
    .locals 1

    .line 428
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->chunkListMetrics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numDeallocations()J
    .locals 4

    .line 491
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    .line 492
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J

    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J

    add-long/2addr v0, v2

    .line 493
    .local v0, "deallocs":J
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    iget-object v2, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v2}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2

    .line 493
    .end local v0    # "deallocs":J
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public numHugeAllocations()J
    .locals 2

    .line 514
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public numHugeDeallocations()J
    .locals 2

    .line 519
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->deallocationsHuge:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized numNormalAllocations()J
    .locals 2

    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    .line 485
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->allocationsNormal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 485
    .end local p0    # "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized numNormalDeallocations()J
    .locals 2

    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    .line 509
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsNormal:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 509
    .end local p0    # "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public numSmallAllocations()J
    .locals 2

    .line 480
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsSmall:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized numSmallDeallocations()J
    .locals 2

    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    .line 504
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsSmall:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 504
    .end local p0    # "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public numSmallSubpages()I
    .locals 1

    .line 423
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v0, v0

    return v0
.end method

.method public numThreadCaches()I
    .locals 1

    .line 413
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->numThreadCaches:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public numTinyAllocations()J
    .locals 2

    .line 475
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->allocationsTiny:Lio/netty/util/internal/LongCounter;

    invoke-interface {v0}, Lio/netty/util/internal/LongCounter;->value()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized numTinyDeallocations()J
    .locals 2

    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    .line 499
    :try_start_0
    iget-wide v0, p0, Lio/netty/buffer/PoolArena;->deallocationsTiny:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 499
    .end local p0    # "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public numTinySubpages()I
    .locals 1

    .line 418
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    array-length v0, v0

    return v0
.end method

.method reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V
    .locals 20
    .param p2, "newCapacity"    # I
    .param p3, "freeOldMemory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 382
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    if-ltz v9, :cond_3

    invoke-virtual/range {p1 .. p1}, Lio/netty/buffer/PooledByteBuf;->maxCapacity()I

    move-result v0

    if-gt v9, v0, :cond_3

    .line 384
    iget v10, v8, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 385
    .local v10, "oldCapacity":I
    if-ne v10, v9, :cond_0

    .line 386
    return-void

    .line 389
    :cond_0
    iget-object v11, v8, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 390
    .local v11, "oldChunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v12, v8, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 391
    .local v12, "oldNioBuffer":Ljava/nio/ByteBuffer;
    iget-wide v13, v8, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 392
    .local v13, "oldHandle":J
    iget-object v15, v8, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 393
    .local v15, "oldMemory":Ljava/lang/Object;, "TT;"
    iget v6, v8, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 394
    .local v6, "oldOffset":I
    iget v5, v8, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    .line 397
    .local v5, "oldMaxLength":I
    iget-object v0, v7, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->threadCache()Lio/netty/buffer/PoolThreadCache;

    move-result-object v0

    invoke-direct {v7, v0, v8, v9}, Lio/netty/buffer/PoolArena;->allocate(Lio/netty/buffer/PoolThreadCache;Lio/netty/buffer/PooledByteBuf;I)V

    .line 399
    if-le v9, v10, :cond_1

    .line 400
    move v0, v10

    move v3, v0

    .local v0, "bytesToCopy":I
    goto :goto_0

    .line 402
    .end local v0    # "bytesToCopy":I
    :cond_1
    invoke-virtual/range {p1 .. p2}, Lio/netty/buffer/PooledByteBuf;->trimIndicesToCapacity(I)V

    .line 403
    move/from16 v0, p2

    move v3, v0

    .line 405
    .local v3, "bytesToCopy":I
    :goto_0
    invoke-virtual {v7, v15, v6, v8, v3}, Lio/netty/buffer/PoolArena;->memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V

    .line 406
    if-eqz p3, :cond_2

    .line 407
    iget-object v4, v8, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v12

    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "bytesToCopy":I
    .local v16, "bytesToCopy":I
    move-wide v3, v13

    move/from16 v18, v5

    .end local v5    # "oldMaxLength":I
    .local v18, "oldMaxLength":I
    move/from16 v19, v6

    .end local v6    # "oldOffset":I
    .local v19, "oldOffset":I
    move-object/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V

    goto :goto_1

    .line 406
    .end local v16    # "bytesToCopy":I
    .end local v18    # "oldMaxLength":I
    .end local v19    # "oldOffset":I
    .restart local v3    # "bytesToCopy":I
    .restart local v5    # "oldMaxLength":I
    .restart local v6    # "oldOffset":I
    :cond_2
    move/from16 v16, v3

    move/from16 v18, v5

    move/from16 v19, v6

    .line 409
    .end local v3    # "bytesToCopy":I
    .end local v5    # "oldMaxLength":I
    .end local v6    # "oldOffset":I
    .restart local v16    # "bytesToCopy":I
    .restart local v18    # "oldMaxLength":I
    .restart local v19    # "oldOffset":I
    :goto_1
    return-void

    .line 382
    .end local v10    # "oldCapacity":I
    .end local v11    # "oldChunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .end local v12    # "oldNioBuffer":Ljava/nio/ByteBuffer;
    .end local v13    # "oldHandle":J
    .end local v15    # "oldMemory":Ljava/lang/Object;, "TT;"
    .end local v16    # "bytesToCopy":I
    .end local v18    # "oldMaxLength":I
    .end local v19    # "oldOffset":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public smallSubpages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v0}, Lio/netty/buffer/PoolArena;->subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tinySubpages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/buffer/PoolSubpageMetric;",
            ">;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v0}, Lio/netty/buffer/PoolArena;->subPageMetricList([Lio/netty/buffer/PoolSubpage;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 3

    .local p0, "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    monitor-enter p0

    .line 577
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chunk(s) at 0~25%:"

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->qInit:Lio/netty/buffer/PoolChunkList;

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Chunk(s) at 0~50%:"

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 583
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q000:Lio/netty/buffer/PoolChunkList;

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Chunk(s) at 25~75%:"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q025:Lio/netty/buffer/PoolChunkList;

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Chunk(s) at 50~100%:"

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q050:Lio/netty/buffer/PoolChunkList;

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Chunk(s) at 75~100%:"

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q075:Lio/netty/buffer/PoolChunkList;

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Chunk(s) at 100%:"

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/buffer/PoolArena;->q100:Lio/netty/buffer/PoolChunkList;

    .line 600
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 601
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tiny subpages:"

    .line 602
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 603
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->tinySubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v0, v1}, Lio/netty/buffer/PoolArena;->appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V

    .line 604
    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "small subpages:"

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v1, p0, Lio/netty/buffer/PoolArena;->smallSubpagePools:[Lio/netty/buffer/PoolSubpage;

    invoke-static {v0, v1}, Lio/netty/buffer/PoolArena;->appendPoolSubPages(Ljava/lang/StringBuilder;[Lio/netty/buffer/PoolSubpage;)V

    .line 607
    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 576
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local p0    # "this":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
