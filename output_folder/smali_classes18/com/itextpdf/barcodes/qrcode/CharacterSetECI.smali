.class final Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
.super Ljava/lang/Object;
.source "CharacterSetECI.java"


# static fields
.field private static NAME_TO_ECI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final encodingName:Ljava/lang/String;

.field private final value:I


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "encodingName"    # Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->encodingName:Ljava/lang/String;

    .line 88
    iput p1, p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->value:I

    .line 89
    return-void
.end method

.method private static addCharacterSet(ILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "value"    # I
    .param p1, "encodingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p2, "n":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;>;"
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 107
    .local v0, "eci":Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method private static addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p0, "value"    # I
    .param p1, "encodingNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p2, "n":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;>;"
    new-instance v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, p0, v1}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;-><init>(ILjava/lang/String;)V

    .line 112
    .local v0, "eci":Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 113
    aget-object v2, p1, v1

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static getCharacterSetECIByName(Ljava/lang/String;)Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->initialize()V

    .line 126
    :cond_0
    sget-object v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;

    return-object v0
.end method

.method private static initialize()V
    .locals 6

    .line 60
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 61
    .local v0, "n":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;>;"
    const/4 v1, 0x0

    const-string v2, "Cp437"

    invoke-static {v1, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(ILjava/lang/String;Ljava/util/Map;)V

    .line 62
    const-string v1, "ISO8859_1"

    const-string v3, "ISO-8859-1"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v4, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    const/4 v4, 0x2

    invoke-static {v4, v2, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(ILjava/lang/String;Ljava/util/Map;)V

    .line 64
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    const-string v1, "ISO8859_2"

    const-string v2, "ISO-8859-2"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    const-string v1, "ISO8859_3"

    const-string v2, "ISO-8859-3"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    const-string v1, "ISO8859_4"

    const-string v2, "ISO-8859-4"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 68
    const-string v1, "ISO8859_5"

    const-string v2, "ISO-8859-5"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    const-string v1, "ISO8859_6"

    const-string v2, "ISO-8859-6"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 70
    const-string v1, "ISO8859_7"

    const-string v2, "ISO-8859-7"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    const-string v1, "ISO8859_8"

    const-string v2, "ISO-8859-8"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 72
    const-string v1, "ISO8859_9"

    const-string v2, "ISO-8859-9"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    const-string v1, "ISO8859_10"

    const-string v2, "ISO-8859-10"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    const-string v1, "ISO8859_11"

    const-string v2, "ISO-8859-11"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    const-string v1, "ISO8859_13"

    const-string v2, "ISO-8859-13"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    const-string v1, "ISO8859_14"

    const-string v2, "ISO-8859-14"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    const-string v1, "ISO8859_15"

    const-string v2, "ISO-8859-15"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 78
    const-string v1, "ISO8859_16"

    const-string v2, "ISO-8859-16"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    const-string v1, "SJIS"

    const-string v2, "Shift_JIS"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2, v1, v0}, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->addCharacterSet(I[Ljava/lang/String;Ljava/util/Map;)V

    .line 80
    sput-object v0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->NAME_TO_ECI:Ljava/util/Map;

    .line 81
    return-void
.end method


# virtual methods
.method public getEncodingName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->encodingName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/itextpdf/barcodes/qrcode/CharacterSetECI;->value:I

    return v0
.end method
