.class final Lio/netty/buffer/WrappedUnpooledUnsafeDirectByteBuf;
.super Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.source "WrappedUnpooledUnsafeDirectByteBuf.java"


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;JIZ)V
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "memoryAddress"    # J
    .param p4, "size"    # I
    .param p5, "doFree"    # Z

    .line 25
    invoke-static {p2, p3, p4}, Lio/netty/util/internal/PlatformDependent;->directBuffer(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4, p5}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;IZ)V

    .line 26
    return-void
.end method


# virtual methods
.method protected freeDirect(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 30
    iget-wide v0, p0, Lio/netty/buffer/WrappedUnpooledUnsafeDirectByteBuf;->memoryAddress:J

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->freeMemory(J)V

    .line 31
    return-void
.end method
