.class public Lcom/itextpdf/io/font/TrueTypeFont;
.super Lcom/itextpdf/io/font/FontProgram;
.source "TrueTypeFont.java"


# static fields
.field private static final serialVersionUID:J = -0x1ef9d0c7ba130494L


# instance fields
.field protected bBoxes:[[I

.field private fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

.field private fontStreamBytes:[B

.field private gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

.field private gposTable:Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;

.field private gsubTable:Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;

.field protected isVertical:Z

.field protected kerning:Lcom/itextpdf/io/util/IntHashtable;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 88
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    .line 99
    new-instance v0, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/itextpdf/io/font/OpenTypeParser;)V
    .locals 1
    .param p1, "fontParser"    # Lcom/itextpdf/io/font/OpenTypeParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 88
    new-instance v0, Lcom/itextpdf/io/util/IntHashtable;

    invoke-direct {v0}, Lcom/itextpdf/io/util/IntHashtable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    .line 93
    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/itextpdf/io/font/OpenTypeParser;->loadTables(Z)V

    .line 95
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->initializeFontProperties()V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Lcom/itextpdf/io/font/OpenTypeParser;)V

    .line 104
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "ttcPath"    # Ljava/lang/String;
    .param p2, "ttcIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Lcom/itextpdf/io/font/OpenTypeParser;)V

    .line 112
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "ttf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p1}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Lcom/itextpdf/io/font/OpenTypeParser;)V

    .line 108
    return-void
.end method

.method constructor <init>([BI)V
    .locals 1
    .param p1, "ttc"    # [B
    .param p2, "ttcIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-direct {v0, p1, p2}, Lcom/itextpdf/io/font/OpenTypeParser;-><init>([BI)V

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/TrueTypeFont;-><init>(Lcom/itextpdf/io/font/OpenTypeParser;)V

    .line 116
    return-void
.end method

.method private initializeFontProperties()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/OpenTypeParser;->getHeadTable()Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;

    move-result-object v1

    .line 246
    .local v1, "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    iget-object v2, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/OpenTypeParser;->getHheaTable()Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;

    move-result-object v2

    .line 247
    .local v2, "hhea":Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;
    iget-object v3, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v3}, Lcom/itextpdf/io/font/OpenTypeParser;->getOs_2Table()Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    move-result-object v3

    .line 248
    .local v3, "os_2":Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;
    iget-object v4, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v4}, Lcom/itextpdf/io/font/OpenTypeParser;->getPostTable()Lcom/itextpdf/io/font/OpenTypeParser$PostTable;

    move-result-object v4

    .line 249
    .local v4, "post":Lcom/itextpdf/io/font/OpenTypeParser$PostTable;
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/OpenTypeParser;->getCmapTable()Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    move-result-object v5

    iget-boolean v5, v5, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    iput-boolean v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific:Z

    .line 250
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget v6, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/OpenTypeParser;->readKerning(I)Lcom/itextpdf/io/util/IntHashtable;

    move-result-object v5

    iput-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    .line 251
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget v6, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/OpenTypeParser;->readBbox(I)[[I

    move-result-object v5

    iput-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->bBoxes:[[I

    .line 254
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v5}, Lcom/itextpdf/io/font/OpenTypeParser;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v5

    iput-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    .line 257
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->unitsPerEm:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setUnitsPerEm(I)V

    .line 258
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->xMin:S

    int-to-float v6, v6

    iget-short v7, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->yMin:S

    int-to-float v7, v7

    iget-short v8, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->xMax:S

    int-to-float v8, v8

    iget-short v9, v1, Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;->yMax:S

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/itextpdf/io/font/FontMetrics;->updateBbox(FFFF)V

    .line 259
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-object v6, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/OpenTypeParser;->readNumGlyphs()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setNumberOfGlyphs(I)V

    .line 260
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-object v6, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidthsByIndex()[I

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setGlyphWidths([I)V

    .line 261
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoAscender:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setTypoAscender(I)V

    .line 262
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sTypoDescender:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setTypoDescender(I)V

    .line 263
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sCapHeight:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setCapHeight(I)V

    .line 264
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sxHeight:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setXHeight(I)V

    .line 265
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->italicAngle:F

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setItalicAngle(F)V

    .line 266
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v2, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->Ascender:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setAscender(I)V

    .line 267
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v2, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->Descender:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setDescender(I)V

    .line 268
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v2, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->LineGap:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setLineGap(I)V

    .line 269
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinAscent:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setWinAscender(I)V

    .line 270
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->usWinDescent:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setWinDescender(I)V

    .line 271
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v2, Lcom/itextpdf/io/font/OpenTypeParser$HorizontalHeader;->advanceWidthMax:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setAdvanceWidthMax(I)V

    .line 272
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlinePosition:I

    iget v7, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlineThickness:I

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setUnderlinePosition(I)V

    .line 273
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget v6, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->underlineThickness:I

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setUnderlineThickness(I)V

    .line 274
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->yStrikeoutPosition:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setStrikeoutPosition(I)V

    .line 275
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->yStrikeoutSize:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setStrikeoutSize(I)V

    .line 276
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptYOffset:S

    neg-int v6, v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setSubscriptOffset(I)V

    .line 277
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySubscriptYSize:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setSubscriptSize(I)V

    .line 278
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptYOffset:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setSuperscriptOffset(I)V

    .line 279
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-short v6, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ySuperscriptYSize:S

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setSuperscriptSize(I)V

    .line 280
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    iget-boolean v6, v4, Lcom/itextpdf/io/font/OpenTypeParser$PostTable;->isFixedPitch:Z

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontMetrics;->setIsFixedPitch(Z)V

    .line 283
    iget-object v5, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, "ttfVersion":[[Ljava/lang/String;
    const/4 v6, 0x3

    const/4 v8, 0x0

    if-eqz v5, :cond_0

    .line 285
    iget-object v9, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    aget-object v10, v5, v8

    aget-object v10, v10, v6

    invoke-virtual {v9, v10}, Lcom/itextpdf/io/font/FontIdentification;->setTtfVersion(Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v9, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v9, v6}, Lcom/itextpdf/io/font/FontNames;->getNames(I)[[Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "ttfUniqueId":[[Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 289
    iget-object v10, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    aget-object v11, v9, v8

    aget-object v6, v11, v6

    invoke-virtual {v10, v6}, Lcom/itextpdf/io/font/FontIdentification;->setTtfVersion(Ljava/lang/String;)V

    .line 292
    :cond_1
    const/16 v6, 0xc

    new-array v6, v6, [B

    .line 293
    .local v6, "pdfPanose":[B
    iget-short v10, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sFamilyClass:S

    int-to-byte v10, v10

    const/4 v11, 0x1

    aput-byte v10, v6, v11

    .line 294
    iget-short v10, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->sFamilyClass:S

    shr-int/lit8 v10, v10, 0x8

    int-to-byte v10, v10

    aput-byte v10, v6, v8

    .line 295
    iget-object v10, v3, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->panose:[B

    const/16 v12, 0xa

    invoke-static {v10, v8, v6, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object v10, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    invoke-virtual {v10, v6}, Lcom/itextpdf/io/font/FontIdentification;->setPanose([B)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getActiveCmap()Ljava/util/Map;

    move-result-object v10

    .line 299
    .local v10, "cmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;[I>;"
    iget-object v12, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v12}, Lcom/itextpdf/io/font/OpenTypeParser;->getGlyphWidthsByIndex()[I

    move-result-object v12

    .line 300
    .local v12, "glyphWidths":[I
    iget-object v13, v0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v13}, Lcom/itextpdf/io/font/FontMetrics;->getNumberOfGlyphs()I

    move-result v13

    .line 301
    .local v13, "numOfGlyphs":I
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v14, v0, Lcom/itextpdf/io/font/TrueTypeFont;->unicodeToGlyph:Ljava/util/Map;

    .line 302
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v14, v0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    .line 303
    iput v8, v0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    .line 304
    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 305
    .local v15, "charCode":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    aget v11, v11, v8

    .line 306
    .local v11, "index":I
    if-lt v11, v13, :cond_2

    .line 307
    const-class v17, Lcom/itextpdf/io/font/TrueTypeFont;

    invoke-static/range {v17 .. v17}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v8

    .line 308
    .local v8, "LOGGER":Lorg/slf4j/Logger;
    move-object/from16 v17, v1

    .end local v1    # "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    .local v17, "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/TrueTypeFont;->getFontNames()Lcom/itextpdf/io/font/FontNames;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x0

    aput-object v19, v1, v18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v16, 0x1

    aput-object v19, v1, v16

    const-string v7, "Font {0} has invalid glyph: {1}"

    invoke-static {v7, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 309
    move/from16 v11, v16

    move-object/from16 v1, v17

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto :goto_0

    .line 311
    .end local v8    # "LOGGER":Lorg/slf4j/Logger;
    .end local v17    # "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    .restart local v1    # "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    :cond_2
    move-object/from16 v17, v1

    const/16 v16, 0x1

    .end local v1    # "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    .restart local v17    # "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    new-instance v1, Lcom/itextpdf/io/font/otf/Glyph;

    aget v7, v12, v11

    iget-object v8, v0, Lcom/itextpdf/io/font/TrueTypeFont;->bBoxes:[[I

    if-eqz v8, :cond_3

    aget-object v8, v8, v11

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    invoke-direct {v1, v11, v7, v15, v8}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III[I)V

    .line 312
    .local v1, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    iget-object v7, v0, Lcom/itextpdf/io/font/TrueTypeFont;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v7, v0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 316
    iget-object v7, v0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_4
    iget v7, v0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    .line 319
    .end local v1    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v11    # "index":I
    .end local v15    # "charCode":I
    move/from16 v11, v16

    move-object/from16 v1, v17

    const/4 v7, 0x2

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 320
    .end local v17    # "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    .local v1, "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    :cond_5
    move-object/from16 v17, v1

    .end local v1    # "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    .restart local v17    # "head":Lcom/itextpdf/io/font/OpenTypeParser$HeaderTable;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/TrueTypeFont;->fixSpaceIssue()V

    .line 321
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    array-length v7, v12

    if-ge v1, v7, :cond_7

    .line 322
    iget-object v7, v0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 323
    goto :goto_3

    .line 325
    :cond_6
    new-instance v7, Lcom/itextpdf/io/font/otf/Glyph;

    aget v8, v12, v1

    const/4 v11, -0x1

    invoke-direct {v7, v1, v8, v11}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 326
    .local v7, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    iget-object v8, v0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget v8, v0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v11

    add-int/2addr v8, v11

    iput v8, v0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    .line 321
    .end local v7    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 330
    .end local v1    # "index":I
    :cond_7
    iget-object v1, v0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 331
    iget v1, v0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    iget-object v7, v0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    div-int/2addr v1, v7

    iput v1, v0, Lcom/itextpdf/io/font/TrueTypeFont;->avgWidth:I

    .line 334
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/TrueTypeFont;->readGdefTable()V

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/TrueTypeFont;->readGsubTable()V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/TrueTypeFont;->readGposTable()V

    .line 338
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/itextpdf/io/font/TrueTypeFont;->isVertical:Z

    .line 339
    return-void
.end method

.method private static toCompactRange(Ljava/util/List;)[I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[I>;)[I"
        }
    .end annotation

    .line 416
    .local p0, "ranges":Ljava/util/List;, "Ljava/util/List<[I>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 417
    .local v0, "simp":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 418
    .local v2, "range":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_0

    .line 419
    new-array v7, v3, [I

    aget v8, v2, v6

    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v4

    const v8, 0xffff

    aget v9, v2, v6

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v7, v5

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    .line 421
    .end local v2    # "range":[I
    .end local v6    # "j":I
    :cond_0
    goto :goto_0

    .line 422
    :cond_1
    const/4 v1, 0x0

    .local v1, "k1":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_6

    .line 423
    add-int/lit8 v2, v1, 0x1

    .local v2, "k2":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 424
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 425
    .local v6, "r1":[I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 426
    .local v7, "r2":[I
    aget v8, v6, v4

    aget v9, v7, v4

    if-lt v8, v9, :cond_2

    aget v8, v6, v4

    aget v9, v7, v5

    if-le v8, v9, :cond_3

    :cond_2
    aget v8, v6, v5

    aget v9, v7, v4

    if-lt v8, v9, :cond_4

    aget v8, v6, v4

    aget v9, v7, v5

    if-gt v8, v9, :cond_4

    .line 427
    :cond_3
    aget v8, v6, v4

    aget v9, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v6, v4

    .line 428
    aget v8, v6, v5

    aget v9, v7, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v6, v5

    .line 429
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 430
    add-int/lit8 v2, v2, -0x1

    .line 423
    .end local v6    # "r1":[I
    .end local v7    # "r2":[I
    :cond_4
    add-int/2addr v2, v5

    goto :goto_3

    .line 422
    .end local v2    # "k2":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 434
    .end local v1    # "k1":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    .line 435
    .local v1, "s":[I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 436
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 437
    .local v3, "r":[I
    mul-int/lit8 v6, v2, 0x2

    aget v7, v3, v4

    aput v7, v1, v6

    .line 438
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    aget v7, v3, v5

    aput v7, v1, v6

    .line 435
    .end local v3    # "r":[I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 440
    .end local v2    # "k":I
    :cond_7
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->close()V

    .line 375
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    .line 376
    return-void
.end method

.method public getActiveCmap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->getCmapTable()Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;

    move-result-object v0

    .line 144
    .local v0, "cmaps":Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmapExt:Ljava/util/Map;

    return-object v1

    .line 146
    :cond_0
    iget-boolean v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    return-object v1

    .line 148
    :cond_1
    iget-boolean v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->fontSpecific:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    return-object v1

    .line 150
    :cond_2
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap31:Ljava/util/Map;

    return-object v1

    .line 153
    :cond_3
    iget-object v1, v0, Lcom/itextpdf/io/font/OpenTypeParser$CmapTable;->cmap10:Ljava/util/Map;

    return-object v1
.end method

.method public getCodePagesSupported()[Ljava/lang/String;
    .locals 13

    .line 347
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->getOs_2Table()Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    move-result-object v0

    iget v0, v0, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange2:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v2}, Lcom/itextpdf/io/font/OpenTypeParser;->getOs_2Table()Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;

    move-result-object v2

    iget v2, v2, Lcom/itextpdf/io/font/OpenTypeParser$WindowsMetrics;->ulCodePageRange1:I

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 348
    .local v0, "cp":J
    const/4 v2, 0x0

    .line 349
    .local v2, "count":I
    const-wide/16 v3, 0x1

    .line 350
    .local v3, "bit":J
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    const-wide/16 v6, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x1

    if-ge v5, v8, :cond_1

    .line 351
    and-long v10, v0, v3

    cmp-long v6, v10, v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/itextpdf/io/font/constants/TrueTypeCodePages;->get(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 353
    :cond_0
    shl-long/2addr v3, v9

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 355
    .end local v5    # "k":I
    :cond_1
    new-array v5, v2, [Ljava/lang/String;

    .line 356
    .local v5, "ret":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 357
    const-wide/16 v3, 0x1

    .line 358
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    if-ge v10, v8, :cond_3

    .line 359
    and-long v11, v0, v3

    cmp-long v11, v11, v6

    if-eqz v11, :cond_2

    invoke-static {v10}, Lcom/itextpdf/io/font/constants/TrueTypeCodePages;->get(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 360
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "count":I
    .local v11, "count":I
    invoke-static {v10}, Lcom/itextpdf/io/font/constants/TrueTypeCodePages;->get(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v2

    move v2, v11

    .line 361
    .end local v11    # "count":I
    .restart local v2    # "count":I
    :cond_2
    shl-long/2addr v3, v9

    .line 358
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 363
    .end local v10    # "k":I
    :cond_3
    return-object v5
.end method

.method public getDirectoryOffset()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->directoryOffset:I

    return v0
.end method

.method public getFontStreamBytes()[B
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B

    if-eqz v0, :cond_0

    .line 159
    return-object v0

    .line 161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->isCff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->readCffFont()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->getFullFont()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    nop

    .line 170
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B

    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontStreamBytes:[B

    .line 168
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getGdefTable()Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    return-object v0
.end method

.method public getGposTable()Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gposTable:Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;

    return-object v0
.end method

.method public getGsubTable()Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gsubTable:Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;

    return-object v0
.end method

.method public getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
    .locals 3
    .param p1, "first"    # Lcom/itextpdf/io/font/otf/Glyph;
    .param p2, "second"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 132
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {p1}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-virtual {p2}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v0

    return v0

    .line 133
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPdfFontFlags()I
    .locals 3

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "flags":I
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->isFixedPitch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    or-int/lit8 v0, v0, 0x1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/TrueTypeFont;->isFontSpecific()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    const/16 v1, 0x20

    :goto_0
    or-int/2addr v0, v1

    .line 180
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->isItalic()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    or-int/lit8 v0, v0, 0x40

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->isBold()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontWeight()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_4

    .line 184
    :cond_3
    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    .line 186
    :cond_4
    return v0
.end method

.method public getSubset(Ljava/util/Set;Z)[B
    .locals 3
    .param p2, "subset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)[B"
        }
    .end annotation

    .line 213
    .local p1, "glyphs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/font/OpenTypeParser;->getSubset(Ljava/util/Set;Z)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasKernPairs()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->kerning:Lcom/itextpdf/io/util/IntHashtable;

    invoke-virtual {v0}, Lcom/itextpdf/io/util/IntHashtable;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontProgram"    # Ljava/lang/String;

    .line 368
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->fileName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCff()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    invoke-virtual {v0}, Lcom/itextpdf/io/font/OpenTypeParser;->isCff()Z

    move-result v0

    return v0
.end method

.method protected readGdefTable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "GDEF"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 221
    .local v0, "gdef":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 222
    new-instance v2, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v3, v3, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v1, v0, v1

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V

    iput-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    goto :goto_0

    .line 224
    :cond_0
    new-instance v2, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    iget-object v3, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v3, v3, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v2, v3, v1}, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;I)V

    iput-object v2, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;->readTable()V

    .line 227
    return-void
.end method

.method protected readGposTable()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "GPOS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 238
    .local v0, "gpos":[I
    if-eqz v0, :cond_0

    .line 239
    new-instance v7, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v2, v1, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getUnitsPerEm()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;ILcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;Ljava/util/Map;I)V

    iput-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gposTable:Lcom/itextpdf/io/font/otf/GlyphPositioningTableReader;

    .line 241
    :cond_0
    return-void
.end method

.method protected readGsubTable()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v0, v0, Lcom/itextpdf/io/font/OpenTypeParser;->tables:Ljava/util/Map;

    const-string v1, "GSUB"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 231
    .local v0, "gsub":[I
    if-eqz v0, :cond_0

    .line 232
    new-instance v7, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontParser:Lcom/itextpdf/io/font/OpenTypeParser;

    iget-object v2, v1, Lcom/itextpdf/io/font/OpenTypeParser;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v4, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gdefTable:Lcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;

    iget-object v5, p0, Lcom/itextpdf/io/font/TrueTypeFont;->codeToGlyph:Ljava/util/Map;

    iget-object v1, p0, Lcom/itextpdf/io/font/TrueTypeFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontMetrics;->getUnitsPerEm()I

    move-result v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;ILcom/itextpdf/io/font/otf/OpenTypeGdefTableReader;Ljava/util/Map;I)V

    iput-object v7, p0, Lcom/itextpdf/io/font/TrueTypeFont;->gsubTable:Lcom/itextpdf/io/font/otf/GlyphSubstitutionTableReader;

    .line 234
    :cond_0
    return-void
.end method

.method public updateUsedGlyphs(Ljava/util/SortedSet;ZLjava/util/List;)V
    .locals 6
    .param p2, "subset"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    .line 389
    .local p1, "usedGlyphs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    .local p3, "subsetRanges":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz p3, :cond_0

    .line 390
    invoke-static {p3}, Lcom/itextpdf/io/font/TrueTypeFont;->toCompactRange(Ljava/util/List;)[I

    move-result-object v0

    .local v0, "compactRange":[I
    goto :goto_0

    .line 391
    .end local v0    # "compactRange":[I
    :cond_0
    if-nez p2, :cond_1

    .line 392
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .restart local v0    # "compactRange":[I
    goto :goto_0

    .line 394
    .end local v0    # "compactRange":[I
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 397
    .restart local v0    # "compactRange":[I
    :goto_0
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 398
    aget v2, v0, v1

    .line 399
    .local v2, "from":I
    add-int/lit8 v3, v1, 0x1

    aget v3, v0, v3

    .line 400
    .local v3, "to":I
    move v4, v2

    .local v4, "glyphId":I
    :goto_2
    if-gt v4, v3, :cond_3

    .line 401
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/TrueTypeFont;->getGlyphByCode(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 402
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 397
    .end local v2    # "from":I
    .end local v3    # "to":I
    .end local v4    # "glyphId":I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 406
    .end local v1    # "k":I
    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0xffff
    .end array-data
.end method
