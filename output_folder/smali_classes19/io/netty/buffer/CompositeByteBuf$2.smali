.class final Lio/netty/buffer/CompositeByteBuf$2;
.super Ljava/lang/Object;
.source "CompositeByteBuf.java"

# interfaces
.implements Lio/netty/buffer/CompositeByteBuf$ByteWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/buffer/CompositeByteBuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .locals 0

    .line 120
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$2;->isEmpty(Ljava/nio/ByteBuffer;)Z

    move-result p1

    return p1
.end method

.method public isEmpty(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic wrap(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 120
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf$2;->wrap(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public wrap(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .line 123
    invoke-static {p1}, Lio/netty/buffer/Unpooled;->wrappedBuffer(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
