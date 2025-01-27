.class public Lcom/itextpdf/io/font/otf/GsubLookupType5;
.super Lcom/itextpdf/io/font/otf/OpenTableLookup;
.source "GsubLookupType5.java"


# static fields
.field private static final serialVersionUID:J = 0x14ced2e1b947ce98L


# instance fields
.field protected subTables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/io/font/otf/ContextualSubTable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V
    .locals 1
    .param p1, "openReader"    # Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;
    .param p2, "lookupFlag"    # I
    .param p3, "subTableLocations"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/io/font/otf/OpenTableLookup;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I[I)V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/itextpdf/io/font/otf/GsubLookupType5;->readSubTables()V

    .line 69
    return-void
.end method


# virtual methods
.method protected readSubTable(I)V
    .locals 4
    .param p1, "subTableLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 115
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0

    .line 116
    .local v0, "substFormat":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GsubLookupType5;->readSubTableFormat1(I)V

    goto :goto_0

    .line 118
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 119
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GsubLookupType5;->readSubTableFormat2(I)V

    goto :goto_0

    .line 120
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 121
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/otf/GsubLookupType5;->readSubTableFormat3(I)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad substFormat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readSubTableFormat1(I)V
    .locals 16
    .param p1, "subTableLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    move-object/from16 v0, p0

    move/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v2, "substMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;>;"
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 131
    .local v3, "coverageOffset":I
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 132
    .local v4, "subRuleSetCount":I
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v4, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v5

    .line 134
    .local v5, "subRuleSetOffsets":[I
    iget-object v6, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v7, v1, v3

    invoke-virtual {v6, v7}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v6

    .line 135
    .local v6, "coverageGlyphIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_1

    .line 136
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v8, v8, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v9, v5, v7

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 137
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v8, v8, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v8}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v8

    .line 138
    .local v8, "subRuleCount":I
    iget-object v9, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v10, v5, v7

    invoke-virtual {v9, v8, v10}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v9

    .line 140
    .local v9, "subRuleOffsets":[I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 141
    .local v10, "subRuleSet":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v8, :cond_0

    .line 142
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v12, v12, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v13, v9, v11

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 143
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v12, v12, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 144
    .local v12, "glyphCount":I
    iget-object v13, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v13, v13, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v13}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v13

    .line 145
    .local v13, "substCount":I
    iget-object v14, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int/lit8 v15, v12, -0x1

    invoke-virtual {v14, v15}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v14

    .line 146
    .local v14, "inputGlyphIds":[I
    iget-object v15, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v15, v13}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v15

    .line 148
    .local v15, "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format1$SubstRuleFormat1;

    invoke-direct {v1, v14, v15}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format1$SubstRuleFormat1;-><init>([I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .end local v12    # "glyphCount":I
    .end local v13    # "substCount":I
    .end local v14    # "inputGlyphIds":[I
    .end local v15    # "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    goto :goto_1

    .line 150
    .end local v11    # "j":I
    :cond_0
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v8    # "subRuleCount":I
    .end local v9    # "subRuleOffsets":[I
    .end local v10    # "subRuleSet":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    goto :goto_0

    .line 153
    .end local v7    # "i":I
    :cond_1
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    new-instance v7, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format1;

    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v9, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->lookupFlag:I

    invoke-direct {v7, v8, v9, v2}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format1;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Map;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method protected readSubTableFormat2(I)V
    .locals 19
    .param p1, "subTableLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 158
    .local v2, "coverageOffset":I
    iget-object v3, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v3, v3, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    .line 159
    .local v3, "classDefOffset":I
    iget-object v4, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v4, v4, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    .line 160
    .local v4, "subClassSetCount":I
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v4, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v5

    .line 162
    .local v5, "subClassSetOffsets":[I
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v8, v1, v2

    invoke-virtual {v7, v8}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverageFormat(I)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 163
    .local v6, "coverageGlyphIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v7, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    add-int v8, v1, v3

    invoke-virtual {v7, v8}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readClassDefinition(I)Lcom/itextpdf/io/font/otf/OtfClass;

    move-result-object v7

    .line 165
    .local v7, "classDefinition":Lcom/itextpdf/io/font/otf/OtfClass;
    new-instance v8, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;

    iget-object v9, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v10, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->lookupFlag:I

    invoke-direct {v8, v9, v10, v6, v7}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILjava/util/Set;Lcom/itextpdf/io/font/otf/OtfClass;)V

    .line 167
    .local v8, "t":Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v9, "subClassSets":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v4, :cond_2

    .line 169
    const/4 v11, 0x0

    .line 170
    .local v11, "subClassSet":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    aget v12, v5, v10

    if-eqz v12, :cond_1

    .line 171
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v12, v12, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v13, v5, v10

    int-to-long v13, v13

    invoke-virtual {v12, v13, v14}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 172
    iget-object v12, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v12, v12, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v12}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v12

    .line 173
    .local v12, "subClassRuleCount":I
    iget-object v13, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    aget v14, v5, v10

    invoke-virtual {v13, v12, v14}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v13

    .line 175
    .local v13, "subClassRuleOffsets":[I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v14

    .line 176
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    if-ge v14, v12, :cond_0

    .line 178
    iget-object v15, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v15, v15, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    aget v1, v13, v14

    move/from16 v16, v2

    .end local v2    # "coverageOffset":I
    .local v16, "coverageOffset":I
    int-to-long v1, v1

    invoke-virtual {v15, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 180
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 181
    .local v1, "glyphCount":I
    iget-object v2, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v2, v2, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 182
    .local v2, "substCount":I
    iget-object v15, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    move/from16 v17, v3

    .end local v3    # "classDefOffset":I
    .local v17, "classDefOffset":I
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v15, v3}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(I)[I

    move-result-object v3

    .line 183
    .local v3, "inputClassIds":[I
    iget-object v15, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v15, v2}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v15

    .line 185
    .local v15, "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    move/from16 v18, v1

    .end local v1    # "glyphCount":I
    .local v18, "glyphCount":I
    new-instance v1, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2$SubstRuleFormat2;

    invoke-direct {v1, v8, v3, v15}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2$SubstRuleFormat2;-><init>(Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;[I[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    .line 186
    .local v1, "rule":Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v1    # "rule":Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    .end local v2    # "substCount":I
    .end local v3    # "inputClassIds":[I
    .end local v15    # "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    .end local v18    # "glyphCount":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_1

    .end local v16    # "coverageOffset":I
    .end local v17    # "classDefOffset":I
    .local v2, "coverageOffset":I
    .local v3, "classDefOffset":I
    :cond_0
    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "coverageOffset":I
    .end local v3    # "classDefOffset":I
    .restart local v16    # "coverageOffset":I
    .restart local v17    # "classDefOffset":I
    goto :goto_2

    .line 170
    .end local v12    # "subClassRuleCount":I
    .end local v13    # "subClassRuleOffsets":[I
    .end local v14    # "j":I
    .end local v16    # "coverageOffset":I
    .end local v17    # "classDefOffset":I
    .restart local v2    # "coverageOffset":I
    .restart local v3    # "classDefOffset":I
    :cond_1
    move/from16 v16, v2

    move/from16 v17, v3

    .line 189
    .end local v2    # "coverageOffset":I
    .end local v3    # "classDefOffset":I
    .restart local v16    # "coverageOffset":I
    .restart local v17    # "classDefOffset":I
    :goto_2
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v11    # "subClassSet":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/io/font/otf/ContextualSubstRule;>;"
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    goto :goto_0

    .line 192
    .end local v10    # "i":I
    .end local v16    # "coverageOffset":I
    .end local v17    # "classDefOffset":I
    .restart local v2    # "coverageOffset":I
    .restart local v3    # "classDefOffset":I
    :cond_2
    invoke-virtual {v8, v9}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format2;->setSubClassSets(Ljava/util/List;)V

    .line 193
    iget-object v1, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method protected readSubTableFormat3(I)V
    .locals 10
    .param p1, "subTableLocation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v0, v0, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v0

    .line 199
    .local v0, "glyphCount":I
    iget-object v1, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget-object v1, v1, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->rf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 200
    .local v1, "substCount":I
    iget-object v2, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v2, v0, p1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readUShortArray(II)[I

    move-result-object v2

    .line 201
    .local v2, "coverageOffsets":[I
    iget-object v3, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v3, v1}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readSubstLookupRecords(I)[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v3

    .line 203
    .local v3, "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    .local v4, "coverages":Ljava/util/List;, "Ljava/util/List<Ljava/util/Set<Ljava/lang/Integer;>;>;"
    iget-object v5, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    invoke-virtual {v5, v2, v4}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->readCoverages([ILjava/util/List;)V

    .line 206
    new-instance v5, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3$SubstRuleFormat3;

    invoke-direct {v5, v4, v3}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3$SubstRuleFormat3;-><init>(Ljava/util/List;[Lcom/itextpdf/io/font/otf/SubstLookupRecord;)V

    .line 207
    .local v5, "rule":Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3$SubstRuleFormat3;
    iget-object v6, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    new-instance v7, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3;

    iget-object v8, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v9, p0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->lookupFlag:I

    invoke-direct {v7, v8, v9, v5}, Lcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3;-><init>(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;ILcom/itextpdf/io/font/otf/lookuptype5/SubTableLookup5Format3$SubstRuleFormat3;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method

.method public transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z
    .locals 18
    .param p1, "line"    # Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 74
    .local v2, "changed":Z
    iget v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 75
    .local v3, "oldLineStart":I
    iget v4, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 76
    .local v4, "oldLineEnd":I
    iget v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 78
    .local v5, "initialLineIndex":I
    iget-object v6, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->subTables:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/io/font/otf/ContextualSubTable;

    .line 79
    .local v7, "subTable":Lcom/itextpdf/io/font/otf/ContextualSubTable;
    invoke-virtual {v7, v1}, Lcom/itextpdf/io/font/otf/ContextualSubTable;->getMatchingContextRule(Lcom/itextpdf/io/font/otf/GlyphLine;)Lcom/itextpdf/io/font/otf/ContextualSubstRule;

    move-result-object v9

    .line 80
    .local v9, "contextRule":Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    if-nez v9, :cond_0

    .line 81
    goto :goto_0

    .line 84
    :cond_0
    iget v6, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 85
    .local v6, "lineEndBeforeSubstitutions":I
    invoke-virtual {v9}, Lcom/itextpdf/io/font/otf/ContextualSubstRule;->getSubstLookupRecords()[Lcom/itextpdf/io/font/otf/SubstLookupRecord;

    move-result-object v10

    .line 86
    .local v10, "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    new-instance v11, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;

    invoke-direct {v11}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;-><init>()V

    .line 87
    .local v11, "gidx":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    iput-object v1, v11, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->line:Lcom/itextpdf/io/font/otf/GlyphLine;

    .line 88
    array-length v12, v10

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_4

    aget-object v15, v10, v14

    .line 91
    .local v15, "substRecord":Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    iput v5, v11, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    .line 92
    const/16 v16, 0x0

    move/from16 v13, v16

    .local v13, "i":I
    :goto_2
    iget v8, v15, Lcom/itextpdf/io/font/otf/SubstLookupRecord;->sequenceIndex:I

    if-ge v13, v8, :cond_1

    .line 93
    iget-object v8, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    move/from16 v17, v5

    .end local v5    # "initialLineIndex":I
    .local v17, "initialLineIndex":I
    iget v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->lookupFlag:I

    invoke-virtual {v11, v8, v5}, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->nextGlyph(Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;I)V

    .line 92
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v17

    goto :goto_2

    .end local v17    # "initialLineIndex":I
    .restart local v5    # "initialLineIndex":I
    :cond_1
    move/from16 v17, v5

    .line 96
    .end local v5    # "initialLineIndex":I
    .end local v13    # "i":I
    .restart local v17    # "initialLineIndex":I
    iget v5, v11, Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;->idx:I

    iput v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 97
    iget-object v5, v0, Lcom/itextpdf/io/font/otf/GsubLookupType5;->openReader:Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;

    iget v8, v15, Lcom/itextpdf/io/font/otf/SubstLookupRecord;->lookupListIndex:I

    invoke-virtual {v5, v8}, Lcom/itextpdf/io/font/otf/OpenTypeFontTableReader;->getLookupTable(I)Lcom/itextpdf/io/font/otf/OpenTableLookup;

    move-result-object v5

    .line 98
    .local v5, "lookupTable":Lcom/itextpdf/io/font/otf/OpenTableLookup;
    invoke-virtual {v5, v1}, Lcom/itextpdf/io/font/otf/OpenTableLookup;->transformOne(Lcom/itextpdf/io/font/otf/GlyphLine;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v8, 0x1

    :goto_4
    move v2, v8

    .line 88
    .end local v5    # "lookupTable":Lcom/itextpdf/io/font/otf/OpenTableLookup;
    .end local v15    # "substRecord":Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    goto :goto_1

    .line 101
    .end local v17    # "initialLineIndex":I
    .local v5, "initialLineIndex":I
    :cond_4
    move/from16 v17, v5

    .end local v5    # "initialLineIndex":I
    .restart local v17    # "initialLineIndex":I
    iget v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    iput v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 102
    iput v3, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->start:I

    .line 103
    iget v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    sub-int v5, v6, v5

    .line 104
    .local v5, "lenDelta":I
    sub-int v8, v4, v5

    iput v8, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->end:I

    .line 105
    return v2

    .line 108
    .end local v6    # "lineEndBeforeSubstitutions":I
    .end local v7    # "subTable":Lcom/itextpdf/io/font/otf/ContextualSubTable;
    .end local v9    # "contextRule":Lcom/itextpdf/io/font/otf/ContextualSubstRule;
    .end local v10    # "substLookupRecords":[Lcom/itextpdf/io/font/otf/SubstLookupRecord;
    .end local v11    # "gidx":Lcom/itextpdf/io/font/otf/OpenTableLookup$GlyphIndexer;
    .end local v17    # "initialLineIndex":I
    .local v5, "initialLineIndex":I
    :cond_5
    move/from16 v17, v5

    .end local v5    # "initialLineIndex":I
    .restart local v17    # "initialLineIndex":I
    iget v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Lcom/itextpdf/io/font/otf/GlyphLine;->idx:I

    .line 109
    return v2
.end method
