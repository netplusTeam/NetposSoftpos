.class public Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;
.super Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;
.source "SpdyHeaderBlockRawDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;
    }
.end annotation


# static fields
.field private static final LENGTH_FIELD_SIZE:I = 0x4


# instance fields
.field private cumulation:Lio/netty/buffer/ByteBuf;

.field private headerSize:I

.field private length:I

.field private final maxHeaderSize:I

.field private name:Ljava/lang/String;

.field private numHeaders:I

.field private state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;I)V
    .locals 1
    .param p1, "spdyVersion"    # Lio/netty/handler/codec/spdy/SpdyVersion;
    .param p2, "maxHeaderSize"    # I

    .line 51
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockDecoder;-><init>()V

    .line 52
    const-string v0, "spdyVersion"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 53
    iput p2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->maxHeaderSize:I

    .line 54
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 55
    return-void
.end method

.method private static readLengthField(Lio/netty/buffer/ByteBuf;)I
    .locals 2
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 58
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-static {p0, v0}, Lio/netty/handler/codec/spdy/SpdyCodecUtil;->getSignedInt(Lio/netty/buffer/ByteBuf;I)I

    move-result v0

    .line 59
    .local v0, "length":I
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 60
    return v0
.end method

.method private releaseBuffer()V
    .locals 1

    .line 301
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method decode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "headerBlock"    # Lio/netty/buffer/ByteBuf;
    .param p3, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    const-string v0, "headerBlock"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v0, "frame"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, p2, p3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->decodeHeaderBlock(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V

    .line 70
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 72
    invoke-virtual {v0, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 76
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, v0, p3}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->decodeHeaderBlock(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V

    .line 77
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->discardReadBytes()Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 80
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->releaseBuffer()V

    .line 83
    :cond_2
    :goto_0
    return-void
.end method

.method protected decodeHeaderBlock(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    .locals 8
    .param p1, "headerBlock"    # Lio/netty/buffer/ByteBuf;
    .param p2, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 88
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$1;->$SwitchMap$io$netty$handler$codec$spdy$SpdyHeaderBlockRawDecoder$State:[I

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    invoke-virtual {v1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "UTF-8"

    const/4 v2, 0x0

    const/4 v3, 0x4

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Shouldn\'t reach here."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 273
    return-void

    .line 267
    :pswitch_1
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 268
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 269
    goto :goto_0

    .line 253
    :pswitch_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 254
    .local v0, "skipLength":I
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 255
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    .line 257
    if-nez v1, :cond_0

    .line 258
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    if-nez v1, :cond_1

    .line 259
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto :goto_0

    .line 261
    :cond_1
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto :goto_0

    .line 191
    .end local v0    # "skipLength":I
    :pswitch_3
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-ge v0, v3, :cond_2

    .line 192
    return-void

    .line 195
    :cond_2
    new-array v0, v3, [B

    .line 196
    .local v0, "valueBytes":[B
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, "index":I
    const/4 v4, 0x0

    .line 203
    .local v4, "offset":I
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    if-nez v5, :cond_3

    .line 204
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 205
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 206
    goto :goto_0

    .line 209
    :cond_3
    :goto_1
    iget v5, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-ge v3, v5, :cond_7

    .line 210
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_4

    aget-byte v5, v0, v3

    if-eqz v5, :cond_4

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 213
    :cond_4
    array-length v5, v0

    if-ge v3, v5, :cond_6

    .line 215
    add-int/lit8 v5, v3, 0x1

    array-length v6, v0

    if-eq v5, v6, :cond_5

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v0, v5

    if-nez v5, :cond_6

    .line 219
    :cond_5
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 220
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 221
    goto :goto_3

    .line 224
    :cond_6
    new-instance v5, Ljava/lang/String;

    sub-int v6, v3, v4

    invoke-direct {v5, v0, v4, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 227
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v6

    iget-object v7, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    invoke-interface {v6, v7, v5}, Lio/netty/handler/codec/spdy/SpdyHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    nop

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 235
    move v4, v3

    .line 236
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_1

    .line 228
    .restart local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v6, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 231
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 232
    nop

    .line 238
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    :goto_3
    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v2, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    if-ne v1, v2, :cond_8

    .line 242
    goto/16 :goto_0

    .line 245
    :cond_8
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    if-nez v1, :cond_9

    .line 246
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto/16 :goto_0

    .line 248
    :cond_9
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 250
    goto/16 :goto_0

    .line 156
    .end local v0    # "valueBytes":[B
    .end local v3    # "index":I
    .end local v4    # "offset":I
    :pswitch_4
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_a

    .line 157
    return-void

    .line 160
    :cond_a
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->readLengthField(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    .line 163
    if-gez v0, :cond_b

    .line 164
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 165
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto/16 :goto_0

    .line 166
    :cond_b
    if-nez v0, :cond_e

    .line 167
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->isTruncated()Z

    move-result v0

    if-nez v0, :cond_c

    .line 169
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Lio/netty/handler/codec/spdy/SpdyHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 172
    :cond_c
    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    .line 173
    iget v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    if-nez v0, :cond_d

    .line 174
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto/16 :goto_0

    .line 176
    :cond_d
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto/16 :goto_0

    .line 179
    :cond_e
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->maxHeaderSize:I

    if-gt v0, v1, :cond_10

    iget v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    sub-int v4, v1, v0

    if-le v3, v4, :cond_f

    goto :goto_4

    .line 185
    :cond_f
    add-int/2addr v3, v0

    iput v3, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    .line 186
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 188
    goto/16 :goto_0

    .line 180
    :cond_10
    :goto_4
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    .line 181
    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    .line 182
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_VALUE:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 183
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setTruncated()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto/16 :goto_0

    .line 146
    :pswitch_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 147
    .local v0, "skipLength":I
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 148
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    sub-int/2addr v1, v0

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    .line 150
    if-nez v1, :cond_0

    .line 151
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto/16 :goto_0

    .line 128
    .end local v0    # "skipLength":I
    :pswitch_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    if-ge v0, v2, :cond_11

    .line 129
    return-void

    .line 132
    :cond_11
    new-array v0, v2, [B

    .line 133
    .local v0, "nameBytes":[B
    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 134
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    .line 137
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Lio/netty/handler/codec/spdy/SpdyHeaders;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 138
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 139
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto/16 :goto_0

    .line 141
    :cond_12
    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_VALUE_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 143
    goto/16 :goto_0

    .line 107
    .end local v0    # "nameBytes":[B
    :pswitch_7
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_13

    .line 108
    return-void

    .line 111
    :cond_13
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->readLengthField(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->length:I

    .line 114
    if-gtz v0, :cond_14

    .line 115
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 116
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto/16 :goto_0

    .line 117
    :cond_14
    iget v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->maxHeaderSize:I

    if-gt v0, v1, :cond_16

    iget v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    sub-int v3, v1, v0

    if-le v2, v3, :cond_15

    goto :goto_5

    .line 122
    :cond_15
    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    .line 123
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 125
    goto/16 :goto_0

    .line 118
    :cond_16
    :goto_5
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    .line 119
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->SKIP_NAME:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 120
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setTruncated()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto/16 :goto_0

    .line 90
    :pswitch_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_17

    .line 91
    return-void

    .line 94
    :cond_17
    invoke-static {p1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->readLengthField(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->numHeaders:I

    .line 96
    if-gez v0, :cond_18

    .line 97
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->ERROR:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 98
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    goto/16 :goto_0

    .line 99
    :cond_18
    if-nez v0, :cond_19

    .line 100
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    goto/16 :goto_0

    .line 102
    :cond_19
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NAME_LENGTH:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 104
    goto/16 :goto_0

    .line 279
    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method end()V
    .locals 0

    .line 297
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->releaseBuffer()V

    .line 298
    return-void
.end method

.method endHeaderBlock(Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)V
    .locals 2
    .param p1, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    sget-object v1, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->END_HEADER_BLOCK:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    if-eq v0, v1, :cond_0

    .line 284
    invoke-interface {p1}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->setInvalid()Lio/netty/handler/codec/spdy/SpdyHeadersFrame;

    .line 287
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->releaseBuffer()V

    .line 290
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->headerSize:I

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->name:Ljava/lang/String;

    .line 292
    sget-object v0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;->READ_NUM_HEADERS:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    iput-object v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder;->state:Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawDecoder$State;

    .line 293
    return-void
.end method
