.class public Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;
.super Lcom/itextpdf/layout/font/FontProvider;
.source "BasicFontProvider.java"


# static fields
.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "Times"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;-><init>(ZZ)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/font/FontSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "fontSet"    # Lcom/itextpdf/layout/font/FontSet;
    .param p2, "defaultFontFamily"    # Ljava/lang/String;

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/layout/font/FontProvider;-><init>(Lcom/itextpdf/layout/font/FontSet;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "registerStandardPdfFonts"    # Z
    .param p2, "registerSystemFonts"    # Z

    .line 69
    const-string v0, "Times"

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;-><init>(ZZLjava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .param p1, "registerStandardPdfFonts"    # Z
    .param p2, "registerSystemFonts"    # Z
    .param p3, "defaultFontFamily"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p3}, Lcom/itextpdf/layout/font/FontProvider;-><init>(Ljava/lang/String;)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;->addStandardPdfFonts()I

    .line 84
    :cond_0
    if-eqz p2, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/resolver/font/BasicFontProvider;->addSystemFonts()I

    .line 87
    :cond_1
    return-void
.end method
