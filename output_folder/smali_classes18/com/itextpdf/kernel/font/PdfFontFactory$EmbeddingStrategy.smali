.class public final enum Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
.super Ljava/lang/Enum;
.source "PdfFontFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/font/PdfFontFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmbeddingStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

.field public static final enum FORCE_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

.field public static final enum FORCE_NOT_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

.field public static final enum PREFER_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

.field public static final enum PREFER_NOT_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1024
    new-instance v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    const-string v1, "FORCE_EMBEDDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->FORCE_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 1029
    new-instance v1, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    const-string v3, "FORCE_NOT_EMBEDDED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->FORCE_NOT_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 1033
    new-instance v3, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    const-string v5, "PREFER_EMBEDDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 1037
    new-instance v5, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    const-string v7, "PREFER_NOT_EMBEDDED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_NOT_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 1020
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->$VALUES:[Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1020
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1020
    const-class v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .locals 1

    .line 1020
    sget-object v0, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->$VALUES:[Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    invoke-virtual {v0}, [Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    return-object v0
.end method
