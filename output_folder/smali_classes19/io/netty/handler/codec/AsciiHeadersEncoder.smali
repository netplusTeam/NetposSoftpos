.class public final Lio/netty/handler/codec/AsciiHeadersEncoder;
.super Ljava/lang/Object;
.source "AsciiHeadersEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;,
        Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;
    }
.end annotation


# instance fields
.field private final buf:Lio/netty/buffer/ByteBuf;

.field private final newlineType:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

.field private final separatorType:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 63
    sget-object v0, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->COLON_SPACE:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    sget-object v1, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->CRLF:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/AsciiHeadersEncoder;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;)V
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "separatorType"    # Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;
    .param p3, "newlineType"    # Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, "buf"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->buf:Lio/netty/buffer/ByteBuf;

    .line 68
    const-string v0, "separatorType"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    iput-object v0, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->separatorType:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    .line 69
    const-string v0, "newlineType"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    iput-object v0, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->newlineType:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    .line 70
    return-void
.end method

.method private static writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V
    .locals 3
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p1, "offset"    # I
    .param p2, "value"    # Ljava/lang/CharSequence;

    .line 115
    instance-of v0, p2, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p2

    check-cast v0, Lio/netty/util/AsciiString;

    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, p0, p1, v2}, Lio/netty/buffer/ByteBufUtil;->copy(Lio/netty/util/AsciiString;ILio/netty/buffer/ByteBuf;II)V

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/ByteBuf;->setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    .line 120
    :goto_0
    return-void
.end method


# virtual methods
.method public encode(Ljava/util/Map$Entry;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 74
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 75
    .local v1, "value":Ljava/lang/CharSequence;
    iget-object v2, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->buf:Lio/netty/buffer/ByteBuf;

    .line 76
    .local v2, "buf":Lio/netty/buffer/ByteBuf;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 77
    .local v3, "nameLen":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 78
    .local v4, "valueLen":I
    add-int v5, v3, v4

    add-int/lit8 v5, v5, 0x4

    .line 79
    .local v5, "entryLen":I
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    .line 80
    .local v6, "offset":I
    invoke-virtual {v2, v5}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 81
    invoke-static {v2, v6, v0}, Lio/netty/handler/codec/AsciiHeadersEncoder;->writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V

    .line 82
    add-int/2addr v6, v3

    .line 84
    sget-object v7, Lio/netty/handler/codec/AsciiHeadersEncoder$1;->$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$SeparatorType:[I

    iget-object v8, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->separatorType:Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;

    invoke-virtual {v8}, Lio/netty/handler/codec/AsciiHeadersEncoder$SeparatorType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x3a

    packed-switch v7, :pswitch_data_0

    .line 93
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    throw v7

    .line 89
    :pswitch_0
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .local v7, "offset":I
    invoke-virtual {v2, v6, v8}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 90
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    const/16 v8, 0x20

    invoke-virtual {v2, v7, v8}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 91
    goto :goto_0

    .line 86
    :pswitch_1
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {v2, v6, v8}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 87
    move v6, v7

    .line 96
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :goto_0
    invoke-static {v2, v6, v1}, Lio/netty/handler/codec/AsciiHeadersEncoder;->writeAscii(Lio/netty/buffer/ByteBuf;ILjava/lang/CharSequence;)V

    .line 97
    add-int/2addr v6, v4

    .line 99
    sget-object v7, Lio/netty/handler/codec/AsciiHeadersEncoder$1;->$SwitchMap$io$netty$handler$codec$AsciiHeadersEncoder$NewlineType:[I

    iget-object v8, p0, Lio/netty/handler/codec/AsciiHeadersEncoder;->newlineType:Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;

    invoke-virtual {v8}, Lio/netty/handler/codec/AsciiHeadersEncoder$NewlineType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0xa

    packed-switch v7, :pswitch_data_1

    .line 108
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7}, Ljava/lang/Error;-><init>()V

    throw v7

    .line 104
    :pswitch_2
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    const/16 v9, 0xd

    invoke-virtual {v2, v6, v9}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 105
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    invoke-virtual {v2, v7, v8}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 106
    goto :goto_1

    .line 101
    :pswitch_3
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "offset":I
    .restart local v7    # "offset":I
    invoke-virtual {v2, v6, v8}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 102
    move v6, v7

    .line 111
    .end local v7    # "offset":I
    .restart local v6    # "offset":I
    :goto_1
    invoke-virtual {v2, v6}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 112
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
