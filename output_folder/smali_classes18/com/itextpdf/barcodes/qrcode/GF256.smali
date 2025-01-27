.class final Lcom/itextpdf/barcodes/qrcode/GF256;
.super Ljava/lang/Object;
.source "GF256.java"


# static fields
.field public static final DATA_MATRIX_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

.field public static final QR_CODE_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;


# instance fields
.field private final expTable:[I

.field private final logTable:[I

.field private final one:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

.field private final zero:Lcom/itextpdf/barcodes/qrcode/GF256Poly;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/GF256;

    const/16 v1, 0x11d

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/GF256;-><init>(I)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/GF256;->QR_CODE_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

    .line 62
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/GF256;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Lcom/itextpdf/barcodes/qrcode/GF256;-><init>(I)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/GF256;->DATA_MATRIX_FIELD:Lcom/itextpdf/barcodes/qrcode/GF256;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 5
    .param p1, "primitive"    # I

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    .line 78
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    .line 79
    const/4 v1, 0x1

    .line 80
    .local v1, "x":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 81
    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    aput v1, v3, v2

    .line 84
    shl-int/lit8 v1, v1, 0x1

    .line 85
    if-lt v1, v0, :cond_0

    .line 86
    xor-int/2addr v1, p1

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "i":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0xff

    if-ge v0, v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    iget-object v3, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    aget v3, v3, v0

    aput v0, v2, v3

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    invoke-direct {v0, p0, v3}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->zero:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    .line 95
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    new-array v3, v2, [I

    aput v2, v3, v4

    invoke-direct {v0, p0, v3}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    iput-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->one:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    .line 96
    return-void
.end method

.method static addOrSubtract(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 127
    xor-int v0, p0, p1

    return v0
.end method


# virtual methods
.method buildMonomial(II)Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 2
    .param p1, "degree"    # I
    .param p2, "coefficient"    # I

    .line 110
    if-ltz p1, :cond_1

    .line 113
    if-nez p2, :cond_0

    .line 114
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->zero:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-object v0

    .line 116
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [I

    .line 117
    .local v0, "coefficients":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 118
    new-instance v1, Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    invoke-direct {v1, p0, v0}, Lcom/itextpdf/barcodes/qrcode/GF256Poly;-><init>(Lcom/itextpdf/barcodes/qrcode/GF256;[I)V

    return-object v1

    .line 111
    .end local v0    # "coefficients":[I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method exp(I)I
    .locals 1
    .param p1, "a"    # I

    .line 134
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    aget v0, v0, p1

    return v0
.end method

.method getOne()Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->one:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-object v0
.end method

.method getZero()Lcom/itextpdf/barcodes/qrcode/GF256Poly;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->zero:Lcom/itextpdf/barcodes/qrcode/GF256Poly;

    return-object v0
.end method

.method inverse(I)I
    .locals 2
    .param p1, "a"    # I

    .line 151
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    aget v1, v1, p1

    rsub-int v1, v1, 0xff

    aget v0, v0, v1

    return v0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method log(I)I
    .locals 1
    .param p1, "a"    # I

    .line 141
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    aget v0, v0, p1

    return v0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method multiply(II)I
    .locals 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 163
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 167
    return p2

    .line 169
    :cond_1
    if-ne p2, v0, :cond_2

    .line 170
    return p1

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->expTable:[I

    iget-object v1, p0, Lcom/itextpdf/barcodes/qrcode/GF256;->logTable:[I

    aget v2, v1, p1

    aget v1, v1, p2

    add-int/2addr v2, v1

    rem-int/lit16 v2, v2, 0xff

    aget v0, v0, v2

    return v0

    .line 164
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
