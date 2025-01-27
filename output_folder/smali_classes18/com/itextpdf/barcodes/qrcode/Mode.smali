.class final Lcom/itextpdf/barcodes/qrcode/Mode;
.super Ljava/lang/Object;
.source "Mode.java"


# static fields
.field public static final ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final ECI:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final FNC1_FIRST_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final FNC1_SECOND_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final STRUCTURED_APPEND:Lcom/itextpdf/barcodes/qrcode/Mode;

.field public static final TERMINATOR:Lcom/itextpdf/barcodes/qrcode/Mode;


# instance fields
.field private final bits:I

.field private final characterCountBitsForVersions:[I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 55
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const-string v4, "TERMINATOR"

    invoke-direct {v0, v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->TERMINATOR:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 56
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    const-string v4, "NUMERIC"

    invoke-direct {v0, v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 57
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    const-string v4, "ALPHANUMERIC"

    invoke-direct {v0, v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 60
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const-string v3, "STRUCTURED_APPEND"

    invoke-direct {v0, v2, v1, v3}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->STRUCTURED_APPEND:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 61
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    const-string v4, "BYTE"

    invoke-direct {v0, v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 64
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/4 v2, 0x0

    const/4 v3, 0x7

    const-string v4, "ECI"

    invoke-direct {v0, v2, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ECI:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 65
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    new-array v1, v1, [I

    fill-array-data v1, :array_5

    const/16 v3, 0x8

    const-string v4, "KANJI"

    invoke-direct {v0, v1, v3, v4}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 66
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/4 v1, 0x5

    const-string v3, "FNC1_FIRST_POSITION"

    invoke-direct {v0, v2, v1, v3}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->FNC1_FIRST_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

    .line 67
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/Mode;

    const/16 v1, 0x9

    const-string v3, "FNC1_SECOND_POSITION"

    invoke-direct {v0, v2, v1, v3}, Lcom/itextpdf/barcodes/qrcode/Mode;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->FNC1_SECOND_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xa
        0xc
        0xe
    .end array-data

    :array_2
    .array-data 4
        0x9
        0xb
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x8
        0x10
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xa
        0xc
    .end array-data
.end method

.method private constructor <init>([IILjava/lang/String;)V
    .locals 0
    .param p1, "characterCountBitsForVersions"    # [I
    .param p2, "bits"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->characterCountBitsForVersions:[I

    .line 75
    iput p2, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->bits:I

    .line 76
    iput-object p3, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->name:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static forBits(I)Lcom/itextpdf/barcodes/qrcode/Mode;
    .locals 1
    .param p0, "bits"    # I

    .line 85
    packed-switch p0, :pswitch_data_0

    .line 105
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 103
    :pswitch_1
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->FNC1_SECOND_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    .line 101
    :pswitch_2
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->KANJI:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    .line 99
    :pswitch_3
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ECI:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    .line 97
    :pswitch_4
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->FNC1_FIRST_POSITION:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    .line 95
    :pswitch_5
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->BYTE:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    .line 93
    :pswitch_6
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->STRUCTURED_APPEND:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    .line 91
    :pswitch_7
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->ALPHANUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    .line 89
    :pswitch_8
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->NUMERIC:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    .line 87
    :pswitch_9
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/Mode;->TERMINATOR:Lcom/itextpdf/barcodes/qrcode/Mode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getBits()I
    .locals 1

    .line 134
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->bits:I

    return v0
.end method

.method public getCharacterCountBits(Lcom/itextpdf/barcodes/qrcode/Version;)I
    .locals 3
    .param p1, "version"    # Lcom/itextpdf/barcodes/qrcode/Version;

    .line 115
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->characterCountBitsForVersions:[I

    if-eqz v0, :cond_2

    .line 118
    invoke-virtual {p1}, Lcom/itextpdf/barcodes/qrcode/Version;->getVersionNumber()I

    move-result v0

    .line 120
    .local v0, "number":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 121
    const/4 v1, 0x0

    .local v1, "offset":I
    goto :goto_0

    .line 122
    .end local v1    # "offset":I
    :cond_0
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 123
    const/4 v1, 0x1

    .restart local v1    # "offset":I
    goto :goto_0

    .line 125
    .end local v1    # "offset":I
    :cond_1
    const/4 v1, 0x2

    .line 127
    .restart local v1    # "offset":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->characterCountBitsForVersions:[I

    aget v2, v2, v1

    return v2

    .line 116
    .end local v0    # "number":I
    .end local v1    # "offset":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Character count doesn\'t apply to this mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/Mode;->name:Ljava/lang/String;

    return-object v0
.end method
