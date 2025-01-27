.class public Lio/netty/handler/codec/string/LineEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "LineEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final lineSeparator:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    sget-object v0, Lio/netty/handler/codec/string/LineSeparator;->DEFAULT:Lio/netty/handler/codec/string/LineSeparator;

    sget-object v1, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Lio/netty/handler/codec/string/LineEncoder;-><init>(Lio/netty/handler/codec/string/LineSeparator;Ljava/nio/charset/Charset;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/string/LineSeparator;)V
    .locals 1
    .param p1, "lineSeparator"    # Lio/netty/handler/codec/string/LineSeparator;

    .line 70
    sget-object v0, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/string/LineEncoder;-><init>(Lio/netty/handler/codec/string/LineSeparator;Ljava/nio/charset/Charset;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/string/LineSeparator;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "lineSeparator"    # Lio/netty/handler/codec/string/LineSeparator;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 83
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 84
    const-string v0, "charset"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/netty/handler/codec/string/LineEncoder;->charset:Ljava/nio/charset/Charset;

    .line 85
    const-string v0, "lineSeparator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/string/LineSeparator;

    invoke-virtual {v0}, Lio/netty/handler/codec/string/LineSeparator;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/string/LineEncoder;->lineSeparator:[B

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 77
    sget-object v0, Lio/netty/handler/codec/string/LineSeparator;->DEFAULT:Lio/netty/handler/codec/string/LineSeparator;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/string/LineEncoder;-><init>(Lio/netty/handler/codec/string/LineSeparator;Ljava/nio/charset/Charset;)V

    .line 78
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/string/LineEncoder;->charset:Ljava/nio/charset/Charset;

    iget-object v3, p0, Lio/netty/handler/codec/string/LineEncoder;->lineSeparator:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v3}, Lio/netty/buffer/ByteBufUtil;->encodeString(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/CharBuffer;Ljava/nio/charset/Charset;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 91
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    iget-object v1, p0, Lio/netty/handler/codec/string/LineEncoder;->lineSeparator:[B

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    .line 92
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/string/LineEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/CharSequence;Ljava/util/List;)V

    return-void
.end method
