.class public Lio/netty/handler/codec/http/HttpContentCompressor;
.super Lio/netty/handler/codec/http/HttpContentEncoder;
.source "HttpContentCompressor.java"


# instance fields
.field private final compressionLevel:I

.field private final contentSizeThreshold:I

.field private ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final memLevel:I

.field private final windowBits:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "compressionLevel"    # I

    .line 56
    const/16 v0, 0xf

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(IIII)V

    .line 57
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/HttpContentCompressor;-><init>(IIII)V

    .line 80
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "compressionLevel"    # I
    .param p2, "windowBits"    # I
    .param p3, "memLevel"    # I
    .param p4, "contentSizeThreshold"    # I

    .line 105
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpContentEncoder;-><init>()V

    .line 106
    if-ltz p1, :cond_3

    const/16 v0, 0x9

    if-gt p1, v0, :cond_3

    .line 111
    if-lt p2, v0, :cond_2

    const/16 v1, 0xf

    if-gt p2, v1, :cond_2

    .line 115
    const/4 v1, 0x1

    if-lt p3, v1, :cond_1

    if-gt p3, v0, :cond_1

    .line 119
    if-ltz p4, :cond_0

    .line 123
    iput p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    .line 124
    iput p2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    .line 125
    iput p3, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    .line 126
    iput p4, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    .line 127
    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentSizeThreshold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: non negative number)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "memLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowBits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 9-15)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compressionLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-9)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected beginEncode(Lio/netty/handler/codec/http/HttpResponse;Ljava/lang/String;)Lio/netty/handler/codec/http/HttpContentEncoder$Result;
    .locals 13
    .param p1, "httpResponse"    # Lio/netty/handler/codec/http/HttpResponse;
    .param p2, "acceptEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    iget v0, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 137
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    .line 138
    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v2, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->contentSizeThreshold:I

    if-ge v0, v2, :cond_0

    .line 139
    return-object v1

    .line 143
    :cond_0
    invoke-interface {p1}, Lio/netty/handler/codec/http/HttpResponse;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    sget-object v2, Lio/netty/handler/codec/http/HttpHeaderNames;->CONTENT_ENCODING:Lio/netty/util/AsciiString;

    invoke-virtual {v0, v2}, Lio/netty/handler/codec/http/HttpHeaders;->get(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "contentEncoding":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 147
    return-object v1

    .line 150
    :cond_1
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/HttpContentCompressor;->determineWrapper(Ljava/lang/String;)Lio/netty/handler/codec/compression/ZlibWrapper;

    move-result-object v2

    .line 151
    .local v2, "wrapper":Lio/netty/handler/codec/compression/ZlibWrapper;
    if-nez v2, :cond_2

    .line 152
    return-object v1

    .line 156
    :cond_2
    sget-object v1, Lio/netty/handler/codec/http/HttpContentCompressor$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 164
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    .line 161
    :pswitch_0
    const-string v1, "deflate"

    .line 162
    .local v1, "targetContentEncoding":Ljava/lang/String;
    goto :goto_0

    .line 158
    .end local v1    # "targetContentEncoding":Ljava/lang/String;
    :pswitch_1
    const-string v1, "gzip"

    .line 159
    .restart local v1    # "targetContentEncoding":Ljava/lang/String;
    nop

    .line 167
    :goto_0
    new-instance v3, Lio/netty/handler/codec/http/HttpContentEncoder$Result;

    new-instance v4, Lio/netty/channel/embedded/EmbeddedChannel;

    iget-object v5, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 169
    invoke-interface {v5}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v5

    iget-object v6, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {v6}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v6}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v6

    invoke-virtual {v6}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v6

    iget-object v7, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 170
    invoke-interface {v7}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v7

    invoke-interface {v7}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lio/netty/channel/ChannelHandler;

    const/4 v9, 0x0

    iget v10, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->compressionLevel:I

    iget v11, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->windowBits:I

    iget v12, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->memLevel:I

    invoke-static {v2, v10, v11, v12}, Lio/netty/handler/codec/compression/ZlibCodecFactory;->newZlibEncoder(Lio/netty/handler/codec/compression/ZlibWrapper;III)Lio/netty/handler/codec/compression/ZlibEncoder;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lio/netty/channel/embedded/EmbeddedChannel;-><init>(Lio/netty/channel/ChannelId;ZLio/netty/channel/ChannelConfig;[Lio/netty/channel/ChannelHandler;)V

    invoke-direct {v3, v1, v4}, Lio/netty/handler/codec/http/HttpContentEncoder$Result;-><init>(Ljava/lang/String;Lio/netty/channel/embedded/EmbeddedChannel;)V

    .line 167
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected determineWrapper(Ljava/lang/String;)Lio/netty/handler/codec/compression/ZlibWrapper;
    .locals 10
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .line 176
    const/high16 v0, -0x40800000    # -1.0f

    .line 177
    .local v0, "starQ":F
    const/high16 v1, -0x40800000    # -1.0f

    .line 178
    .local v1, "gzipQ":F
    const/high16 v2, -0x40800000    # -1.0f

    .line 179
    .local v2, "deflateQ":F
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 180
    .local v6, "encoding":Ljava/lang/String;
    const/high16 v7, 0x3f800000    # 1.0f

    .line 181
    .local v7, "q":F
    const/16 v8, 0x3d

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 182
    .local v8, "equalsPos":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 184
    add-int/lit8 v9, v8, 0x1

    :try_start_0
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v7, v9

    .line 188
    goto :goto_1

    .line 185
    :catch_0
    move-exception v9

    .line 187
    .local v9, "e":Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 190
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :goto_1
    const-string v9, "*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 191
    move v0, v7

    goto :goto_2

    .line 192
    :cond_1
    const-string v9, "gzip"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    cmpl-float v9, v7, v1

    if-lez v9, :cond_2

    .line 193
    move v1, v7

    goto :goto_2

    .line 194
    :cond_2
    const-string v9, "deflate"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    cmpl-float v9, v7, v2

    if-lez v9, :cond_3

    .line 195
    move v2, v7

    .line 179
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v7    # "q":F
    .end local v8    # "equalsPos":I
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 198
    :cond_4
    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-gtz v4, :cond_8

    cmpl-float v4, v2, v3

    if-lez v4, :cond_5

    goto :goto_3

    .line 205
    :cond_5
    cmpl-float v3, v0, v3

    if-lez v3, :cond_7

    .line 206
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v1, v3

    if-nez v4, :cond_6

    .line 207
    sget-object v3, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 209
    :cond_6
    cmpl-float v3, v2, v3

    if-nez v3, :cond_7

    .line 210
    sget-object v3, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 213
    :cond_7
    const/4 v3, 0x0

    return-object v3

    .line 199
    :cond_8
    :goto_3
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_9

    .line 200
    sget-object v3, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object v3

    .line 202
    :cond_9
    sget-object v3, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    return-object v3
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lio/netty/handler/codec/http/HttpContentCompressor;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 132
    return-void
.end method
