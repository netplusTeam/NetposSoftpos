.class public Lio/netty/handler/codec/compression/LzmaFrameEncoder;
.super Lio/netty/handler/codec/MessageToByteEncoder;
.source "LzmaFrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/MessageToByteEncoder<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LC:I = 0x3

.field private static final DEFAULT_LP:I = 0x0

.field private static final DEFAULT_MATCH_FINDER:I = 0x1

.field private static final DEFAULT_PB:I = 0x2

.field private static final MAX_FAST_BYTES:I = 0x111

.field private static final MEDIUM_DICTIONARY_SIZE:I = 0x10000

.field private static final MEDIUM_FAST_BYTES:I = 0x20

.field private static final MIN_FAST_BYTES:I = 0x5

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static warningLogged:Z


# instance fields
.field private final encoder:Llzma/sdk/lzma/Encoder;

.field private final littleEndianDictionarySize:I

.field private final properties:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 88
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;-><init>(I)V

    .line 89
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "dictionarySize"    # I

    .line 106
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p1}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;-><init>(IIII)V

    .line 107
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I

    .line 96
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;-><init>(IIII)V

    .line 97
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I
    .param p4, "dictionarySize"    # I

    .line 113
    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;-><init>(IIIIZI)V

    .line 114
    return-void
.end method

.method public constructor <init>(IIIIZI)V
    .locals 7
    .param p1, "lc"    # I
    .param p2, "lp"    # I
    .param p3, "pb"    # I
    .param p4, "dictionarySize"    # I
    .param p5, "endMarkerMode"    # Z
    .param p6, "numFastBytes"    # I

    .line 137
    invoke-direct {p0}, Lio/netty/handler/codec/MessageToByteEncoder;-><init>()V

    .line 138
    if-ltz p1, :cond_5

    const/16 v0, 0x8

    if-gt p1, v0, :cond_5

    .line 141
    const-string v0, " (expected: 0-4)"

    if-ltz p2, :cond_4

    const/4 v1, 0x4

    if-gt p2, v1, :cond_4

    .line 144
    if-ltz p3, :cond_3

    if-gt p3, v1, :cond_3

    .line 147
    add-int v0, p1, p2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 148
    sget-boolean v0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->warningLogged:Z

    if-nez v0, :cond_0

    .line 149
    sget-object v0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "The latest versions of LZMA libraries (for example, XZ Utils) has an additional requirement: lc + lp <= 4. Data which don\'t follow this requirement cannot be decompressed with this libraries."

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 152
    sput-boolean v2, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->warningLogged:Z

    .line 155
    :cond_0
    if-ltz p4, :cond_2

    .line 158
    const/16 v0, 0x111

    const/4 v1, 0x5

    if-lt p6, v1, :cond_1

    if-gt p6, v0, :cond_1

    .line 164
    new-instance v0, Llzma/sdk/lzma/Encoder;

    invoke-direct {v0}, Llzma/sdk/lzma/Encoder;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->encoder:Llzma/sdk/lzma/Encoder;

    .line 165
    invoke-virtual {v0, p4}, Llzma/sdk/lzma/Encoder;->setDictionarySize(I)Z

    .line 166
    invoke-virtual {v0, p5}, Llzma/sdk/lzma/Encoder;->setEndMarkerMode(Z)V

    .line 167
    invoke-virtual {v0, v2}, Llzma/sdk/lzma/Encoder;->setMatchFinder(I)Z

    .line 168
    invoke-virtual {v0, p6}, Llzma/sdk/lzma/Encoder;->setNumFastBytes(I)Z

    .line 169
    invoke-virtual {v0, p1, p2, p3}, Llzma/sdk/lzma/Encoder;->setLcLpPb(III)Z

    .line 171
    mul-int/lit8 v0, p3, 0x5

    add-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x9

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->properties:B

    .line 172
    invoke-static {p4}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->littleEndianDictionarySize:I

    .line 173
    return-void

    .line 159
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 160
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    .line 159
    const-string v0, "numFastBytes: %d (expected: %d-%d)"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dictionarySize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 0-8)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static maxOutputBufferLength(I)I
    .locals 4
    .param p0, "inputLength"    # I

    .line 209
    const/16 v0, 0xc8

    if-ge p0, v0, :cond_0

    .line 210
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .local v0, "factor":D
    goto :goto_0

    .line 211
    .end local v0    # "factor":D
    :cond_0
    const/16 v0, 0x1f4

    if-ge p0, v0, :cond_1

    .line 212
    const-wide v0, 0x3ff3333333333333L    # 1.2

    .restart local v0    # "factor":D
    goto :goto_0

    .line 213
    .end local v0    # "factor":D
    :cond_1
    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2

    .line 214
    const-wide v0, 0x3ff199999999999aL    # 1.1

    .restart local v0    # "factor":D
    goto :goto_0

    .line 215
    .end local v0    # "factor":D
    :cond_2
    const/16 v0, 0x2710

    if-ge p0, v0, :cond_3

    .line 216
    const-wide v0, 0x3ff0cccccccccccdL    # 1.05

    .restart local v0    # "factor":D
    goto :goto_0

    .line 218
    .end local v0    # "factor":D
    :cond_3
    const-wide v0, 0x3ff051eb851eb852L    # 1.02

    .line 220
    .restart local v0    # "factor":D
    :goto_0
    int-to-double v2, p0

    mul-double/2addr v2, v0

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0xd

    return v2
