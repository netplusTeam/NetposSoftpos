.class public final Lcom/itextpdf/barcodes/qrcode/EncodeHintType;
.super Ljava/lang/Object;
.source "EncodeHintType.java"


# static fields
.field public static final CHARACTER_SET:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

.field public static final ERROR_CORRECTION:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

.field public static final MIN_VERSION_NR:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;-><init>()V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->ERROR_CORRECTION:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    .line 61
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;-><init>()V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->CHARACTER_SET:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    .line 66
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    invoke-direct {v0}, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;-><init>()V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/EncodeHintType;->MIN_VERSION_NR:Lcom/itextpdf/barcodes/qrcode/EncodeHintType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method
