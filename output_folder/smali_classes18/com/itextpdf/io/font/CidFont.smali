.class public Lcom/itextpdf/io/font/CidFont;
.super Lcom/itextpdf/io/font/FontProgram;
.source "CidFont.java"


# static fields
.field private static final serialVersionUID:J = 0x4b907bbd9cbb8d63L


# instance fields
.field private compatibleCmaps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fontName:Ljava/lang/String;

.field private pdfFontFlags:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "fontName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "cmaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/io/font/CidFont;->fontName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/itextpdf/io/font/CidFont;->compatibleCmaps:Ljava/util/Set;

    .line 67
    new-instance v0, Lcom/itextpdf/io/font/FontNames;

    invoke-direct {v0}, Lcom/itextpdf/io/font/FontNames;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    .line 68
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/CidFont;->initializeCidFontNameAndStyle(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/itextpdf/io/font/CidFontProperties;->getAllFonts()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 70
    .local v0, "fontDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/CidFont;->initializeCidFontProperties(Ljava/util/Map;)V

    .line 74
    return-void

    .line 71
    :cond_0
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "There is no such predefined font: {0}"

    invoke-direct {v1, v2}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/IOException;

    move-result-object v1

    throw v1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .param p1, "fontName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p2, "cmaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "fontDescription":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/itextpdf/io/font/FontProgram;-><init>()V

    .line 77
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/CidFont;->initializeCidFontNameAndStyle(Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p3}, Lcom/itextpdf/io/font/CidFont;->initializeCidFontProperties(Ljava/util/Map;)V

    .line 79
    iput-object p2, p0, Lcom/itextpdf/io/font/CidFont;->compatibleCmaps:Ljava/util/Set;

    .line 80
    return-void
.end method

.method private static getCompatibleUniMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "registry"    # Ljava/lang/String;

    .line 158
    const-string v0, ""

    .line 159
    .local v0, "uniMap":Ljava/lang/String;
    invoke-static {}, Lcom/itextpdf/io/font/CidFontProperties;->getRegistryNames()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Uni"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 160
    .local v2, "name":Ljava/lang/String;
    move-object v0, v2

    .line 161
    const-string v3, "H"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    goto :goto_1

    .line 164
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 165
    :cond_1
    :goto_1
    return-object v0
.end method

.method private initializeCidFontNameAndStyle(Ljava/lang/String;)V
    .locals 7
    .param p1, "fontName"    # Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/itextpdf/io/font/CidFont;->trimFontStyle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "nameBase":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/io/font/FontNames;->setStyle(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/font/FontNames;->setFontName(Ljava/lang/String;)V

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    const/4 v2, 0x1

    new-array v3, v2, [[Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    aput-object v6, v4, v2

    const/4 v2, 0x2

    aput-object v6, v4, v2

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/itextpdf/io/font/CidFont;->fontNames:Lcom/itextpdf/io/font/FontNames;

    invoke-virtual {v6}, Lcom/itextpdf/io/font/FontNames;->getFontName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/font/FontNames;->setFullName([[Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private initializeCidFontProperties(Ljava/util/Map;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p1, "fontDesc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->fontIdentification:Lcom/itextpdf/io/font/FontIdentification;

    const-string v3, "Panose"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontIdentification;->setPanose(Ljava/lang/String;)V

    .line 123
    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v3, "ItalicAngle"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontMetrics;->setItalicAngle(F)V

    .line 124
    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v3, "CapHeight"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontMetrics;->setCapHeight(I)V

    .line 125
    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v3, "Ascent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontMetrics;->setTypoAscender(I)V

    .line 126
    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v3, "Descent"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontMetrics;->setTypoDescender(I)V

    .line 127
    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    const-string v3, "StemV"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/io/font/FontMetrics;->setStemV(I)V

    .line 128
    const-string v2, "Flags"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/itextpdf/io/font/CidFont;->pdfFontFlags:I

    .line 129
    const-string v2, "FontBBox"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    .local v2, "fontBBox":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, " []\r\n\t\u000c"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v3, "tk":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 132
    .local v4, "llx":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 133
    .local v5, "lly":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 134
    .local v6, "urx":I
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 135
    .local v7, "ury":I
    iget-object v8, v0, Lcom/itextpdf/io/font/CidFont;->fontMetrics:Lcom/itextpdf/io/font/FontMetrics;

    int-to-float v9, v4

    int-to-float v10, v5

    int-to-float v11, v6

    int-to-float v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/itextpdf/io/font/FontMetrics;->updateBbox(FFFF)V

    .line 136
    const-string v8, "Registry"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/itextpdf/io/font/CidFont;->registry:Ljava/lang/String;

    .line 137
    iget-object v8, v0, Lcom/itextpdf/io/font/CidFont;->registry:Ljava/lang/String;

    invoke-static {v8}, Lcom/itextpdf/io/font/CidFont;->getCompatibleUniMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "uniMap":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 139
    const-string v9, "W"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/io/util/IntHashtable;

    .line 140
    .local v9, "metrics":Lcom/itextpdf/io/util/IntHashtable;
    invoke-static {v8}, Lcom/itextpdf/io/font/FontCache;->getCid2UniCmap(Ljava/lang/String;)Lcom/itextpdf/io/font/cmap/CMapCidUni;

    move-result-object v10

    .line 141
    .local v10, "cid2Uni":Lcom/itextpdf/io/font/cmap/CMapCidUni;
    const/4 v11, 0x0

    iput v11, v0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    .line 142
    invoke-virtual {v10}, Lcom/itextpdf/io/font/cmap/CMapCidUni;->getCids()[I

    move-result-object v12

    array-length v13, v12

    :goto_0
    if-ge v11, v13, :cond_1

    aget v14, v12, v11

    .line 143
    .local v14, "cid":I
    invoke-virtual {v10, v14}, Lcom/itextpdf/io/font/cmap/CMapCidUni;->lookup(I)I

    move-result v15

    .line 144
    .local v15, "uni":I
    invoke-virtual {v9, v14}, Lcom/itextpdf/io/util/IntHashtable;->containsKey(I)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v9, v14}, Lcom/itextpdf/io/util/IntHashtable;->get(I)I

    move-result v16

    goto :goto_1

    :cond_0
    const/16 v16, 0x3e8

    :goto_1
    move/from16 v17, v16

    .line 145
    .local v17, "width":I
    new-instance v1, Lcom/itextpdf/io/font/otf/Glyph;

    move-object/from16 v16, v2

    move/from16 v2, v17

    .end local v17    # "width":I
    .local v2, "width":I
    .local v16, "fontBBox":Ljava/lang/String;
    invoke-direct {v1, v14, v2, v15}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(III)V

    .line 146
    .local v1, "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    nop

    .end local v2    # "width":I
    .restart local v17    # "width":I
    iget v2, v0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    invoke-virtual {v1}, Lcom/itextpdf/io/font/otf/Glyph;->getWidth()I

    move-result v18

    add-int v2, v2, v18

    iput v2, v0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    .line 147
    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->codeToGlyph:Ljava/util/Map;

    move-object/from16 v18, v3

    .end local v3    # "tk":Ljava/util/StringTokenizer;
    .local v18, "tk":Ljava/util/StringTokenizer;
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->unicodeToGlyph:Ljava/util/Map;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v1    # "glyph":Lcom/itextpdf/io/font/otf/Glyph;
    .end local v14    # "cid":I
    .end local v15    # "uni":I
    .end local v17    # "width":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_0

    .line 150
    .end local v16    # "fontBBox":Ljava/lang/String;
    .end local v18    # "tk":Ljava/util/StringTokenizer;
    .local v2, "fontBBox":Ljava/lang/String;
    .restart local v3    # "tk":Ljava/util/StringTokenizer;
    :cond_1
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .end local v2    # "fontBBox":Ljava/lang/String;
    .end local v3    # "tk":Ljava/util/StringTokenizer;
    .restart local v16    # "fontBBox":Ljava/lang/String;
    .restart local v18    # "tk":Ljava/util/StringTokenizer;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CidFont;->fixSpaceIssue()V

    .line 151
    iget-object v1, v0, Lcom/itextpdf/io/font/CidFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 152
    iget v1, v0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    iget-object v2, v0, Lcom/itextpdf/io/font/CidFont;->codeToGlyph:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    div-int/2addr v1, v2

    iput v1, v0, Lcom/itextpdf/io/font/CidFont;->avgWidth:I

    goto :goto_2

    .line 138
    .end local v9    # "metrics":Lcom/itextpdf/io/util/IntHashtable;
    .end local v10    # "cid2Uni":Lcom/itextpdf/io/font/cmap/CMapCidUni;
    .end local v16    # "fontBBox":Ljava/lang/String;
    .end local v18    # "tk":Ljava/util/StringTokenizer;
    .restart local v2    # "fontBBox":Ljava/lang/String;
    .restart local v3    # "tk":Ljava/util/StringTokenizer;
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    .line 155
    .end local v2    # "fontBBox":Ljava/lang/String;
    .end local v3    # "tk":Ljava/util/StringTokenizer;
    .restart local v16    # "fontBBox":Ljava/lang/String;
    .restart local v18    # "tk":Ljava/util/StringTokenizer;
    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public compatibleWith(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cmap"    # Ljava/lang/String;

    .line 83
    const-string v0, "Identity-H"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "Identity-V"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->compatibleCmaps:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 84
    :cond_2
    :goto_1
    return v1
.end method

.method public getKerning(Lcom/itextpdf/io/font/otf/Glyph;Lcom/itextpdf/io/font/otf/Glyph;)I
    .locals 1
    .param p1, "glyph1"    # Lcom/itextpdf/io/font/otf/Glyph;
    .param p2, "glyph2"    # Lcom/itextpdf/io/font/otf/Glyph;

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getPdfFontFlags()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/itextpdf/io/font/CidFont;->pdfFontFlags:I

    return v0
.end method

.method public isBuiltWith(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fontName"    # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/itextpdf/io/font/CidFont;->fontName:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFontSpecific()Z
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method