.end method


# virtual methods
.method protected allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "preferDirect"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 200
    .local v0, "length":I
    invoke-static {v0}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->maxOutputBufferLength(I)I

    move-result v1

    .line 201
    .local v1, "maxOutputLength":I
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-interface {v2, v1}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Z)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->allocateBuffer(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method protected encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V
    .locals 11
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .param p3, "out"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 178
    .local v0, "length":I
    const/4 v1, 0x0

    .line 179
    .local v1, "bbIn":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 181
    .local v2, "bbOut":Lio/netty/buffer/ByteBufOutputStream;
    :try_start_0
    new-instance v4, Lio/netty/buffer/ByteBufInputStream;

    invoke-direct {v4, p2}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    .end local v1    # "bbIn":Ljava/io/InputStream;
    .local v4, "bbIn":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Lio/netty/buffer/ByteBufOutputStream;

    invoke-direct {v1, p3}, Lio/netty/buffer/ByteBufOutputStream;-><init>(Lio/netty/buffer/ByteBuf;)V

    move-object v2, v1

    .line 183
    iget-byte v1, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->properties:B

    invoke-virtual {v2, v1}, Lio/netty/buffer/ByteBufOutputStream;->writeByte(I)V

    .line 184
    iget v1, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->littleEndianDictionarySize:I

    invoke-virtual {v2, v1}, Lio/netty/buffer/ByteBufOutputStream;->writeInt(I)V

    .line 185
    int-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lio/netty/buffer/ByteBufOutputStream;->writeLong(J)V

    .line 186
    iget-object v3, p0, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->encoder:Llzma/sdk/lzma/Encoder;

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-virtual/range {v3 .. v10}, Llzma/sdk/lzma/Encoder;->code(Ljava/io/InputStream;Ljava/io/OutputStream;JJLlzma/sdk/ICodeProgress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    nop

    .line 189
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 191
    nop

    .line 192
    invoke-virtual {v2}, Lio/netty/buffer/ByteBufOutputStream;->close()V

    .line 195
    return-void

    .line 188
    :catchall_0
    move-exception v1

    goto :goto_0

    .end local v4    # "bbIn":Ljava/io/InputStream;
    .restart local v1    # "bbIn":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v4, v1

    move-object v1, v3

    .end local v1    # "bbIn":Ljava/io/InputStream;
    .restart local v4    # "bbIn":Ljava/io/InputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 189
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_0
    if-eqz v2, :cond_1

    .line 192
    invoke-virtual {v2}, Lio/netty/buffer/ByteBufOutputStream;->close()V

    .line 194
    :cond_1
    throw v1
.end method

.method protected bridge synthetic encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    check-cast p2, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/LzmaFrameEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)V

    return-void
.end method
