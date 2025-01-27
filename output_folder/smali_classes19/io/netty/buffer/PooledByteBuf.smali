.class abstract Lio/netty/buffer/PooledByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "PooledByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private allocator:Lio/netty/buffer/ByteBufAllocator;

.field cache:Lio/netty/buffer/PoolThreadCache;

.field protected chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected handle:J

.field protected length:I

.field maxLength:I

.field protected memory:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected offset:I

.field private final recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method protected constructor <init>(Lio/netty/util/internal/ObjectPool$Handle;I)V
    .locals 0
    .param p2, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/ObjectPool$Handle<",
            "+",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .local p1, "recyclerHandle":Lio/netty/util/internal/ObjectPool$Handle;, "Lio/netty/util/internal/ObjectPool$Handle<+Lio/netty/buffer/PooledByteBuf<TT;>;>;"
    invoke-direct {p0, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 46
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    .line 47
    return-void
.end method

.method private init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V
    .locals 2
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "maxLength"    # I
    .param p8, "cache"    # Lio/netty/buffer/PoolThreadCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    .line 61
    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 64
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 65
    iput-object p2, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 66
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v0, v0, Lio/netty/buffer/PoolArena;->parent:Lio/netty/buffer/PooledByteBufAllocator;

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 67
    iput-object p8, p0, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    .line 68
    iput-wide p3, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 69
    iput p5, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    .line 70
    iput p6, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 71
    iput p7, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    .line 72
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private recycle()V
    .locals 1

    .line 179
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->recyclerHandle:Lio/netty/util/internal/ObjectPool$Handle;

    invoke-interface {v0, p0}, Lio/netty/util/internal/ObjectPool$Handle;->recycle(Ljava/lang/Object;)V

    .line 180
    return-void
.end method


# virtual methods
.method final _internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "duplicate"    # Z

    .line 187
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBuf;->idx(I)I

    move-result p1

    .line 188
    if-eqz p3, :cond_0

    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lio/netty/buffer/PooledByteBuf;->newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 189
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 190
    return-object v0
.end method

.method public final alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 124
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public final capacity()I
    .locals 1

    .line 86
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    return v0
.end method

.method public final capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "newCapacity"    # I

    .line 96
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-ne p1, v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->ensureAccessible()V

    .line 98
    return-object p0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBuf;->checkNewCapacity(I)V

    .line 101
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-boolean v0, v0, Lio/netty/buffer/PoolChunk;->unpooled:Z

    if-nez v0, :cond_3

    .line 103
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    if-le p1, v0, :cond_1

    .line 104
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    if-gt p1, v0, :cond_3

    .line 105
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 106
    return-object p0

    .line 108
    :cond_1
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    ushr-int/lit8 v1, v0, 0x1

    if-le p1, v1, :cond_3

    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x10

    if-le p1, v0, :cond_3

    .line 111
    :cond_2
    iput p1, p0, Lio/netty/buffer/PooledByteBuf;->length:I

    .line 112
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBuf;->trimIndicesToCapacity(I)V

    .line 113
    return-object p0

    .line 118
    :cond_3
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lio/netty/buffer/PoolArena;->reallocate(Lio/netty/buffer/PooledByteBuf;IZ)V

    .line 119
    return-object p0
.end method

.method protected final deallocate()V
    .locals 10

    .line 167
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 168
    iget-wide v8, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 169
    .local v8, "handle":J
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/buffer/PooledByteBuf;->handle:J

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    .line 171
    iget-object v1, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v1, v1, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    iget-object v2, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    iget-object v3, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    iget v6, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    iget-object v7, p0, Lio/netty/buffer/PooledByteBuf;->cache:Lio/netty/buffer/PoolThreadCache;

    move-wide v4, v8

    invoke-virtual/range {v1 .. v7}, Lio/netty/buffer/PoolArena;->free(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JILio/netty/buffer/PoolThreadCache;)V

    .line 172
    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 173
    iput-object v0, p0, Lio/netty/buffer/PooledByteBuf;->chunk:Lio/netty/buffer/PoolChunk;

    .line 174
    invoke-direct {p0}, Lio/netty/buffer/PooledByteBuf;->recycle()V

    .line 176
    .end local v8    # "handle":J
    :cond_0
    return-void
.end method

.method duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 194
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;->checkIndex(II)V

    .line 195
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/PooledByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/PooledByteBuf;->duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0, p3, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0
.end method

.method public final getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledByteBuf;->duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method protected final idx(I)I
    .locals 1
    .param p1, "index"    # I

    .line 183
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method init(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V
    .locals 0
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p5, "offset"    # I
    .param p6, "length"    # I
    .param p7, "maxLength"    # I
    .param p8, "cache"    # Lio/netty/buffer/PoolThreadCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            "JIII",
            "Lio/netty/buffer/PoolThreadCache;",
            ")V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-direct/range {p0 .. p8}, Lio/netty/buffer/PooledByteBuf;->init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    .line 52
    return-void
.end method

.method initUnpooled(Lio/netty/buffer/PoolChunk;I)V
    .locals 9
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;I)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget v5, p1, Lio/netty/buffer/PoolChunk;->offset:I

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, p2

    move v7, p2

    invoke-direct/range {v0 .. v8}, Lio/netty/buffer/PooledByteBuf;->init0(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JIIILio/netty/buffer/PoolThreadCache;)V

    .line 56
    return-void
.end method

.method protected final internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 154
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 155
    .local v0, "tmpNioBuf":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 156
    iget-object v1, p0, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lio/netty/buffer/PooledByteBuf;->newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/buffer/PooledByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 160
    :goto_0
    return-object v0
.end method

.method public final internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 200
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;->checkIndex(II)V

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/PooledByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final isContiguous()Z
    .locals 1

    .line 221
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public maxFastWritableBytes()I
    .locals 2

    .line 91
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->maxLength:I

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->maxCapacity()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lio/netty/buffer/PooledByteBuf;->writerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected abstract newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation
.end method

.method public final nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 211
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;->duplicateInternalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final nioBufferCount()I
    .locals 1

    .line 206
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public final nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 216
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    .line 129
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public final readBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 2
    .param p1, "out"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p4}, Lio/netty/buffer/PooledByteBuf;->checkReadableBytes(I)V

    .line 245
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->readerIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Lio/netty/buffer/PooledByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v0

    .line 246
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/PooledByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/PooledByteBuf;->readerIndex:I

    .line 247
    return v0
