.class final Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;
.super Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;
.source "HttpObjectAggregator.java"

# interfaces
.implements Lio/netty/handler/codec/http/FullHttpResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/codec/http/HttpObjectAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AggregatedFullHttpResponse"
.end annotation


# direct methods
.method constructor <init>(Lio/netty/handler/codec/http/HttpResponse;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 0
    .param p1, "message"    # Lio/netty/handler/codec/http/HttpResponse;
    .param p2, "content"    # Lio/netty/buffer/ByteBuf;
    .param p3, "trailingHeaders"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 498
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpMessage;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 499
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->copy()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->copy()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 1

    .line 503
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->copy()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->copy()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->duplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->duplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->duplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->duplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1

    .line 532
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->message:Lio/netty/handler/codec/http/HttpMessage;

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 7
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 518
    new-instance v6, Lio/netty/handler/codec/http/DefaultFullHttpResponse;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    .line 519
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->copy()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->copy()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v5

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 520
    .local v0, "dup":Lio/netty/handler/codec/http/DefaultFullHttpResponse;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/DefaultFullHttpResponse;->setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V

    .line 521
    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 0

    .line 554
    invoke-super {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->retain()Lio/netty/handler/codec/http/FullHttpMessage;

    .line 555
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 0
    .param p1, "increment"    # I

    .line 548
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->retain(I)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 549
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retain(I)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 1

    .line 513
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->retainedDuplicate()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 0
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;

    .line 542
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 543
    return-object p0
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpResponse;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 1
    .param p1, "status"    # Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 526
    iget-object v0, p0, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->message:Lio/netty/handler/codec/http/HttpMessage;

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/HttpResponse;->setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/HttpResponse;

    .line 527
    return-object p0
.end method

.method public bridge synthetic setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/HttpResponse;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public status()Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendFullResponse(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/FullHttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpMessage;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 0

    .line 566
    invoke-super {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->touch()Lio/netty/handler/codec/http/FullHttpMessage;

    .line 567
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpResponse;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 560
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpMessage;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpMessage;

    .line 561
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/HttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpContent;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/LastHttpContent;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/LastHttpContent;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 494
    invoke-virtual {p0}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch()Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 494
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpObjectAggregator$AggregatedFullHttpResponse;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/FullHttpResponse;

    move-result-object p1

    return-object p1
.end method
