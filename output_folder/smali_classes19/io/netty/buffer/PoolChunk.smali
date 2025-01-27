.class final Lio/netty/buffer/PoolChunk;
.super Ljava/lang/Object;
.source "PoolChunk.java"

# interfaces
.implements Lio/netty/buffer/PoolChunkMetric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolChunkMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INTEGER_SIZE_MINUS_ONE:I = 0x1f


# instance fields
.field final arena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final cachedNioBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final chunkSize:I

.field private final depthMap:[B

.field private freeBytes:I

.field private final log2ChunkSize:I

.field private final maxOrder:I

.field private final maxSubpageAllocs:I

.field final memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final memoryMap:[B

.field next:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field final offset:I

.field private final pageShifts:I

.field private final pageSize:I

.field parent:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field prev:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final subpageOverflowMask:I

.field private final subpages:[Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field final unpooled:Z

.field private final unusable:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 106
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;II)V
    .locals 3
    .param p3, "size"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;TT;II)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p2, "memory":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 182
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    .line 183
    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    .line 184
    iput p4, p0, Lio/netty/buffer/PoolChunk;->offset:I

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    .line 186
    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    .line 187
    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    .line 188
    const/4 v2, 0x0

    iput v2, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    .line 189
    iput v2, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 190
    iput v2, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 191
    iput v2, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 192
    add-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    .line 193
    iput p3, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 194
    invoke-static {p3}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    .line 195
    iput v2, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    .line 196
    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    .line 197
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIIII)V
    .locals 7
    .param p3, "pageSize"    # I
    .param p4, "maxOrder"    # I
    .param p5, "pageShifts"    # I
    .param p6, "chunkSize"    # I
    .param p7, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;TT;IIIII)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p2, "memory":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    .line 146
    iput-object p1, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    .line 147
    iput-object p2, p0, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    .line 148
    iput p3, p0, Lio/netty/buffer/PoolChunk;->pageSize:I

    .line 149
    iput p5, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    .line 150
    iput p4, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 151
    iput p6, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 152
    iput p7, p0, Lio/netty/buffer/PoolChunk;->offset:I

    .line 153
    add-int/lit8 v0, p4, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    .line 154
    invoke-static {p6}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    .line 155
    add-int/lit8 v0, p3, -0x1

    not-int v0, v0

    iput v0, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    .line 156
    iput p6, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 158
    const/16 v0, 0x1e

    if-ge p4, v0, :cond_2

    .line 159
    const/4 v0, 0x1

    shl-int v1, v0, p4

    iput v1, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    .line 162
    shl-int/2addr v1, v0

    new-array v1, v1, [B

    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    .line 163
    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    .line 164
    const/4 v1, 0x1

    .line 165
    .local v1, "memoryMapIndex":I
    const/4 v2, 0x0

    .local v2, "d":I
    :goto_0
    if-gt v2, p4, :cond_1

    .line 166
    shl-int v3, v0, v2

    .line 167
    .local v3, "depth":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 169
    iget-object v5, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    int-to-byte v6, v2

    aput-byte v6, v5, v1

    .line 170
    iget-object v5, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    int-to-byte v6, v2

    aput-byte v6, v5, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 167
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    .end local v3    # "depth":I
    .end local v4    # "p":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "d":I
    :cond_1
    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->newSubpageArray(I)[Lio/netty/buffer/PoolSubpage;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    .line 176
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    .line 177
    return-void

    .line 158
    .end local v1    # "memoryMapIndex":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxOrder should be < 30, but is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private allocateNode(I)I
    .locals 9
    .param p1, "d"    # I

    .line 294
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    const/4 v0, 0x1

    .line 295
    .local v0, "id":I
    const/4 v1, 0x1

    shl-int v2, v1, p1

    neg-int v2, v2

    .line 296
    .local v2, "initial":I
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    .line 297
    .local v3, "val":B
    if-le v3, p1, :cond_0

    .line 298
    const/4 v1, -0x1

    return v1

    .line 300
    :cond_0
    :goto_0
    if-lt v3, p1, :cond_3

    and-int v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_1

    .line 308
    :cond_1
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v4

    .line 309
    .local v4, "value":B
    if-ne v4, p1, :cond_2

    and-int v5, v0, v2

    shl-int v6, v1, p1

    if-ne v5, v6, :cond_2

    .line 311
    iget-byte v1, p0, Lio/netty/buffer/PoolChunk;->unusable:B

    invoke-direct {p0, v0, v1}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 312
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->updateParentsAlloc(I)V

    .line 313
    return v0

    .line 309
    :cond_2
    new-instance v5, Ljava/lang/AssertionError;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 310
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    and-int v7, v0, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 309
    const-string v1, "val = %d, id & initial = %d, d = %d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 301
    .end local v4    # "value":B
    :cond_3
    :goto_1
    shl-int/lit8 v0, v0, 0x1

    .line 302
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    .line 303
    if-le v3, p1, :cond_4

    .line 304
    xor-int/lit8 v0, v0, 0x1

    .line 305
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    goto :goto_0

    .line 303
    :cond_4
    goto :goto_0
.end method

.method private allocateRun(I)J
    .locals 4
    .param p1, "normCapacity"    # I

    .line 323
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxOrder:I

    invoke-static {p1}, Lio/netty/buffer/PoolChunk;->log2(I)I

    move-result v1

    iget v2, p0, Lio/netty/buffer/PoolChunk;->pageShifts:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 324
    .local v0, "d":I
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->allocateNode(I)I

    move-result v1

    .line 325
    .local v1, "id":I
    if-gez v1, :cond_0

    .line 326
    int-to-long v2, v1

    return-wide v2

    .line 328
    :cond_0
    iget v2, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 329
    int-to-long v2, v1

    return-wide v2
.end method

.method private allocateSubpage(I)J
    .locals 17
    .param p1, "normCapacity"    # I

    .line 342
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    move-object/from16 v8, p0

    move/from16 v9, p1

    iget-object v0, v8, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, v9}, Lio/netty/buffer/PoolArena;->findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v10

    .line 343
    .local v10, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v11, v8, Lio/netty/buffer/PoolChunk;->maxOrder:I

    .line 344
    .local v11, "d":I
    monitor-enter v10

    .line 345
    :try_start_0
    invoke-direct {v8, v11}, Lio/netty/buffer/PoolChunk;->allocateNode(I)I

    move-result v0

    .line 346
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 347
    int-to-long v1, v0

    monitor-exit v10

    return-wide v1

    .line 350
    :cond_0
    iget-object v1, v8, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    move-object v12, v1

    .line 351
    .local v12, "subpages":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v1, v8, Lio/netty/buffer/PoolChunk;->pageSize:I

    move v13, v1

    .line 353
    .local v13, "pageSize":I
    iget v1, v8, Lio/netty/buffer/PoolChunk;->freeBytes:I

    sub-int/2addr v1, v13

    iput v1, v8, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 355
    invoke-direct {v8, v0}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v1

    move v14, v1

    .line 356
    .local v14, "subpageIdx":I
    aget-object v1, v12, v14

    move-object v15, v1

    .line 357
    .local v15, "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    if-nez v15, :cond_1

    .line 358
    new-instance v16, Lio/netty/buffer/PoolSubpage;

    invoke-direct {v8, v0}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v5

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p0

    move v4, v0

    move v6, v13

    move/from16 v7, p1

    invoke-direct/range {v1 .. v7}, Lio/netty/buffer/PoolSubpage;-><init>(Lio/netty/buffer/PoolSubpage;Lio/netty/buffer/PoolChunk;IIII)V

    move-object/from16 v15, v16

    .line 359
    aput-object v15, v12, v14

    goto :goto_0

    .line 361
    :cond_1
    invoke-virtual {v15, v10, v9}, Lio/netty/buffer/PoolSubpage;->init(Lio/netty/buffer/PoolSubpage;I)V

    .line 363
    :goto_0
    invoke-virtual {v15}, Lio/netty/buffer/PoolSubpage;->allocate()J

    move-result-wide v1

    monitor-exit v10

    return-wide v1

    .line 364
    .end local v0    # "id":I
    .end local v12    # "subpages":[Lio/netty/buffer/PoolSubpage;, "[Lio/netty/buffer/PoolSubpage<TT;>;"
    .end local v13    # "pageSize":I
    .end local v14    # "subpageIdx":I
    .end local v15    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static bitmapIdx(J)I
    .locals 2
    .param p0, "handle"    # J

    .line 472
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private depth(I)B
    .locals 1
    .param p1, "id"    # I

    .line 444
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->depthMap:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method private initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JII)V
    .locals 13
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "bitmapIdx"    # I
    .param p6, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JII)V"
        }
    .end annotation

    .line 421
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    move-object v9, p0

    if-eqz p5, :cond_2

    .line 423
    invoke-static/range {p3 .. p4}, Lio/netty/buffer/PoolChunk;->memoryMapIdx(J)I

    move-result v10

    .line 425
    .local v10, "memoryMapIdx":I
    iget-object v0, v9, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v10}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v1

    aget-object v11, v0, v1

    .line 426
    .local v11, "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-boolean v0, v11, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-eqz v0, :cond_1

    .line 427
    iget v0, v11, Lio/netty/buffer/PoolSubpage;->elemSize:I

    move/from16 v12, p6

    if-gt v12, v0, :cond_0

    .line 429
    nop

    .line 431
    invoke-direct {p0, v10}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v0

    const v1, 0x3fffffff    # 1.9999999f

    and-int v1, p5, v1

    iget v2, v11, Lio/netty/buffer/PoolSubpage;->elemSize:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, v9, Lio/netty/buffer/PoolChunk;->offset:I

    add-int v5, v0, v1

    iget v7, v11, Lio/netty/buffer/PoolSubpage;->elemSize:I

    iget-object v0, v9, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    .line 432
    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->threadCache()Lio/netty/buffer/PoolThreadCache;

    move-result-object v8

    .line 429
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    .line 433
    return-void

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 426
    :cond_1
    move/from16 v12, p6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 421
    .end local v10    # "memoryMapIdx":I
    .end local v11    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_2
    move/from16 v12, p6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static log2(I)I
    .locals 1
    .param p0, "val"    # I

    .line 449
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private static memoryMapIdx(J)I
    .locals 1
    .param p0, "handle"    # J

    .line 468
    long-to-int v0, p0

    return v0
