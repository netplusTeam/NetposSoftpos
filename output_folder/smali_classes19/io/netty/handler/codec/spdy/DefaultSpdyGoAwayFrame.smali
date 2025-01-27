.class public Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;
.super Ljava/lang/Object;
.source "DefaultSpdyGoAwayFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;


# instance fields
.field private lastGoodStreamId:I

.field private status:Lio/netty/handler/codec/spdy/SpdySessionStatus;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "lastGoodStreamId"    # I

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(II)V

    .line 37
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "lastGoodStreamId"    # I
    .param p2, "statusCode"    # I

    .line 46
    invoke-static {p2}, Lio/netty/handler/codec/spdy/SpdySessionStatus;->valueOf(I)Lio/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;-><init>(ILio/netty/handler/codec/spdy/SpdySessionStatus;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILio/netty/handler/codec/spdy/SpdySessionStatus;)V
    .locals 0
    .param p1, "lastGoodStreamId"    # I
    .param p2, "status"    # Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setLastGoodStreamId(I)Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    .line 57
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->setStatus(Lio/netty/handler/codec/spdy/SpdySessionStatus;)Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;

    .line 58
    return-void
.end method


# virtual methods
.method public lastGoodStreamId()I
    .locals 1

    .line 62
    iget v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    return v0
.end method

.method public setLastGoodStreamId(I)Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    .locals 1
    .param p1, "lastGoodStreamId"    # I

    .line 67
    const-string v0, "lastGoodStreamId"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 68
    iput p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId:I

    .line 69
    return-object p0
.end method

.method public setStatus(Lio/netty/handler/codec/spdy/SpdySessionStatus;)Lio/netty/handler/codec/spdy/SpdyGoAwayFrame;
    .locals 0
    .param p1, "status"    # Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 79
    iput-object p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    .line 80
    return-object p0
.end method

.method public status()Lio/netty/handler/codec/spdy/SpdySessionStatus;
    .locals 1

    .line 74
    iget-object v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status:Lio/netty/handler/codec/spdy/SpdySessionStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string v1, "--> Last-good-stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->lastGoodStreamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    const-string v1, "--> Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyGoAwayFrame;->status()Lio/netty/handler/codec/spdy/SpdySessionStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method
