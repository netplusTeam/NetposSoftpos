.class public final enum Lcom/itextpdf/layout/property/BlendMode;
.super Ljava/lang/Enum;
.source "BlendMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/layout/property/BlendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum COLOR:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum COLOR_BURN:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum COLOR_DODGE:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum DARKEN:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum DIFFERENCE:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum EXCLUSION:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum HARD_LIGHT:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum HUE:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum LIGHTEN:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum LUMINOSITY:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum MULTIPLY:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum NORMAL:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum OVERLAY:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum SATURATION:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum SCREEN:Lcom/itextpdf/layout/property/BlendMode;

.field public static final enum SOFT_LIGHT:Lcom/itextpdf/layout/property/BlendMode;


# instance fields
.field private final pdfRepresentation:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 55
    new-instance v0, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v1, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_NORMAL:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v2, "NORMAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v0, Lcom/itextpdf/layout/property/BlendMode;->NORMAL:Lcom/itextpdf/layout/property/BlendMode;

    .line 56
    new-instance v1, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v2, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_MULTIPLY:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v4, "MULTIPLY"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v1, Lcom/itextpdf/layout/property/BlendMode;->MULTIPLY:Lcom/itextpdf/layout/property/BlendMode;

    .line 57
    new-instance v2, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v4, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_SCREEN:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v6, "SCREEN"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v2, Lcom/itextpdf/layout/property/BlendMode;->SCREEN:Lcom/itextpdf/layout/property/BlendMode;

    .line 58
    new-instance v4, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v6, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_OVERLAY:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v8, "OVERLAY"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v4, Lcom/itextpdf/layout/property/BlendMode;->OVERLAY:Lcom/itextpdf/layout/property/BlendMode;

    .line 59
    new-instance v6, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v8, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_DARKEN:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v10, "DARKEN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v6, Lcom/itextpdf/layout/property/BlendMode;->DARKEN:Lcom/itextpdf/layout/property/BlendMode;

    .line 60
    new-instance v8, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v10, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_LIGHTEN:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v12, "LIGHTEN"

    const/4 v13, 0x5

    invoke-direct {v8, v12, v13, v10}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v8, Lcom/itextpdf/layout/property/BlendMode;->LIGHTEN:Lcom/itextpdf/layout/property/BlendMode;

    .line 61
    new-instance v10, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v12, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_COLOR_DODGE:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v14, "COLOR_DODGE"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v12}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v10, Lcom/itextpdf/layout/property/BlendMode;->COLOR_DODGE:Lcom/itextpdf/layout/property/BlendMode;

    .line 62
    new-instance v12, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v14, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_COLOR_BURN:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v15, "COLOR_BURN"

    const/4 v13, 0x7

    invoke-direct {v12, v15, v13, v14}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v12, Lcom/itextpdf/layout/property/BlendMode;->COLOR_BURN:Lcom/itextpdf/layout/property/BlendMode;

    .line 63
    new-instance v14, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_HARD_LIGHT:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v13, "HARD_LIGHT"

    const/16 v11, 0x8

    invoke-direct {v14, v13, v11, v15}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v14, Lcom/itextpdf/layout/property/BlendMode;->HARD_LIGHT:Lcom/itextpdf/layout/property/BlendMode;

    .line 64
    new-instance v13, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_SOFT_LIGHT:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v11, "SOFT_LIGHT"

    const/16 v9, 0x9

    invoke-direct {v13, v11, v9, v15}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v13, Lcom/itextpdf/layout/property/BlendMode;->SOFT_LIGHT:Lcom/itextpdf/layout/property/BlendMode;

    .line 65
    new-instance v11, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_DIFFERENCE:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v9, "DIFFERENCE"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v15}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v11, Lcom/itextpdf/layout/property/BlendMode;->DIFFERENCE:Lcom/itextpdf/layout/property/BlendMode;

    .line 66
    new-instance v9, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_EXCLUSION:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v7, "EXCLUSION"

    const/16 v5, 0xb

    invoke-direct {v9, v7, v5, v15}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v9, Lcom/itextpdf/layout/property/BlendMode;->EXCLUSION:Lcom/itextpdf/layout/property/BlendMode;

    .line 68
    new-instance v7, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_HUE:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v5, "HUE"

    const/16 v3, 0xc

    invoke-direct {v7, v5, v3, v15}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v7, Lcom/itextpdf/layout/property/BlendMode;->HUE:Lcom/itextpdf/layout/property/BlendMode;

    .line 69
    new-instance v5, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_SATURATION:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v3, "SATURATION"

    move-object/from16 v16, v7

    const/16 v7, 0xd

    invoke-direct {v5, v3, v7, v15}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v5, Lcom/itextpdf/layout/property/BlendMode;->SATURATION:Lcom/itextpdf/layout/property/BlendMode;

    .line 70
    new-instance v3, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_COLOR:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v7, "COLOR"

    move-object/from16 v17, v5

    const/16 v5, 0xe

    invoke-direct {v3, v7, v5, v15}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v3, Lcom/itextpdf/layout/property/BlendMode;->COLOR:Lcom/itextpdf/layout/property/BlendMode;

    .line 71
    new-instance v7, Lcom/itextpdf/layout/property/BlendMode;

    sget-object v15, Lcom/itextpdf/kernel/pdf/extgstate/PdfExtGState;->BM_LUMINOSITY:Lcom/itextpdf/kernel/pdf/PdfName;

    const-string v5, "LUMINOSITY"

    move-object/from16 v18, v3

    const/16 v3, 0xf

    invoke-direct {v7, v5, v3, v15}, Lcom/itextpdf/layout/property/BlendMode;-><init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V

    sput-object v7, Lcom/itextpdf/layout/property/BlendMode;->LUMINOSITY:Lcom/itextpdf/layout/property/BlendMode;

    .line 52
    const/16 v5, 0x10

    new-array v5, v5, [Lcom/itextpdf/layout/property/BlendMode;

    const/4 v15, 0x0

    aput-object v0, v5, v15

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    const/4 v0, 0x4

    aput-object v6, v5, v0

    const/4 v0, 0x5

    aput-object v8, v5, v0

    const/4 v0, 0x6

    aput-object v10, v5, v0

    const/4 v0, 0x7

    aput-object v12, v5, v0

    const/16 v0, 0x8

    aput-object v14, v5, v0

    const/16 v0, 0x9

    aput-object v13, v5, v0

    const/16 v0, 0xa

    aput-object v11, v5, v0

    const/16 v0, 0xb

    aput-object v9, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    aput-object v7, v5, v3

    sput-object v5, Lcom/itextpdf/layout/property/BlendMode;->$VALUES:[Lcom/itextpdf/layout/property/BlendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0
    .param p3, "pdfRepresentation"    # Lcom/itextpdf/kernel/pdf/PdfName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/itextpdf/layout/property/BlendMode;->pdfRepresentation:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 77
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/layout/property/BlendMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    const-class v0, Lcom/itextpdf/layout/property/BlendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/layout/property/BlendMode;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/layout/property/BlendMode;
    .locals 1

    .line 52
    sget-object v0, Lcom/itextpdf/layout/property/BlendMode;->$VALUES:[Lcom/itextpdf/layout/property/BlendMode;

    invoke-virtual {v0}, [Lcom/itextpdf/layout/property/BlendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/layout/property/BlendMode;

    return-object v0
.end method


# virtual methods
.method public getPdfRepresentation()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/itextpdf/layout/property/BlendMode;->pdfRepresentation:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method
