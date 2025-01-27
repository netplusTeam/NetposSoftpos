.class Lcom/itextpdf/layout/tagging/TableTaggingRule;
.super Ljava/lang/Object;
.source "TableTaggingRule.java"

# interfaces
.implements Lcom/itextpdf/layout/tagging/ITaggingRule;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagFinish(Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;Lcom/itextpdf/layout/tagging/TaggingHintKey;)Z
    .locals 16
    .param p1, "taggingHelper"    # Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;
    .param p2, "tableHintKey"    # Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 57
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p2}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getAccessibleKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;)Ljava/util/List;

    move-result-object v2

    .line 59
    .local v2, "kidKeys":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 60
    .local v3, "tableTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v4, "tableCellTagsUnindexed":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v5, "nonCellKids":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 63
    .local v7, "kidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v7}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v8

    invoke-interface {v8}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TD"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 64
    invoke-virtual {v7}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v8

    invoke-interface {v8}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v8

    const-string v9, "TH"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 65
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v8

    instance-of v8, v8, Lcom/itextpdf/layout/element/Cell;

    if-eqz v8, :cond_3

    .line 66
    invoke-virtual {v7}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/layout/element/Cell;

    .line 67
    .local v8, "cell":Lcom/itextpdf/layout/element/Cell;
    invoke-virtual {v8}, Lcom/itextpdf/layout/element/Cell;->getRow()I

    move-result v9

    .line 68
    .local v9, "rowInd":I
    invoke-virtual {v8}, Lcom/itextpdf/layout/element/Cell;->getCol()I

    move-result v10

    .line 69
    .local v10, "colInd":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/TreeMap;

    .line 70
    .local v11, "rowTags":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    if-nez v11, :cond_2

    .line 71
    new-instance v12, Ljava/util/TreeMap;

    invoke-direct {v12}, Ljava/util/TreeMap;-><init>()V

    move-object v11, v12

    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v3, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v8    # "cell":Lcom/itextpdf/layout/element/Cell;
    .end local v9    # "rowInd":I
    .end local v10    # "colInd":I
    .end local v11    # "rowTags":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    goto :goto_2

    .line 76
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v7    # "kidKey":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    :goto_2
    goto :goto_0

    .line 84
    :cond_4
    const/4 v6, 0x1

    .line 85
    .local v6, "createTBody":Z
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v7

    instance-of v7, v7, Lcom/itextpdf/layout/element/Table;

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/layout/element/Table;

    .line 87
    .local v7, "modelElement":Lcom/itextpdf/layout/element/Table;
    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table;->getHeader()Lcom/itextpdf/layout/element/Table;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table;->isSkipFirstHeader()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 88
    :cond_5
    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table;->getFooter()Lcom/itextpdf/layout/element/Table;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v7}, Lcom/itextpdf/layout/element/Table;->isSkipLastFooter()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    move v9, v8

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    move v6, v9

    .line 90
    .end local v7    # "modelElement":Lcom/itextpdf/layout/element/Table;
    :cond_8
    const/4 v7, 0x0

    .line 91
    .local v7, "tbodyTag":Lcom/itextpdf/layout/tagging/TaggingDummyElement;
    new-instance v9, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    if-eqz v6, :cond_9

    const-string v10, "TBody"

    goto :goto_4

    :cond_9
    const/4 v10, 0x0

    :goto_4
    invoke-direct {v9, v10}, Lcom/itextpdf/layout/tagging/TaggingDummyElement;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    .line 93
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, "TFoot"

    const-string v12, "THead"

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 94
    .local v10, "nonCellKid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v10}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v13

    invoke-interface {v13}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v13

    .line 95
    .local v13, "kidRole":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 96
    invoke-virtual {v0, v10, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    .line 98
    .end local v10    # "nonCellKid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v13    # "kidRole":Ljava/lang/String;
    :cond_a
    goto :goto_5

    .line 99
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 100
    .restart local v10    # "nonCellKid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v10}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v13

    invoke-interface {v13}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v13

    .line 101
    .restart local v13    # "kidRole":Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 102
    invoke-virtual {v0, v10, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    .line 104
    .end local v10    # "nonCellKid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v13    # "kidRole":Ljava/lang/String;
    :cond_c
    goto :goto_6

    .line 105
    :cond_d
    invoke-static {v7}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, -0x1

    invoke-virtual {v0, v1, v9, v10}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Ljava/util/Collection;I)V

    .line 106
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 107
    .local v12, "nonCellKid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v12}, Lcom/itextpdf/layout/tagging/TaggingHintKey;->getAccessibleElement()Lcom/itextpdf/layout/tagging/IAccessibleElement;

    move-result-object v13

    invoke-interface {v13}, Lcom/itextpdf/layout/tagging/IAccessibleElement;->getAccessibilityProperties()Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/kernel/pdf/tagutils/AccessibilityProperties;->getRole()Ljava/lang/String;

    move-result-object v13

    .line 108
    .restart local v13    # "kidRole":Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 109
    invoke-virtual {v0, v12, v1}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    .line 111
    .end local v12    # "nonCellKid":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    .end local v13    # "kidRole":Ljava/lang/String;
    :cond_e
    goto :goto_7

    .line 113
    :cond_f
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/TreeMap;

    .line 114
    .restart local v11    # "rowTags":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    new-instance v12, Lcom/itextpdf/layout/tagging/TaggingDummyElement;

    const-string v13, "TR"

    invoke-direct {v12, v13}, Lcom/itextpdf/layout/tagging/TaggingDummyElement;-><init>(Ljava/lang/String;)V

    .line 115
    .local v12, "row":Lcom/itextpdf/layout/tagging/TaggingDummyElement;
    invoke-static {v12}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->getOrCreateHintKey(Lcom/itextpdf/layout/IPropertyContainer;)Lcom/itextpdf/layout/tagging/TaggingHintKey;

    move-result-object v13

    .line 116
    .local v13, "rowTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v11}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 117
    .local v15, "cellTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v0, v15, v13}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    .line 118
    .end local v15    # "cellTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_9

    .line 119
    :cond_10
    if-eqz v4, :cond_12

    .line 120
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/layout/tagging/TaggingHintKey;

    .line 121
    .restart local v15    # "cellTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    invoke-virtual {v0, v15, v13}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->moveKidHint(Lcom/itextpdf/layout/tagging/TaggingHintKey;Lcom/itextpdf/layout/tagging/TaggingHintKey;)I

    .line 122
    .end local v15    # "cellTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_a

    .line 123
    :cond_11
    const/4 v4, 0x0

    .line 125
    :cond_12
    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v0, v7, v14, v10}, Lcom/itextpdf/layout/tagging/LayoutTaggingHelper;->addKidsHint(Lcom/itextpdf/layout/IPropertyContainer;Ljava/lang/Iterable;I)V

    .line 126
    .end local v11    # "rowTags":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lcom/itextpdf/layout/tagging/TaggingHintKey;>;"
    .end local v12    # "row":Lcom/itextpdf/layout/tagging/TaggingDummyElement;
    .end local v13    # "rowTagHint":Lcom/itextpdf/layout/tagging/TaggingHintKey;
    goto :goto_8

    .line 128
    :cond_13
    return v8
.end method
