.class public final Lio/netty/handler/codec/http/HttpUtil;
.super Ljava/lang/Object;
.source "HttpUtil.java"


# static fields
.field private static final CHARSET_EQUALS:Lio/netty/util/AsciiString;

.field private static final SEMICOLON:Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/AsciiString;->of(Ljava/lang/CharSequence;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpUtil;->CHARSET_EQUALS:Lio/netty/util/AsciiString;

    .line 38
    const-string v0, ";"

    invoke-static {v0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpUtil;->SEMICOLON:Lio/netty/util/AsciiString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatHostnameForHttp(Ljava/net/InetSocketAddress;)Ljava/lang/String;
    .locals 3
    .param p0, "addr"    # Ljava/net/InetSocketAddress;

    .line 524
    invoke-static {p0}, Lio/netty/util/NetUtil;->getHostname(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "hostString":Ljava/lang/String;
    invoke-static {v0}, Lio/netty/util/NetUtil;->isValidIpV6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/NetUtil;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    .line 529
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 531
    :cond_1
    return-object v0
.end method

.method public static getCharset(Lio/netty/handler/codec/http/HttpMessage;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 347
    sget-object v0, Lio/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpUtil;->getCharset(Lio/netty/handler/codec/http/HttpMessage;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static getCharset(Lio/netty/handler/codec/http/HttpMessage;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;

    .line 374
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "contentTypeValue":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 376
    invoke-static {v0, p1}, Lio/netty/handler/codec/http/HttpUtil;->getCharset(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    return-object v1

    .line 378
    :cond_0
    return-object p1
.end method

.method public static getCharset(Ljava/lang/CharSequence;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0, "contentTypeValue"    # Ljava/lang/CharSequence;

    .line 358
    if-eqz p0, :cond_0

    .line 359
    sget-object v0, Lio/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/HttpUtil;->getCharset(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 361
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public static getCharset(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 2
    .param p0, "contentTypeValue"    # Ljava/lang/CharSequence;
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;

    .line 391
    if-eqz p0, :cond_0

    .line 392
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->getCharsetAsSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 393
    .local v0, "charsetCharSequence":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 395
    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 398
    :catch_0
    move-exception v1

    goto :goto_0

    .line 396
    :catch_1
    move-exception v1

    .line 403
    .end local v0    # "charsetCharSequence":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1
.end method

.method public static getCharsetAsSequence(Lio/netty/handler/codec/http/HttpMessage;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 432
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "contentTypeValue":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 434
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->getCharsetAsSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 436
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getCharsetAsSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "contentTypeValue"    # Ljava/lang/CharSequence;

    .line 452
    const-string v0, "contentTypeValue"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lio/netty/handler/codec/http/HttpUtil;->CHARSET_EQUALS:Lio/netty/util/AsciiString;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/netty/util/AsciiString;->indexOfIgnoreCaseAscii(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    .line 455
    .local v2, "indexOfCharset":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 456
    return-object v3

    .line 459
    :cond_0
    invoke-virtual {v0}, Lio/netty/util/AsciiString;->length()I

    move-result v0

    add-int/2addr v0, v2

    .line 460
    .local v0, "indexOfEncoding":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 461
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p0, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 462
    .local v3, "charsetCandidate":Ljava/lang/CharSequence;
    sget-object v5, Lio/netty/handler/codec/http/HttpUtil;->SEMICOLON:Lio/netty/util/AsciiString;

    invoke-static {v3, v5, v1}, Lio/netty/util/AsciiString;->indexOfIgnoreCaseAscii(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v5

    .line 463
    .local v5, "indexOfSemicolon":I
    if-ne v5, v4, :cond_1

    .line 464
    return-object v3

    .line 467
    :cond_1
    invoke-interface {v3, v1, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 470
    .end local v3    # "charsetCandidate":Ljava/lang/CharSequence;
    .end local v5    # "indexOfSemicolon":I
    :cond_2
    return-object v3
.end method

.method public static getCharsetAsString(Lio/netty/handler/codec/http/HttpMessage;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->getCharsetAsSequence(Lio/netty/handler/codec/http/HttpMessage;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;I)I
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # I

    .line 198
    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lio/netty/handler/codec/http/HttpUtil;->getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;)J
    .locals 6
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 147
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 149
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 154
    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I

    move-result v1

    int-to-long v1, v1

    .line 155
    .local v1, "webSocketContentLength":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 156
    return-wide v1

    .line 160
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "header not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getContentLength(Lio/netty/handler/codec/http/HttpMessage;J)J
    .locals 5
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "defaultValue"    # J

    .line 174
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 176
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 181
    :cond_0
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I

    move-result v1

    int-to-long v1, v1

    .line 182
    .local v1, "webSocketContentLength":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 183
    return-wide v1

    .line 187
    :cond_1
    return-wide p1
.end method

.method public static getMimeType(Lio/netty/handler/codec/http/HttpMessage;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 485
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "contentTypeValue":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 487
    invoke-static {v0}, Lio/netty/handler/codec/http/HttpUtil;->getMimeType(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 489
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getMimeType(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "contentTypeValue"    # Ljava/lang/CharSequence;

    .line 506
    const-string v0, "contentTypeValue"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lio/netty/handler/codec/http/HttpUtil;->SEMICOLON:Lio/netty/util/AsciiString;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/netty/util/AsciiString;->indexOfIgnoreCaseAscii(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 509
    .local v0, "indexOfSemicolon":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 510
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 512
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private static getWebSocketContentLength(Lio/netty/handler/codec/http/HttpMessage;)I
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 207
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 208
    .local v0, "h":Lio/netty/handler/codec/http/HttpHeaders;
    instance-of v1, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v1, :cond_0

    .line 209
    move-object v1, p0

    check-cast v1, Lio/netty/handler/codec/http/HttpRequest;

    .line 210
    .local v1, "req":Lio/netty/handler/codec/http/HttpRequest;
    sget-object v2, Lio/netty/handler/codec/http/HttpMethod;->GET:Lio/netty/handler/codec/http/HttpMethod;

    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY1:Lio/netty/util/AsciiString;

    .line 211
    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_KEY2:Lio/netty/util/AsciiString;

    .line 212
    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    const/16 v2, 0x8

    return v2

    .line 215
    .end local v1    # "req":Lio/netty/handler/codec/http/HttpRequest;
    :cond_0
    instance-of v1, p0, Lio/netty/handler/codec/http/HttpResponse;

    if-eqz v1, :cond_1

    .line 216
    move-object v1, p0

    check-cast v1, Lio/netty/handler/codec/http/HttpResponse;

    .line 217
    .local v1, "res":Lio/netty/handler/codec/http/HttpResponse;
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->code()I

    move-result v2

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_ORIGIN:Lio/netty/util/AsciiString;

    .line 218
    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->SEC_WEBSOCKET_LOCATION:Lio/netty/util/AsciiString;

    .line 219
    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    const/16 v2, 0x10

    return v2

    .line 215
    .end local v1    # "res":Lio/netty/handler/codec/http/HttpResponse;
    :cond_1
    nop

    .line 225
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public static is100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 249
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isExpectHeaderValid(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->EXPECT:Lio/netty/util/AsciiString;

    sget-object v3, Lio/netty/handler/codec/http/HttpHeaderValues;->CONTINUE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2, v3, v1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 249
    :goto_0
    return v1
.end method

.method public static isAsteriskForm(Ljava/net/URI;)Z
    .locals 2
    .param p0, "uri"    # Ljava/net/URI;

    .line 56
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0
.end method

.method public static isContentLengthSet(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 2
    .param p0, "m"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 236
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isExpectHeaderValid(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 277
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpRequest;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpVersion;->HTTP_1_1:Lio/netty/handler/codec/http/HttpVersion;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpVersion;->compareTo(Lio/netty/handler/codec/http/HttpVersion;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 277
    :goto_0
    return v0
.end method

.method public static isKeepAlive(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 70
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->CLOSE:Lio/netty/util/AsciiString;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->KEEP_ALIVE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 70
    :goto_0
    return v3
.end method

.method public static isOriginForm(Ljava/net/URI;)Z
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;

    .line 47
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0
.end method

.method public static isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 4
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 303
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/netty/handler/codec/http/HttpHeaders;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method static isUnsupportedExpectation(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;

    .line 263
    invoke-static {p0}, Lio/netty/handler/codec/http/HttpUtil;->isExpectHeaderValid(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 264
    return v1

    .line 267
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->EXPECT:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "expectValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->CONTINUE:Lio/netty/util/AsciiString;

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static set100ContinueExpected(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "expected"    # Z

    .line 289
    if-eqz p1, :cond_0

    .line 290
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->EXPECT:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->CONTINUE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 292
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->EXPECT:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 294
    :goto_0
    return-void
.end method

.method public static setContentLength(Lio/netty/handler/codec/http/HttpMessage;J)V
    .locals 3
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "length"    # J

    .line 232
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 233
    return-void
.end method

.method public static setKeepAlive(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;Z)V
    .locals 2
    .param p0, "h"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "keepAlive"    # Z

    .line 119
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpVersion;->isKeepAliveDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    if-eqz p2, :cond_0

    .line 121
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 123
    :cond_0
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->CLOSE:Lio/netty/util/AsciiString;

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 126
    :cond_1
    if-eqz p2, :cond_2

    .line 127
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->KEEP_ALIVE:Lio/netty/util/AsciiString;

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_0

    .line 129
    :cond_2
    sget-object v0, Lio/netty/handler/codec/http/HttpHeaderNames;->CONNECTION:Lio/netty/util/AsciiString;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 132
    :goto_0
    return-void
.end method

.method public static setKeepAlive(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 2
    .param p0, "message"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "keepAlive"    # Z

    .line 96
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/netty/handler/codec/http/HttpUtil;->setKeepAlive(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/handler/codec/http/HttpVersion;Z)V

    .line 97
    return-void
.end method

.method public static setTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 5
    .param p0, "m"    # Lio/netty/handler/codec/http/HttpMessage;
    .param p1, "chunked"    # Z

    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 317
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_LENGTH:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_1

    .line 319
    :cond_0
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->getAll(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 320
    .local v0, "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    return-void

    .line 323
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 324
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 325
    .local v2, "valuesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/CharSequence;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 327
    .local v3, "value":Ljava/lang/CharSequence;
    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderValues;->CHUNKED:Lio/netty/util/AsciiString;

    invoke-virtual {v4, v3}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 330
    .end local v3    # "value":Ljava/lang/CharSequence;
    :cond_2
    goto :goto_0

    .line 331
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 332
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v4}, Lio/netty/handler/codec/http/HttpHeaders;->remove(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http/HttpHeaders;

    goto :goto_1

    .line 334
    :cond_4
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    sget-object v4, Lio/netty/handler/codec/http/HttpHeaderNames;->TRANSFER_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v3, v4, v1}, Lio/netty/handler/codec/http/HttpHeaders;->set(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;

    .line 337
    .end local v0    # "encodings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v2    # "valuesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/CharSequence;>;"
    :goto_1
    return-void
.end method
