.class final Lcom/itextpdf/barcodes/qrcode/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"


# static fields
.field private static final INITIAL_SIZE:I = 0x20


# instance fields
.field private bytes:[B

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    .line 73
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    .line 74
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "byteArray"    # [B

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    .line 83
    array-length v0, p1

    iput v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    .line 84
    return-void
.end method


# virtual methods
.method public appendByte(I)V
    .locals 3
    .param p1, "value"    # I

    .line 123
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 124
    :cond_0
    const/16 v1, 0x20

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 125
    .local v0, "newSize":I
    invoke-virtual {p0, v0}, Lcom/itextpdf/barcodes/qrcode/ByteArray;->reserve(I)V

    .line 127
    .end local v0    # "newSize":I
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 128
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    .line 129
    return-void
.end method

.method public at(I)I
    .locals 1
    .param p1, "index"    # I

    .line 92
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 115
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reserve(I)V
    .locals 4
    .param p1, "capacity"    # I

    .line 136
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p1, :cond_2

    .line 137
    :cond_0
    new-array v1, p1, [B

    .line 138
    .local v1, "newArray":[B
    if-eqz v0, :cond_1

    .line 139
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    :cond_1
    iput-object v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    .line 143
    .end local v1    # "newArray":[B
    :cond_2
    return-void
.end method

.method public set(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 101
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 102
    return-void
.end method

.method public set([BII)V
    .locals 3
    .param p1, "source"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 152
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    .line 153
    iput p3, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    .line 154
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 155
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->bytes:[B

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "x":I
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteArray;->size:I

    return v0
.end method
