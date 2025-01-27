.class Lio/netty/handler/codec/MessageToMessageCodec$2;
.super Lio/netty/handler/codec/MessageToMessageDecoder;
.source "MessageToMessageCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/MessageToMessageCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToMessageDecoder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/codec/MessageToMessageCodec;


# direct methods
.method constructor <init>(Lio/netty/handler/codec/MessageToMessageCodec;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/codec/MessageToMessageCodec;

    .line 71
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec$2;, "Lio/netty/handler/codec/MessageToMessageCodec$2;"
    iput-object p1, p0, Lio/netty/handler/codec/MessageToMessageCodec$2;->this$0:Lio/netty/handler/codec/MessageToMessageCodec;

    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec$2;, "Lio/netty/handler/codec/MessageToMessageCodec$2;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec$2;->this$0:Lio/netty/handler/codec/MessageToMessageCodec;

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/MessageToMessageCodec;->acceptInboundMessage(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
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

    .line 81
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec$2;, "Lio/netty/handler/codec/MessageToMessageCodec$2;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec$2;->this$0:Lio/netty/handler/codec/MessageToMessageCodec;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/MessageToMessageCodec;->decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V

    .line 82
    return-void
.end method
