.class public final Lcom/itextpdf/layout/renderer/TextPreprocessingUtil;
.super Ljava/lang/Object;
.source "TextPreprocessingUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static replaceSpecialWhitespaceGlyphs(Lcom/itextpdf/io/font/otf/GlyphLine;Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/io/font/otf/GlyphLine;
    .locals 10
    .param p0, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;
    .param p1, "font"    # Lcom/itextpdf/kernel/font/PdfFont;

    .line 42
    if-eqz p0, :cond_6

    .line 43
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getFontProgram()Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontProgram;->getFontMetrics()Lcom/itextpdf/io/font/FontMetrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch()Z

    move-result v0

    .line 44
    .local v0, "isMonospaceFont":Z
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/font/PdfFont;->getGlyph(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v1

    .line 45
    .local v1, "space":Lcom/itextpdf/io/font/otf/Glyph;
    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v2

    .line 47
    .local v2, "spaceWidth":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GlyphLine;->size()I

    move-result v3

    .line 48
    .local v3, "lineSize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_6

    .line 49
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    .line 51
    .local v5, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    const/4 v6, 0x0

    .line 52
    .local v6, "xAdvance":I
    const/4 v7, 0x0

    .line 54
    .local v7, "isSpecialWhitespaceGlyph":Z
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v8

    if-gtz v8, :cond_3

    .line 55
    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    goto :goto_4

    .line 70
    :sswitch_0
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    rsub-int v9, v2, 0xc8

    :goto_1
    move v6, v9

    .line 71
    const/4 v7, 0x1

    .line 72
    goto :goto_4

    .line 64
    :sswitch_1
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    rsub-int v9, v2, 0x3e8

    :goto_2
    move v6, v9

    .line 65
    const/4 v7, 0x1

    .line 66
    goto :goto_4

    .line 58
    :sswitch_2
    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    rsub-int v9, v2, 0x1f4

    :goto_3
    move v6, v9

    .line 59
    const/4 v7, 0x1

    .line 60
    goto :goto_4

    .line 75
    :sswitch_3
    mul-int/lit8 v6, v2, 0x3

    .line 76
    const/4 v7, 0x1

    .line 82
    :cond_3
    :goto_4
    if-eqz v7, :cond_5

    .line 83
    new-instance v8, Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/otf/Glyph;->getUnicode()I

    move-result v9

    invoke-direct {v8, v1, v9}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;I)V

    .line 84
    .local v8, "newGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    const/16 v9, 0x7fff

    if-gt v6, v9, :cond_4

    const/16 v9, -0x8000

    if-lt v6, v9, :cond_4

    .line 85
    int-to-short v9, v6

    invoke-virtual {v8, v9}, Lcom/itextpdf/io/font/otf/Glyph;->setXAdvance(S)V

    .line 86
    invoke-virtual {p0, v4, v8}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    goto :goto_5

    .line 84
    :cond_4
    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 48
    .end local v6    # "xAdvance":I
    .end local v7    # "isSpecialWhitespaceGlyph":Z
    .end local v8    # "newGlyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_5
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "isMonospaceFont":Z
    .end local v1    # "space":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v2    # "spaceWidth":I
    .end local v3    # "lineSize":I
    .end local v4    # "i":I
    .end local v5    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :cond_6
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0x2002 -> :sswitch_2
        0x2003 -> :sswitch_1
        0x2009 -> :sswitch_0
    .end sparse-switch
.end method