.end method

.method private newSubpageArray(I)[Lio/netty/buffer/PoolSubpage;
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    new-array v0, p1, [Lio/netty/buffer/PoolSubpage;

    return-object v0
.end method

.method private runLength(I)I
    .locals 2
    .param p1, "id"    # I

    .line 454
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->log2ChunkSize:I

    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method private runOffset(I)I
    .locals 2
    .param p1, "id"    # I

    .line 459
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    xor-int/2addr v0, p1

    .line 460
    .local v0, "shift":I
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v1

    mul-int/2addr v1, v0

    return v1
.end method

.method private setValue(IB)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "val"    # B

    .line 440
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    aput-byte p2, v0, p1

    .line 441
    return-void
.end method

.method private subpageIdx(I)I
    .locals 1
    .param p1, "memoryMapIdx"    # I

    .line 464
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->maxSubpageAllocs:I

    xor-int/2addr v0, p1

    return v0
.end method

.method private updateParentsAlloc(I)V
    .locals 4
    .param p1, "id"    # I

    .line 250
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :goto_0
    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 251
    ushr-int/lit8 v0, p1, 0x1

    .line 252
    .local v0, "parentId":I
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v1

    .line 253
    .local v1, "val1":B
    xor-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v2

    .line 254
    .local v2, "val2":B
    if-ge v1, v2, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    move v3, v2

    .line 255
    .local v3, "val":B
    :goto_1
    invoke-direct {p0, v0, v3}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 256
    move p1, v0

    .line 257
    .end local v0    # "parentId":I
    .end local v1    # "val1":B
    .end local v2    # "val2":B
    .end local v3    # "val":B
    goto :goto_0

    .line 258
    :cond_1
    return-void
.end method

.method private updateParentsFree(I)V
    .locals 6
    .param p1, "id"    # I

    .line 268
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 269
    .local v0, "logChild":I
    :goto_0
    if-le p1, v1, :cond_2

    .line 270
    ushr-int/lit8 v2, p1, 0x1

    .line 271
    .local v2, "parentId":I
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v3

    .line 272
    .local v3, "val1":B
    xor-int/lit8 v4, p1, 0x1

    invoke-direct {p0, v4}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v4

    .line 273
    .local v4, "val2":B
    add-int/lit8 v0, v0, -0x1

    .line 275
    if-ne v3, v0, :cond_0

    if-ne v4, v0, :cond_0

    .line 276
    add-int/lit8 v5, v0, -0x1

    int-to-byte v5, v5

    invoke-direct {p0, v2, v5}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    goto :goto_2

    .line 278
    :cond_0
    if-ge v3, v4, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 279
    .local v5, "val":B
    :goto_1
    invoke-direct {p0, v2, v5}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 282
    .end local v5    # "val":B
    :goto_2
    move p1, v2

    .line 283
    .end local v2    # "parentId":I
    .end local v3    # "val1":B
    .end local v4    # "val2":B
    goto :goto_0

    .line 284
    :cond_2
    return-void
.end method

.method private usage(I)I
    .locals 4
    .param p1, "freeBytes"    # I

    .line 214
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    if-nez p1, :cond_0

    .line 215
    const/16 v0, 0x64

    return v0

    .line 218
    :cond_0
    int-to-long v0, p1

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget v2, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 219
    .local v0, "freePercentage":I
    if-nez v0, :cond_1

    .line 220
    const/16 v1, 0x63

    return v1

    .line 222
    :cond_1
    rsub-int/lit8 v1, v0, 0x64

    return v1
.end method

.method private value(I)B
    .locals 1
    .param p1, "id"    # I

    .line 436
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->memoryMap:[B

    aget-byte v0, v0, p1

    return v0
.end method


# virtual methods
.method allocate(Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 8
    .param p2, "reqCapacity"    # I
    .param p3, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II)Z"
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->subpageOverflowMask:I

    and-int/2addr v0, p3

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, p3}, Lio/netty/buffer/PoolChunk;->allocateRun(I)J

    move-result-wide v0

    .local v0, "handle":J
    goto :goto_0

    .line 230
    .end local v0    # "handle":J
    :cond_0
    invoke-direct {p0, p3}, Lio/netty/buffer/PoolChunk;->allocateSubpage(I)J

    move-result-wide v0

    .line 233
    .restart local v0    # "handle":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 234
    const/4 v2, 0x0

    return v2

    .line 236
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v4, v2

    .line 237
    .local v4, "nioBuffer":Ljava/nio/ByteBuffer;
    move-object v2, p0

    move-object v3, p1

    move-wide v5, v0

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lio/netty/buffer/PoolChunk;->initBuf(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V

    .line 238
    const/4 v2, 0x1

    return v2
.end method

.method public chunkSize()I
    .locals 1

    .line 477
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    return v0
.end method

.method destroy()V
    .locals 1

    .line 508
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    invoke-virtual {v0, p0}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 509
    return-void
.end method

.method free(JLjava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "handle"    # J
    .param p3, "nioBuffer"    # Ljava/nio/ByteBuffer;

    .line 376
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->memoryMapIdx(J)I

    move-result v0

    .line 377
    .local v0, "memoryMapIdx":I
    invoke-static {p1, p2}, Lio/netty/buffer/PoolChunk;->bitmapIdx(J)I

    move-result v1

    .line 379
    .local v1, "bitmapIdx":I
    if-eqz v1, :cond_2

    .line 380
    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->subpages:[Lio/netty/buffer/PoolSubpage;

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->subpageIdx(I)I

    move-result v3

    aget-object v2, v2, v3

    .line 381
    .local v2, "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-eqz v3, :cond_1

    .line 385
    iget-object v3, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget v4, v2, Lio/netty/buffer/PoolSubpage;->elemSize:I

    invoke-virtual {v3, v4}, Lio/netty/buffer/PoolArena;->findSubpagePoolHead(I)Lio/netty/buffer/PoolSubpage;

    move-result-object v3

    .line 386
    .local v3, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    monitor-enter v3

    .line 387
    const v4, 0x3fffffff    # 1.9999999f

    and-int/2addr v4, v1

    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/netty/buffer/PoolSubpage;->free(Lio/netty/buffer/PoolSubpage;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    monitor-exit v3

    return-void

    .line 390
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 381
    .end local v3    # "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 392
    .end local v2    # "subpage":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    :cond_2
    :goto_0
    iget v2, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 393
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->depth(I)B

    move-result v2

    invoke-direct {p0, v0, v2}, Lio/netty/buffer/PoolChunk;->setValue(IB)V

    .line 394
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunk;->updateParentsFree(I)V

    .line 396
    if-eqz p3, :cond_3

    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    if-eqz v2, :cond_3

    .line 397
    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    sget v3, Lio/netty/buffer/PooledByteBufAllocator;->DEFAULT_MAX_CACHED_BYTEBUFFERS_PER_CHUNK:I

    if-ge v2, v3, :cond_3

    .line 398
    iget-object v2, p0, Lio/netty/buffer/PoolChunk;->cachedNioBuffers:Ljava/util/Deque;

    invoke-interface {v2, p3}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    .line 400
    :cond_3
    return-void
.end method

.method public freeBytes()I
    .locals 2

    .line 482
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    .line 483
    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    monitor-exit v0

    return v1

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method initBuf(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V
    .locals 13
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI)V"
        }
    .end annotation

    .line 403
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    move-object v9, p0

    invoke-static/range {p3 .. p4}, Lio/netty/buffer/PoolChunk;->memoryMapIdx(J)I

    move-result v10

    .line 404
    .local v10, "memoryMapIdx":I
    invoke-static/range {p3 .. p4}, Lio/netty/buffer/PoolChunk;->bitmapIdx(J)I

    move-result v11

    .line 405
    .local v11, "bitmapIdx":I
    if-nez v11, :cond_1

    .line 406
    invoke-direct {p0, v10}, Lio/netty/buffer/PoolChunk;->value(I)B

    move-result v12

    .line 407
    .local v12, "val":B
    iget-byte v0, v9, Lio/netty/buffer/PoolChunk;->unusable:B

    if-ne v12, v0, :cond_0

    .line 408
    invoke-direct {p0, v10}, Lio/netty/buffer/PoolChunk;->runOffset(I)I

    move-result v0

    iget v1, v9, Lio/netty/buffer/PoolChunk;->offset:I

    add-int v5, v0, v1

    .line 409
    invoke-direct {p0, v10}, Lio/netty/buffer/PoolChunk;->runLength(I)I

    move-result v7

    iget-object v0, v9, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    invoke-virtual {v0}, Lio/netty/buffer/PooledByteBufAllocator;->threadCache()Lio/netty/buffer/PoolThreadCache;

    move-result-object v8

    .line 408
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    .line 410
    .end local v12    # "val":B
    goto :goto_0

    .line 407
    .restart local v12    # "val":B
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 411
    .end local v12    # "val":B
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move v5, v11

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JII)V

    .line 413
    :goto_0
    return-void
.end method

.method initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V
    .locals 7
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "reqCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JI)V"
        }
    .end annotation

    .line 416
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-static {p3, p4}, Lio/netty/buffer/PoolChunk;->bitmapIdx(J)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JII)V

    .line 417
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 490
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    .line 491
    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 492
    .local v1, "freeBytes":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chunk("

    .line 495
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 496
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    .line 497
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 498
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->usage(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%, "

    .line 499
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    sub-int/2addr v2, v1

    .line 500
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    .line 501
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lio/netty/buffer/PoolChunk;->chunkSize:I

    .line 502
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    .line 503
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    return-object v0

    .line 492
    .end local v1    # "freeBytes":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public usage()I
    .locals 2

    .line 207
    .local p0, "this":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    .line 208
    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolChunk;->freeBytes:I

    .line 209
    .local v1, "freeBytes":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-direct {p0, v1}, Lio/netty/buffer/PoolChunk;->usage(I)I

    move-result v0

    return v0

    .line 209
    .end local v1    # "freeBytes":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
