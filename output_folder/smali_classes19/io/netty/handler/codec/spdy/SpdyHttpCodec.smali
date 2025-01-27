.class public final Lio/netty/handler/codec/spdy/SpdyHttpCodec;
.super Lio/netty/channel/CombinedChannelDuplexHandler;
.source "SpdyHttpCodec.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/channel/CombinedChannelDuplexHandler<",
        "Lio/netty/handler/codec/spdy/SpdyHttpDecoder;",
        "Lio/netty/handler/codec/spdy/SpdyHttpEncoder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V
    .locals 2
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxContentLength"    # I

    .line 28
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;

    invoke-direct {v0, p1, p2}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V

    new-instance v1, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-direct {v1, p1}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V

    invoke-direct {p0, v0, v1}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;IZ)V
    .locals 2
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxContentLength"    # I
    .param p3, "validateHttpHeaders"    # Z

    .line 35
    new-instance v0, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;

    invoke-direct {v0, p1, p2, p3}, Lio/netty/handler/codec/spdy/SpdyHttpDecoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;IZ)V

    new-instance v1, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;

    invoke-direct {v1, p1}, Lio/netty/handler/codec/spdy/SpdyHttpEncoder;-><init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V

    invoke-direct {p0, v0, v1}, Lio/netty/channel/CombinedChannelDuplexHandler;-><init>(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 36
    return-void
.end method
