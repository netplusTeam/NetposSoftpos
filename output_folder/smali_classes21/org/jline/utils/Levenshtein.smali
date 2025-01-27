.class public Lorg/jline/utils/Levenshtein;
.super Ljava/lang/Object;
.source "Levenshtein.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 6
    .param p0, "lhs"    # Ljava/lang/CharSequence;
    .param p1, "rhs"    # Ljava/lang/CharSequence;

    .line 49
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/jline/utils/Levenshtein;->distance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIII)I

    move-result v0

    return v0
.end method

.method public static distance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIII)I
    .locals 18
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "target"    # Ljava/lang/CharSequence;
    .param p2, "deleteCost"    # I
    .param p3, "insertCost"    # I
    .param p4, "replaceCost"    # I
    .param p5, "swapCost"    # I

    .line 59
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    mul-int/lit8 v3, p5, 0x2

    add-int v4, p3, p2

    if-lt v3, v4, :cond_d

    .line 62
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 63
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    mul-int v3, v3, p3

    return v3

    .line 65
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 66
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    mul-int v3, v3, p2

    return v3

    .line 68
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v4, 0x0

    aput v3, v5, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    .line 69
    .local v3, "table":[[I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v5, "sourceIndexByCharacter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Integer;>;"
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 71
    aget-object v7, v3, v4

    add-int v8, p2, p3

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    aput v8, v7, v4

    .line 73
    :cond_2
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 75
    add-int/lit8 v8, v7, -0x1

    aget-object v8, v3, v8

    aget v8, v8, v4

    add-int v8, v8, p2

    .line 76
    .local v8, "deleteDistance":I
    add-int/lit8 v9, v7, 0x1

    mul-int v9, v9, p2

    add-int v9, v9, p3

    .line 77
    .local v9, "insertDistance":I
    mul-int v10, v7, p2

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_3

    move v11, v4

    goto :goto_1

    :cond_3
    move v11, v2

    :goto_1
    add-int/2addr v10, v11

    .line 78
    .local v10, "matchDistance":I
    aget-object v11, v3, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, v11, v4

    .line 74
    .end local v8    # "deleteDistance":I
    .end local v9    # "insertDistance":I
    .end local v10    # "matchDistance":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 80
    .end local v7    # "i":I
    :cond_4
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 81
    add-int/lit8 v8, v7, 0x1

    mul-int v8, v8, p3

    add-int v8, v8, p2

    .line 82
    .restart local v8    # "deleteDistance":I
    aget-object v9, v3, v4

    add-int/lit8 v10, v7, -0x1

    aget v9, v9, v10

    add-int v9, v9, p3

    .line 83
    .restart local v9    # "insertDistance":I
    mul-int v10, v7, p3

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_5

    move v11, v4

    goto :goto_3

    :cond_5
    move v11, v2

    :goto_3
    add-int/2addr v10, v11

    .line 84
    .restart local v10    # "matchDistance":I
    aget-object v11, v3, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, v11, v7

    .line 80
    .end local v8    # "deleteDistance":I
    .end local v9    # "insertDistance":I
    .end local v10    # "matchDistance":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 86
    .end local v7    # "j":I
    :cond_6
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 87
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/4 v10, -0x1

    if-ne v8, v9, :cond_7

    move v8, v4

    goto :goto_5

    :cond_7
    move v8, v10

    .line 88
    .local v8, "maxSourceLetterMatchIndex":I
    :goto_5
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_6
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_b

    .line 89
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 90
    .local v11, "candidateSwapIndex":Ljava/lang/Integer;
    move v12, v8

    .line 91
    .local v12, "jSwap":I
    add-int/lit8 v13, v7, -0x1

    aget-object v13, v3, v13

    aget v13, v13, v9

    add-int v13, v13, p2

    .line 92
    .local v13, "deleteDistance":I
    aget-object v14, v3, v7

    add-int/lit8 v15, v9, -0x1

    aget v14, v14, v15

    add-int v14, v14, p3

    .line 93
    .local v14, "insertDistance":I
    add-int/lit8 v15, v7, -0x1

    aget-object v15, v3, v15

    add-int/lit8 v16, v9, -0x1

    aget v15, v15, v16

    .line 94
    .local v15, "matchDistance":I
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v6, v4, :cond_8

    .line 95
    add-int/2addr v15, v2

    goto :goto_7

    .line 97
    :cond_8
    move v4, v9

    move v8, v4

    .line 100
    :goto_7
    if-eqz v11, :cond_a

    if-eq v12, v10, :cond_a

    .line 101
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 103
    .local v4, "iSwap":I
    if-nez v4, :cond_9

    if-nez v12, :cond_9

    .line 104
    const/4 v6, 0x0

    const/4 v10, 0x0

    .local v6, "preSwapCost":I
    goto :goto_8

    .line 106
    .end local v6    # "preSwapCost":I
    :cond_9
    add-int/lit8 v6, v4, -0x1

    const/4 v10, 0x0

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    aget-object v6, v3, v6

    add-int/lit8 v1, v12, -0x1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v6, v6, v1

    .line 108
    .restart local v6    # "preSwapCost":I
    :goto_8
    sub-int v1, v7, v4

    const/16 v16, 0x1

    add-int/lit8 v1, v1, -0x1

    mul-int v1, v1, p2

    add-int/2addr v1, v6

    sub-int v17, v9, v12

    add-int/lit8 v17, v17, -0x1

    mul-int v17, v17, p3

    add-int v1, v1, v17

    add-int v1, v1, p5

    .line 109
    .end local v4    # "iSwap":I
    .end local v6    # "preSwapCost":I
    .local v1, "swapDistance":I
    goto :goto_9

    .line 100
    .end local v1    # "swapDistance":I
    :cond_a
    const/4 v10, 0x0

    .line 110
    const v1, 0x7fffffff

    .line 112
    .restart local v1    # "swapDistance":I
    :goto_9
    aget-object v4, v3, v7

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v4, v9

    .line 88
    .end local v1    # "swapDistance":I
    .end local v11    # "candidateSwapIndex":Ljava/lang/Integer;
    .end local v12    # "jSwap":I
    .end local v13    # "deleteDistance":I
    .end local v14    # "insertDistance":I
    .end local v15    # "matchDistance":I
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move v4, v10

    const/4 v6, 0x1

    const/4 v10, -0x1

    goto/16 :goto_6

    :cond_b
    move v10, v4

    .line 114
    .end local v9    # "j":I
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v8    # "maxSourceLetterMatchIndex":I
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move v4, v10

    const/4 v6, 0x1

    goto/16 :goto_4

    .line 116
    .end local v7    # "i":I
    :cond_c
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    aget-object v1, v3, v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v4

    aget v1, v1, v6

    return v1

    .line 60
    .end local v3    # "table":[[I
    .end local v5    # "sourceIndexByCharacter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Integer;>;"
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported cost assignment"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
