.class public Lcom/itextpdf/io/codec/LZWCompressor;
.super Ljava/lang/Object;
.source "LZWCompressor.java"


# instance fields
.field bf_:Lcom/itextpdf/io/codec/BitFile;

.field clearCode_:I

.field codeSize_:I

.field endOfInfo_:I

.field limit_:I

.field lzss_:Lcom/itextpdf/io/codec/LZWStringTable;

.field numBits_:I

.field prefix_:S

.field tiffFudge_:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 3
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "codeSize"    # I
    .param p3, "TIFF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/itextpdf/io/codec/BitFile;

    xor-int/lit8 v1, p3, 0x1

    invoke-direct {v0, p1, v1}, Lcom/itextpdf/io/codec/BitFile;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v0, p0, Lcom/itextpdf/io/codec/LZWCompressor;->bf_:Lcom/itextpdf/io/codec/BitFile;

    .line 110
    iput p2, p0, Lcom/itextpdf/io/codec/LZWCompressor;->codeSize_:I

    .line 111
    iput-boolean p3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->tiffFudge_:Z

    .line 112
    const/4 v0, 0x1

    shl-int v1, v0, p2

    iput v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->clearCode_:I

    .line 113
    add-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->endOfInfo_:I

    .line 114
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    .line 116
    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->limit_:I

    .line 117
    if-eqz p3, :cond_0

    .line 118
    sub-int/2addr v1, v0

    iput v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->limit_:I

    .line 121
    :cond_0
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/itextpdf/io/codec/LZWCompressor;->prefix_:S

    .line 122
    new-instance v0, Lcom/itextpdf/io/codec/LZWStringTable;

    invoke-direct {v0}, Lcom/itextpdf/io/codec/LZWStringTable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/codec/LZWCompressor;->lzss_:Lcom/itextpdf/io/codec/LZWStringTable;

    .line 123
    iget v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->codeSize_:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/codec/LZWStringTable;->ClearTable(I)V

    .line 124
    iget-object v0, p0, Lcom/itextpdf/io/codec/LZWCompressor;->bf_:Lcom/itextpdf/io/codec/BitFile;

    iget v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->clearCode_:I

    iget v2, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/codec/BitFile;->writeBits(II)V

    .line 125
    return-void
.end method


# virtual methods
.method public compress([BII)V
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    add-int v0, p2, p3

    .line 140
    .local v0, "maxOffset":I
    move v1, p2

    .local v1, "idx":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 141
    aget-byte v2, p1, v1

    .line 142
    .local v2, "c":B
    iget-object v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->lzss_:Lcom/itextpdf/io/codec/LZWStringTable;

    iget-short v4, p0, Lcom/itextpdf/io/codec/LZWCompressor;->prefix_:S

    invoke-virtual {v3, v4, v2}, Lcom/itextpdf/io/codec/LZWStringTable;->FindCharString(SB)S

    move-result v3

    move v4, v3

    .local v4, "index":S
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 143
    iput-short v4, p0, Lcom/itextpdf/io/codec/LZWCompressor;->prefix_:S

    goto :goto_2

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->bf_:Lcom/itextpdf/io/codec/BitFile;

    iget-short v5, p0, Lcom/itextpdf/io/codec/LZWCompressor;->prefix_:S

    iget v6, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/io/codec/BitFile;->writeBits(II)V

    .line 146
    iget-object v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->lzss_:Lcom/itextpdf/io/codec/LZWStringTable;

    iget-short v5, p0, Lcom/itextpdf/io/codec/LZWCompressor;->prefix_:S

    invoke-virtual {v3, v5, v2}, Lcom/itextpdf/io/codec/LZWStringTable;->AddCharString(SB)I

    move-result v3

    iget v5, p0, Lcom/itextpdf/io/codec/LZWCompressor;->limit_:I

    if-le v3, v5, :cond_2

    .line 147
    iget v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    const/16 v5, 0xc

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    .line 148
    iget-object v5, p0, Lcom/itextpdf/io/codec/LZWCompressor;->bf_:Lcom/itextpdf/io/codec/BitFile;

    iget v7, p0, Lcom/itextpdf/io/codec/LZWCompressor;->clearCode_:I

    invoke-virtual {v5, v7, v3}, Lcom/itextpdf/io/codec/BitFile;->writeBits(II)V

    .line 149
    iget-object v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->lzss_:Lcom/itextpdf/io/codec/LZWStringTable;

    iget v5, p0, Lcom/itextpdf/io/codec/LZWCompressor;->codeSize_:I

    invoke-virtual {v3, v5}, Lcom/itextpdf/io/codec/LZWStringTable;->ClearTable(I)V

    .line 150
    iget v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->codeSize_:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    goto :goto_1

    .line 152
    :cond_1
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    .line 154
    :goto_1
    iget v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    shl-int v3, v6, v3

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->limit_:I

    .line 155
    iget-boolean v5, p0, Lcom/itextpdf/io/codec/LZWCompressor;->tiffFudge_:Z

    if-eqz v5, :cond_2

    .line 156
    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->limit_:I

    .line 158
    :cond_2
    int-to-short v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    iput-short v3, p0, Lcom/itextpdf/io/codec/LZWCompressor;->prefix_:S

    .line 140
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v2    # "c":B
    .end local v4    # "index":S
    :cond_3
    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-short v0, p0, Lcom/itextpdf/io/codec/LZWCompressor;->prefix_:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->bf_:Lcom/itextpdf/io/codec/BitFile;

    iget v2, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/io/codec/BitFile;->writeBits(II)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/codec/LZWCompressor;->bf_:Lcom/itextpdf/io/codec/BitFile;

    iget v1, p0, Lcom/itextpdf/io/codec/LZWCompressor;->endOfInfo_:I

    iget v2, p0, Lcom/itextpdf/io/codec/LZWCompressor;->numBits_:I

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/codec/BitFile;->writeBits(II)V

    .line 174
    iget-object v0, p0, Lcom/itextpdf/io/codec/LZWCompressor;->bf_:Lcom/itextpdf/io/codec/BitFile;

    invoke-virtual {v0}, Lcom/itextpdf/io/codec/BitFile;->flush()V

    .line 175
    return-void
.end method
