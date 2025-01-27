.class final Lio/netty/handler/codec/http/HttpHeadersEncoder;
.super Ljava/lang/Object;
.source "HttpHeadersEncoder.java"


# static fields
.field private static final COLON_AND_SPACE_SHORT:I = 0x3a20


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method static encoderHeader(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/buffer/ByteBuf;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/CharSequence;
    .param p1, "value"    # Ljava/lang/CharSequence;
    .param p2, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 35
    .local v0, "nameLen":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 36
    .local v1, "valueLen":I
    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x4

    .line 37
    .local v2, "entryLen":I
    invoke-virtual {p2, v2}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 38
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v3

    .line 39
    .local v3, "offset":I
    invoke-static {p2, v3, p0}, Lio/netty/handler/codec/http/HttpHeadersEncoder;->writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V

    .line 40
    add-int/2addr v3, v0

    .line 41
    const/16 v4, 0x3a20

    invoke-static {p2, v3, v4}, Lio/netty/buffer/ByteBufUtil;->setShortBE(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 42
    add-int/lit8 v3, v3, 0x2

    .line 43
    invoke-static {p2, v3, p1}, Lio/netty/handler/codec/http/HttpHeadersEncoder;->writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V

    .line 44
    add-int/2addr v3, v1

    .line 45
    const/16 v4, 0xd0a

    invoke-static {p2, v3, v4}, Lio/netty/buffer/ByteBufUtil;->setShortBE(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 46
    add-int/lit8 v3, v3, 0x2

    .line 47
    invoke-virtual {p2, v3}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 48
    return-void
.end method

.method private static writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V
    .locals 3
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 51
    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p2

    check-cast v0, Lio/netty/util/AsciiString;

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, p0, p1, v2}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;II)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/ByteBuf;->setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 56
    :goto_0
    return-void
.end method
