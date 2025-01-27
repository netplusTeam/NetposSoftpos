.class final Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;
.super Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;
.source "PoolThreadCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/PoolThreadCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubPageMemoryRegionCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/buffer/PoolThreadCache$MemoryRegionCache<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(ILio/netty/buffer/PoolArena$SizeClass;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "sizeClass"    # Lio/netty/buffer/PoolArena$SizeClass;

    .line 345
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache<TT;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PoolThreadCache$MemoryRegionCache;-><init>(ILio/netty/buffer/PoolArena$SizeClass;)V

    .line 346
    return-void
.end method


# virtual methods
.method protected initBuf(Lio/netty/buffer/PoolChunk;Ljava/nio/ByteBuffer;JLio/netty/buffer/PooledByteBuf;I)V
    .locals 6
    .param p2, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "handle"    # J
    .param p6, "reqCapacity"    # I
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

    .line 351
    .local p0, "this":Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache;, "Lio/netty/buffer/PoolThreadCache$SubPageMemoryRegionCache<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    .local p5, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    move-object v0, p1

    move-object v1, p5

    move-object v2, p2

    move-wide v3, p3

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lio/netty/buffer/PoolChunk;->initBufWithSubpage(Lio/netty/buffer/PooledByteBuf;Ljava/nio/ByteBuffer;JI)V

    .line 352
    return-void
.end method
