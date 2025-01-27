.class public Lcom/itextpdf/io/font/otf/GsubLookupType6;
.super Lcom/itextpdf/io/font/otf/GsubLookupType5;
.source "GsubLookupType6.java"


# static fields
.field private static final serialVersionUID:J = 0x561debc7ab116e84L


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 0
    .param p1, "openReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "lookupFlag"    # I
    .param p3, "subTableLocations"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/GsubLookupType5;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 65
    return-void
.end method


# virtual methods
.method protected readSubTableFormat1(I)V
    .locals 20
    .param p1, "subTableLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v2, "substMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;>;"
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 72
    .local v3, "coverageOffset":I
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 73
    .local v4, "chainSubRuleSetCount":I
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v4, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v5

    .line 75
    .local v5, "chainSubRuleSetOffsets":[I
    iget-object v6, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v7, v1, v3

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v6

    .line 76
    .local v6, "coverageGlyphIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 77
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v8, v8, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v9, v5, v7

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 78
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v8, v8, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 79
    .local v8, "chainSubRuleCount":I
    iget-object v9, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v10, v5, v7

    invoke-virtual {v9, v8, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v9

    .line 81
    .local v9, "chainSubRuleOffsets":[I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v10, "chainSubRuleSet":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v8, :cond_0

    .line 83
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v12, v12, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v13, v9, v11

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 84
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v12, v12, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 85
    .local v12, "backtrackGlyphCount":I
    iget-object v13, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v13, v12}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v13

    .line 86
    .local v13, "backtrackGlyphIds":[I
    iget-object v14, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v14, v14, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v14

    .line 87
    .local v14, "inputGlyphCount":I
    iget-object v15, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v1, v14, -0x1

    invoke-virtual {v15, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v1

    .line 88
    .local v1, "inputGlyphIds":[I
    iget-object v15, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v15, v15, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v15}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v15

    .line 89
    .local v15, "lookAheadGlyphCount":I
    move/from16 v16, v3

    .end local v3    # "coverageOffset":I
    .local v16, "coverageOffset":I
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v15}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v3

    .line 90
    .local v3, "lookAheadGlyphIds":[I
    move/from16 v17, v4

    .end local v4    # "chainSubRuleSetCount":I
    .local v17, "chainSubRuleSetCount":I
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 91
    .local v4, "substCount":I
    move-object/from16 v18, v5

    .end local v5    # "chainSubRuleSetOffsets":[I
    .local v18, "chainSubRuleSetOffsets":[I
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v4}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v5

    .line 93
    .local v5, "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    move/from16 v19, v4

    .end local v4    # "substCount":I
    .local v19, "substCount":I
    new-instance v4, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;

    invoke-direct {v4, v13, v1, v3, v5}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1$SubstRuleFormat1;-><init>([I[I[I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v1    # "inputGlyphIds":[I
    .end local v3    # "lookAheadGlyphIds":[I
    .end local v5    # "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    .end local v12    # "backtrackGlyphCount":I
    .end local v13    # "backtrackGlyphIds":[I
    .end local v14    # "inputGlyphCount":I
    .end local v15    # "lookAheadGlyphCount":I
    .end local v19    # "substCount":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    goto :goto_1

    .end local v16    # "coverageOffset":I
    .end local v17    # "chainSubRuleSetCount":I
    .end local v18    # "chainSubRuleSetOffsets":[I
    .local v3, "coverageOffset":I
    .local v4, "chainSubRuleSetCount":I
    .local v5, "chainSubRuleSetOffsets":[I
    :cond_0
    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    .line 95
    .end local v3    # "coverageOffset":I
    .end local v4    # "chainSubRuleSetCount":I
    .end local v5    # "chainSubRuleSetOffsets":[I
    .end local v11    # "j":I
    .restart local v16    # "coverageOffset":I
    .restart local v17    # "chainSubRuleSetCount":I
    .restart local v18    # "chainSubRuleSetOffsets":[I
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v8    # "chainSubRuleCount":I
    .end local v9    # "chainSubRuleOffsets":[I
    .end local v10    # "chainSubRuleSet":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    goto/16 :goto_0

    .end local v16    # "coverageOffset":I
    .end local v17    # "chainSubRuleSetCount":I
    .end local v18    # "chainSubRuleSetOffsets":[I
    .restart local v3    # "coverageOffset":I
    .restart local v4    # "chainSubRuleSetCount":I
    .restart local v5    # "chainSubRuleSetOffsets":[I
    :cond_1
    move/from16 v16, v3

    move/from16 v17, v4

    move-object/from16 v18, v5

    .line 98
    .end local v3    # "coverageOffset":I
    .end local v4    # "chainSubRuleSetCount":I
    .end local v5    # "chainSubRuleSetOffsets":[I
    .end local v7    # "i":I
    .restart local v16    # "coverageOffset":I
    .restart local v17    # "chainSubRuleSetCount":I
    .restart local v18    # "chainSubRuleSetOffsets":[I
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->subTables:Ljava/util/List;

    new-instance v3, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1;

    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->lookupFlag:I

    invoke-direct {v3, v4, v5, v2}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format1;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method protected readSubTableFormat2(I)V
    .locals 33
    .param p1, "subTableLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 104
    .local v2, "coverageOffset":I
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 105
    .local v3, "backtrackClassDefOffset":I
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 106
    .local v4, "inputClassDefOffset":I
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v5, v5, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    .line 107
    .local v5, "lookaheadClassDefOffset":I
    iget-object v6, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v6, v6, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 108
    .local v6, "chainSubClassSetCount":I
    iget-object v7, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v7, v6, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v7

    .line 110
    .local v7, "chainSubClassSetOffsets":[I
    new-instance v11, Ljava/util/HashSet;

    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v9, v1, v2

    invoke-virtual {v8, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v11, "coverageGlyphIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v9, v1, v3

    invoke-virtual {v8, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v15

    .line 112
    .local v15, "backtrackClassDefinition":Lcom/itextpdf/io/font/otf/OtfClass;
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v9, v1, v4

    invoke-virtual {v8, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v16

    .line 113
    .local v16, "inputClassDefinition":Lcom/itextpdf/io/font/otf/OtfClass;
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v9, v1, v5

    invoke-virtual {v8, v9}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v17

    .line 115
    .local v17, "lookaheadClassDefinition":Lcom/itextpdf/io/font/otf/OtfClass;
    new-instance v18, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;

    iget-object v9, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v10, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->lookupFlag:I

    move-object/from16 v8, v18

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Set;Lcom/itextpdf/io/font/otf/OtfClass;Lcom/itextpdf/io/font/otf/OtfClass;Lcom/itextpdf/io/font/otf/OtfClass;)V

    .line 118
    .local v8, "t":Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v9, "subClassSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v6, :cond_2

    .line 120
    const/4 v12, 0x0

    .line 121
    .local v12, "subClassSet":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    aget v13, v7, v10

    if-eqz v13, :cond_1

    .line 122
    iget-object v13, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v13, v13, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v14, v7, v10

    move/from16 v18, v2

    .end local v2    # "coverageOffset":I
    .local v18, "coverageOffset":I
    int-to-long v1, v14

    invoke-virtual {v13, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 123
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 124
    .local v1, "chainSubClassRuleCount":I
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v13, v7, v10

    invoke-virtual {v2, v1, v13}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v2

    .line 126
    .local v2, "chainSubClassRuleOffsets":[I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v13

    .line 127
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    if-ge v13, v1, :cond_0

    .line 129
    iget-object v14, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v14, v14, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move/from16 v25, v1

    .end local v1    # "chainSubClassRuleCount":I
    .local v25, "chainSubClassRuleCount":I
    aget v1, v2, v13

    move-object/from16 v26, v2

    .end local v2    # "chainSubClassRuleOffsets":[I
    .local v26, "chainSubClassRuleOffsets":[I
    int-to-long v1, v1

    invoke-virtual {v14, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 131
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 132
    .local v1, "backtrackClassCount":I
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v2, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v2

    .line 133
    .local v2, "backtrackClassIds":[I
    iget-object v14, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v14, v14, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v14}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v14

    .line 134
    .local v14, "inputClassCount":I
    move/from16 v27, v1

    .end local v1    # "backtrackClassCount":I
    .local v27, "backtrackClassCount":I
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    move/from16 v28, v3

    .end local v3    # "backtrackClassDefOffset":I
    .local v28, "backtrackClassDefOffset":I
    add-int/lit8 v3, v14, -0x1

    invoke-virtual {v1, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v1

    .line 135
    .local v1, "inputClassIds":[I
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 136
    .local v3, "lookAheadClassCount":I
    move/from16 v29, v4

    .end local v4    # "inputClassDefOffset":I
    .local v29, "inputClassDefOffset":I
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v4, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v4

    .line 137
    .local v4, "lookAheadClassIds":[I
    move/from16 v30, v3

    .end local v3    # "lookAheadClassCount":I
    .local v30, "lookAheadClassCount":I
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 138
    .local v3, "substCount":I
    move/from16 v31, v5

    .end local v5    # "lookaheadClassDefOffset":I
    .local v31, "lookaheadClassDefOffset":I
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v5

    .line 140
    .local v5, "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    new-instance v32, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;

    move-object/from16 v19, v32

    move-object/from16 v20, v8

    move-object/from16 v21, v2

    move-object/from16 v22, v1

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v24}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;-><init>(Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;[I[I[I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    .line 141
    .local v19, "rule":Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;
    move-object/from16 v20, v1

    move-object/from16 v1, v19

    .end local v19    # "rule":Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;
    .local v1, "rule":Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;
    .local v20, "inputClassIds":[I
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v1    # "rule":Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2$SubstRuleFormat2;
    .end local v2    # "backtrackClassIds":[I
    .end local v3    # "substCount":I
    .end local v4    # "lookAheadClassIds":[I
    .end local v5    # "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    .end local v14    # "inputClassCount":I
    .end local v20    # "inputClassIds":[I
    .end local v27    # "backtrackClassCount":I
    .end local v30    # "lookAheadClassCount":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v5, v31

    goto :goto_1

    .end local v25    # "chainSubClassRuleCount":I
    .end local v26    # "chainSubClassRuleOffsets":[I
    .end local v28    # "backtrackClassDefOffset":I
    .end local v29    # "inputClassDefOffset":I
    .end local v31    # "lookaheadClassDefOffset":I
    .local v1, "chainSubClassRuleCount":I
    .local v2, "chainSubClassRuleOffsets":[I
    .local v3, "backtrackClassDefOffset":I
    .local v4, "inputClassDefOffset":I
    .local v5, "lookaheadClassDefOffset":I
    :cond_0
    move/from16 v25, v1

    move-object/from16 v26, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v31, v5

    .end local v1    # "chainSubClassRuleCount":I
    .end local v2    # "chainSubClassRuleOffsets":[I
    .end local v3    # "backtrackClassDefOffset":I
    .end local v4    # "inputClassDefOffset":I
    .end local v5    # "lookaheadClassDefOffset":I
    .restart local v25    # "chainSubClassRuleCount":I
    .restart local v26    # "chainSubClassRuleOffsets":[I
    .restart local v28    # "backtrackClassDefOffset":I
    .restart local v29    # "inputClassDefOffset":I
    .restart local v31    # "lookaheadClassDefOffset":I
    goto :goto_2

    .line 121
    .end local v13    # "j":I
    .end local v18    # "coverageOffset":I
    .end local v25    # "chainSubClassRuleCount":I
    .end local v26    # "chainSubClassRuleOffsets":[I
    .end local v28    # "backtrackClassDefOffset":I
    .end local v29    # "inputClassDefOffset":I
    .end local v31    # "lookaheadClassDefOffset":I
    .local v2, "coverageOffset":I
    .restart local v3    # "backtrackClassDefOffset":I
    .restart local v4    # "inputClassDefOffset":I
    .restart local v5    # "lookaheadClassDefOffset":I
    :cond_1
    move/from16 v18, v2

    move/from16 v28, v3

    move/from16 v29, v4

    move/from16 v31, v5

    .line 144
    .end local v2    # "coverageOffset":I
    .end local v3    # "backtrackClassDefOffset":I
    .end local v4    # "inputClassDefOffset":I
    .end local v5    # "lookaheadClassDefOffset":I
    .restart local v18    # "coverageOffset":I
    .restart local v28    # "backtrackClassDefOffset":I
    .restart local v29    # "inputClassDefOffset":I
    .restart local v31    # "lookaheadClassDefOffset":I
    :goto_2
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v12    # "subClassSet":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v28

    move/from16 v4, v29

    move/from16 v5, v31

    goto/16 :goto_0

    .line 147
    .end local v10    # "i":I
    .end local v18    # "coverageOffset":I
    .end local v28    # "backtrackClassDefOffset":I
    .end local v29    # "inputClassDefOffset":I
    .end local v31    # "lookaheadClassDefOffset":I
    .restart local v2    # "coverageOffset":I
    .restart local v3    # "backtrackClassDefOffset":I
    .restart local v4    # "inputClassDefOffset":I
    .restart local v5    # "lookaheadClassDefOffset":I
    :cond_2
    invoke-virtual {v8, v9}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format2;->setSubClassSets(Ljava/util/List;)V

    .line 148
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->subTables:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method protected readSubTableFormat3(I)V
    .locals 17
    .param p1, "subTableLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 154
    .local v2, "backtrackGlyphCount":I
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v2, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v3

    .line 155
    .local v3, "backtrackCoverageOffsets":[I
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 156
    .local v4, "inputGlyphCount":I
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v4, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v5

    .line 157
    .local v5, "inputCoverageOffsets":[I
    iget-object v6, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v6, v6, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v6

    .line 158
    .local v6, "lookaheadGlyphCount":I
    iget-object v7, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v7, v6, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v7

    .line 159
    .local v7, "lookaheadCoverageOffsets":[I
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v8, v8, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 160
    .local v8, "substCount":I
    iget-object v9, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v9, v8}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v9

    .line 162
    .local v9, "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v10, "backtrackCoverages":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v11, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v11, v3, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 165
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v11, "inputCoverages":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v12, v5, v11}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 168
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v12, "lookaheadCoverages":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v13, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v13, v7, v12}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 171
    new-instance v13, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;

    invoke-direct {v13, v10, v11, v12, v9}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    .line 173
    .local v13, "rule":Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;
    iget-object v14, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->subTables:Ljava/util/List;

    new-instance v15, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;

    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    move/from16 v16, v2

    .end local v2    # "backtrackGlyphCount":I
    .local v16, "backtrackGlyphCount":I
    iget v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType6;->lookupFlag:I

    invoke-direct {v15, v1, v2, v13}, Lcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILcom/itextpdf/io/font/otf/lookuptype6/SubTableLookup6Format3$SubstRuleFormat3;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method
