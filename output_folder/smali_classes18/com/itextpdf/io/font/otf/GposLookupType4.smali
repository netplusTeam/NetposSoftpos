.class public Lcom/itextpdf/io/font/otf/GposLookupType4;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GposLookupType4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7a688c5cc04e20d2L


# instance fields
.field private final marksbases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;",
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

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->marksbases:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GposLookupType4;->readSubTables()V

    .line 65
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

    .line 126
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 129
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    .line 130
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    add-int/2addr v0, p1

    .line 131
    .local v0, "markCoverageLocation":I
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    add-int/2addr v1, p1

    .line 132
    .local v1, "baseCoverageLocation":I
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 133
    .local v2, "classCount":I
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    add-int/2addr v3, p1

    .line 134
    .local v3, "markArrayLocation":I
    iget-object v4, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    add-int/2addr v4, p1

    .line 135
    .local v4, "baseArrayLocation":I
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v0}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v5

    .line 136
    .local v5, "markCoverage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v6, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v6

    .line 137
    .local v6, "baseCoverage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {v7, v3}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readMarkArray(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)Ljava/util/List;

    move-result-object v7

    .line 138
    .local v7, "markRecords":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/OtfMarkRecord;>;"
    new-instance v8, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;

    invoke-direct {v8}, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;-><init>()V

    .line 139
    .local v8, "markToBase":Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 140
    iget-object v10, v8, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;->marks:Ljava/util/Map;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 142
    .end local v9    # "k":I
    :cond_0
    iget-object v9, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-static {v9, v2, v4}, Lcom/itextpdf/io/font/otf/OtfReadCommon;->readBaseArray(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;II)Ljava/util/List;

    move-result-object v9

    .line 143
    .local v9, "baseArray":Ljava/util/List;, "Ljava/util/List<[Lcom/itextpdf/io/font/otf/GposAnchor;>;"
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 144
    iget-object v11, v8, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;->bases:Ljava/util/Map;

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 146
    .end local v10    # "k":I
    :cond_1
    iget-object v10, p0, Lcom/itextpdf/io/font/otf/GposLookupType4;->marksbases:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 20
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 70
    return v4

    .line 71
    :cond_0
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v3

    iget v5, v0, Lcom/itextpdf/io/font/otf/GposLookupType4;->lookupFlag:I

    invoke-virtual {v2, v3, v5}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->isSkip(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 73
    return v4

    .line 76
    :cond_1
    const/4 v2, 0x0

    .line 77
    .local v2, "changed":Z
    const/4 v3, 0x0

    .line 78
    .local v3, "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GposLookupType4;->marksbases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;

    .line 79
    .local v5, "mb":Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;
    iget-object v6, v5, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;->marks:Ljava/util/Map;

    iget v7, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {v1, v7}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/io/font/otf/OtfMarkRecord;

    .line 80
    .local v6, "omr":Lcom/itextpdf/io/font/otf/OtfMarkRecord;
    if-nez v6, :cond_2

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    if-nez v3, :cond_6

    .line 83
    new-instance v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v7}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 84
    .end local v3    # "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    .local v7, "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    iput v3, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 85
    iput-object v1, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 87
    :cond_3
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v8, v0, Lcom/itextpdf/io/font/otf/GposLookupType4;->lookupFlag:I

    invoke-virtual {v7, v3, v8}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->previousGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 88
    iget-object v3, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v3, :cond_4

    .line 89
    goto :goto_1

    .line 91
    :cond_4
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GposLookupType4;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v8, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v8}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getGlyphClass(I)I

    move-result v3

    const/4 v8, 0x3

    if-eq v3, v8, :cond_3

    .line 92
    nop

    .line 95
    :goto_1
    iget-object v3, v7, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    if-nez v3, :cond_5

    .line 96
    move-object v3, v7

    goto :goto_2

    .line 95
    :cond_5
    move-object v3, v7

    .line 98
    .end local v7    # "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    .restart local v3    # "gi":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    :cond_6
    iget-object v7, v5, Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;->bases:Ljava/util/Map;

    iget-object v8, v3, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->glyph:Lcom/itextpdf/io/font/otf/Glyph;

    invoke-virtual {v8}, Lcom/itextpdf/io/font/otf/Glyph;->getCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/io/font/otf/GposAnchor;

    .line 99
    .local v7, "gpas":[Lcom/itextpdf/io/font/otf/GposAnchor;
    if-nez v7, :cond_7

    .line 100
    goto :goto_0

    .line 101
    :cond_7
    iget v4, v6, Lcom/itextpdf/io/font/otf/OtfMarkRecord;->markClass:I

    .line 102
    .local v4, "markClass":I
    const/4 v8, 0x0

    .line 103
    .local v8, "xPlacement":I
    const/4 v9, 0x0

    .line 104
    .local v9, "yPlacement":I
    aget-object v10, v7, v4

    .line 105
    .local v10, "baseAnchor":Lcom/itextpdf/io/font/otf/GposAnchor;
    if-eqz v10, :cond_8

    .line 106
    iget v8, v10, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    .line 107
    iget v9, v10, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    .line 109
    :cond_8
    iget-object v11, v6, Lcom/itextpdf/io/font/otf/OtfMarkRecord;->anchor:Lcom/itextpdf/io/font/otf/GposAnchor;

    .line 110
    .local v11, "markAnchor":Lcom/itextpdf/io/font/otf/GposAnchor;
    if-eqz v11, :cond_9

    .line 111
    iget v12, v11, Lcom/itextpdf/io/font/otf/GposAnchor;->XCoordinate:I

    sub-int/2addr v8, v12

    .line 112
    iget v12, v11, Lcom/itextpdf/io/font/otf/GposAnchor;->YCoordinate:I

    sub-int/2addr v9, v12

    .line 114
    :cond_9
    iget v15, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    new-instance v14, Lcom/itextpdf/io/font/otf/Glyph;

    iget v12, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    invoke-virtual {v1, v12}, Lcom/itextpdf/io/font/otf/GlyphLine;->get(I)Lcom/itextpdf/io/font/otf/Glyph;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v12, v3, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    iget v0, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    sub-int v18, v12, v0

    move-object v12, v14

    move-object v0, v14

    move v14, v8

    move/from16 v19, v2

    move v2, v15

    .end local v2    # "changed":Z
    .local v19, "changed":Z
    move v15, v9

    invoke-direct/range {v12 .. v18}, Lcom/itextpdf/io/font/otf/Glyph;-><init>(Lcom/itextpdf/io/font/otf/Glyph;IIIII)V

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/io/font/otf/GlyphLine;->set(ILcom/itextpdf/io/font/otf/Glyph;)Lcom/itextpdf/io/font/otf/Glyph;

    .line 117
    const/4 v2, 0x1

    .line 118
    .end local v19    # "changed":Z
    .restart local v2    # "changed":Z
    goto :goto_2

    .line 78
    .end local v4    # "markClass":I
    .end local v5    # "mb":Lcom/itextpdf/io/font/otf/GposLookupType4$MarkToBase;
    .end local v6    # "omr":Lcom/itextpdf/io/font/otf/OtfMarkRecord;
    .end local v7    # "gpas":[Lcom/itextpdf/io/font/otf/GposAnchor;
    .end local v8    # "xPlacement":I
    .end local v9    # "yPlacement":I
    .end local v10    # "baseAnchor":Lcom/itextpdf/io/font/otf/GposAnchor;
    .end local v11    # "markAnchor":Lcom/itextpdf/io/font/otf/GposAnchor;
    :cond_a
    move/from16 v19, v2

    .line 120
    :goto_2
    iget v0, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 121
    return v2
.end method
