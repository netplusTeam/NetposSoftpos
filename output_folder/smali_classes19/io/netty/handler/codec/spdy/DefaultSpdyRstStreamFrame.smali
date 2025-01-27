.class public Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;
.super Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;
.source "DefaultSpdyRstStreamFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;


# instance fields
.field private status:Lio/netty/handler/codec/spdy/SpdyStreamStatus;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # I

    .line 35
    invoke-static {p2}, Lio/netty/handler/codec/spdy/SpdyStreamStatus;->valueOf(I)Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;-><init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V

    .line 36
    return-void
.end method

.method public constructor <init>(ILio/netty/handler/codec/spdy/SpdyStreamStatus;)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "status"    # Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 45
    invoke-direct {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;-><init>(I)V

    .line 46
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStatus(Lio/netty/handler/codec/spdy/SpdyStreamStatus;)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    .line 47
    return-void
.end method


# virtual methods
.method public setLast(Z)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .locals 0
    .param p1, "last"    # Z

    .line 57
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    .line 58
    return-object p0
.end method

.method public bridge synthetic setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(Lio/netty/handler/codec/spdy/SpdyStreamStatus;)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .locals 0
    .param p1, "status"    # Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 68
    iput-object p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    .line 69
    return-object p0
.end method

.method public setStreamId(I)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;
    .locals 0
    .param p1, "streamId"    # I

    .line 51
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;

    .line 52
    return-object p0
.end method

.method public bridge synthetic setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyRstStreamFrame;

    move-result-object p1

    return-object p1
.end method

.method public status()Lio/netty/handler/codec/spdy/SpdyStreamStatus;
    .locals 1

    .line 63
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status:Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->streamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string v1, "--> Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyRstStreamFrame;->status()Lio/netty/handler/codec/spdy/SpdyStreamStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    return-object v0
.end method
