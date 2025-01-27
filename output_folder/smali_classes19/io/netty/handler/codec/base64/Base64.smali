.class public final Lio/netty/handler/codec/base64/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/base64/Base64$Decoder;
    }
.end annotation


# static fields
.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field private static final WHITE_SPACE_ENC:B = -0x5t


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/base64/Base64Dialect;)[B
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 38
    invoke-static {p0}, Lio/netty/handler/codec/base64/Base64;->decodabet(Lio/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v0

    return-object v0
.end method

.method private static alphabet(Lio/netty/handler/codec/base64/Base64Dialect;)[B
    .locals 1
    .param p0, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 54
    const-string v0, "dialect"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/base64/Base64Dialect;

    iget-object v0, v0, Lio/netty/handler/codec/base64/Base64Dialect;->alphabet:[B

    return-object v0
.end method

.method private static breakLines(Lio/netty/handler/codec/base64/Base64Dialect;)Z
    .locals 1
    .param p0, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 62
    const-string v0, "dialect"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/base64/Base64Dialect;

    iget-boolean v0, v0, Lio/netty/handler/codec/base64/Base64Dialect;->breakLinesByDefault:Z

    return v0
.end method

.method private static decodabet(Lio/netty/handler/codec/base64/Base64Dialect;)[B
    .locals 1
    .param p0, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 58
    const-string v0, "dialect"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/base64/Base64Dialect;

    iget-object v0, v0, Lio/netty/handler/codec/base64/Base64Dialect;->decodabet:[B

    return-object v0
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;

    .line 275
    sget-object v0, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0}, Lio/netty/handler/codec/base64/Base64;->decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 288
    sget-object v0, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0}, Lio/netty/handler/codec/base64/Base64;->decode(Lio/netty/buffer/ByteBuf;IILio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;IILio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 293
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/base64/Base64;->decode(Lio/netty/buffer/ByteBuf;IILio/netty/handler/codec/base64/Base64Dialect;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;IILio/netty/handler/codec/base64/Base64Dialect;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;
    .param p4, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 298
    const-string v0, "src"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    const-string v0, "dialect"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 302
    new-instance v1, Lio/netty/handler/codec/base64/Base64$Decoder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lio/netty/handler/codec/base64/Base64$Decoder;-><init>(Lio/netty/handler/codec/base64/Base64$1;)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lio/netty/handler/codec/base64/Base64$Decoder;->decode(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBufAllocator;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 279
    const-string v0, "src"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Lio/netty/handler/codec/base64/Base64;->decode(Lio/netty/buffer/ByteBuf;IILio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 282
    .local v0, "dest":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 283
    return-object v0
.end method

.method static decodedBufferSize(I)I
    .locals 1
    .param p0, "len"    # I

    .line 307
    ushr-int/lit8 v0, p0, 0x2

    sub-int v0, p0, v0

    return v0
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;

    .line 66
    sget-object v0, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, v0}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 86
    sget-object v0, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, v0}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;IILio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;IILio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 90
    invoke-static {p3}, Lio/netty/handler/codec/base64/Base64;->breakLines(Lio/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, p1, p2, v0, p3}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;IIZ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "breakLines"    # Z

    .line 95
    sget-object v0, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "breakLines"    # Z
    .param p4, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 100
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;
    .locals 16
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "breakLines"    # Z
    .param p4, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;
    .param p5, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 105
    move/from16 v0, p2

    const-string v1, "src"

    move-object/from16 v8, p0

    invoke-static {v8, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 106
    const-string v1, "dialect"

    move-object/from16 v9, p4

    invoke-static {v9, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 108
    invoke-static/range {p2 .. p3}, Lio/netty/handler/codec/base64/Base64;->encodedBufferSize(IZ)I

    move-result v1

    move-object/from16 v10, p5

    invoke-interface {v10, v1}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 109
    .local v1, "dest":Lio/netty/buffer/ByteBuf;
    invoke-static/range {p4 .. p4}, Lio/netty/handler/codec/base64/Base64;->alphabet(Lio/netty/handler/codec/base64/Base64Dialect;)[B

    move-result-object v11

    .line 110
    .local v11, "alphabet":[B
    const/4 v2, 0x0

    .line 111
    .local v2, "d":I
    const/4 v3, 0x0

    .line 112
    .local v3, "e":I
    add-int/lit8 v12, v0, -0x2

    .line 113
    .local v12, "len2":I
    const/4 v4, 0x0

    move v13, v2

    move v14, v3

    move v15, v4

    .line 114
    .end local v2    # "d":I
    .end local v3    # "e":I
    .local v13, "d":I
    .local v14, "e":I
    .local v15, "lineLength":I
    :goto_0
    const/16 v7, 0xa

    if-ge v13, v12, :cond_1

    .line 115
    add-int v3, v13, p1

    const/4 v4, 0x3

    move-object/from16 v2, p0

    move-object v5, v1

    move v6, v14

    move v8, v7

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lio/netty/handler/codec/base64/Base64;->encode3to4(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;I[B)V

    .line 117
    add-int/lit8 v15, v15, 0x4

    .line 119
    if-eqz p3, :cond_0

    const/16 v2, 0x4c

    if-ne v15, v2, :cond_0

    .line 120
    add-int/lit8 v2, v14, 0x4

    invoke-virtual {v1, v2, v8}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 121
    add-int/lit8 v14, v14, 0x1

    .line 122
    const/4 v2, 0x0

    move v15, v2

    .line 114
    :cond_0
    add-int/lit8 v13, v13, 0x3

    add-int/lit8 v14, v14, 0x4

    move-object/from16 v8, p0

    goto :goto_0

    .line 126
    :cond_1
    move v8, v7

    if-ge v13, v0, :cond_2

    .line 127
    add-int v3, v13, p1

    sub-int v4, v0, v13

    move-object/from16 v2, p0

    move-object v5, v1

    move v6, v14

    move-object v7, v11

    invoke-static/range {v2 .. v7}, Lio/netty/handler/codec/base64/Base64;->encode3to4(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;I[B)V

    .line 128
    add-int/lit8 v14, v14, 0x4

    .line 132
    :cond_2
    const/4 v2, 0x1

    if-le v14, v2, :cond_3

    add-int/lit8 v2, v14, -0x1

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v2

    if-ne v2, v8, :cond_3

    .line 133
    add-int/lit8 v14, v14, -0x1

    .line 136
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v14}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    return-object v2
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;Lio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 70
    invoke-static {p1}, Lio/netty/handler/codec/base64/Base64;->breakLines(Lio/netty/handler/codec/base64/Base64Dialect;)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;ZLio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "breakLines"    # Z

    .line 74
    sget-object v0, Lio/netty/handler/codec/base64/Base64Dialect;->STANDARD:Lio/netty/handler/codec/base64/Base64Dialect;

    invoke-static {p0, p1, v0}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;ZLio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Lio/netty/buffer/ByteBuf;ZLio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "breakLines"    # Z
    .param p2, "dialect"    # Lio/netty/handler/codec/base64/Base64Dialect;

    .line 78
    const-string v0, "src"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;IIZLio/netty/handler/codec/base64/Base64Dialect;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 81
    .local v0, "dest":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 82
    return-object v0
.end method

.method private static encode3to4(Lio/netty/buffer/ByteBuf;IILio/netty/buffer/ByteBuf;I[B)V
    .locals 3
    .param p0, "src"    # Lio/netty/buffer/ByteBuf;
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "dest"    # Lio/netty/buffer/ByteBuf;
    .param p4, "destOffset"    # I
    .param p5, "alphabet"    # [B

    .line 152
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 154
    packed-switch p2, :pswitch_data_0

    .line 162
    if-gtz p2, :cond_0

    goto :goto_0

    .line 159
    :pswitch_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/base64/Base64;->toIntBE(S)I

    move-result v0

    .line 160
    .local v0, "inBuff":I
    goto :goto_1

    .line 156
    .end local v0    # "inBuff":I
    :pswitch_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/base64/Base64;->toInt(B)I

    move-result v0

    .line 157
    .restart local v0    # "inBuff":I
    goto :goto_1

    .line 162
    .end local v0    # "inBuff":I
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getMedium(I)I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/base64/Base64;->toIntBE(I)I

    move-result v2

    :goto_0
    move v0, v2

    .line 165
    .restart local v0    # "inBuff":I
    :goto_1
    invoke-static {v0, p2, p3, p4, p5}, Lio/netty/handler/codec/base64/Base64;->encode3to4BigEndian(IILio/netty/buffer/ByteBuf;I[B)V

    .line 166
    .end local v0    # "inBuff":I
    goto :goto_4

    .line 168
    :cond_1
    packed-switch p2, :pswitch_data_1

    .line 176
    if-gtz p2, :cond_2

    goto :goto_2

    .line 173
    :pswitch_2
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/base64/Base64;->toIntLE(S)I

    move-result v0

    .line 174
    .restart local v0    # "inBuff":I
    goto :goto_3

    .line 170
    .end local v0    # "inBuff":I
    :pswitch_3
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/base64/Base64;->toInt(B)I

    move-result v0

    .line 171
    .restart local v0    # "inBuff":I
    goto :goto_3

    .line 176
    .end local v0    # "inBuff":I
    :cond_2
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->getMedium(I)I

    move-result v0

    invoke-static {v0}, Lio/netty/handler/codec/base64/Base64;->toIntLE(I)I

    move-result v2

    :goto_2
    move v0, v2

    .line 179
    .restart local v0    # "inBuff":I
    :goto_3
    invoke-static {v0, p2, p3, p4, p5}, Lio/netty/handler/codec/base64/Base64;->encode3to4LittleEndian(IILio/netty/buffer/ByteBuf;I[B)V

    .line 181
    .end local v0    # "inBuff":I
    :goto_4
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

.method private static encode3to4BigEndian(IILio/netty/buffer/ByteBuf;I[B)V
    .locals 2
    .param p0, "inBuff"    # I
    .param p1, "numSigBytes"    # I
    .param p2, "dest"    # Lio/netty/buffer/ByteBuf;
    .param p3, "destOffset"    # I
    .param p4, "alphabet"    # [B

    .line 221
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 223
    :pswitch_0
    ushr-int/lit8 v0, p0, 0x12

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x3f

    aget-byte v1, p4, v1

    or-int/2addr v0, v1

    invoke-virtual {p2, p3, v0}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 227
    goto :goto_0

    .line 229
    :pswitch_1
    ushr-int/lit8 v0, p0, 0x12

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x3d

    invoke-virtual {p2, p3, v0}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 233
    goto :goto_0

    .line 235
    :pswitch_2
    ushr-int/lit8 v0, p0, 0x12

    aget-byte v0, p4, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x3d00

    or-int/lit8 v0, v0, 0x3d

    invoke-virtual {p2, p3, v0}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 239
    nop

    .line 244
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static encode3to4LittleEndian(IILio/netty/buffer/ByteBuf;I[B)V
    .locals 3
    .param p0, "inBuff"    # I
    .param p1, "numSigBytes"    # I
    .param p2, "dest"    # Lio/netty/buffer/ByteBuf;
    .param p3, "destOffset"    # I
    .param p4, "alphabet"    # [B

    .line 249
    const/high16 v0, 0x3d000000    # 0.03125f

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 251
    :pswitch_0
    ushr-int/lit8 v0, p0, 0x12

    aget-byte v0, p4, v0

    ushr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x3f

    aget-byte v1, p4, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    invoke-virtual {p2, p3, v0}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 255
    goto :goto_0

    .line 257
    :pswitch_1
    ushr-int/lit8 v1, p0, 0x12

    aget-byte v1, p4, v1

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p2, p3, v0}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 261
    goto :goto_0

    .line 263
    :pswitch_2
    ushr-int/lit8 v1, p0, 0x12

    aget-byte v1, p4, v1

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, p4, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/high16 v2, 0x3d0000

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-virtual {p2, p3, v0}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 267
    nop

    .line 272
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static encodedBufferSize(IZ)I
    .locals 6
    .param p0, "len"    # I
    .param p1, "breakLines"    # Z

    .line 186
    int-to-long v0, p0

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    .line 189
    .local v0, "len43":J
    add-long/2addr v2, v0

    const-wide/16 v4, -0x4

    and-long/2addr v2, v4

    .line 191
    .local v2, "ret":J
    if-eqz p1, :cond_0

    .line 192
    const-wide/16 v4, 0x4c

    div-long v4, v0, v4

    add-long/2addr v2, v4

    .line 195
    :cond_0
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    long-to-int v4, v2

    goto :goto_0

    :cond_1
    const v4, 0x7fffffff

    :goto_0
    return v4
.end method

.method private static toInt(B)I
    .locals 1
    .param p0, "value"    # B

    .line 199
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method private static toIntBE(I)I
    .locals 2
    .param p0, "mediumValue"    # I

    .line 211
    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static toIntBE(S)I
    .locals 2
    .param p0, "value"    # S

    .line 203
    const v0, 0xff00

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private static toIntLE(I)I
    .locals 2
    .param p0, "mediumValue"    # I

    .line 215
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static toIntLE(S)I
    .locals 2
    .param p0, "value"    # S

    .line 207
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method
