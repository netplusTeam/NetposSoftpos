.class public Lio/netty/handler/codec/compression/JdkZlibDecoder;
.super Lio/netty/handler/codec/compression/ZlibDecoder;
.source "JdkZlibDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    }
.end annotation


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FRESERVED:I = 0xe0


# instance fields
.field private final crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

.field private decideZlibOrNone:Z

.field private final decompressConcatenated:Z

.field private final dictionary:[B

.field private volatile finished:Z

.field private flags:I

.field private gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

.field private inflater:Ljava/util/zip/Inflater;

.field private xlen:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 69
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxAllocation"    # I

    .line 81
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 82
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;)V
    .locals 2
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;

    .line 112
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 113
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;I)V
    .locals 2
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "maxAllocation"    # I

    .line 125
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 126
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;Z)V
    .locals 2
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "decompressConcatenated"    # Z

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;ZI)V
    .locals 1
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "decompressConcatenated"    # Z
    .param p3, "maxAllocation"    # I

    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 134
    return-void
.end method

.method private constructor <init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V
    .locals 3
    .param p1, "wrapper"    # Lio/netty/handler/codec/compression/ZlibWrapper;
    .param p2, "dictionary"    # [B
    .param p3, "decompressConcatenated"    # Z
    .param p4, "maxAllocation"    # I

    .line 145
    invoke-direct {p0, p4}, Lio/netty/handler/codec/compression/ZlibDecoder;-><init>(I)V

    .line 57
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 59
    iput v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 147
    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    iput-boolean p3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decompressConcatenated:Z

    .line 150
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$ZlibWrapper:[I

    invoke-virtual {p1}, Lio/netty/handler/codec/compression/ZlibWrapper;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only GZIP or ZLIB is supported, but you used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :pswitch_0
    iput-boolean v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    .line 166
    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 167
    goto :goto_0

    .line 160
    :pswitch_1
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 161
    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 162
    goto :goto_0

    .line 156
    :pswitch_2
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 157
    iput-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 158
    goto :goto_0

    .line 152
    :pswitch_3
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 153
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    invoke-static {v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->wrapChecksum(Ljava/util/zip/Checksum;)Lio/netty/handler/codec/compression/ByteBufChecksum;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    .line 154
    nop

    .line 171
    :goto_0
    iput-object p2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->dictionary:[B

    .line 172
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "decompressConcatenated"    # Z

    .line 137
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 138
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2
    .param p1, "decompressConcatenated"    # Z
    .param p2, "maxAllocation"    # I

    .line 141
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->GZIP:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 142
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "dictionary"    # [B

    .line 90
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 91
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "dictionary"    # [B
    .param p2, "maxAllocation"    # I

    .line 103
    sget-object v0, Lio/netty/handler/codec/compression/ZlibWrapper;->ZLIB:Lio/netty/handler/codec/compression/ZlibWrapper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;-><init>(Lio/netty/handler/codec/compression/ZlibWrapper;[BZI)V

    .line 104
    return-void
.end method

.method private static looksLikeZlib(S)Z
    .locals 2
    .param p0, "cmf_flg"    # S

    .line 454
    and-int/lit16 v0, p0, 0x7800

    const/16 v1, 0x7800

    if-ne v0, v1, :cond_0

    rem-int/lit8 v0, p0, 0x1f

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z
    .locals 5
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 415
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 416
    const/4 v0, 0x0

    return v0

    .line 419
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->verifyCrc(Lio/netty/buffer/ByteBuf;)V

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "dataLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 424
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v2

    mul-int/lit8 v3, v1, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v1

    .line 427
    .local v1, "readLength":I
    if-ne v0, v1, :cond_2

    .line 431
    const/4 v2, 0x1

    return v2

    .line 428
    :cond_2
    new-instance v2, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number of bytes mismatch. Expected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private readGZIPHeader(Lio/netty/buffer/ByteBuf;)Z
    .locals 9
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;

    .line 304
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState:[I

    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    invoke-virtual {v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 306
    :pswitch_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    const/16 v5, 0xa

    if-ge v0, v5, :cond_0

    .line 307
    return v4

    .line 310
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    .line 311
    .local v0, "magic0":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v5

    .line 313
    .local v5, "magic1":I
    const/16 v6, 0x1f

    if-ne v0, v6, :cond_f

    .line 316
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v6, v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 317
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v6, v5}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 319
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v6

    .line 320
    .local v6, "method":I
    if-ne v6, v2, :cond_e

    .line 324
    iget-object v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v7, v6}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 326
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v7

    iput v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    .line 327
    iget-object v8, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v8, v7}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 329
    iget v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/lit16 v7, v7, 0xe0

    if-nez v7, :cond_d

    .line 335
    iget-object v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    invoke-virtual {v7, p1, v8, v3}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 336
    invoke-virtual {p1, v3}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 338
    iget-object v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v8

    invoke-virtual {v7, v8}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 339
    iget-object v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v8

    invoke-virtual {v7, v8}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 341
    sget-object v7, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FLG_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v7, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 344
    .end local v0    # "magic0":I
    .end local v5    # "magic1":I
    .end local v6    # "method":I
    :pswitch_1
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 346
    return v4

    .line 348
    :cond_1
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    .line 349
    .local v0, "xlen1":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v5

    .line 350
    .local v5, "xlen2":I
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v6, v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 351
    iget-object v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v6, v5}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 353
    iget v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    shl-int/lit8 v7, v0, 0x8

    or-int/2addr v7, v5

    or-int/2addr v6, v7

    iput v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    .line 355
    .end local v0    # "xlen1":I
    .end local v5    # "xlen2":I
    :cond_2
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->XLEN_READ:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 358
    :pswitch_2
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_4

    .line 359
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    iget v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    if-ge v0, v5, :cond_3

    .line 360
    return v4

    .line 362
    :cond_3
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v5

    iget v6, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    invoke-virtual {v0, p1, v5, v6}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(Lio/netty/buffer/ByteBuf;II)V

    .line 363
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->xlen:I

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 365
    :cond_4
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_FNAME:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 368
    :pswitch_3
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_7

    .line 369
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 370
    return v4

    .line 373
    :cond_5
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    .line 374
    .local v0, "b":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v2, v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 375
    if-nez v0, :cond_6

    .line 376
    goto :goto_0

    .line 378
    .end local v0    # "b":I
    :cond_6
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_5

    .line 380
    :cond_7
    :goto_0
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->SKIP_COMMENT:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 383
    :pswitch_4
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 384
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 385
    return v4

    .line 388
    :cond_8
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    .line 389
    .restart local v0    # "b":I
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v2, v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update(I)V

    .line 390
    if-nez v0, :cond_9

    .line 391
    goto :goto_1

    .line 393
    .end local v0    # "b":I
    :cond_9
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 395
    :cond_a
    :goto_1
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->PROCESS_FHCRC:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 398
    :pswitch_5
    iget v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->flags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 399
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, v3, :cond_b

    .line 400
    return v4

    .line 402
    :cond_b
    invoke-direct {p0, p1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->verifyCrc(Lio/netty/buffer/ByteBuf;)V

    .line 404
    :cond_c
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v0}, Lio/netty/handler/codec/compression/ByteBufChecksum;->reset()V

    .line 405
    sget-object v0, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 408
    :pswitch_6
    const/4 v0, 0x1

    return v0

    .line 330
    .local v0, "magic0":I
    .local v5, "magic1":I
    .restart local v6    # "method":I
    :cond_d
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "Reserved flags are set in the GZIP header"

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_e
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported compression method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in the GZIP header"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 314
    .end local v6    # "method":I
    :cond_f
    new-instance v1, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v2, "Input is not in the GZIP format"

    invoke-direct {v1, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private verifyCrc(Lio/netty/buffer/ByteBuf;)V
    .locals 7
    .param p1, "in"    # Lio/netty/buffer/ByteBuf;

    .line 435
    const-wide/16 v0, 0x0

    .line 436
    .local v0, "crcValue":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 437
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v3

    int-to-long v3, v3

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/ByteBufChecksum;->getValue()J

    move-result-wide v2

    .line 440
    .local v2, "readCrc":J
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 444
    return-void

    .line 441
    :cond_1
    new-instance v4, Lio/netty/handler/codec/compression/DecompressionException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CRC value mismatch. Expected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Got: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method protected decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 11
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

    .line 181
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 184
    return-void

    .line 187
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 188
    .local v0, "readableBytes":I
    if-nez v0, :cond_1

    .line 189
    return-void

    .line 192
    :cond_1
    iget-boolean v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 194
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 195
    return-void

    .line 198
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v1

    invoke-static {v1}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->looksLikeZlib(S)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 199
    .local v1, "nowrap":Z
    new-instance v4, Ljava/util/zip/Inflater;

    invoke-direct {v4, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    .line 200
    iput-boolean v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decideZlibOrNone:Z

    .line 203
    .end local v1    # "nowrap":Z
    :cond_3
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-eqz v1, :cond_6

    .line 204
    sget-object v1, Lio/netty/handler/codec/compression/JdkZlibDecoder$1;->$SwitchMap$io$netty$handler$codec$compression$JdkZlibDecoder$GzipState:[I

    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    invoke-virtual {v4}, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 211
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    sget-object v4, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_END:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    if-eq v1, v4, :cond_5

    .line 212
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPHeader(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 213
    return-void

    .line 206
    :pswitch_0
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    iput-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 209
    :cond_4
    return-void

    .line 218
    :cond_5
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 221
    :cond_6
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    iget-object v1, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v4

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v5

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v4, v5, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    goto :goto_0

    .line 224
    :cond_7
    new-array v1, v0, [B

    .line 225
    .local v1, "array":[B
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    invoke-virtual {p2, v4, v1}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 226
    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4, v1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 229
    .end local v1    # "array":[B
    :goto_0
    const/4 v1, 0x0

    iget-object v4, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v4

    shl-int/2addr v4, v3

    invoke-virtual {p0, p1, v1, v4}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 231
    .local v1, "decompressed":Lio/netty/buffer/ByteBuf;
    const/4 v4, 0x0

    .line 232
    .local v4, "readFooter":Z
    :goto_1
    :try_start_0
    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v5

    if-nez v5, :cond_d

    .line 233
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v5

    .line 234
    .local v5, "outArray":[B
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    .line 235
    .local v6, "writerIndex":I
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v7

    add-int/2addr v7, v6

    .line 236
    .local v7, "outIndex":I
    iget-object v8, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v9

    invoke-virtual {v8, v5, v7, v9}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v8

    .line 237
    .local v8, "outputLength":I
    if-lez v8, :cond_8

    .line 238
    add-int v9, v6, v8

    invoke-virtual {v1, v9}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 239
    iget-object v9, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-eqz v9, :cond_a

    .line 240
    invoke-virtual {v9, v5, v7, v8}, Lio/netty/handler/codec/compression/ByteBufChecksum;->update([BII)V

    goto :goto_2

    .line 243
    :cond_8
    iget-object v9, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 244
    iget-object v9, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->dictionary:[B

    if-eqz v9, :cond_9

    .line 248
    iget-object v10, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v10, v9}, Ljava/util/zip/Inflater;->setDictionary([B)V

    goto :goto_2

    .line 245
    :cond_9
    new-instance v2, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v3, "decompression failure, unable to set dictionary as non was specified"

    invoke-direct {v2, v3}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;)V

    .end local v0    # "readableBytes":I
    .end local v1    # "decompressed":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v2

    .line 252
    .restart local v0    # "readableBytes":I
    .restart local v1    # "decompressed":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_a
    :goto_2
    iget-object v9, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->finished()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 253
    iget-object v9, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    if-nez v9, :cond_b

    .line 254
    iput-boolean v3, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    goto :goto_3

    .line 256
    :cond_b
    const/4 v4, 0x1

    .line 258
    goto :goto_3

    .line 260
    :cond_c
    iget-object v9, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v9}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v9

    shl-int/2addr v9, v3

    invoke-virtual {p0, p1, v1, v9}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->prepareDecompressBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v9

    move-object v1, v9

    .line 262
    .end local v5    # "outArray":[B
    .end local v6    # "writerIndex":I
    .end local v7    # "outIndex":I
    .end local v8    # "outputLength":I
    goto :goto_1

    .line 264
    :cond_d
    :goto_3
    iget-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p2, v5}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 266
    if-eqz v4, :cond_f

    .line 267
    sget-object v5, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->FOOTER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    .line 268
    invoke-direct {p0, p2}, Lio/netty/handler/codec/compression/JdkZlibDecoder;->readGZIPFooter(Lio/netty/buffer/ByteBuf;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 269
    iget-boolean v5, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->decompressConcatenated:Z

    if-nez v5, :cond_e

    move v2, v3

    :cond_e
    iput-boolean v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 271
    iget-boolean v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    if-nez v2, :cond_f

    .line 272
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->reset()V

    .line 273
    iget-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->crc:Lio/netty/handler/codec/compression/ByteBufChecksum;

    invoke-virtual {v2}, Lio/netty/handler/codec/compression/ByteBufChecksum;->reset()V

    .line 274
    sget-object v2, Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;->HEADER_START:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;

    iput-object v2, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->gzipState:Lio/netty/handler/codec/compression/JdkZlibDecoder$GzipState;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v4    # "readFooter":Z
    :cond_f
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 283
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 285
    :cond_10
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 287
    nop

    .line 288
    :goto_4
    return-void

    .line 282
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 278
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Ljava/util/zip/DataFormatException;
    :try_start_1
    new-instance v3, Lio/netty/handler/codec/compression/DecompressionException;

    const-string v4, "decompression failure"

    invoke-direct {v3, v4, v2}, Lio/netty/handler/codec/compression/DecompressionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "readableBytes":I
    .end local v1    # "decompressed":Lio/netty/buffer/ByteBuf;
    .end local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .end local p2    # "in":Lio/netty/buffer/ByteBuf;
    .end local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v2    # "e":Ljava/util/zip/DataFormatException;
    .restart local v0    # "readableBytes":I
    .restart local v1    # "decompressed":Lio/netty/buffer/ByteBuf;
    .restart local p1    # "ctx":Lio/netty/channel/ChannelHandlerContext;
    .restart local p2    # "in":Lio/netty/buffer/ByteBuf;
    .restart local p3    # "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_5
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 283
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 285
    :cond_11
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 287
    :goto_6
    throw v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected decompressionBufferExhausted(Lio/netty/buffer/ByteBuf;)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    .line 293
    return-void
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 297
    invoke-super {p0, p1}, Lio/netty/handler/codec/compression/ZlibDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 298
    iget-object v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->inflater:Ljava/util/zip/Inflater;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 301
    :cond_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lio/netty/handler/codec/compression/JdkZlibDecoder;->finished:Z

    return v0
.end method
