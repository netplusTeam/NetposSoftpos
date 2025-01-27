.class public abstract Lio/netty/handler/codec/rtsp/RtspObjectDecoder;
.super Lio/netty/handler/codec/http/HttpObjectDecoder;
.source "RtspObjectDecoder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 62
    const/16 v0, 0x1000

    const/16 v1, 0x2000

    invoke-direct {p0, v0, v1, v1}, Lio/netty/handler/codec/rtsp/RtspObjectDecoder;-><init>(III)V

    .line 63
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 2
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxContentLength"    # I

    .line 69
    mul-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZ)V

    .line 70
    return-void
.end method

.method protected constructor <init>(IIIZ)V
    .locals 6
    .param p1, "maxInitialLineLength"    # I
    .param p2, "maxHeaderSize"    # I
    .param p3, "maxContentLength"    # I
    .param p4, "validateHeaders"    # Z

    .line 74
    mul-int/lit8 v3, p3, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/HttpObjectDecoder;-><init>(IIIZZ)V

    .line 75
    return-void
.end method


# virtual methods
.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 4
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 81
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectDecoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    .line 82
    .local v0, "empty":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 83
    return v1

    .line 85
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    sget-object v3, Lio/netty/handler/codec/rtsp/RtspHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    return v1

    .line 88
    :cond_1
    return v0
.end method
