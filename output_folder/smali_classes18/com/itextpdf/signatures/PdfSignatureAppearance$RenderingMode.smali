.class public final enum Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
.super Ljava/lang/Enum;
.source "PdfSignatureAppearance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/PdfSignatureAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RenderingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field public static final enum DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field public static final enum GRAPHIC:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field public static final enum GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

.field public static final enum NAME_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 980
    new-instance v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const-string v1, "DESCRIPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 984
    new-instance v1, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const-string v3, "NAME_AND_DESCRIPTION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->NAME_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 988
    new-instance v3, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const-string v5, "GRAPHIC_AND_DESCRIPTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC_AND_DESCRIPTION:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 992
    new-instance v5, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    const-string v7, "GRAPHIC"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->GRAPHIC:Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    .line 976
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->$VALUES:[Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 976
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 976
    const-class v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;
    .locals 1

    .line 976
    sget-object v0, Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->$VALUES:[Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    invoke-virtual {v0}, [Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/signatures/PdfSignatureAppearance$RenderingMode;

    return-object v0
.end method
