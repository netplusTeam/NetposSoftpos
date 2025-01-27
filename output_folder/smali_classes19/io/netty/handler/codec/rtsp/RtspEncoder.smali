.class public Lio/netty/handler/codec/rtsp/RtspEncoder;
.super Lio/netty/handler/codec/http/HttpObjectEncoder;
.source "RtspEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http/HttpObjectEncoder<",
        "Lio/netty/handler/codec/http/HttpMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final CRLF_SHORT:I = 0xd0a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
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

    .line 41
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpRequest;

    if-nez v0, :cond_0

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V
    .locals 5
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpRequest;

    const/16 v1, 0xd0a

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpRequest;

    .line 49
    .local v0, "request":Lio/netty/handler/codec/http/HttpRequest;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpMethod;->asciiName()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-static {v3, p1}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;Lio/netty/buffer/ByteBuf;)V

    .line 50
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 51
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3, v4}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 52
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 53
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2, v3}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 54
    invoke-static {p1, v1}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 55
    .end local v0    # "request":Lio/netty/handler/codec/http/HttpRequest;
    goto :goto_0

    :cond_0
    instance-of v0, p2, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v0, :cond_1

    .line 56
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/HttpResponse;

    .line 57
    .local v0, "response":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpVersion;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3, v4}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 58
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 59
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v3}, Lio/netty/handler/codec/http/HttpResponseStatus;->codeAsText()Lio/netty/util/AsciiString;

    move-result-object v3

    invoke-static {v3, p1}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;Lio/netty/buffer/ByteBuf;)V

    .line 60
    invoke-virtual {p1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 61
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->reasonPhrase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2, v3}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 62
    invoke-static {p1, v1}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 63
    .end local v0    # "response":Lio/netty/handler/codec/http/HttpResponse;
    nop

    .line 67
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Lio/netty/handler/codec/UnsupportedMessageTypeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 65
    invoke-static {p2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/UnsupportedMessageTypeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
