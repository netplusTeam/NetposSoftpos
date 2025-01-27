.class public Lio/netty/handler/codec/protobuf/ProtobufVarint32LengthFieldPrepender;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "ProtobufVarint32LengthFieldPrepender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    return-void
.end method

.method static computeRawVarint32Size(I)I
    .locals 1
    .param p0, "value"    # I

    .line 76
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    return v0

    .line 79
    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x2

    return v0

    .line 82
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    .line 83
    const/4 v0, 0x3

    return v0

    .line 85
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    .line 86
    const/4 v0, 0x4

    return v0

    .line 88
    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method static writeRawVarint32(Lio/netty/buffer/ByteBuf;I)V
    .locals 1
    .param p0, "out"    # Lio/netty/buffer/ByteBuf;
    .param p1, "value"    # I

    .line 60
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 62
    return-void

    .line 64
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 65
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method


# virtual methods
.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 47
    .local v0, "bodyLen":I
    invoke-static {v0}, Lio/netty/handler/codec/protobuf/ProtobufVarint32LengthFieldPrepender;->computeRawVarint32Size(I)I

    move-result v1

    .line 48
    .local v1, "headerLen":I
    add-int v2, v1, v0

    invoke-virtual {p3, v2}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 49
    invoke-static {p3, v0}, Lio/netty/handler/codec/protobuf/ProtobufVarint32LengthFieldPrepender;->writeRawVarint32(Lio/netty/buffer/ByteBuf;I)V

    .line 50
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    invoke-virtual {p3, p2, v2, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 51
    return-void
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/protobuf/ProtobufVarint32LengthFieldPrepender;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
