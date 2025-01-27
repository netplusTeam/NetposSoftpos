.class public Lorg/apache/commons/lang/text/StrSubstitutor;
.super Ljava/lang/Object;
.source "StrSubstitutor.java"


# static fields
.field public static final DEFAULT_ESCAPE:C = '$'

.field public static final DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

.field public static final DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;


# instance fields
.field private enableSubstitutionInVariables:Z

.field private escapeChar:C

.field private prefixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private suffixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

.field private variableResolver:Lorg/apache/commons/lang/text/StrLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-string v0, "${"

    invoke-static {v0}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

    .line 118
    const-string/jumbo v0, "}"

    invoke-static {v0}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 212
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/commons/lang/text/StrLookup;

    sget-object v1, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;C)V

    .line 213
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .param p1, "valueMap"    # Ljava/util/Map;

    .line 222
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

    sget-object v2, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;

    const/16 v3, 0x24

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;C)V

    .line 223
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "valueMap"    # Ljava/util/Map;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 234
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v0

    const/16 v1, 0x24

    invoke-direct {p0, v0, p2, p3, v1}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 235
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .param p1, "valueMap"    # Ljava/util/Map;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C

    .line 247
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrLookup;->mapLookup(Ljava/util/Map;)Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V

    .line 248
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/text/StrLookup;)V
    .locals 3
    .param p1, "variableResolver"    # Lorg/apache/commons/lang/text/StrLookup;

    .line 256
    sget-object v0, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_PREFIX:Lorg/apache/commons/lang/text/StrMatcher;

    sget-object v1, Lorg/apache/commons/lang/text/StrSubstitutor;->DEFAULT_SUFFIX:Lorg/apache/commons/lang/text/StrMatcher;

    const/16 v2, 0x24

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;C)V

    .line 257
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/text/StrLookup;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .param p1, "variableResolver"    # Lorg/apache/commons/lang/text/StrLookup;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;
    .param p4, "escape"    # C

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang/text/StrLookup;)V

    .line 270
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrSubstitutor;

    .line 271
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrSubstitutor;

    .line 272
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/text/StrSubstitutor;->setEscapeChar(C)V

    .line 273
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/lang/text/StrLookup;Lorg/apache/commons/lang/text/StrMatcher;Lorg/apache/commons/lang/text/StrMatcher;C)V
    .locals 0
    .param p1, "variableResolver"    # Lorg/apache/commons/lang/text/StrLookup;
    .param p2, "prefixMatcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p3, "suffixMatcher"    # Lorg/apache/commons/lang/text/StrMatcher;
    .param p4, "escape"    # C

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableResolver(Lorg/apache/commons/lang/text/StrLookup;)V

    .line 287
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    .line 288
    invoke-virtual {p0, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    .line 289
    invoke-virtual {p0, p4}, Lorg/apache/commons/lang/text/StrSubstitutor;->setEscapeChar(C)V

    .line 290
    return-void
.end method

.method private checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "priorVariables"    # Ljava/util/List;

    .line 693
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    return-void

    .line 696
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 697
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const-string v1, "Infinite loop in property interpolation of "

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 698
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 699
    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 700
    const-string v1, "->"

    invoke-virtual {v0, p2, v1}, Lorg/apache/commons/lang/text/StrBuilder;->appendWithSeparators(Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 701
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueMap"    # Ljava/util/Map;

    .line 151
    new-instance v0, Lorg/apache/commons/lang/text/StrSubstitutor;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueMap"    # Ljava/util/Map;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "suffix"    # Ljava/lang/String;

    .line 167
    new-instance v0, Lorg/apache/commons/lang/text/StrSubstitutor;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/Object;Ljava/util/Properties;)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "valueProperties"    # Ljava/util/Properties;

    .line 181
    if-nez p1, :cond_0

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v0, "valueMap":Ljava/util/Map;
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 186
    .local v1, "propNames":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "propValue":Ljava/lang/String;
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "propValue":Ljava/lang/String;
    goto :goto_0

    .line 192
    :cond_1
    invoke-static {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->replace(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static replaceSystemProperties(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/Object;

    .line 203
    new-instance v0, Lorg/apache/commons/lang/text/StrSubstitutor;

    invoke-static {}, Lorg/apache/commons/lang/text/StrLookup;->systemPropertiesLookup()Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrSubstitutor;-><init>(Lorg/apache/commons/lang/text/StrLookup;)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->replace(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private substitute(Lorg/apache/commons/lang/text/StrBuilder;IILjava/util/List;)I
    .locals 25
    .param p1, "buf"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "priorVariables"    # Ljava/util/List;

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->getVariablePrefixMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v4

    .line 580
    .local v4, "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->getVariableSuffixMatcher()Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v5

    .line 581
    .local v5, "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->getEscapeChar()C

    move-result v6

    .line 583
    .local v6, "escape":C
    if-nez p4, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 584
    .local v9, "top":Z
    :goto_0
    const/4 v10, 0x0

    .line 585
    .local v10, "altered":Z
    const/4 v11, 0x0

    .line 586
    .local v11, "lengthChange":I
    iget-object v12, v1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 587
    .local v12, "chars":[C
    add-int v13, v2, v3

    .line 588
    .local v13, "bufEnd":I
    move/from16 v14, p2

    move v15, v14

    move v14, v13

    move-object v13, v12

    move v12, v11

    move v11, v10

    move-object/from16 v10, p4

    .line 589
    .end local p4    # "priorVariables":Ljava/util/List;
    .local v10, "priorVariables":Ljava/util/List;
    .local v11, "altered":Z
    .local v12, "lengthChange":I
    .local v13, "chars":[C
    .local v14, "bufEnd":I
    .local v15, "pos":I
    :goto_1
    if-ge v15, v14, :cond_a

    .line 590
    invoke-virtual {v4, v13, v15, v2, v14}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v16

    .line 592
    .local v16, "startMatchLen":I
    if-nez v16, :cond_1

    .line 593
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    const/16 v18, 0x1

    goto/16 :goto_4

    .line 596
    :cond_1
    if-le v15, v2, :cond_2

    add-int/lit8 v17, v15, -0x1

    aget-char v8, v13, v17

    if-ne v8, v6, :cond_2

    .line 598
    add-int/lit8 v8, v15, -0x1

    invoke-virtual {v1, v8}, Lorg/apache/commons/lang/text/StrBuilder;->deleteCharAt(I)Lorg/apache/commons/lang/text/StrBuilder;

    .line 599
    iget-object v8, v1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 600
    .end local v13    # "chars":[C
    .local v8, "chars":[C
    add-int/lit8 v12, v12, -0x1

    .line 601
    const/4 v11, 0x1

    .line 602
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object v13, v8

    const/16 v18, 0x1

    goto/16 :goto_4

    .line 605
    .end local v8    # "chars":[C
    .restart local v13    # "chars":[C
    :cond_2
    move v8, v15

    .line 606
    .local v8, "startPos":I
    add-int v15, v15, v16

    .line 607
    const/16 v17, 0x0

    .line 608
    .local v17, "endMatchLen":I
    const/16 v19, 0x0

    .line 609
    .local v19, "nestedVarCount":I
    :goto_2
    if-ge v15, v14, :cond_9

    .line 610
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v4, v13, v15, v2, v14}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v20

    move/from16 v17, v20

    if-eqz v20, :cond_3

    .line 614
    add-int/lit8 v19, v19, 0x1

    .line 615
    add-int v15, v15, v17

    .line 616
    goto :goto_2

    .line 619
    :cond_3
    invoke-virtual {v5, v13, v15, v2, v14}, Lorg/apache/commons/lang/text/StrMatcher;->isMatch([CIII)I

    move-result v17

    .line 621
    if-nez v17, :cond_4

    .line 622
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 625
    :cond_4
    if-nez v19, :cond_8

    .line 626
    new-instance v7, Ljava/lang/String;

    move-object/from16 v21, v4

    .end local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .local v21, "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    add-int v4, v8, v16

    sub-int v22, v15, v8

    move-object/from16 v23, v5

    .end local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .local v23, "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    sub-int v5, v22, v16

    invoke-direct {v7, v13, v4, v5}, Ljava/lang/String;-><init>([CII)V

    move-object v4, v7

    .line 629
    .local v4, "varName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->isEnableSubstitutionInVariables()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 630
    new-instance v5, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v5, v4}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .local v5, "bufName":Lorg/apache/commons/lang/text/StrBuilder;
    invoke-virtual {v5}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v7

    move-object/from16 p4, v4

    const/4 v4, 0x0

    .end local v4    # "varName":Ljava/lang/String;
    .local p4, "varName":Ljava/lang/String;
    invoke-virtual {v0, v5, v4, v7}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 632
    invoke-virtual {v5}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local p4    # "varName":Ljava/lang/String;
    .local v7, "varName":Ljava/lang/String;
    goto :goto_3

    .line 629
    .end local v5    # "bufName":Lorg/apache/commons/lang/text/StrBuilder;
    .end local v7    # "varName":Ljava/lang/String;
    .restart local v4    # "varName":Ljava/lang/String;
    :cond_5
    move-object/from16 p4, v4

    const/4 v4, 0x0

    .end local v4    # "varName":Ljava/lang/String;
    .restart local p4    # "varName":Ljava/lang/String;
    move-object/from16 v7, p4

    .line 634
    .end local p4    # "varName":Ljava/lang/String;
    .restart local v7    # "varName":Ljava/lang/String;
    :goto_3
    add-int v15, v15, v17

    .line 635
    move v5, v15

    .line 638
    .local v5, "endPos":I
    if-nez v10, :cond_6

    .line 639
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, v20

    .line 640
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v13, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_6
    invoke-direct {v0, v7, v10}, Lorg/apache/commons/lang/text/StrSubstitutor;->checkCyclicSubstitution(Ljava/lang/String;Ljava/util/List;)V

    .line 646
    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v0, v7, v1, v8, v5}, Lorg/apache/commons/lang/text/StrSubstitutor;->resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang/text/StrBuilder;II)Ljava/lang/String;

    move-result-object v4

    .line 651
    .local v4, "varValue":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 653
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 654
    .local v2, "varLen":I
    invoke-virtual {v1, v8, v5, v4}, Lorg/apache/commons/lang/text/StrBuilder;->replace(IILjava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 655
    const/4 v11, 0x1

    .line 656
    invoke-direct {v0, v1, v8, v2, v10}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;IILjava/util/List;)I

    move-result v22

    .line 658
    .local v22, "change":I
    sub-int v24, v5, v8

    sub-int v24, v2, v24

    add-int v22, v22, v24

    .line 660
    add-int v15, v15, v22

    .line 661
    add-int v14, v14, v22

    .line 662
    add-int v12, v12, v22

    .line 663
    iget-object v13, v1, Lorg/apache/commons/lang/text/StrBuilder;->buffer:[C

    .line 668
    .end local v2    # "varLen":I
    .end local v22    # "change":I
    :cond_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    const/16 v18, 0x1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 670
    goto :goto_4

    .line 672
    .end local v7    # "varName":Ljava/lang/String;
    .end local v21    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v23    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .local v4, "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .local v5, "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    :cond_8
    move-object/from16 v21, v4

    move-object/from16 v23, v5

    const/16 v18, 0x1

    .end local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v21    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v23    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    add-int/lit8 v19, v19, -0x1

    .line 673
    add-int v15, v15, v17

    move/from16 v2, p2

    goto/16 :goto_2

    .line 609
    .end local v21    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v23    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    :cond_9
    move-object/from16 v21, v4

    move-object/from16 v23, v5

    const/16 v18, 0x1

    .line 679
    .end local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v8    # "startPos":I
    .end local v16    # "startMatchLen":I
    .end local v17    # "endMatchLen":I
    .end local v19    # "nestedVarCount":I
    .restart local v21    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v23    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    :goto_4
    move/from16 v2, p2

    move-object/from16 v4, v21

    move-object/from16 v5, v23

    goto/16 :goto_1

    .line 680
    .end local v21    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v23    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    :cond_a
    move-object/from16 v21, v4

    move-object/from16 v23, v5

    .end local v4    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .end local v5    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v21    # "prefixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    .restart local v23    # "suffixMatcher":Lorg/apache/commons/lang/text/StrMatcher;
    if-eqz v9, :cond_b

    .line 681
    return v11

    .line 683
    :cond_b
    return v12
.end method


# virtual methods
.method public getEscapeChar()C
    .locals 1

    .line 737
    iget-char v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->escapeChar:C

    return v0
.end method

.method public getVariablePrefixMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .locals 1

    .line 763
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public getVariableResolver()Lorg/apache/commons/lang/text/StrLookup;
    .locals 1

    .line 889
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang/text/StrLookup;

    return-object v0
.end method

.method public getVariableSuffixMatcher()Lorg/apache/commons/lang/text/StrMatcher;
    .locals 1

    .line 828
    iget-object v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    return-object v0
.end method

.method public isEnableSubstitutionInVariables()Z
    .locals 1

    .line 910
    iget-boolean v0, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    return v0
.end method

.method public replace(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;

    .line 464
    if-nez p1, :cond_0

    .line 465
    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/text/StrBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 468
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 469
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/String;

    .line 301
    if-nez p1, :cond_0

    .line 302
    const/4 v0, 0x0

    return-object v0

    .line 304
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 306
    return-object p1

    .line 308
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 324
    if-nez p1, :cond_0

    .line 325
    const/4 v0, 0x0

    return-object v0

    .line 327
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 328
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 329
    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 331
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 384
    if-nez p1, :cond_0

    .line 385
    const/4 v0, 0x0

    return-object v0

    .line 387
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 388
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 389
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 406
    if-nez p1, :cond_0

    .line 407
    const/4 v0, 0x0

    return-object v0

    .line 409
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 410
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 411
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/apache/commons/lang/text/StrBuilder;)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 424
    if-nez p1, :cond_0

    .line 425
    const/4 v0, 0x0

    return-object v0

    .line 427
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 428
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 429
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace(Lorg/apache/commons/lang/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 446
    if-nez p1, :cond_0

    .line 447
    const/4 v0, 0x0

    return-object v0

    .line 449
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Lorg/apache/commons/lang/text/StrBuilder;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 450
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 451
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([C)Ljava/lang/String;
    .locals 3
    .param p1, "source"    # [C

    .line 344
    if-nez p1, :cond_0

    .line 345
    const/4 v0, 0x0

    return-object v0

    .line 347
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrBuilder;->append([C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 348
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 349
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replace([CII)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 366
    if-nez p1, :cond_0

    .line 367
    const/4 v0, 0x0

    return-object v0

    .line 369
    :cond_0
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append([CII)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    .line 370
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    .line 371
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public replaceIn(Ljava/lang/StringBuffer;)Z
    .locals 2
    .param p1, "source"    # Ljava/lang/StringBuffer;

    .line 482
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 483
    return v0

    .line 485
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang/text/StrSubstitutor;->replaceIn(Ljava/lang/StringBuffer;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Ljava/lang/StringBuffer;II)Z
    .locals 3
    .param p1, "source"    # Ljava/lang/StringBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 502
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 503
    return v0

    .line 505
    :cond_0
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1, p3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    .line 506
    .local v1, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    invoke-virtual {p0, v1, v0, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 507
    return v0

    .line 509
    :cond_1
    add-int v0, p2, p3

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public replaceIn(Lorg/apache/commons/lang/text/StrBuilder;)Z
    .locals 2
    .param p1, "source"    # Lorg/apache/commons/lang/text/StrBuilder;

    .line 522
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 523
    return v0

    .line 525
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang/text/StrBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method public replaceIn(Lorg/apache/commons/lang/text/StrBuilder;II)Z
    .locals 1
    .param p1, "source"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 541
    if-nez p1, :cond_0

    .line 542
    const/4 v0, 0x0

    return v0

    .line 544
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z

    move-result v0

    return v0
.end method

.method protected resolveVariable(Ljava/lang/String;Lorg/apache/commons/lang/text/StrBuilder;II)Ljava/lang/String;
    .locals 2
    .param p1, "variableName"    # Ljava/lang/String;
    .param p2, "buf"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p3, "startPos"    # I
    .param p4, "endPos"    # I

    .line 722
    invoke-virtual {p0}, Lorg/apache/commons/lang/text/StrSubstitutor;->getVariableResolver()Lorg/apache/commons/lang/text/StrLookup;

    move-result-object v0

    .line 723
    .local v0, "resolver":Lorg/apache/commons/lang/text/StrLookup;
    if-nez v0, :cond_0

    .line 724
    const/4 v1, 0x0

    return-object v1

    .line 726
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/lang/text/StrLookup;->lookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setEnableSubstitutionInVariables(Z)V
    .locals 0
    .param p1, "enableSubstitutionInVariables"    # Z

    .line 924
    iput-boolean p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->enableSubstitutionInVariables:Z

    .line 925
    return-void
.end method

.method public setEscapeChar(C)V
    .locals 0
    .param p1, "escapeCharacter"    # C

    .line 748
    iput-char p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->escapeChar:C

    .line 749
    return-void
.end method

.method public setVariablePrefix(C)Lorg/apache/commons/lang/text/StrSubstitutor;
    .locals 1
    .param p1, "prefix"    # C

    .line 796
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariablePrefix(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrSubstitutor;
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;

    .line 810
    if-eqz p1, :cond_0

    .line 813
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariablePrefixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 811
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariablePrefixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;
    .locals 2
    .param p1, "prefixMatcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 778
    if-eqz p1, :cond_0

    .line 781
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->prefixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 782
    return-object p0

    .line 779
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable prefix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableResolver(Lorg/apache/commons/lang/text/StrLookup;)V
    .locals 0
    .param p1, "variableResolver"    # Lorg/apache/commons/lang/text/StrLookup;

    .line 898
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->variableResolver:Lorg/apache/commons/lang/text/StrLookup;

    .line 899
    return-void
.end method

.method public setVariableSuffix(C)Lorg/apache/commons/lang/text/StrSubstitutor;
    .locals 1
    .param p1, "suffix"    # C

    .line 861
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->charMatcher(C)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    move-result-object v0

    return-object v0
.end method

.method public setVariableSuffix(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrSubstitutor;
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .line 875
    if-eqz p1, :cond_0

    .line 878
    invoke-static {p1}, Lorg/apache/commons/lang/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->setVariableSuffixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;

    move-result-object v0

    return-object v0

    .line 876
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariableSuffixMatcher(Lorg/apache/commons/lang/text/StrMatcher;)Lorg/apache/commons/lang/text/StrSubstitutor;
    .locals 2
    .param p1, "suffixMatcher"    # Lorg/apache/commons/lang/text/StrMatcher;

    .line 843
    if-eqz p1, :cond_0

    .line 846
    iput-object p1, p0, Lorg/apache/commons/lang/text/StrSubstitutor;->suffixMatcher:Lorg/apache/commons/lang/text/StrMatcher;

    .line 847
    return-object p0

    .line 844
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable suffix matcher must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected substitute(Lorg/apache/commons/lang/text/StrBuilder;II)Z
    .locals 1
    .param p1, "buf"    # Lorg/apache/commons/lang/text/StrBuilder;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 563
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/lang/text/StrSubstitutor;->substitute(Lorg/apache/commons/lang/text/StrBuilder;IILjava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
