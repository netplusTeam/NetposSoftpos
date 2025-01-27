.class public Lio/netty/handler/codec/base64/Base64Encoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "Base64Encoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# instance fields
.field private final breakLines:Z

.field private final dialect:Lio/netty/handler/codec/base64/Base64Dialect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/base64/Base64Encoder;-><init>(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "breakLines"    # Z

    .line 54
    sget-object v0, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/base64/Base64Encoder;-><init>(ZLio/netty/handler/codec/base64/Base64Dialect;)V

    .line 55
    return-void
.end method

.method public constructor <init>(ZLio/netty/handler/codec/base64/Base64Dialect;)V
    .locals 1
    .param p1, "breakLines"    # Z
    .param p2, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 57
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 58
    const-string v0, "dialect"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/base64/Base64Dialect;

    iput-object v0, p0, Lio/netty/handler/codec/base64/Base64Encoder;->dialect:Lio/netty/handler/codec/base64/Base64Dialect;

    .line 59
    iput-boolean p1, p0, Lio/netty/handler/codec/base64/Base64Encoder;->breakLines:Z

    .line 60
    return-void
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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

    .line 64
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    iget-boolean v2, p0, Lio/netty/handler/codec/base64/Base64Encoder;->breakLines:Z

    iget-object v3, p0, Lio/netty/handler/codec/base64/Base64Encoder;->dialect:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p2, v0, v1, v2, v3}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/base64/Base64Encoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    return-void
.end method
