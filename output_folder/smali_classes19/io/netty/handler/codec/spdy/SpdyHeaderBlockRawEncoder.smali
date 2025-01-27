.class public Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;
.super Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;
.source "SpdyHeaderBlockRawEncoder.java"


# instance fields
.field private final version:I


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/spdy/SpdyVersion;)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/spdy/SpdyVersion;

    .line 32
    invoke-direct {p0}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockEncoder;-><init>()V

    .line 33
    const-string v0, "version"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/spdy/SpdyVersion;

    invoke-virtual {v0}, Lio/netty/handler/codec/spdy/SpdyVersion;->getVersion()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->version:I

    .line 34
    return-void
.end method

.method private static setLengthField(Lio/netty/buffer/ByteBuf;II)V
    .locals 0
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "writerIndex"    # I
    .param p2, "length"    # I

    .line 37
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 38
    return-void
.end method

.method private static writeLengthField(Lio/netty/buffer/ByteBuf;I)V
    .locals 0
    .param p0, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p1, "length"    # I

    .line 41
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 42
    return-void
.end method


# virtual methods
.method public encode(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/spdy/SpdyHeadersFrame;)Lio/netty/buffer/ByteBuf;
    .locals 12
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "frame"    # Lio/netty/handler/codec/spdy/SpdyHeadersFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/handler/codec/spdy/SpdyHeaders;->names()Ljava/util/Set;

    move-result-object v0

    .line 47
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    .line 48
    .local v1, "numHeaders":I
    if-nez v1, :cond_0

    .line 49
    sget-object v2, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v2

    .line 51
    :cond_0
    const v2, 0xffff

    if-gt v1, v2, :cond_7

    .line 55
    invoke-interface {p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 56
    .local v3, "headerBlock":Lio/netty/buffer/ByteBuf;
    invoke-static {v3, v1}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->writeLengthField(Lio/netty/buffer/ByteBuf;I)V

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 58
    .local v5, "name":Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v3, v6}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->writeLengthField(Lio/netty/buffer/ByteBuf;I)V

    .line 59
    invoke-static {v3, v5}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 60
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    .line 61
    .local v6, "savedIndex":I
    const/4 v7, 0x0

    .line 62
    .local v7, "valueLength":I
    invoke-static {v3, v7}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->writeLengthField(Lio/netty/buffer/ByteBuf;I)V

    .line 63
    invoke-interface {p2}, Lio/netty/handler/codec/spdy/SpdyHeadersFrame;->headers()Lio/netty/handler/codec/spdy/SpdyHeaders;

    move-result-object v8

    invoke-interface {v8, v5}, Lio/netty/handler/codec/spdy/SpdyHeaders;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    .line 64
    .local v9, "value":Ljava/lang/CharSequence;
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 65
    .local v10, "length":I
    if-lez v10, :cond_1

    .line 66
    invoke-static {v3, v9}, Lio/netty/buffer/ByteBufUtil;->writeAscii(Lio/netty/buffer/ByteBuf;Ljava/lang/CharSequence;)I

    .line 67
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lio/netty/buffer/ByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    .line 68
    add-int/lit8 v11, v10, 0x1

    add-int/2addr v7, v11

    .line 70
    .end local v9    # "value":Ljava/lang/CharSequence;
    .end local v10    # "length":I
    :cond_1
    goto :goto_1

    .line 71
    :cond_2
    if-eqz v7, :cond_3

    .line 72
    add-int/lit8 v7, v7, -0x1

    .line 74
    :cond_3
    if-gt v7, v2, :cond_5

    .line 78
    if-lez v7, :cond_4

    .line 79
    invoke-static {v3, v6, v7}, Lio/netty/handler/codec/spdy/SpdyHeaderBlockRawEncoder;->setLengthField(Lio/netty/buffer/ByteBuf;II)V

    .line 80
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 82
    .end local v5    # "name":Ljava/lang/CharSequence;
    .end local v6    # "savedIndex":I
    .end local v7    # "valueLength":I
    :cond_4
    goto :goto_0

    .line 75
    .restart local v5    # "name":Ljava/lang/CharSequence;
    .restart local v6    # "savedIndex":I
    .restart local v7    # "valueLength":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "header exceeds allowable length: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .end local v5    # "name":Ljava/lang/CharSequence;
    .end local v6    # "savedIndex":I
    .end local v7    # "valueLength":I
    :cond_6
    return-object v3

    .line 52
    .end local v3    # "headerBlock":Lio/netty/buffer/ByteBuf;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "header block contains too many headers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method end()V
    .locals 0

    .line 88
    return-void
.end method
