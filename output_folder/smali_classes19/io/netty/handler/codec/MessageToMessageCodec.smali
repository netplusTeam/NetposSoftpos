.class public abstract Lio/netty/handler/codec/MessageToMessageCodec;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "MessageToMessageCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INBOUND_IN:",
        "Ljava/lang/Object;",
        "OUTBOUND_IN:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelDuplexHandler;"
    }
.end annotation


# instance fields
.field private final decoder:Lio/netty/handler/codec/MessageToMessageDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/MessageToMessageDecoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lio/netty/handler/codec/MessageToMessageEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/MessageToMessageEncoder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final inboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

.field private final outboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 92
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec;, "Lio/netty/handler/codec/MessageToMessageCodec<TINBOUND_IN;TOUTBOUND_IN;>;"
    const-class v0, Lio/netty/handler/codec/MessageToMessageCodec;

    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 57
    new-instance v1, Lio/netty/handler/codec/MessageToMessageCodec$1;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/MessageToMessageCodec$1;-><init>(Lio/netty/handler/codec/MessageToMessageCodec;)V

    iput-object v1, p0, Lio/netty/handler/codec/MessageToMessageCodec;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    .line 71
    new-instance v1, Lio/netty/handler/codec/MessageToMessageCodec$2;

    invoke-direct {v1, p0}, Lio/netty/handler/codec/MessageToMessageCodec$2;-><init>(Lio/netty/handler/codec/MessageToMessageCodec;)V

    iput-object v1, p0, Lio/netty/handler/codec/MessageToMessageCodec;->decoder:Lio/netty/handler/codec/MessageToMessageDecoder;

    .line 93
    const-string v1, "INBOUND_IN"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/MessageToMessageCodec;->inboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 94
    const-string v1, "OUTBOUND_IN"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->outboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 95
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TINBOUND_IN;>;",
            "Ljava/lang/Class<",
            "+TOUTBOUND_IN;>;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec;, "Lio/netty/handler/codec/MessageToMessageCodec<TINBOUND_IN;TOUTBOUND_IN;>;"
    .local p1, "inboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TINBOUND_IN;>;"
    .local p2, "outboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TOUTBOUND_IN;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 57
    new-instance v0, Lio/netty/handler/codec/MessageToMessageCodec$1;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/MessageToMessageCodec$1;-><init>(Lio/netty/handler/codec/MessageToMessageCodec;)V

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    .line 71
    new-instance v0, Lio/netty/handler/codec/MessageToMessageCodec$2;

    invoke-direct {v0, p0}, Lio/netty/handler/codec/MessageToMessageCodec$2;-><init>(Lio/netty/handler/codec/MessageToMessageCodec;)V

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->decoder:Lio/netty/handler/codec/MessageToMessageDecoder;

    .line 105
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->inboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 106
    invoke-static {p2}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->outboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 107
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

    .line 125
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec;, "Lio/netty/handler/codec/MessageToMessageCodec<TINBOUND_IN;TOUTBOUND_IN;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->inboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec;, "Lio/netty/handler/codec/MessageToMessageCodec<TINBOUND_IN;TOUTBOUND_IN;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->outboundMsgMatcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec;, "Lio/netty/handler/codec/MessageToMessageCodec<TINBOUND_IN;TOUTBOUND_IN;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->decoder:Lio/netty/handler/codec/MessageToMessageDecoder;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/MessageToMessageDecoder;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method protected abstract decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TINBOUND_IN;",
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
.end method

.method protected abstract encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TOUTBOUND_IN;",
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
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageCodec;, "Lio/netty/handler/codec/MessageToMessageCodec<TINBOUND_IN;TOUTBOUND_IN;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageCodec;->encoder:Lio/netty/handler/codec/MessageToMessageEncoder;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/handler/codec/MessageToMessageEncoder;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 117
    return-void
.end method
