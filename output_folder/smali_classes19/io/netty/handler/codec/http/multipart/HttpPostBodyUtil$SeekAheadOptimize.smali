.class Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;
.super Ljava/lang/Object;
.source "HttpPostBodyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SeekAheadOptimize"
.end annotation


# instance fields
.field buffer:Lio/netty/buffer/ByteBuf;

.field bytes:[B

.field limit:I

.field origPos:I

.field pos:I

.field readerIndex:I


# direct methods
.method constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->buffer:Lio/netty/buffer/ByteBuf;

    .line 98
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->bytes:[B

    .line 99
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->readerIndex:I

    .line 100
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->readerIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->origPos:I

    .line 101
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->limit:I

    .line 102
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer hasn\'t backing byte array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getReadPosition(I)I
    .locals 2
    .param p1, "index"    # I

    .line 121
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->origPos:I

    sub-int v0, p1, v0

    iget v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->readerIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method setReadPosition(I)V
    .locals 2
    .param p1, "minus"    # I

    .line 110
    iget v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->pos:I

    .line 111
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->getReadPosition(I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->readerIndex:I

    .line 112
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 113
    return-void
.end method
