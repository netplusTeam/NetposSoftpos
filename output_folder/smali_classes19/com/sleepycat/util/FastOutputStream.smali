.class public Lcom/sleepycat/util/FastOutputStream;
.super Ljava/io/OutputStream;
.source "FastOutputStream.java"


# static fields
.field public static final DEFAULT_BUMP_SIZE:I = 0x0

.field public static final DEFAULT_INIT_SIZE:I = 0x64

.field private static ZERO_LENGTH_BYTE_ARRAY:[B


# instance fields
.field private buf:[B

.field private bumpLen:I

.field private len:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/util/FastOutputStream;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 60
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/util/FastOutputStream;->initBuffer(II)V

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 69
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/util/FastOutputStream;->initBuffer(II)V

    .line 72
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "initialSize"    # I
    .param p2, "bumpSize"    # I

    .line 81
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/util/FastOutputStream;->initBuffer(II)V

    .line 84
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "buffer"    # [B

    .line 92
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/util/FastOutputStream;->bumpLen:I

    .line 96
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .param p1, "buffer"    # [B
    .param p2, "bumpSize"    # I

    .line 108
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    .line 111
    iput p2, p0, Lcom/sleepycat/util/FastOutputStream;->bumpLen:I

    .line 112
    return-void
.end method

.method private bump(I)V
    .locals 5
    .param p1, "needed"    # I

    .line 292
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->bumpLen:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    array-length v0, v0

    .line 294
    .local v0, "bump":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    array-length v2, v1

    add-int/2addr v2, p1

    add-int/2addr v2, v0

    new-array v2, v2, [B

    .line 296
    .local v2, "toBuf":[B
    iget v3, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iput-object v2, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    .line 299
    return-void
.end method

.method private initBuffer(II)V
    .locals 1
    .param p1, "bufferSize"    # I
    .param p2, "bumplength"    # I

    .line 115
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    .line 116
    iput p2, p0, Lcom/sleepycat/util/FastOutputStream;->bumpLen:I

    .line 117
    return-void
.end method


# virtual methods
.method public addSize(I)V
    .locals 1
    .param p1, "sizeAdded"    # I

    .line 286
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    .line 287
    return-void
.end method

.method public getBufferBytes()[B
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    return v0
.end method

.method public getBufferOffset()I
    .locals 1

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public makeSpace(I)V
    .locals 2
    .param p1, "sizeNeeded"    # I

    .line 274
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 275
    .local v0, "needed":I
    if-lez v0, :cond_0

    .line 276
    invoke-direct {p0, v0}, Lcom/sleepycat/util/FastOutputStream;->bump(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    .line 129
    return-void
.end method

.method public size()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    return v0
.end method

.method public toByteArray()[B
    .locals 4

    .line 168
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Lcom/sleepycat/util/FastOutputStream;->ZERO_LENGTH_BYTE_ARRAY:[B

    return-object v0

    .line 171
    :cond_0
    new-array v1, v0, [B

    .line 172
    .local v1, "toBuf":[B
    iget-object v2, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 157
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    iget v2, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    iget v2, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I

    .line 134
    invoke-virtual {p0, p1}, Lcom/sleepycat/util/FastOutputStream;->writeFast(I)V

    .line 135
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "fromBuf"    # [B

    .line 140
    invoke-virtual {p0, p1}, Lcom/sleepycat/util/FastOutputStream;->writeFast([B)V

    .line 141
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "fromBuf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 146
    invoke-virtual {p0, p1, p2, p3}, Lcom/sleepycat/util/FastOutputStream;->writeFast([BII)V

    .line 147
    return-void
.end method

.method public final writeFast(I)V
    .locals 3
    .param p1, "b"    # I

    .line 189
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 190
    invoke-direct {p0, v1}, Lcom/sleepycat/util/FastOutputStream;->bump(I)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    iget v1, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 193
    return-void
.end method

.method public final writeFast([B)V
    .locals 5
    .param p1, "fromBuf"    # [B

    .line 205
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    array-length v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 206
    .local v0, "needed":I
    if-lez v0, :cond_0

    .line 207
    invoke-direct {p0, v0}, Lcom/sleepycat/util/FastOutputStream;->bump(I)V

    .line 209
    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    iget v3, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    iget v1, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    array-length v2, p1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    .line 211
    return-void
.end method

.method public final writeFast([BII)V
    .locals 3
    .param p1, "fromBuf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 227
    iget v0, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    .line 228
    .local v0, "needed":I
    if-lez v0, :cond_0

    .line 229
    invoke-direct {p0, v0}, Lcom/sleepycat/util/FastOutputStream;->bump(I)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    iget v2, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget v1, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    .line 233
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/sleepycat/util/FastOutputStream;->buf:[B

    iget v1, p0, Lcom/sleepycat/util/FastOutputStream;->len:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 152
    return-void
.end method
