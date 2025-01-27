.class final Lcom/itextpdf/barcodes/qrcode/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final BITS_SET_IN_HALF_BYTE:[I

.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 60
    const/16 v0, 0x20

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v4, 0x13

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v4, 0x14

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v4, 0x15

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v4, 0x16

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v4, 0x17

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v4, 0x18

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v4, 0x19

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v4, 0x1a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v4, 0x1b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v4, 0x1c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const/16 v4, 0x1d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const/16 v4, 0x1e

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_1f

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    .line 98
    new-array v0, v3, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    return-void

    :array_0
    .array-data 4
        0x5412
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x5125
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x5e7c
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x5b4b
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x45f9
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x40ce
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x4f97
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x4aa0
        0x7
    .end array-data

    :array_8
    .array-data 4
        0x77c4
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x72f3
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x7daa
        0xa
    .end array-data

    :array_b
    .array-data 4
        0x789d
        0xb
    .end array-data

    :array_c
    .array-data 4
        0x662f
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x6318
        0xd
    .end array-data

    :array_e
    .array-data 4
        0x6c41
        0xe
    .end array-data

    :array_f
    .array-data 4
        0x6976
        0xf
    .end array-data

    :array_10
    .array-data 4
        0x1689
        0x10
    .end array-data

    :array_11
    .array-data 4
        0x13be
        0x11
    .end array-data

    :array_12
    .array-data 4
        0x1ce7
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x19d0
        0x13
    .end array-data

    :array_14
    .array-data 4
        0x762
        0x14
    .end array-data

    :array_15
    .array-data 4
        0x255
        0x15
    .end array-data

    :array_16
    .array-data 4
        0xd0c
        0x16
    .end array-data

    :array_17
    .array-data 4
        0x83b
        0x17
    .end array-data

    :array_18
    .array-data 4
        0x355f
        0x18
    .end array-data

    :array_19
    .array-data 4
        0x3068
        0x19
    .end array-data

    :array_1a
    .array-data 4
        0x3f31
        0x1a
    .end array-data

    :array_1b
    .array-data 4
        0x3a06
        0x1b
    .end array-data

    :array_1c
    .array-data 4
        0x24b4
        0x1c
    .end array-data

    :array_1d
    .array-data 4
        0x2183
        0x1d
    .end array-data

    :array_1e
    .array-data 4
        0x2eda
        0x1e
    .end array-data

    :array_1f
    .array-data 4
        0x2bed
        0x1f
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
        0x2
        0x3
        0x2
        0x3
        0x3
        0x4
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "formatInfo"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    shr-int/lit8 v0, p1, 0x3

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->forBits(I)Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->errorCorrectionLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 108
    and-int/lit8 v0, p1, 0x7

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->dataMask:B

    .line 109
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/itextpdf/barcodes/qrcode/FormatInformation;
    .locals 3
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .line 135
    invoke-static {p0, p1}, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->doDecodeFormatInformation(II)Lcom/itextpdf/barcodes/qrcode/FormatInformation;

    move-result-object v0

    .line 136
    .local v0, "formatInfo":Lcom/itextpdf/barcodes/qrcode/FormatInformation;
    if-eqz v0, :cond_0

    .line 137
    return-object v0

    .line 142
    :cond_0
    xor-int/lit16 v1, p0, 0x5412

    xor-int/lit16 v2, p1, 0x5412

    invoke-static {v1, v2}, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->doDecodeFormatInformation(II)Lcom/itextpdf/barcodes/qrcode/FormatInformation;

    move-result-object v1

    return-object v1
.end method

.method private static doDecodeFormatInformation(II)Lcom/itextpdf/barcodes/qrcode/FormatInformation;
    .locals 7
    .param p0, "maskedFormatInfo1"    # I
    .param p1, "maskedFormatInfo2"    # I

    .line 148
    const v0, 0x7fffffff

    .line 149
    .local v0, "bestDifference":I
    const/4 v1, 0x0

    .line 150
    .local v1, "bestFormatInfo":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 151
    aget-object v3, v3, v2

    .line 152
    .local v3, "decodeInfo":[I
    const/4 v4, 0x0

    aget v4, v3, v4

    .line 153
    .local v4, "targetInfo":I
    const/4 v5, 0x1

    if-eq v4, p0, :cond_3

    if-ne v4, p1, :cond_0

    goto :goto_1

    .line 157
    :cond_0
    invoke-static {p0, v4}, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->numBitsDiffering(II)I

    move-result v6

    .line 158
    .local v6, "bitsDifference":I
    if-ge v6, v0, :cond_1

    .line 159
    aget v1, v3, v5

    .line 160
    move v0, v6

    .line 162
    :cond_1
    if-eq p0, p1, :cond_2

    .line 164
    invoke-static {p1, v4}, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->numBitsDiffering(II)I

    move-result v6

    .line 165
    if-ge v6, v0, :cond_2

    .line 166
    aget v1, v3, v5

    .line 167
    move v0, v6

    .line 150
    .end local v3    # "decodeInfo":[I
    .end local v4    # "targetInfo":I
    .end local v6    # "bitsDifference":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .restart local v3    # "decodeInfo":[I
    .restart local v4    # "targetInfo":I
    :cond_3
    :goto_1
    new-instance v6, Lcom/itextpdf/barcodes/qrcode/FormatInformation;

    aget v5, v3, v5

    invoke-direct {v6, v5}, Lcom/itextpdf/barcodes/qrcode/FormatInformation;-><init>(I)V

    return-object v6

    .line 173
    .end local v2    # "i":I
    .end local v3    # "decodeInfo":[I
    .end local v4    # "targetInfo":I
    :cond_4
    const/4 v2, 0x3

    if-gt v0, v2, :cond_5

    .line 174
    new-instance v2, Lcom/itextpdf/barcodes/qrcode/FormatInformation;

    invoke-direct {v2, v1}, Lcom/itextpdf/barcodes/qrcode/FormatInformation;-><init>(I)V

    return-object v2

    .line 176
    :cond_5
    const/4 v2, 0x0

    return-object v2
.end method

.method static numBitsDiffering(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 114
    xor-int/2addr p0, p1

    .line 117
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    and-int/lit8 v1, p0, 0xf

    aget v1, v0, v1

    ushr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget v2, v0, v2

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget v2, v0, v2

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    aget v2, v0, v2

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0xf

    aget v2, v0, v2

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x14

    and-int/lit8 v2, v2, 0xf

    aget v2, v0, v2

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit8 v2, v2, 0xf

    aget v2, v0, v2

    add-int/2addr v1, v2

    ushr-int/lit8 v2, p0, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget v0, v0, v2

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 203
    instance-of v0, p1, Lcom/itextpdf/barcodes/qrcode/FormatInformation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 204
    return v1

    .line 206
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;

    .line 207
    .local v0, "other":Lcom/itextpdf/barcodes/qrcode/FormatInformation;
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->errorCorrectionLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    iget-object v3, v0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->errorCorrectionLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    if-ne v2, v3, :cond_1

    iget-byte v2, p0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->dataMask:B

    iget-byte v3, v0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->dataMask:B

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method getDataMask()B
    .locals 1

    .line 187
    iget-byte v0, p0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->dataMask:B

    return v0
.end method

.method getErrorCorrectionLevel()Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->errorCorrectionLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->errorCorrectionLevel:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    invoke-virtual {v0}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->ordinal()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget-byte v1, p0, Lcom/itextpdf/barcodes/qrcode/FormatInformation;->dataMask:B

    or-int/2addr v0, v1

    return v0
.end method
