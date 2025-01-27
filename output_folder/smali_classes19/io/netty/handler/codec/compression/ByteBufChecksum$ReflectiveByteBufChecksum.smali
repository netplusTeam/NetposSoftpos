.class final Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;
.super Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;
.source "ByteBufChecksum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/compression/ByteBufChecksum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReflectiveByteBufChecksum"
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/util/zip/Checksum;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "checksum"    # Ljava/util/zip/Checksum;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 96
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/ByteBufChecksum$SlowByteBufChecksum;-><init>(Ljava/util/zip/Checksum;)V

    .line 97
    iput-object p2, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;->method:Ljava/lang/reflect/Method;

    .line 98
    return-void
.end method


# virtual methods
.method public update(Lio/netty/buffer/ByteBuf;II)V
    .locals 5
    .param p1, "b"    # Lio/netty/buffer/ByteBuf;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 102
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;->update([BII)V

    goto :goto_0

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/netty/handler/codec/compression/ByteBufChecksum$ReflectiveByteBufChecksum;->checksum:Ljava/util/zip/Checksum;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2, p3}, Lio/netty/handler/codec/compression/CompressionUtil;->safeNioBuffer(Lio/netty/buffer/ByteBuf;II)Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    nop

    .line 111
    :goto_0
    return-void

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1
.end method
