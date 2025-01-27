.class public abstract Lio/netty/handler/codec/rtsp/RtspObjectEncoder;
.super Lio/netty/handler/codec/http/HttpObjectEncoder;
.source "RtspObjectEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lio/netty/handler/codec/http/HttpMessage;",
        ">",
        "Lio/netty/handler/codec/http/HttpObjectEncoder<",
        "TH;>;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    .local p0, "this":Lio/netty/handler/codec/rtsp/RtspObjectEncoder;, "Lio/netty/handler/codec/rtsp/RtspObjectEncoder<TH;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectEncoder;-><init>()V

    .line 38
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

    .line 42
    .local p0, "this":Lio/netty/handler/codec/rtsp/RtspObjectEncoder;, "Lio/netty/handler/codec/rtsp/RtspObjectEncoder<TH;>;"
    instance-of v0, p1, Lio/netty/handler/codec/http/FullHttpMessage;

    return v0
.end method
