.class public final Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
.super Ljava/lang/Object;
.source "ErrorCorrectionLevel.java"


# static fields
.field private static final FOR_BITS:[Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field public static final H:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field public static final L:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field public static final M:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

.field public static final Q:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;


# instance fields
.field private final bits:I

.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 57
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "L"

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->L:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 61
    new-instance v3, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    const-string v4, "M"

    invoke-direct {v3, v2, v1, v4}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v3, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->M:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 65
    new-instance v4, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-string v7, "Q"

    invoke-direct {v4, v5, v6, v7}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v4, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->Q:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 69
    new-instance v7, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    const-string v8, "H"

    invoke-direct {v7, v6, v5, v8}, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;-><init>(IILjava/lang/String;)V

    sput-object v7, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->H:Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    .line 71
    const/4 v8, 0x4

    new-array v8, v8, [Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    aput-object v3, v8, v1

    aput-object v0, v8, v2

    aput-object v7, v8, v5

    aput-object v4, v8, v6

    sput-object v8, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->FOR_BITS:[Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "ordinal"    # I
    .param p2, "bits"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->ordinal:I

    .line 79
    iput p2, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->bits:I

    .line 80
    iput-object p3, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public static forBits(I)Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;
    .locals 2
    .param p0, "bits"    # I

    .line 110
    if-ltz p0, :cond_0

    sget-object v0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->FOR_BITS:[Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 113
    aget-object v0, v0, p0

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->bits:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public ordinal()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/ErrorCorrectionLevel;->name:Ljava/lang/String;

    return-object v0
.end method
