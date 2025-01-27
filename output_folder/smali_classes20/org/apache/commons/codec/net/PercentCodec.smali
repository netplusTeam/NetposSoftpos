.class public Lorg/apache/commons/codec/net/PercentCodec;
.super Ljava/lang/Object;
.source "PercentCodec.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# static fields
.field private static final ESCAPE_CHAR:B = 0x25t


# instance fields
.field private final alwaysEncodeChars:Ljava/util/BitSet;

.field private alwaysEncodeCharsMax:I

.field private alwaysEncodeCharsMin:I

.field private final plusForSpace:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeChars:Ljava/util/BitSet;

    .line 60
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMin:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMax:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->plusForSpace:Z

    .line 69
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/net/PercentCodec;->insertAlwaysEncodeChar(B)V

    .line 70
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "alwaysEncodeChars"    # [B
    .param p2, "plusForSpace"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeChars:Ljava/util/BitSet;

    .line 60
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMin:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMax:I

    .line 81
    iput-boolean p2, p0, Lorg/apache/commons/codec/net/PercentCodec;->plusForSpace:Z

    .line 82
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->insertAlwaysEncodeChars([B)V

    .line 83
    return-void
.end method

.method private canEncode(B)Z
    .locals 1
    .param p1, "c"    # B

    .line 175
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->isAsciiChar(B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->inAlwaysEncodeCharsRange(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeChars:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

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

.method private containsSpace([B)Z
    .locals 5
    .param p1, "bytes"    # [B

    .line 166
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p1, v2

    .line 167
    .local v3, "b":B
    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 168
    const/4 v0, 0x1

    return v0

    .line 166
    .end local v3    # "b":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_1
    return v1
.end method

.method private doEncode([BIZ)[B
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "expectedLength"    # I
    .param p3, "willEncode"    # Z

    .line 134
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-byte v3, p1, v2

    .line 136
    .local v3, "b":B
    if-eqz p3, :cond_1

    invoke-direct {p0, v3}, Lorg/apache/commons/codec/net/PercentCodec;->canEncode(B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    move v4, v3

    .line 138
    .local v4, "bb":B
    if-gez v4, :cond_0

    .line 139
    add-int/lit16 v5, v4, 0x100

    int-to-byte v4, v5

    .line 141
    :cond_0
    shr-int/lit8 v5, v4, 0x4

    invoke-static {v5}, Lorg/apache/commons/codec/net/Utils;->hexDigit(I)C

    move-result v5

    .line 142
    .local v5, "hex1":C
    invoke-static {v4}, Lorg/apache/commons/codec/net/Utils;->hexDigit(I)C

    move-result v6

    .line 143
    .local v6, "hex2":C
    const/16 v7, 0x25

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    int-to-byte v7, v5

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 145
    int-to-byte v7, v6

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 146
    .end local v4    # "bb":B
    .end local v5    # "hex1":C
    .end local v6    # "hex2":C
    goto :goto_1

    .line 147
    :cond_1
    iget-boolean v4, p0, Lorg/apache/commons/codec/net/PercentCodec;->plusForSpace:Z

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 148
    const/16 v4, 0x2b

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 135
    .end local v3    # "b":B
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method private expectedDecodingBytes([B)I
    .locals 4
    .param p1, "bytes"    # [B

    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "byteCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 221
    aget-byte v2, p1, v1

    .line 222
    .local v2, "b":B
    const/16 v3, 0x25

    if-ne v2, v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    add-int/2addr v1, v3

    .line 223
    nop

    .end local v2    # "b":B
    add-int/lit8 v0, v0, 0x1

    .line 224
    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private expectedEncodingBytes([B)I
    .locals 5
    .param p1, "bytes"    # [B

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, "byteCount":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p1, v2

    .line 160
    .local v3, "b":B
    invoke-direct {p0, v3}, Lorg/apache/commons/codec/net/PercentCodec;->canEncode(B)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto :goto_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    add-int/2addr v0, v4

    .line 159
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return v0
.end method

.method private inAlwaysEncodeCharsRange(B)Z
    .locals 1
    .param p1, "c"    # B

    .line 179
    iget v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMin:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMax:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private insertAlwaysEncodeChar(B)V
    .locals 1
    .param p1, "b"    # B

    .line 106
    iget-object v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeChars:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 107
    iget v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMin:I

    if-ge p1, v0, :cond_0

    .line 108
    iput p1, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMin:I

    .line 110
    :cond_0
    iget v0, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMax:I

    if-le p1, v0, :cond_1

    .line 111
    iput p1, p0, Lorg/apache/commons/codec/net/PercentCodec;->alwaysEncodeCharsMax:I

    .line 113
    :cond_1
    return-void
.end method

.method private insertAlwaysEncodeChars([B)V
    .locals 3
    .param p1, "alwaysEncodeCharsArray"    # [B

    .line 91
    if-eqz p1, :cond_0

    .line 92
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 93
    .local v2, "b":B
    invoke-direct {p0, v2}, Lorg/apache/commons/codec/net/PercentCodec;->insertAlwaysEncodeChar(B)V

    .line 92
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/net/PercentCodec;->insertAlwaysEncodeChar(B)V

    .line 97
    return-void
.end method

.method private isAsciiChar(B)Z
    .locals 1
    .param p1, "c"    # B

    .line 183
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 255
    if-nez p1, :cond_0

    .line 256
    const/4 v0, 0x0

    return-object v0

    .line 257
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 258
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/PercentCodec;->decode([B)[B

    move-result-object v0

    return-object v0

    .line 260
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be Percent decoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .line 192
    if-nez p1, :cond_0

    .line 193
    const/4 v0, 0x0

    return-object v0

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->expectedDecodingBytes([B)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 198
    aget-byte v2, p1, v1

    .line 199
    .local v2, "b":B
    const/16 v3, 0x25

    if-ne v2, v3, :cond_1

    .line 201
    add-int/lit8 v1, v1, 0x1

    :try_start_0
    aget-byte v3, p1, v1

    invoke-static {v3}, Lorg/apache/commons/codec/net/Utils;->digit16(B)I

    move-result v3

    .line 202
    .local v3, "u":I
    add-int/lit8 v1, v1, 0x1

    aget-byte v4, p1, v1

    invoke-static {v4}, Lorg/apache/commons/codec/net/Utils;->digit16(B)I

    move-result v4

    .line 203
    .local v4, "l":I
    shl-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v4

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    nop

    .end local v3    # "u":I
    .end local v4    # "l":I
    goto :goto_1

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Lorg/apache/commons/codec/DecoderException;

    const-string v5, "Invalid percent decoding: "

    invoke-direct {v4, v5, v3}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 208
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_1
    iget-boolean v3, p0, Lorg/apache/commons/codec/net/PercentCodec;->plusForSpace:Z

    if-eqz v3, :cond_2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2

    .line 209
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 197
    .end local v2    # "b":B
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 240
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/net/PercentCodec;->encode([B)[B

    move-result-object v0

    return-object v0

    .line 242
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be Percent encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode([B)[B
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 121
    if-nez p1, :cond_0

    .line 122
    const/4 v0, 0x0

    return-object v0

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->expectedEncodingBytes([B)I

    move-result v0

    .line 126
    .local v0, "expectedEncodingBytes":I
    array-length v1, p1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 127
    .local v1, "willEncode":Z
    :goto_0
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lorg/apache/commons/codec/net/PercentCodec;->plusForSpace:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/commons/codec/net/PercentCodec;->containsSpace([B)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 130
    :cond_2
    return-object p1

    .line 128
    :cond_3
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/codec/net/PercentCodec;->doEncode([BIZ)[B

    move-result-object v2

    return-object v2
.end method