.end method

.method public final readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p2}, Lio/netty/buffer/PooledByteBuf;->checkReadableBytes(I)V

    .line 232
    iget v0, p0, Lio/netty/buffer/PooledByteBuf;->readerIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lio/netty/buffer/PooledByteBuf;->_internalNioBuffer(IIZ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 233
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/PooledByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/PooledByteBuf;->readerIndex:I

    .line 234
    return v0
.end method

.method public final retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 139
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    invoke-static {p0, p0, v0, v1}, Lio/netty/buffer/PooledDuplicatedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledDuplicatedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public final retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 144
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->readerIndex()I

    move-result v0

    .line 145
    .local v0, "index":I
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->writerIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/PooledByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    return-object v1
.end method

.method public final retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 150
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-static {p0, p0, p1, p2}, Lio/netty/buffer/PooledSlicedByteBuf;->newInstance(Lio/netty/buffer/AbstractByteBuf;Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/PooledSlicedByteBuf;

    move-result-object v0

    return-object v0
.end method

.method final reuse(I)V
    .locals 1
    .param p1, "maxCapacity"    # I

    .line 78
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledByteBuf;->maxCapacity(I)V

    .line 79
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->resetRefCnt()V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lio/netty/buffer/PooledByteBuf;->setIndex0(II)V

    .line 81
    invoke-virtual {p0}, Lio/netty/buffer/PooledByteBuf;->discardMarks()V

    .line 82
    return-void
.end method

.method public final setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/PooledByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "ignored":Ljava/nio/channels/ClosedChannelException;
    const/4 v1, -0x1

    return v1
.end method

.method public final setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "ignored":Ljava/nio/channels/ClosedChannelException;
    const/4 v1, -0x1

    return v1
.end method

.method public final unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 134
    .local p0, "this":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
