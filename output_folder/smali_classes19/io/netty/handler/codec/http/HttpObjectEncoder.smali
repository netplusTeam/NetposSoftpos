.class public abstract Lio/netty/handler/codec/http/HttpObjectEncoder;
.super Lio/netty/handler/codec/MessageToMessageEncoder;
.source "HttpObjectEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H::",
        "Lio/netty/handler/codec/http/HttpMessage;",
        ">",
        "Lio/netty/handler/codec/MessageToMessageEncoder<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final CRLF_BUF:Lio/netty/buffer/ByteBuf;

.field static final CRLF_SHORT:I = 0xd0a

.field private static final HEADERS_WEIGHT_HISTORICAL:F = 0.8f

.field private static final HEADERS_WEIGHT_NEW:F = 0.2f

.field private static final ST_CONTENT_ALWAYS_EMPTY:I = 0x3

.field private static final ST_CONTENT_CHUNK:I = 0x2

.field private static final ST_CONTENT_NON_CHUNK:I = 0x1

.field private static final ST_INIT:I = 0x0

.field private static final TRAILERS_WEIGHT_HISTORICAL:F = 0.8f

.field private static final TRAILERS_WEIGHT_NEW:F = 0.2f

.field private static final ZERO_CRLF_CRLF:[B

.field private static final ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

.field private static final ZERO_CRLF_MEDIUM:I = 0x300d0a


# instance fields
.field private headersEncodedSizeAccumulator:F

.field private state:I

.field private trailersEncodedSizeAccumulator:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF:[B

    .line 53
    const/4 v1, 0x2

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    sput-object v1, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF_BUF:Lio/netty/buffer/ByteBuf;

    .line 54
    array-length v1, v0

    invoke-static {v1}, Lio/netty/buffer/Unpooled;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 54
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->unreleasableBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

    return-void

    nop

    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToMessageEncoder;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 73
    const/high16 v0, 0x43800000    # 256.0f

    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    .line 79
    iput v0, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->trailersEncodedSizeAccumulator:F

    return-void
.end method

.method private static contentLength(Ljava/lang/Object;)J
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;

    .line 263
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_0

    .line 264
    move-object v0, p0

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 266
    :cond_0
    instance-of v0, p0, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_1

    .line 267
    move-object v0, p0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 269
    :cond_1
    instance-of v0, p0, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    .line 270
    move-object v0, p0

    check-cast v0, Lio/netty/channel/FileRegion;

    invoke-interface {v0}, Lio/netty/channel/FileRegion;->count()J

    move-result-wide v0

    return-wide v0

    .line 272
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static encodeAndRetain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "msg"    # Ljava/lang/Object;

    .line 250
    instance-of v0, p0, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 251
    move-object v0, p0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    instance-of v0, p0, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v0, :cond_1

    .line 254
    move-object v0, p0

    check-cast v0, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v0}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 256
    :cond_1
    instance-of v0, p0, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_2

    .line 257
    move-object v0, p0

    check-cast v0, Lio/netty/channel/FileRegion;

    invoke-interface {v0}, Lio/netty/channel/FileRegion;->retain()Lio/netty/channel/FileRegion;

    move-result-object v0

    return-object v0

    .line 259
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static encodeAscii(Ljava/lang/String;Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0, v0}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 288
    return-void
.end method

.method private encodeChunkedContent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JLjava/util/List;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "contentLength"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p5, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    const/16 v3, 0xd0a

    if-lez v2, :cond_0

    .line 197
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "lengthHex":Ljava/lang/String;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-interface {v4, v5}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 199
    .local v4, "buf":Lio/netty/buffer/ByteBuf;
    sget-object v5, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v2, v5}, Lio/netty/buffer/ByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 200
    invoke-static {v4, v3}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 201
    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeAndRetain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v5, Lio/netty/handler/codec/http/HttpObjectEncoder;->CRLF_BUF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .end local v2    # "lengthHex":Ljava/lang/String;
    .end local v4    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_0
    instance-of v2, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v2, :cond_2

    .line 207
    move-object v0, p2

    check-cast v0, Lio/netty/handler/codec/http/LastHttpContent;

    invoke-interface {v0}, Lio/netty/handler/codec/http/LastHttpContent;->trailingHeaders()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v0

    .line 208
    .local v0, "headers":Lio/netty/handler/codec/http/HttpHeaders;
    invoke-virtual {v0}, Lio/netty/handler/codec/http/HttpHeaders;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    sget-object v1, Lio/netty/handler/codec/http/HttpObjectEncoder;->ZERO_CRLF_CRLF_BUF:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->trailersEncodedSizeAccumulator:F

    float-to-int v2, v2

    invoke-interface {v1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 212
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    const v2, 0x300d0a

    invoke-static {v1, v2}, Lio/netty/buffer/ByteBufUtil;->writeMediumBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 213
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeHeaders(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V

    .line 214
    invoke-static {v1, v3}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 215
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-static {v3}, Lio/netty/handler/codec/http/HttpObjectEncoder;->padSizeForAccumulation(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    const v2, 0x3f4ccccd    # 0.8f

    iget v4, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->trailersEncodedSizeAccumulator:F

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    iput v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->trailersEncodedSizeAccumulator:F

    .line 217
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    .end local v0    # "headers":Lio/netty/handler/codec/http/HttpHeaders;
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_2
    cmp-long v0, p3, v0

    if-nez v0, :cond_3

    .line 222
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeAndRetain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_3
    :goto_0
    nop

    .line 224
    :goto_1
    return-void
.end method

.method private static padSizeForAccumulation(I)I
    .locals 1
    .param p0, "readableBytes"    # I

    .line 282
    shl-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x3

    return v0
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

    .line 246
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    instance-of v0, p1, Lio/netty/handler/codec/http/HttpObject;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .locals 10
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    instance-of v1, p2, Lio/netty/handler/codec/http/HttpMessage;

    const-string v2, "unexpected message type: "

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 85
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    if-nez v1, :cond_3

    .line 91
    move-object v1, p2

    check-cast v1, Lio/netty/handler/codec/http/HttpMessage;

    .line 93
    .local v1, "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v4

    iget v5, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    float-to-int v5, v5

    invoke-interface {v4, v5}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 95
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V

    .line 96
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/HttpObjectEncoder;->isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {v1}, Lio/netty/handler/codec/http/HttpUtil;->isTransferEncodingChunked(Lio/netty/handler/codec/http/HttpMessage;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    iput v4, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 99
    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {p0, v1, v5}, Lio/netty/handler/codec/http/HttpObjectEncoder;->sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpMessage;Z)V

    .line 101
    invoke-interface {v1}, Lio/netty/handler/codec/http/HttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeHeaders(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V

    .line 102
    const/16 v4, 0xd0a

    invoke-static {v0, v4}, Lio/netty/buffer/ByteBufUtil;->writeShortBE(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 104
    const v4, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    invoke-static {v5}, Lio/netty/handler/codec/http/HttpObjectEncoder;->padSizeForAccumulation(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    const v4, 0x3f4ccccd    # 0.8f

    iget v6, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->headersEncodedSizeAccumulator:F

    goto :goto_2

    .line 86
    .end local v1    # "m":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_4
    :goto_2
    instance-of v1, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_5

    .line 114
    move-object v1, p2

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 115
    .local v1, "potentialEmptyBuf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 116
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void

    .line 121
    .end local v1    # "potentialEmptyBuf":Lio/netty/buffer/ByteBuf;
    :cond_5
    instance-of v1, p2, Lio/netty/handler/codec/http/HttpContent;

    if-nez v1, :cond_7

    instance-of v1, p2, Lio/netty/buffer/ByteBuf;

    if-nez v1, :cond_7

    instance-of v1, p2, Lio/netty/channel/FileRegion;

    if-eqz v1, :cond_6

    goto :goto_3

    .line 179
    :cond_6
    if-eqz v0, :cond_e

    .line 180
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 122
    :cond_7
    :goto_3
    iget v1, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1}, Ljava/lang/Error;-><init>()V

    throw v1

    .line 165
    :pswitch_0
    if-eqz v0, :cond_8

    .line 167
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_8
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->contentLength(Ljava/lang/Object;)J

    move-result-wide v7

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeChunkedContent(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;JLjava/util/List;)V

    .line 171
    goto :goto_5

    .line 126
    :pswitch_1
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->contentLength(Ljava/lang/Object;)J

    move-result-wide v1

    .line 127
    .local v1, "contentLength":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_b

    .line 128
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v1

    if-ltz v4, :cond_9

    instance-of v4, p2, Lio/netty/handler/codec/http/HttpContent;

    if-eqz v4, :cond_9

    .line 130
    move-object v4, p2

    check-cast v4, Lio/netty/handler/codec/http/HttpContent;

    invoke-interface {v4}, Lio/netty/handler/codec/http/HttpContent;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v0, v4}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 131
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 133
    :cond_9
    if-eqz v0, :cond_a

    .line 134
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_a
    invoke-static {p2}, Lio/netty/handler/codec/http/HttpObjectEncoder;->encodeAndRetain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :goto_4
    instance-of v4, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v4, :cond_d

    .line 140
    iput v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    goto :goto_5

    .line 149
    .end local v1    # "contentLength":J
    :cond_b
    :pswitch_2
    if-eqz v0, :cond_c

    .line 151
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 160
    :cond_c
    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    nop

    .line 176
    :cond_d
    :goto_5
    instance-of v1, p2, Lio/netty/handler/codec/http/LastHttpContent;

    if-eqz v1, :cond_e

    .line 177
    iput v3, p0, Lio/netty/handler/codec/http/HttpObjectEncoder;->state:I

    .line 182
    :cond_e
    :goto_6
    return-void

    .line 124
    :pswitch_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected encodeHeaders(Lio/netty/handler/codec/http/HttpHeaders;Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 188
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    invoke-virtual {p1}, Lio/netty/handler/codec/http/HttpHeaders;->iteratorCharSequence()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 191
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3, p2}, Lio/netty/handler/codec/http/HttpHeadersEncoder;->encoderHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V

    .line 192
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method protected abstract encodeInitialLine(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/http/HttpMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "TH;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected isContentAlwaysEmpty(Lio/netty/handler/codec/http/HttpMessage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;)Z"
        }
    .end annotation

    .line 241
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p1, "msg":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    const/4 v0, 0x0

    return v0
.end method

.method protected sanitizeHeadersBeforeEncode(Lio/netty/handler/codec/http/HttpMessage;Z)V
    .locals 0
    .param p2, "isAlwaysEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;Z)V"
        }
    .end annotation

    .line 231
    .local p0, "this":Lio/netty/handler/codec/http/HttpObjectEncoder;, "Lio/netty/handler/codec/http/HttpObjectEncoder<TH;>;"
    .local p1, "msg":Lio/netty/handler/codec/http/HttpMessage;, "TH;"
    return-void
.end method
