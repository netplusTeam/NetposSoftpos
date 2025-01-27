.class Lcom/itextpdf/io/codec/BitFile;
.super Ljava/lang/Object;
.source "BitFile.java"


# instance fields
.field bitsLeft:I

.field blocks:Z

.field buffer:[B

.field index:I

.field output:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "blocks"    # Z

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    .line 75
    iput-object p1, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    .line 76
    iput-boolean p2, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    .line 77
    const/16 v1, 0x100

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    .line 78
    iput v0, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    .line 79
    const/16 v0, 0x8

    iput v0, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    .line 80
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    iget v1, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    .line 84
    .local v0, "numBytes":I
    if-lez v0, :cond_2

    .line 85
    iget-boolean v1, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    if-eqz v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    invoke-virtual {v1, v4, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 88
    iget-object v1, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    aput-byte v3, v1, v3

    .line 89
    iput v3, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    .line 90
    iput v2, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    .line 92
    :cond_2
    return-void
.end method

.method public writeBits(II)V
    .locals 11
    .param p1, "bits"    # I
    .param p2, "numbits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "bitsWritten":I
    const/16 v1, 0xff

    .line 100
    .local v1, "numBytes":I
    :goto_0
    iget v2, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    const/16 v3, 0xfe

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    iget v6, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    if-eqz v6, :cond_1

    :cond_0
    if-le v2, v3, :cond_3

    .line 101
    :cond_1
    iget-boolean v2, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    if-eqz v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/io/codec/BitFile;->output:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    invoke-virtual {v2, v3, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 106
    iget-object v2, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    aput-byte v5, v2, v5

    .line 107
    iput v5, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    .line 108
    iput v4, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    .line 112
    :cond_3
    iget v2, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    const/4 v3, 0x1

    if-gt p2, v2, :cond_5

    .line 115
    iget-boolean v4, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    if-eqz v4, :cond_4

    .line 117
    iget-object v4, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    iget v5, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aget-byte v6, v4, v5

    shl-int v7, v3, p2

    sub-int/2addr v7, v3

    and-int v3, p1, v7

    rsub-int/lit8 v7, v2, 0x8

    shl-int/2addr v3, v7

    int-to-byte v3, v3

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 118
    add-int/2addr v0, p2

    .line 119
    sub-int/2addr v2, p2

    iput v2, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    .line 120
    const/4 p2, 0x0

    goto :goto_1

    .line 122
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    iget v5, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aget-byte v6, v4, v5

    shl-int v7, v3, p2

    sub-int/2addr v7, v3

    and-int v3, p1, v7

    sub-int v7, v2, p2

    shl-int/2addr v3, v7

    int-to-byte v3, v3

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    .line 123
    add-int/2addr v0, p2

    .line 124
    sub-int/2addr v2, p2

    iput v2, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    .line 125
    const/4 p2, 0x0

    goto :goto_1

    .line 132
    :cond_5
    iget-boolean v6, p0, Lcom/itextpdf/io/codec/BitFile;->blocks:Z

    if-eqz v6, :cond_6

    .line 136
    iget-object v6, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    iget v7, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aget-byte v8, v6, v7

    shl-int v9, v3, v2

    sub-int/2addr v9, v3

    and-int/2addr v9, p1

    rsub-int/lit8 v10, v2, 0x8

    shl-int/2addr v9, v10

    int-to-byte v9, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 137
    add-int/2addr v0, v2

    .line 138
    shr-int/2addr p1, v2

    .line 139
    sub-int/2addr p2, v2

    .line 140
    add-int/2addr v7, v3

    iput v7, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aput-byte v5, v6, v7

    .line 141
    iput v4, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    goto :goto_1

    .line 146
    :cond_6
    sub-int v6, p2, v2

    ushr-int v6, p1, v6

    shl-int v7, v3, v2

    sub-int/2addr v7, v3

    and-int/2addr v6, v7

    .line 147
    .local v6, "topbits":I
    iget-object v7, p0, Lcom/itextpdf/io/codec/BitFile;->buffer:[B

    iget v8, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aget-byte v9, v7, v8

    int-to-byte v10, v6

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 149
    sub-int/2addr p2, v2

    .line 150
    add-int/2addr v0, v2

    .line 152
    add-int/2addr v8, v3

    iput v8, p0, Lcom/itextpdf/io/codec/BitFile;->index:I

    aput-byte v5, v7, v8

    .line 153
    iput v4, p0, Lcom/itextpdf/io/codec/BitFile;->bitsLeft:I

    .line 157
    .end local v6    # "topbits":I
    :goto_1
    if-nez p2, :cond_7

    .line 158
    return-void

    .line 157
    :cond_7
    goto/16 :goto_0
.end method
