.class public final Lcom/itextpdf/barcodes/qrcode/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-array v0, p2, [[B

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 70
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    new-array v2, p1, [B

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    :cond_0
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    .line 73
    iput p2, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    .line 74
    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 3
    .param p1, "value"    # B

    .line 132
    const/4 v0, 0x0

    .local v0, "y":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    if-ge v0, v1, :cond_1

    .line 133
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_1
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    if-ge v1, v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object v2, v2, v0

    aput-byte p1, v2, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 132
    .end local v1    # "x":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "y":I
    :cond_1
    return-void
.end method

.method public get(II)B
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 97
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aget-byte v0, v0, p1

    return v0
.end method

.method public getArray()[[B
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    return v0
.end method

.method public set(IIB)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # B

    .line 114
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    aput-byte p3, v0, p1

    .line 115
    return-void
.end method

.method public set(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .line 124
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object v0, v0, p2

    int-to-byte v1, p3

    aput-byte v1, v0, p1

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 144
    .local v0, "result":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "y":I
    :goto_0
    iget v2, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->height:I

    if-ge v1, v2, :cond_1

    .line 145
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_1
    iget v3, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->width:I

    if-ge v2, v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/ByteMatrix;->bytes:[[B

    aget-object v3, v3, v1

    aget-byte v3, v3, v2

    packed-switch v3, :pswitch_data_0

    .line 154
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 151
    :pswitch_0
    const-string v3, " 1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    goto :goto_2

    .line 148
    :pswitch_1
    const-string v3, " 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    nop

    .line 145
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 158
    .end local v2    # "x":I
    :cond_0
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "y":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
