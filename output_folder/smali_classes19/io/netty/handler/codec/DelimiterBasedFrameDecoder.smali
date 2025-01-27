.class public Lio/netty/handler/codec/DelimiterBasedFrameDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "DelimiterBasedFrameDecoder.java"


# instance fields
.field private final delimiters:[Lio/netty/buffer/ByteBuf;

.field private discardingTooLongFrame:Z

.field private final failFast:Z

.field private final lineBasedDecoder:Lio/netty/handler/codec/LineBasedFrameDecoder;

.field private final maxFrameLength:I

.field private final stripDelimiter:Z

.field private tooLongFrameLength:I


# direct methods
.method public constructor <init>(ILio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "maxFrameLength"    # I
    .param p2, "delimiter"    # Lio/netty/buffer/ByteBuf;

    .line 81
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;-><init>(IZLio/netty/buffer/ByteBuf;)V

    .line 82
    return-void
.end method

.method public constructor <init>(IZLio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "delimiter"    # Lio/netty/buffer/ByteBuf;

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;-><init>(IZZLio/netty/buffer/ByteBuf;)V

    .line 97
    return-void
.end method

.method public constructor <init>(IZZLio/netty/buffer/ByteBuf;)V
    .locals 3
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "failFast"    # Z
    .param p4, "delimiter"    # Lio/netty/buffer/ByteBuf;

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Lio/netty/buffer/ByteBuf;

    .line 120
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-virtual {p4, v1, v2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 119
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;-><init>(IZZ[Lio/netty/buffer/ByteBuf;)V

    .line 121
    return-void
.end method

.method public varargs constructor <init>(IZZ[Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "failFast"    # Z
    .param p4, "delimiters"    # [Lio/netty/buffer/ByteBuf;

    .line 168
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 169
    invoke-static {p1}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->validateMaxFrameLength(I)V

    .line 170
    const-string v0, "delimiters"

    invoke-static {p4, v0}, Lio/netty/util/internal/ObjectUtil;->checkNonEmpty([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    .line 172
    invoke-static {p4}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->isLineBased([Lio/netty/buffer/ByteBuf;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->isSubclass()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lio/netty/handler/codec/LineBasedFrameDecoder;

    invoke-direct {v0, p1, p2, p3}, Lio/netty/handler/codec/LineBasedFrameDecoder;-><init>(IZZ)V

    iput-object v0, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->lineBasedDecoder:Lio/netty/handler/codec/LineBasedFrameDecoder;

    .line 174
    iput-object v1, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->delimiters:[Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 176
    :cond_0
    array-length v0, p4

    new-array v0, v0, [Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->delimiters:[Lio/netty/buffer/ByteBuf;

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_1

    .line 178
    aget-object v2, p4, v0

    .line 179
    .local v2, "d":Lio/netty/buffer/ByteBuf;
    invoke-static {v2}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->validateDelimiter(Lio/netty/buffer/ByteBuf;)V

    .line 180
    iget-object v3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->delimiters:[Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    aput-object v4, v3, v0

    .line 177
    .end local v2    # "d":Lio/netty/buffer/ByteBuf;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_1
    iput-object v1, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->lineBasedDecoder:Lio/netty/handler/codec/LineBasedFrameDecoder;

    .line 184
    :goto_1
    iput p1, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->maxFrameLength:I

    .line 185
    iput-boolean p2, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    .line 186
    iput-boolean p3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->failFast:Z

    .line 187
    return-void
.end method

.method public varargs constructor <init>(IZ[Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "maxFrameLength"    # I
    .param p2, "stripDelimiter"    # Z
    .param p3, "delimiters"    # [Lio/netty/buffer/ByteBuf;

    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;-><init>(IZZ[Lio/netty/buffer/ByteBuf;)V

    .line 148
    return-void
.end method

.method public varargs constructor <init>(I[Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "maxFrameLength"    # I
    .param p2, "delimiters"    # [Lio/netty/buffer/ByteBuf;

    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;-><init>(IZ[Lio/netty/buffer/ByteBuf;)V

    .line 133
    return-void
.end method

.method private fail(J)V
    .locals 3
    .param p1, "frameLength"    # J

    .line 297
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-string v1, "frame length exceeds "

    if-lez v0, :cond_0

    .line 298
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - discarded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    new-instance v0, Lio/netty/handler/codec/TooLongFrameException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->maxFrameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - discarding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/TooLongFrameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static indexOf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I
    .locals 6
    .param p0, "haystack"    # Lio/netty/buffer/ByteBuf;
    .param p1, "needle"    # Lio/netty/buffer/ByteBuf;

    .line 314
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_4

    .line 315
    move v1, v0

    .line 317
    .local v1, "haystackIndex":I
    const/4 v3, 0x0

    .local v3, "needleIndex":I
    :goto_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 318
    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v4

    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v5

    if-eq v4, v5, :cond_0

    .line 319
    goto :goto_2

    .line 321
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 322
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 323
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_1

    .line 324
    return v2

    .line 317
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 329
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    if-ne v3, v2, :cond_3

    .line 331
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v2

    sub-int v2, v0, v2

    return v2

    .line 314
    .end local v1    # "haystackIndex":I
    .end local v3    # "needleIndex":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "i":I
    :cond_4
    return v2
.end method

.method private static isLineBased([Lio/netty/buffer/ByteBuf;)Z
    .locals 7
    .param p0, "delimiters"    # [Lio/netty/buffer/ByteBuf;

    .line 191
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 192
    return v2

    .line 194
    :cond_0
    aget-object v0, p0, v2

    .line 195
    .local v0, "a":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x1

    aget-object v4, p0, v3

    .line 196
    .local v4, "b":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 197
    aget-object v0, p0, v3

    .line 198
    aget-object v4, p0, v2

    .line 200
    :cond_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v5

    if-ne v5, v1, :cond_2

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 201
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    const/16 v5, 0xd

    if-ne v1, v5, :cond_2

    invoke-virtual {v0, v3}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    .line 202
    invoke-virtual {v4, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    if-ne v1, v5, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    nop

    .line 200
    :goto_0
    return v2
.end method

.method private isSubclass()Z
    .locals 2

    .line 209
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static validateDelimiter(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p0, "delimiter"    # Lio/netty/buffer/ByteBuf;

    .line 338
    const-string v0, "delimiter"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 339
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty delimiter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateMaxFrameLength(I)V
    .locals 1
    .param p0, "maxFrameLength"    # I

    .line 345
    const-string v0, "maxFrameLength"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 346
    return-void
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;
    .locals 8
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->lineBasedDecoder:Lio/netty/handler/codec/LineBasedFrameDecoder;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p1, p2}, Lio/netty/handler/codec/LineBasedFrameDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    const v0, 0x7fffffff

    .line 234
    .local v0, "minFrameLength":I
    const/4 v1, 0x0

    .line 235
    .local v1, "minDelim":Lio/netty/buffer/ByteBuf;
    iget-object v2, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->delimiters:[Lio/netty/buffer/ByteBuf;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    .line 236
    .local v6, "delim":Lio/netty/buffer/ByteBuf;
    invoke-static {p2, v6}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->indexOf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)I

    move-result v7

    .line 237
    .local v7, "frameLength":I
    if-ltz v7, :cond_1

    if-ge v7, v0, :cond_1

    .line 238
    move v0, v7

    .line 239
    move-object v1, v6

    .line 235
    .end local v6    # "delim":Lio/netty/buffer/ByteBuf;
    .end local v7    # "frameLength":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 243
    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 244
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v3

    .line 247
    .local v3, "minDelimLength":I
    iget-boolean v5, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    if-eqz v5, :cond_4

    .line 250
    iput-boolean v4, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 251
    add-int v5, v0, v3

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 253
    iget v5, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 254
    .local v5, "tooLongFrameLength":I
    iput v4, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 255
    iget-boolean v4, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->failFast:Z

    if-nez v4, :cond_3

    .line 256
    int-to-long v6, v5

    invoke-direct {p0, v6, v7}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->fail(J)V

    .line 258
    :cond_3
    return-object v2

    .line 261
    .end local v5    # "tooLongFrameLength":I
    :cond_4
    iget v4, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->maxFrameLength:I

    if-le v0, v4, :cond_5

    .line 263
    add-int v4, v0, v3

    invoke-virtual {p2, v4}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 264
    int-to-long v4, v0

    invoke-direct {p0, v4, v5}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->fail(J)V

    .line 265
    return-object v2

    .line 268
    :cond_5
    iget-boolean v2, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->stripDelimiter:Z

    if-eqz v2, :cond_6

    .line 269
    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 270
    .local v2, "frame":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 272
    .end local v2    # "frame":Lio/netty/buffer/ByteBuf;
    :cond_6
    add-int v2, v0, v3

    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 275
    .restart local v2    # "frame":Lio/netty/buffer/ByteBuf;
    :goto_1
    return-object v2

    .line 277
    .end local v2    # "frame":Lio/netty/buffer/ByteBuf;
    .end local v3    # "minDelimLength":I
    :cond_7
    iget-boolean v3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    if-nez v3, :cond_8

    .line 278
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    iget v4, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->maxFrameLength:I

    if-le v3, v4, :cond_9

    .line 280
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    iput v3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 281
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 282
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->discardingTooLongFrame:Z

    .line 283
    iget-boolean v3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->failFast:Z

    if-eqz v3, :cond_9

    .line 284
    iget v3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    int-to-long v3, v3

    invoke-direct {p0, v3, v4}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->fail(J)V

    goto :goto_2

    .line 289
    :cond_8
    iget v3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->tooLongFrameLength:I

    .line 290
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 292
    :cond_9
    :goto_2
    return-object v2
.end method

.method protected final decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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

    .line 214
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/DelimiterBasedFrameDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, "decoded":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 216
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    return-void
.end method
