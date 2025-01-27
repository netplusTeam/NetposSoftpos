.class Lcom/itextpdf/io/font/woff2/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field private data:[B

.field private initial_offset:I

.field private length:I

.field private offset:I


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/woff2/Buffer;)V
    .locals 1
    .param p1, "other"    # Lcom/itextpdf/io/font/woff2/Buffer;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iget v0, p1, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    .line 47
    iget v0, p1, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    .line 48
    iget v0, p1, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    .line 49
    iget-object v0, p1, Lcom/itextpdf/io/font/woff2/Buffer;->data:[B

    iput-object v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->data:[B

    .line 50
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "data_offset"    # I
    .param p3, "length"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    .line 40
    iput p2, p0, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    .line 41
    iput p3, p0, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    .line 42
    iput-object p1, p0, Lcom/itextpdf/io/font/woff2/Buffer;->data:[B

    .line 43
    return-void
.end method

.method private readAsNumber(I)I
    .locals 5
    .param p1, "n_bytes"    # I

    .line 94
    new-array v0, p1, [B

    .line 95
    .local v0, "buffer":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 98
    shl-int/lit8 v3, v1, 0x8

    aget-byte v4, v0, v2

    invoke-static {v4}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->asU8(B)I

    move-result v4

    or-int v1, v3, v4

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    .end local v2    # "i":I
    :cond_0
    return v1
.end method


# virtual methods
.method public getInitialOffset()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    return v0
.end method

.method public read([BII)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "data_offset"    # I
    .param p3, "n_bytes"    # I

    .line 69
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    add-int v1, v0, p3

    iget v2, p0, Lcom/itextpdf/io/font/woff2/Buffer;->length:I

    const-string v3, "Reading woff2 exception"

    if-gt v1, v2, :cond_2

    sub-int/2addr v2, p3

    if-gt v0, v2, :cond_2

    .line 72
    if-eqz p1, :cond_1

    .line 73
    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_0

    array-length v1, p1

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/itextpdf/io/font/woff2/Buffer;->data:[B

    iget v2, p0, Lcom/itextpdf/io/font/woff2/Buffer;->initial_offset:I

    add-int/2addr v2, v0

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v3}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    :goto_0
    iget v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/itextpdf/io/font/woff2/Buffer;->offset:I

    .line 79
    return-void

    .line 70
    :cond_2
    new-instance v0, Lcom/itextpdf/io/font/woff2/FontCompressionException;

    invoke-direct {v0, v3}, Lcom/itextpdf/io/font/woff2/FontCompressionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readByte()B
    .locals 1

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readAsNumber(I)I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU8(I)B

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    .line 53
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readAsNumber(I)I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 1

    .line 57
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/woff2/Buffer;->readAsNumber(I)I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/io/font/woff2/JavaUnsignedUtil;->toU16(I)S

    move-result v0

    return v0
.end method

.method public skip(I)V
    .locals 2
    .param p1, "n_bytes"    # I

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/itextpdf/io/font/woff2/Buffer;->read([BII)V

    .line 66
    return-void
.end method
