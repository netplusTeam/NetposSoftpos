.class final Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field private final cachedGenerators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/barcodes/qrcode/GF256Poly;",
            ">;"
        }
    .end annotation
.end field

.field private final field:Lcom/itextpdf/barcodes/qrcode/GF256;


# direct methods
.method public constructor <init>(Lcom/itextpdf/barcodes/qrcode/GF256;)V
    .locals 5
    .param p1, "field"    # Lcom/itextpdf/barcodes/qrcode/GF256;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/GF256;->QR_CODE_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 72
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    invoke-direct {v1, p1, v3}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only QR Code is supported at this time"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildGenerator(I)Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 7
    .param p1, "degree"    # I

    .line 76
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    .line 78
    .local v0, "lastGenerator":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "d":I
    :goto_0
    if-gt v1, p1, :cond_0

    .line 79
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v4, v6}, Lcom/itextpdf/barcodes/qrcode/GF256;->exp(I)I

    move-result v6

    aput v6, v5, v2

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->multiply(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v3

    .line 80
    .local v3, "nextGenerator":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    iget-object v4, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    move-object v0, v3

    .line 78
    .end local v3    # "nextGenerator":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "lastGenerator":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .end local v1    # "d":I
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-object v0
.end method


# virtual methods
.method public encode([II)V
    .locals 10
    .param p1, "toEncode"    # [I
    .param p2, "ecBytes"    # I

    .line 94
    if-eqz p2, :cond_2

    .line 97
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 98
    .local v0, "dataBytes":I
    if-lez v0, :cond_1

    .line 101
    invoke-direct {p0, p2}, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->buildGenerator(I)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v1

    .line 102
    .local v1, "generator":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    new-array v2, v0, [I

    .line 103
    .local v2, "infoCoefficients":[I
    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    new-instance v4, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    iget-object v5, p0, Lcom/itextpdf/barcodes/qrcode/ReedSolomonEncoder;->field:Lcom/itextpdf/barcodes/qrcode/GF256;

    invoke-direct {v4, v5, v2}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    .line 105
    .local v4, "info":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    const/4 v5, 0x1

    invoke-virtual {v4, p2, v5}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->multiplyByMonomial(II)Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v1}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->divide(Lcom/itextpdf/barcodes/qrcode/GF256Poly;)[Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    move-result-object v6

    aget-object v5, v6, v5

    .line 107
    .local v5, "remainder":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    invoke-virtual {v5}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;->getCoefficients()[I

    move-result-object v6

    .line 108
    .local v6, "coefficients":[I
    array-length v7, v6

    sub-int v7, p2, v7

    .line 109
    .local v7, "numZeroCoefficients":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 110
    add-int v9, v0, v8

    aput v3, p1, v9

    .line 109
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 112
    .end local v8    # "i":I
    :cond_0
    add-int v8, v0, v7

    array-length v9, v6

    invoke-static {v6, v3, p1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    return-void

    .line 99
    .end local v1    # "generator":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .end local v2    # "infoCoefficients":[I
    .end local v4    # "info":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .end local v5    # "remainder":Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .end local v6    # "coefficients":[I
    .end local v7    # "numZeroCoefficients":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No data bytes provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    .end local v0    # "dataBytes":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No error correction bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
