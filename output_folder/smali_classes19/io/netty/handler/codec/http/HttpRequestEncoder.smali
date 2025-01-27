.class public Lio/netty/handler/codec/http/HttpRequestEncoder;
.super Lio/netty/handler/codec/http/HttpObjectEncoder;
.source "HttpRequestEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/http/HttpObjectEncoder<",
        "Lio/netty/handler/codec/http/HttpRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final QUESTION_MARK:C = '?'

.field private static final SLASH:C = '/'

.field private static final SLASH_AND_SPACE_SHORT:I = 0x2f20

.field private static final SPACE_SLASH_AND_SPACE_MEDIUM:I = 0x202f20


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
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

    .line 36
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lio/netty/handler/codec/http/HttpResponse;

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

    .line 28
    check-cast p2, Lio/netty/handler/codec/http/HttpRequest;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http/HttpRequestEncoder;->encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpRequest;)V

    return-void
.end method

.method protected encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 7
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpMethod;->asciiName()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-static {v0, p1}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;Lio/netty/buffer/ByteBuf;)V

    .line 43
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->uri()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "uri":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const v1, 0x202f20

    invoke-static {p1, v1}, Lio/netty/buffer/ByteBufUtil;->writeMediumBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 50
    :cond_0
    move-object v1, v0

    .line 51
    .local v1, "uriCharSequence":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 52
    .local v2, "needSlash":Z
    const-string v3, "://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 53
    .local v3, "start":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_2

    .line 54
    add-int/lit8 v3, v3, 0x3

    .line 57
    const/16 v5, 0x3f

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 58
    .local v5, "index":I
    if-ne v5, v4, :cond_1

    .line 59
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 60
    const/4 v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 68
    .end local v5    # "index":I
    :cond_2
    :goto_0
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    sget-object v6, Lio/netty/util/CharsetUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v1, v6}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 69
    if-eqz v2, :cond_3

    .line 71
    const/16 v4, 0x2f20

    invoke-static {p1, v4}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {p1, v4}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 77
    .end local v1    # "uriCharSequence":Ljava/lang/CharSequence;
    .end local v2    # "needSlash":Z
    .end local v3    # "start":I
    :goto_1
    invoke-interface {p2}, Lio/netty/handler/codec/http/HttpRequest;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/netty/handler/codec/http/HttpVersion;->encode(Lio/netty/buffer/ByteBuf;)V

    .line 78
    const/16 v1, 0xd0a

    invoke-static {p1, v1}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 79
    return-void
.end method
