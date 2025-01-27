.class final Lio/netty/buffer/PoolArena$DirectArena;
.super Lio/netty/buffer/PoolArena;
.source "PoolArena.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolArena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DirectArena"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PoolArena<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V
    .locals 0
    .param p1, "parent"    # Lio/netty/buffer/PooledByteBufAllocator;
    .param p2, "pageSize"    # I
    .param p3, "maxOrder"    # I
    .param p4, "pageShifts"    # I
    .param p5, "chunkSize"    # I
    .param p6, "directMemoryCacheAlignment"    # I

    .line 708
    invoke-direct/range {p0 .. p6}, Lio/netty/buffer/PoolArena;-><init>(Lio/netty/buffer/PooledByteBufAllocator;IIIII)V

    .line 710
    return-void
.end method

.method private static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "capacity"    # I

    .line 757
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {p0}, Lio/netty/util/internal/PlatformDependent;->allocateDirectNoCleaner(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 757
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected destroyChunk(Lio/netty/buffer/PoolChunk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 763
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<Ljava/nio/ByteBuffer;>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->useDirectBufferNoCleaner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->freeDirectNoCleaner(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 766
    :cond_0
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 768
    :goto_0
    return-void
.end method

.method isDirect()Z
    .locals 1

    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic memoryCopy(Ljava/lang/Object;ILio/netty/buffer/PooledByteBuf;I)V
    .locals 0

    .line 704
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/PoolArena$DirectArena;->memoryCopy(Ljava/nio/ByteBuffer;ILio/netty/buffer/PooledByteBuf;I)V

    return-void
.end method

.method protected memoryCopy(Ljava/nio/ByteBuffer;ILio/netty/buffer/PooledByteBuf;I)V
    .locals 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "srcOffset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I",
            "Lio/netty/buffer/PooledByteBuf<",
            "Ljava/nio/ByteBuffer;",
            ">;I)V"
        }
    .end annotation

    .line 781
    .local p3, "dstBuf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<Ljava/nio/ByteBuffer;>;"
    if-nez p4, :cond_0

    .line 782
    return-void

    .line 785
    :cond_0
    sget-boolean v0, Lio/netty/buffer/PoolArena$DirectArena;->HAS_UNSAFE:Z

    if-eqz v0, :cond_1

    .line 786
    nop

    .line 787
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    int-to-long v2, p2

    add-long v4, v0, v2

    iget-object v0, p3, Lio/netty/buffer/PooledByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 788
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget v2, p3, Lio/netty/buffer/PooledByteBuf;->offset:I

    int-to-long v2, v2

    add-long v6, v0, v2

    int-to-long v8, p4

    .line 786
    invoke-static/range {v4 .. v9}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    goto :goto_0

    .line 791
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 792
    invoke-virtual {p3}, Lio/netty/buffer/PooledByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 793
    .local v0, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p2, p4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 794
    iget v1, p3, Lio/netty/buffer/PooledByteBuf;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 795
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 797
    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    :goto_0
    return-void
.end method

.method protected newByteBuf(I)Lio/netty/buffer/PooledByteBuf;
    .locals 1
    .param p1, "maxCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PooledByteBuf<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 772
    sget-boolean v0, Lio/netty/buffer/PoolArena$DirectArena;->HAS_UNSAFE:Z

    if-eqz v0, :cond_0

    .line 773
    invoke-static {p1}, Lio/netty/buffer/PooledUnsafeDirectByteBuf;->newInstance(I)Lio/netty/buffer/PooledUnsafeDirectByteBuf;

    move-result-object v0

    return-object v0

    .line 775
    :cond_0
    invoke-static {p1}, Lio/netty/buffer/PooledDirectByteBuf;->newInstance(I)Lio/netty/buffer/PooledDirectByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected newChunk(IIII)Lio/netty/buffer/PoolChunk;
    .locals 10
    .param p1, "pageSize"    # I
    .param p2, "maxOrder"    # I
    .param p3, "pageShifts"    # I
    .param p4, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 732
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    if-nez v0, :cond_0

    .line 733
    new-instance v0, Lio/netty/buffer/PoolChunk;

    .line 734
    invoke-static {p4}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIIII)V

    .line 733
    return-object v0

    .line 737
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    add-int/2addr v0, p4

    invoke-static {v0}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 739
    .local v0, "memory":Ljava/nio/ByteBuffer;
    new-instance v9, Lio/netty/buffer/PoolChunk;

    .line 741
    invoke-virtual {p0, v0}, Lio/netty/buffer/PoolArena$DirectArena;->offsetCacheLine(Ljava/nio/ByteBuffer;)I

    move-result v8

    move-object v1, v9

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;IIIII)V

    .line 739
    return-object v9
.end method

.method protected newUnpooledChunk(I)Lio/netty/buffer/PoolChunk;
    .locals 3
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/netty/buffer/PoolChunk<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 746
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Lio/netty/buffer/PoolChunk;

    .line 748
    invoke-static {p1}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;II)V

    .line 747
    return-object v0

    .line 750
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    add-int/2addr v0, p1

    invoke-static {v0}, Lio/netty/buffer/PoolArena$DirectArena;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 752
    .local v0, "memory":Ljava/nio/ByteBuffer;
    new-instance v1, Lio/netty/buffer/PoolChunk;

    .line 753
    invoke-virtual {p0, v0}, Lio/netty/buffer/PoolArena$DirectArena;->offsetCacheLine(Ljava/nio/ByteBuffer;)I

    move-result v2

    invoke-direct {v1, p0, v0, p1, v2}, Lio/netty/buffer/PoolChunk;-><init>(Lio/netty/buffer/PoolArena;Ljava/lang/Object;II)V

    .line 752
    return-object v1
.end method

.method offsetCacheLine(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "memory"    # Ljava/nio/ByteBuffer;

    .line 721
    sget-boolean v0, Lio/netty/buffer/PoolArena$DirectArena;->HAS_UNSAFE:Z

    if-eqz v0, :cond_0

    .line 722
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget v2, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignmentMask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 726
    .local v0, "remainder":I
    :goto_0
    iget v1, p0, Lio/netty/buffer/PoolArena$DirectArena;->directMemoryCacheAlignment:I

    sub-int/2addr v1, v0

    return v1
.end method
