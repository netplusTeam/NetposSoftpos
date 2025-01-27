.class final Lio/netty/handler/codec/ByteToMessageCodec$Encoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "ByteToMessageCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/ByteToMessageCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Encoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "TI;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/ByteToMessageCodec;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/ByteToMessageCodec;Z)V
    .locals 0
    .param p2, "preferDirect"    # Z

    .line 161
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec$Encoder;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>.Encoder;"
    iput-object p1, p0, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;->this$0:Lio/netty/handler/codec/ByteToMessageCodec;

    .line 162
    invoke-direct {p0, p2}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>(Z)V

    .line 163
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec$Encoder;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>.Encoder;"
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;->this$0:Lio/netty/handler/codec/ByteToMessageCodec;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/ByteToMessageCodec;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Lio/netty/buffer/ByteBuf;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    .local p0, "this":Lio/netty/handler/codec/ByteToMessageCodec$Encoder;, "Lio/netty/handler/codec/ByteToMessageCodec<TI;>.Encoder;"
    .local p2, "msg":Ljava/lang/Object;, "TI;"
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageCodec$Encoder;->this$0:Lio/netty/handler/codec/ByteToMessageCodec;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageCodec;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V

    .line 173
    return-void
.end method
