.class public Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;
.super Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;
.source "DefaultSpdySynStreamFrame.java"

# interfaces
.implements Lio/netty/handler/codec/spdy/SpdySynStreamFrame;


# instance fields
.field private associatedStreamId:I

.field private priority:B

.field private unidirectional:Z


# direct methods
.method public constructor <init>(IIB)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "associatedStreamId"    # I
    .param p3, "priority"    # B

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;-><init>(IIBZ)V

    .line 41
    return-void
.end method

.method public constructor <init>(IIBZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "associatedStreamId"    # I
    .param p3, "priority"    # B
    .param p4, "validateHeaders"    # Z

    .line 52
    invoke-direct {p0, p1, p4}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;-><init>(IZ)V

    .line 53
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setAssociatedStreamId(I)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 54
    invoke-virtual {p0, p3}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setPriority(B)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    .line 55
    return-void
.end method


# virtual methods
.method public associatedStreamId()I
    .locals 1

    .line 77
    iget v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->associatedStreamId:I

    return v0
.end method

.method public isUnidirectional()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->unidirectional:Z

    return v0
.end method

.method public priority()B
    .locals 1

    .line 89
    iget-byte v0, p0, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->priority:B

    return v0
.end method

.method public setAssociatedStreamId(I)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .locals 1
    .param p1, "associatedStreamId"    # I

    .line 82
    const-string v0, "associatedStreamId"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 83
    iput p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->associatedStreamId:I

    .line 84
    return-object p0
.end method

.method public bridge synthetic setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object v0

    return-object v0
.end method

.method public setInvalid()Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .locals 0

    .line 71
    invoke-super {p0}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 72
    return-object p0
.end method

.method public bridge synthetic setLast(Z)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setLast(Z)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object p1

    return-object p1
.end method

.method public setLast(Z)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .locals 0
    .param p1, "last"    # Z

    .line 65
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->setLast(Z)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 66
    return-object p0
.end method

.method public setPriority(B)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .locals 3
    .param p1, "priority"    # B

    .line 94
    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    .line 98
    iput-byte p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->priority:B

    .line 99
    return-object p0

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Priority must be between 0 and 7 inclusive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setStreamId(I)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setStreamId(I)Lio/netty/handler/codec/spdy/SpdyStreamFrame;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;

    move-result-object p1

    return-object p1
.end method

.method public setStreamId(I)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .locals 0
    .param p1, "streamId"    # I

    .line 59
    invoke-super {p0, p1}, Lio/netty/handler/codec/spdy/DefaultSpdyHeadersFrame;->setStreamId(I)Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 60
    return-object p0
.end method

.method public setUnidirectional(Z)Lio/netty/handler/codec/spdy/SpdySynStreamFrame;
    .locals 0
    .param p1, "unidirectional"    # Z

    .line 109
    iput-boolean p1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->unidirectional:Z

    .line 110
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    const-string v1, "(last: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->isLast()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    const-string v1, "; unidirectional: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->isUnidirectional()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string v1, "--> Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->streamId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget v1, p0, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->associatedStreamId:I

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "--> Associated-To-Stream-ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->associatedStreamId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_0
    const-string v1, "--> Priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->priority()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    const-string v2, "--> Headers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/spdy/DefaultSpdySynStreamFrame;->appendHeaders(Ljava/lang/StringBuilder;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v2, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
