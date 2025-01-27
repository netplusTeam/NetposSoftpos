.class public Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;
.super Ljava/lang/Object;
.source "HttpPostRequestDecoder.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;,
        Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$EndOfDataDecoderException;,
        Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$NotEnoughDataDecoderException;,
        Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$MultiPartStatus;
    }
.end annotation


# static fields
.field static final DEFAULT_DISCARD_THRESHOLD:I = 0xa00000


# instance fields
.field private final decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 3
    .param p1, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 53
    new-instance v0, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;

    const-wide/16 v1, 0x4000

    invoke-direct {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DefaultHttpDataFactory;-><init>(J)V

    sget-object v1, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1, v1}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;)V
    .locals 1
    .param p1, "factory"    # Lio/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 69
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "factory"    # Lio/netty/handler/codec/http/multipart/HttpDataFactory;
    .param p2, "request"    # Lio/netty/handler/codec/http/HttpRequest;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "factory"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    const-string v0, "request"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const-string v0, "charset"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    invoke-static {p2}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->isMultipart(Lio/netty/handler/codec/http/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;

    invoke-direct {v0, p1, p2, p3}, Lio/netty/handler/codec/http/multipart/HttpPostMultipartRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    goto :goto_0

    .line 95
    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;

    invoke-direct {v0, p1, p2, p3}, Lio/netty/handler/codec/http/multipart/HttpPostStandardRequestDecoder;-><init>(Lio/netty/handler/codec/http/multipart/HttpDataFactory;Lio/netty/handler/codec/http/HttpRequest;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    .line 97
    :goto_0
    return-void
.end method

.method protected static getMultipartDataBoundary(Ljava/lang/String;)[Ljava/lang/String;
    .locals 17
    .param p0, "contentType"    # Ljava/lang/String;

    .line 153
    invoke-static/range {p0 .. p0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->splitHeaderContentType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "headerContentType":[Ljava/lang/String;
    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderValues;->MULTIPART_FORM_DATA:Lio/netty/util/AsciiString;

    invoke-virtual {v1}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "multiPartHeader":Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v2, v0, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 158
    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->BOUNDARY:Lio/netty/util/AsciiString;

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "boundaryHeader":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v9, v0, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    move-object v12, v2

    invoke-virtual/range {v9 .. v14}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_0

    .line 160
    const/4 v3, 0x1

    .line 161
    .local v3, "mrank":I
    const/4 v5, 0x2

    .local v5, "crank":I
    goto :goto_0

    .line 162
    .end local v3    # "mrank":I
    .end local v5    # "crank":I
    :cond_0
    aget-object v9, v0, v6

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    move-object v12, v2

    invoke-virtual/range {v9 .. v14}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 163
    const/4 v3, 0x2

    .line 164
    .restart local v3    # "mrank":I
    const/4 v5, 0x1

    .line 168
    .restart local v5    # "crank":I
    :goto_0
    aget-object v7, v0, v3

    const/16 v9, 0x3d

    invoke-static {v7, v9}, Lio/netty/util/internal/StringUtil;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "boundary":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 172
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x22

    if-ne v10, v11, :cond_1

    .line 173
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 174
    .local v10, "bound":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v4

    .line 175
    .local v12, "index":I
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-ne v13, v11, :cond_1

    .line 176
    invoke-virtual {v10, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 179
    .end local v10    # "bound":Ljava/lang/String;
    .end local v12    # "index":I
    :cond_1
    sget-object v10, Lio/netty/handler/codec/http/HttpHeaderValues;->CHARSET:Lio/netty/util/AsciiString;

    invoke-virtual {v10}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v10

    .line 180
    .local v10, "charsetHeader":Ljava/lang/String;
    aget-object v11, v0, v5

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    move-object v14, v10

    invoke-virtual/range {v11 .. v16}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v11

    const-string v12, "--"

    if-eqz v11, :cond_2

    .line 181
    aget-object v11, v0, v5

    invoke-static {v11, v9}, Lio/netty/util/internal/StringUtil;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "charset":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 183
    new-array v6, v6, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v8

    aput-object v9, v6, v4

    return-object v6

    .line 186
    .end local v9    # "charset":Ljava/lang/String;
    :cond_2
    new-array v4, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    return-object v4

    .line 170
    .end local v10    # "charsetHeader":Ljava/lang/String;
    :cond_3
    new-instance v4, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;

    const-string v6, "Needs a boundary value"

    invoke-direct {v4, v6}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder$ErrorDataDecoderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 166
    .end local v3    # "mrank":I
    .end local v5    # "crank":I
    .end local v7    # "boundary":Ljava/lang/String;
    :cond_4
    return-object v3

    .line 188
    .end local v2    # "boundaryHeader":Ljava/lang/String;
    :cond_5
    return-object v3
.end method

.method public static isMultipart(Lio/netty/handler/codec/http/HttpRequest;)Z
    .locals 3
    .param p0, "request"    # Lio/netty/handler/codec/http/HttpRequest;

    .line 139
    invoke-interface {p0}, Lio/netty/handler/codec/http/HttpRequest;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v1, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_TYPE:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "mimeType":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderValues;->MULTIPART_FORM_DATA:Lio/netty/util/AsciiString;

    invoke-virtual {v2}, Lio/netty/util/AsciiString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    invoke-static {v0}, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->getMultipartDataBoundary(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 143
    :cond_1
    return v1
.end method

.method private static splitHeaderContentType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p0, "sb"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 269
    .local v1, "aStart":I
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 270
    .local v3, "aEnd":I
    const/4 v4, 0x2

    const-string v5, ""

    const/4 v6, 0x3

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v3, v7, :cond_0

    .line 271
    new-array v2, v6, [Ljava/lang/String;

    aput-object p0, v2, v0

    aput-object v5, v2, v8

    aput-object v5, v2, v4

    return-object v2

    .line 273
    :cond_0
    add-int/lit8 v9, v3, 0x1

    invoke-static {p0, v9}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v9

    .line 274
    .local v9, "bStart":I
    add-int/lit8 v10, v3, -0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_1

    .line 275
    add-int/lit8 v3, v3, -0x1

    .line 277
    :cond_1
    invoke-virtual {p0, v2, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 278
    .local v2, "bEnd":I
    if-ne v2, v7, :cond_2

    .line 279
    invoke-static {p0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findEndOfString(Ljava/lang/String;)I

    move-result v2

    .line 280
    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    aput-object v5, v6, v4

    return-object v6

    .line 282
    :cond_2
    add-int/lit8 v5, v2, 0x1

    invoke-static {p0, v5}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findNonWhitespace(Ljava/lang/String;I)I

    move-result v5

    .line 283
    .local v5, "cStart":I
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_3

    .line 284
    add-int/lit8 v2, v2, -0x1

    .line 286
    :cond_3
    invoke-static {p0}, Lio/netty/handler/codec/http/multipart/HttpPostBodyUtil;->findEndOfString(Ljava/lang/String;)I

    move-result v7

    .line 287
    .local v7, "cEnd":I
    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v0

    invoke-virtual {p0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    return-object v6
.end method


# virtual methods
.method public cleanFiles()V
    .locals 1

    .line 248
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->cleanFiles()V

    .line 249
    return-void
.end method

.method public currentPartialHttpData()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 238
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->currentPartialHttpData()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 243
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->destroy()V

    .line 244
    return-void
.end method

.method public getBodyHttpData(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->getBodyHttpData(Ljava/lang/String;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0
.end method

.method public getBodyHttpDatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->getBodyHttpDatas()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBodyHttpDatas(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http/multipart/InterfaceHttpData;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->getBodyHttpDatas(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDiscardThreshold()I
    .locals 1

    .line 203
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->getDiscardThreshold()I

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->isMultipart()Z

    move-result v0

    return v0
.end method

.method public next()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 233
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->next()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0
.end method

.method public offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;
    .locals 1
    .param p1, "content"    # Lio/netty/handler/codec/http/HttpContent;

    .line 223
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->offer(Lio/netty/handler/codec/http/HttpContent;)Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    move-result-object v0

    return-object v0
.end method

.method public removeHttpDataFromClean(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V
    .locals 1
    .param p1, "data"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 253
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->removeHttpDataFromClean(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)V

    .line 254
    return-void
.end method

.method public setDiscardThreshold(I)V
    .locals 1
    .param p1, "discardThreshold"    # I

    .line 198
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/HttpPostRequestDecoder;->decoder:Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpPostRequestDecoder;->setDiscardThreshold(I)V

    .line 199
    return-void
.end method
