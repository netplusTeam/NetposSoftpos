.class public Lio/netty/handler/codec/http/HttpResponseEncoder;
.super Lio/netty/handler/codec/http/HttpObjectEncoder;
.source "HttpResponseEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http/HttpObjectEncoder<",
        "Lio/netty/handler/codec/http/HttpResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpObjectEncoder;-><init>()V

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

    .line 31
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpRequest;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected bridge synthetic encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    check-cast p2, Lio/netty/handler/codec/http/HttpResponse;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpResponseEncoder;->encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpResponse;)V

    return-void
.end method

.method protected encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpResponse;)V
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "response"    # Lio/netty/handler/codec/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpVersion;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 37
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 38
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/HttpResponseStatus;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 39
    const/16 v0, 0xd0a

    invoke-static {p1, v0}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 40
    return-void
.end method

.method protected bridge synthetic isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 0

    .line 27
    check-cast p1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/HttpResponseEncoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpResponse;)Z

    move-result p1

    return p1
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpResponse;)Z
    .locals 4
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpResponse;

    .line 72
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 74
    .local v0, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 76
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->SWITCHING_PROTOCOLS:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 80
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_VERSION:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1

    .line 82
    :cond_0
    return v3

    .line 84
    :cond_1
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 85
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->NOT_MODIFIED:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 86
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    .line 84
    :goto_1
    return v3
.end method

.method protected bridge synthetic sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 0

    .line 27
    check-cast p1, Lio/netty/handler/codec/http/HttpResponse;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpResponseEncoder;->sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpResponse;Z)V

    return-void
.end method

.method protected sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpResponse;Z)V
    .locals 4
    .param p1, "msg"    # Lio/netty/handler/codec/http/HttpResponse;
    .param p2, "isAlwaysEmpty"    # Z

    .line 44
    if-eqz p2, :cond_2

    .line 45
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    .line 46
    .local v0, "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeClass()Lio/netty/handler/codec/http/HttpStatusClass;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpStatusClass;->INFORMATIONAL:Lio/netty/handler/codec/http/HttpStatusClass;

    if-eq v1, v2, :cond_1

    .line 47
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->NO_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v1

    sget-object v2, Lio/netty/handler/codec/http/HttpResponseStatus;->RESET_CONTENT:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 59
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 63
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_1

    .line 51
    :cond_1
    :goto_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 55
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 66
    .end local v0    # "status":Lio/netty/handler/codec/http/HttpResponseStatus;
    :cond_2
    :goto_1
    return-void
.end method
