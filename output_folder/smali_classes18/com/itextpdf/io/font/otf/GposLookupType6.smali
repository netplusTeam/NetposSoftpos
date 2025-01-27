.class public Lcom/itextpdf/io/font/otf/GposLookupType6;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GposLookupType6.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1eb88876099d8864L


# instance fields
.field private final marksbases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 1
    .param p1, "openReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "lookupFlag"    # I
    .param p3, "subTableLocations"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->marksbases:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GposLookupType6;->readSubTables()V

    .line 64
    return-void
.end method


# virtual methods
.method protected readSubTable(I)V
    .locals 14
    .param p1, "subTableLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 132
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 133
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, p1

    .line 134
    .local v0, "markCoverageLocation":I
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    add-int/2addr v1, p1

    .line 135
    .local v1, "baseCoverageLocation":I
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 136
    .local v2, "classCount":I
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    add-int/2addr v3, p1

    .line 137
    .local v3, "markArrayLocation":I
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    add-int/2addr v4, p1

    .line 138
    .local v4, "baseArrayLocation":I
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v5

    .line 139
    .local v5, "markCoverage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v6, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v6

    .line 140
    .local v6, "baseCoverage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {v7, v3}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readMarkArray(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)Ljava/util/List;

    move-result-object v7

    .line 141
    .local v7, "markRecords":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/OtfMarkRecord;>;"
    new-instance v8, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;-><init>(Lcom/itextpdf/io/font/otf/GposLookupType6$1;)V

    .line 142
    .local v8, "markToBaseMark":Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 143
    iget-object v10, v8, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->marks:Ljava/util/Map;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 145
    .end local v9    # "k":I
    :cond_0
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {v9, v2, v4}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readBaseArray(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;II)Ljava/util/List;

    move-result-object v9

    .line 146
    .local v9, "baseArray":Ljava/util/List;, "Ljava/util/List<[Lcom/itextpdf/io/font/otf/GposAnchor;>;"
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 147
    iget-object v11, v8, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->baseMarks:Ljava/util/Map;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 149
    .end local v10    # "k":I
    :cond_1
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GposLookupType6;->marksbases:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 19
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 69
    return v4

    .line 70
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    iget v5, v0, Lcom/itextpdf/io/font/otf/GposLookupType6;->lookupFlag:I

    invoke-virtual {v2, v3, v5}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 71
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 72
    return v4

    .line 75
    :cond_1
    const/4 v2, 0x0

    .line 76
    .local v2, "changed":Z
    const/4 v4, 0x0

    .line 77
    .local v4, "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GposLookupType6;->marksbases:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;

    .line 78
    .local v6, "mb":Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;
    iget-object v7, v6, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->marks:Ljava/util/Map;

    iget v8, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {v1, v8}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/io/font/otf/OtfMarkRecord;

    .line 79
    .local v7, "omr":Lcom/itextpdf/io/font/otf/OtfMarkRecord;
    if-nez v7, :cond_2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    if-nez v4, :cond_9

    .line 82
    new-instance v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v8}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 83
    .end local v4    # "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    .local v8, "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    iget v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v4, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 84
    iput-object v1, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 86
    :goto_1
    iget v4, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 88
    .local v4, "prev":I
    const/4 v9, 0x0

    .line 89
    .local v9, "foundBaseGlyph":Z
    iget-object v10, v0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v11, v0, Lcom/itextpdf/io/font/otf/GposLookupType6;->lookupFlag:I

    invoke-virtual {v8, v10, v11}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->previousGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 90
    iget v10, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4

    .line 91
    iget v10, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .local v10, "i":I
    :goto_2
    if-ge v10, v4, :cond_4

    .line 92
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GposLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v1, v10}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyphClass(I)I

    move-result v11

    if-ne v11, v3, :cond_3

    .line 93
    const/4 v9, 0x1

    .line 94
    goto :goto_3

    .line 91
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 98
    .end local v10    # "i":I
    :cond_4
    :goto_3
    if-eqz v9, :cond_5

    .line 99
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    .line 100
    goto :goto_4

    .line 102
    :cond_5
    iget-object v10, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v10, :cond_6

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    iget-object v10, v6, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->baseMarks:Ljava/util/Map;

    iget-object v11, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v11}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 105
    nop

    .line 107
    .end local v4    # "prev":I
    .end local v9    # "foundBaseGlyph":Z
    :goto_4
    iget-object v4, v8, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v4, :cond_7

    .line 108
    move-object v4, v8

    goto :goto_6

    .line 107
    :cond_7
    move-object v4, v8

    goto :goto_5

    .line 106
    :cond_8
    goto :goto_1

    .line 110
    .end local v8    # "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    .local v4, "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    :cond_9
    :goto_5
    iget-object v8, v6, Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;->baseMarks:Ljava/util/Map;

    iget-object v9, v4, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v9}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/itextpdf/io/font/otf/GposAnchor;

    .line 111
    .local v8, "gpas":[Lcom/itextpdf/io/font/otf/GposAnchor;
    if-nez v8, :cond_a

    .line 112
    goto/16 :goto_0

    .line 113
    :cond_a
    iget v5, v7, Lcom/itextpdf/io/font/otf/OtfMarkRecord;->markClass:I

    .line 114
    .local v5, "markClass":I
    aget-object v9, v8, v5

    .line 115
    .local v9, "baseAnchor":Lcom/itextpdf/io/font/otf/GposAnchor;
    iget-object v10, v7, Lcom/itextpdf/io/font/otf/OtfMarkRecord;->anchor:Lcom/itextpdf/io/font/otf/GposAnchor;

    .line 116
    .local v10, "markAnchor":Lcom/itextpdf/io/font/otf/GposAnchor;
    iget v11, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    new-instance v15, Lcom/itextpdf/io/font/otf/Glyph;

    iget v12, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {v1, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v13

    iget v12, v10, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    neg-int v12, v12

    iget v14, v9, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    add-int/2addr v14, v12

    iget v12, v10, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    neg-int v12, v12

    iget v3, v9, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    add-int/2addr v3, v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v12, v4, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    iget v0, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    sub-int v18, v12, v0

    move-object v12, v15

    move-object v0, v15

    move v15, v3

    invoke-direct/range {v12 .. v18}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;IIIII)V

    invoke-virtual {v1, v11, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    .line 120
    const/4 v2, 0x1

    .line 121
    nop

    .line 123
    .end local v5    # "markClass":I
    .end local v6    # "mb":Lcom/itextpdf/io/font/otf/GposLookupType6$MarkToBaseMark;
    .end local v7    # "omr":Lcom/itextpdf/io/font/otf/OtfMarkRecord;
    .end local v8    # "gpas":[Lcom/itextpdf/io/font/otf/GposAnchor;
    .end local v9    # "baseAnchor":Lcom/itextpdf/io/font/otf/GposAnchor;
    .end local v10    # "markAnchor":Lcom/itextpdf/io/font/otf/GposAnchor;
    :cond_b
    :goto_6
    iget v0, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iput v0, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 124
    return v2
.end method
