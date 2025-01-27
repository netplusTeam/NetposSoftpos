.class public Lcom/itextpdf/layout/font/FontProvider;
.super Ljava/lang/Object;
.source "FontProvider.java"


# static fields
.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "Helvetica"


# instance fields
.field protected final defaultFontFamily:Ljava/lang/String;

.field private final fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

.field private final fontSet:Lcom/itextpdf/layout/font/FontSet;

.field protected final pdfFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    invoke-direct {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;-><init>(Lcom/itextpdf/layout/font/FontSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/font/FontSet;)V
    .locals 1
    .param p1, "fontSet"    # Lcom/itextpdf/layout/font/FontSet;

    .line 97
    const-string v0, "Helvetica"

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;-><init>(Lcom/itextpdf/layout/font/FontSet;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/layout/font/FontSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "fontSet"    # Lcom/itextpdf/layout/font/FontSet;
    .param p2, "defaultFontFamily"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    .line 125
    new-instance v1, Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-direct {v1, v0}, Lcom/itextpdf/layout/font/FontSelectorCache;-><init>(Lcom/itextpdf/layout/font/FontSet;)V

    iput-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    .line 126
    iput-object p2, p0, Lcom/itextpdf/layout/font/FontProvider;->defaultFontFamily:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultFontFamily"    # Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/itextpdf/layout/font/FontSet;

    invoke-direct {v0}, Lcom/itextpdf/layout/font/FontSet;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/layout/font/FontProvider;-><init>(Lcom/itextpdf/layout/font/FontSet;Ljava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method public addDirectory(Ljava/lang/String;)I
    .locals 1
    .param p1, "dir"    # Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v0, p1}, Lcom/itextpdf/layout/font/FontSet;->addDirectory(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;)Z
    .locals 1
    .param p1, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;

    .line 167
    invoke-virtual {p0, p1}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultEncoding(Lcom/itextpdf/io/font/FontProgram;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result v0

    return v0
.end method

.method public addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 2
    .param p1, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "unicodeRange"    # Lcom/itextpdf/layout/font/Range;

    .line 141
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/itextpdf/layout/font/FontSet;->addFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result v0

    return v0
.end method

.method public addFont(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontPath"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result v0

    return v0
.end method

.method public addFont(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 2
    .param p1, "fontPath"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "unicodeRange"    # Lcom/itextpdf/layout/font/Range;

    .line 182
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/itextpdf/layout/font/FontSet;->addFont(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result v0

    return v0
.end method

.method public addFont([B)Z
    .locals 1
    .param p1, "fontData"    # [B

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont([BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addFont([BLjava/lang/String;)Z
    .locals 1
    .param p1, "fontData"    # [B
    .param p2, "encoding"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont([BLjava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result v0

    return v0
.end method

.method public addFont([BLjava/lang/String;Lcom/itextpdf/layout/font/Range;)Z
    .locals 2
    .param p1, "fontData"    # [B
    .param p2, "encoding"    # Ljava/lang/String;
    .param p3, "unicodeRange"    # Lcom/itextpdf/layout/font/Range;

    .line 222
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/itextpdf/layout/font/FontSet;->addFont([BLjava/lang/String;Ljava/lang/String;Lcom/itextpdf/layout/font/Range;)Z

    move-result v0

    return v0
.end method

.method public addStandardPdfFonts()I
    .locals 1

    .line 297
    const-string v0, "Courier"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 298
    const-string v0, "Courier-Bold"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 299
    const-string v0, "Courier-BoldOblique"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 300
    const-string v0, "Courier-Oblique"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 301
    const-string v0, "Helvetica"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 302
    const-string v0, "Helvetica-Bold"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 303
    const-string v0, "Helvetica-BoldOblique"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 304
    const-string v0, "Helvetica-Oblique"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 305
    const-string v0, "Symbol"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 306
    const-string v0, "Times-Roman"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 307
    const-string v0, "Times-Bold"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 308
    const-string v0, "Times-BoldItalic"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 309
    const-string v0, "Times-Italic"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 310
    const-string v0, "ZapfDingbats"

    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->addFont(Ljava/lang/String;)Z

    .line 311
    const/16 v0, 0xe

    return v0
.end method

.method public addSystemFonts()I
    .locals 8

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "count":I
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 268
    invoke-static {}, Lcom/itextpdf/io/util/FileUtil;->getFontsDir()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/usr/share/X11/fonts"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "/usr/X/lib/X11/fonts"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "/usr/openwin/lib/X11/fonts"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "/usr/share/fonts"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "/usr/X11R6/lib/X11/fonts"

    aput-object v5, v1, v2

    .line 275
    .local v1, "withSubDirs":[Ljava/lang/String;
    array-length v2, v1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v1, v5

    .line 276
    .local v6, "directory":Ljava/lang/String;
    iget-object v7, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v7, v6, v4}, Lcom/itextpdf/layout/font/FontSet;->addDirectory(Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v0, v7

    .line 275
    .end local v6    # "directory":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 279
    :cond_0
    const-string v2, "/Library/Fonts"

    const-string v4, "/System/Library/Fonts"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, "withoutSubDirs":[Ljava/lang/String;
    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 284
    .restart local v6    # "directory":Ljava/lang/String;
    iget-object v7, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v7, v6, v3}, Lcom/itextpdf/layout/font/FontSet;->addDirectory(Ljava/lang/String;Z)I

    move-result v7

    add-int/2addr v0, v7

    .line 283
    .end local v6    # "directory":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 287
    :cond_1
    return v0
.end method

.method protected createFontSelector(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelector;
    .locals 2
    .param p3, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/layout/font/FontInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelector;"
        }
    .end annotation

    .line 477
    .local p1, "fonts":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/itextpdf/layout/font/FontInfo;>;"
    .local p2, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 478
    .local v0, "fontFamiliesToBeProcessed":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->defaultFontFamily:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v1, Lcom/itextpdf/layout/font/FontSelector;

    invoke-direct {v1, p1, v0, p3}, Lcom/itextpdf/layout/font/FontSelector;-><init>(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V

    return-object v1
.end method

.method public getDefaultCacheFlag()Z
    .locals 1

    .line 357
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultEmbeddingFlag()Z
    .locals 1

    .line 369
    const/4 v0, 0x1

    return v0
.end method

.method public getDefaultEncoding(Lcom/itextpdf/io/font/FontProgram;)Ljava/lang/String;
    .locals 1
    .param p1, "fontProgram"    # Lcom/itextpdf/io/font/FontProgram;

    .line 341
    instance-of v0, p1, Lcom/itextpdf/io/font/Type1Font;

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "Cp1252"

    return-object v0

    .line 344
    :cond_0
    const-string v0, "Identity-H"

    return-object v0
.end method

.method public getDefaultFontFamily()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->defaultFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public final getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelector;
    .locals 3
    .param p2, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelector;"
        }
    .end annotation

    .line 431
    .local p1, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/layout/font/FontSelectorKey;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/font/FontSelectorKey;-><init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V

    .line 432
    .local v0, "key":Lcom/itextpdf/layout/font/FontSelectorKey;
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-virtual {v1, v0}, Lcom/itextpdf/layout/font/FontSelectorCache;->get(Lcom/itextpdf/layout/font/FontSelectorKey;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    .line 433
    .local v1, "fontSelector":Lcom/itextpdf/layout/font/FontSelector;
    if-nez v1, :cond_0

    .line 434
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v2}, Lcom/itextpdf/layout/font/FontSet;->getFonts()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/itextpdf/layout/font/FontProvider;->createFontSelector(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    .line 435
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/layout/font/FontSelectorCache;->put(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSelector;)V

    .line 437
    :cond_0
    return-object v1
.end method

.method public final getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;
    .locals 3
    .param p2, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .param p3, "additionalFonts"    # Lcom/itextpdf/layout/font/FontSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            "Lcom/itextpdf/layout/font/FontSet;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelector;"
        }
    .end annotation

    .line 455
    .local p1, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/layout/font/FontSelectorKey;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/layout/font/FontSelectorKey;-><init>(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)V

    .line 456
    .local v0, "key":Lcom/itextpdf/layout/font/FontSelectorKey;
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-virtual {v1, v0, p3}, Lcom/itextpdf/layout/font/FontSelectorCache;->get(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    .line 457
    .local v1, "fontSelector":Lcom/itextpdf/layout/font/FontSelector;
    if-nez v1, :cond_0

    .line 458
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v2, p3}, Lcom/itextpdf/layout/font/FontSet;->getFonts(Lcom/itextpdf/layout/font/FontSet;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/itextpdf/layout/font/FontProvider;->createFontSelector(Ljava/util/Collection;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    .line 459
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSelectorCache:Lcom/itextpdf/layout/font/FontSelectorCache;

    invoke-virtual {v2, v0, v1, p3}, Lcom/itextpdf/layout/font/FontSelectorCache;->put(Lcom/itextpdf/layout/font/FontSelectorKey;Lcom/itextpdf/layout/font/FontSelector;Lcom/itextpdf/layout/font/FontSet;)V

    .line 461
    :cond_0
    return-object v1
.end method

.method public getFontSet()Lcom/itextpdf/layout/font/FontSet;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    return-object v0
.end method

.method public getPdfFont(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 1
    .param p1, "fontInfo"    # Lcom/itextpdf/layout/font/FontInfo;

    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/layout/font/FontProvider;->getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    return-object v0
.end method

.method public getPdfFont(Lcom/itextpdf/layout/font/FontInfo;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 4
    .param p1, "fontInfo"    # Lcom/itextpdf/layout/font/FontInfo;
    .param p2, "additionalFonts"    # Lcom/itextpdf/layout/font/FontSet;

    .line 502
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0

    .line 505
    :cond_0
    const/4 v0, 0x0

    .line 506
    .local v0, "fontProgram":Lcom/itextpdf/io/font/FontProgram;
    if-eqz p2, :cond_1

    .line 507
    invoke-virtual {p2, p1}, Lcom/itextpdf/layout/font/FontSet;->getFontProgram(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 509
    :cond_1
    if-nez v0, :cond_2

    .line 510
    iget-object v1, p0, Lcom/itextpdf/layout/font/FontProvider;->fontSet:Lcom/itextpdf/layout/font/FontSet;

    invoke-virtual {v1, p1}, Lcom/itextpdf/layout/font/FontSet;->getFontProgram(Lcom/itextpdf/layout/font/FontInfo;)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v0

    .line 514
    :cond_2
    if-nez v0, :cond_4

    .line 515
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontInfo;->getFontData()[B

    move-result-object v1

    if-eqz v1, :cond_3

    .line 516
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontInfo;->getFontData()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultCacheFlag()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 518
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontInfo;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultCacheFlag()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;Z)Lcom/itextpdf/io/font/FontProgram;

    move-result-object v1

    move-object v0, v1

    .line 521
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/layout/font/FontInfo;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 523
    :cond_5
    invoke-virtual {p0, v0}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultEncoding(Lcom/itextpdf/io/font/FontProgram;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 526
    :cond_6
    invoke-virtual {p0}, Lcom/itextpdf/layout/font/FontProvider;->getDefaultEmbeddingFlag()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;->PREFER_NOT_EMBEDDED:Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;

    .line 529
    .local v2, "embeddingStrategy":Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    :goto_1
    invoke-static {v0, v1, v2}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/io/font/FontProgram;Ljava/lang/String;Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 542
    .end local v2    # "embeddingStrategy":Lcom/itextpdf/kernel/font/PdfFontFactory$EmbeddingStrategy;
    .local v1, "pdfFont":Lcom/itextpdf/kernel/font/PdfFont;
    nop

    .line 544
    iget-object v2, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    return-object v1

    .line 531
    .end local v1    # "pdfFont":Lcom/itextpdf/kernel/font/PdfFont;
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    const-string v3, "I/O exception while creating Font"

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getStrategy(Ljava/lang/String;Ljava/util/List;)Lcom/itextpdf/layout/font/FontSelectorStrategy;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/itextpdf/layout/font/FontSelectorStrategy;"
        }
    .end annotation

    .line 417
    .local p2, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/layout/font/FontProvider;->getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelectorStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;)Lcom/itextpdf/layout/font/FontSelectorStrategy;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelectorStrategy;"
        }
    .end annotation

    .line 403
    .local p2, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/layout/font/FontProvider;->getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelectorStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getStrategy(Ljava/lang/String;Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelectorStrategy;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p3, "fc"    # Lcom/itextpdf/layout/font/FontCharacteristics;
    .param p4, "additionalFonts"    # Lcom/itextpdf/layout/font/FontSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/itextpdf/layout/font/FontCharacteristics;",
            "Lcom/itextpdf/layout/font/FontSet;",
            ")",
            "Lcom/itextpdf/layout/font/FontSelectorStrategy;"
        }
    .end annotation

    .line 388
    .local p2, "fontFamilies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;

    invoke-virtual {p0, p2, p3, p4}, Lcom/itextpdf/layout/font/FontProvider;->getFontSelector(Ljava/util/List;Lcom/itextpdf/layout/font/FontCharacteristics;Lcom/itextpdf/layout/font/FontSet;)Lcom/itextpdf/layout/font/FontSelector;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0, p4}, Lcom/itextpdf/layout/font/ComplexFontSelectorStrategy;-><init>(Ljava/lang/String;Lcom/itextpdf/layout/font/FontSelector;Lcom/itextpdf/layout/font/FontProvider;Lcom/itextpdf/layout/font/FontSet;)V

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/itextpdf/layout/font/FontProvider;->pdfFonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 555
    return-void
.end method
