.class public Lorg/jline/reader/impl/DefaultExpander;
.super Ljava/lang/Object;
.source "DefaultExpander.java"

# interfaces
.implements Lorg/jline/reader/Expander;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expandHistory(Lorg/jline/reader/History;Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "history"    # Lorg/jline/reader/History;
    .param p2, "line"    # Ljava/lang/String;

    .line 26
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "!-"

    const/4 v0, 0x0

    .line 27
    .local v0, "inQuote":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 29
    .local v6, "escaped":Z
    const/4 v7, 0x0

    .line 30
    .local v7, "unicode":I
    const/4 v8, 0x0

    move/from16 v19, v6

    move v6, v0

    move v0, v8

    move v8, v7

    move/from16 v7, v19

    .local v0, "i":I
    .local v6, "inQuote":Z
    .local v7, "escaped":Z
    .local v8, "unicode":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v0, v9, :cond_19

    .line 31
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 32
    .local v9, "c":C
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-lez v8, :cond_1

    .line 33
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_0

    move v10, v11

    :cond_0
    move v7, v10

    .line 34
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    goto/16 :goto_6

    .line 36
    :cond_1
    if-eqz v7, :cond_3

    .line 37
    const/16 v10, 0x75

    if-ne v9, v10, :cond_2

    .line 38
    const/4 v8, 0x4

    goto :goto_1

    .line 40
    :cond_2
    const/4 v7, 0x0

    .line 42
    :goto_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    goto/16 :goto_6

    .line 44
    :cond_3
    const/16 v12, 0x27

    if-ne v9, v12, :cond_5

    .line 45
    if-nez v6, :cond_4

    move v10, v11

    :cond_4
    move v6, v10

    .line 46
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    goto/16 :goto_6

    .line 48
    :cond_5
    if-eqz v6, :cond_6

    .line 49
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v17, v4

    goto/16 :goto_6

    .line 52
    :cond_6
    sparse-switch v9, :sswitch_data_0

    .line 178
    move-object/from16 v17, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 160
    :sswitch_0
    if-nez v0, :cond_8

    .line 161
    add-int/lit8 v10, v0, 0x1

    const/16 v12, 0x5e

    invoke-virtual {v3, v12, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 162
    .local v10, "i1":I
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v3, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 163
    .local v12, "i2":I
    if-gez v12, :cond_7

    .line 164
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 166
    :cond_7
    if-lez v10, :cond_8

    if-lez v12, :cond_8

    .line 167
    add-int/lit8 v13, v0, 0x1

    invoke-virtual {v3, v13, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 168
    .local v13, "s1":Ljava/lang/String;
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v3, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 169
    .local v14, "s2":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->index()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-interface {v2, v15}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 170
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v0, v12, 0x1

    .line 172
    move-object/from16 v17, v4

    goto/16 :goto_6

    .line 175
    .end local v10    # "i1":I
    .end local v12    # "i2":I
    .end local v13    # "s1":Ljava/lang/String;
    .end local v14    # "s2":Ljava/lang/String;
    .end local v15    # "s":Ljava/lang/String;
    :cond_8
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    move-object/from16 v17, v4

    goto/16 :goto_6

    .line 57
    :sswitch_1
    const/4 v7, 0x1

    .line 58
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    move-object/from16 v17, v4

    goto/16 :goto_6

    .line 61
    :sswitch_2
    add-int/lit8 v12, v0, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_18

    .line 62
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 63
    const/4 v12, 0x0

    .line 64
    .local v12, "neg":Z
    const/4 v13, 0x0

    .line 66
    .local v13, "rep":Ljava/lang/String;
    const-string v14, "!"

    const-string v15, ": event not found"

    sparse-switch v9, :sswitch_data_1

    .line 142
    move-object/from16 v17, v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "ss":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 144
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->index()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v4, v10, v11}, Lorg/jline/reader/impl/DefaultExpander;->searchBackwards(Lorg/jline/reader/History;Ljava/lang/String;IZ)I

    move-result v10

    .line 145
    .local v10, "idx":I
    if-ltz v10, :cond_17

    .line 148
    invoke-interface {v2, v10}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .line 77
    .end local v4    # "ss":Ljava/lang/String;
    .end local v10    # "idx":I
    :sswitch_3
    const/16 v14, 0x3f

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v3, v14, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 78
    .local v11, "i1":I
    if-gez v11, :cond_9

    .line 79
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    .line 81
    :cond_9
    add-int/lit8 v14, v0, 0x1

    invoke-virtual {v3, v14, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 82
    .local v14, "sc":Ljava/lang/String;
    move v0, v11

    .line 83
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->index()I

    move-result v0

    invoke-virtual {v1, v2, v14, v0, v10}, Lorg/jline/reader/impl/DefaultExpander;->searchBackwards(Lorg/jline/reader/History;Ljava/lang/String;IZ)I

    move-result v0

    .line 84
    .local v0, "idx":I
    if-ltz v0, :cond_a

    .line 87
    invoke-interface {v2, v0}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v13

    .line 89
    move/from16 v0, v17

    move-object/from16 v17, v4

    goto/16 :goto_5

    .line 85
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "idx":I
    .local v18, "idx":I
    const-string v0, "!?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    .end local v11    # "i1":I
    .end local v14    # "sc":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v18    # "idx":I
    .local v0, "i":I
    :sswitch_4
    const/4 v12, 0x1

    .line 109
    add-int/lit8 v0, v0, 0x1

    .line 121
    :sswitch_5
    move v10, v0

    move/from16 v19, v9

    move v9, v0

    move/from16 v0, v19

    .line 122
    .local v0, "c":C
    .local v9, "i":I
    .local v10, "i1":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v9, v11, :cond_d

    .line 123
    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 124
    const/16 v11, 0x30

    if-lt v0, v11, :cond_c

    const/16 v11, 0x39

    if-le v0, v11, :cond_b

    .line 125
    goto :goto_3

    .line 122
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 129
    :cond_c
    :goto_3
    move v11, v0

    goto :goto_4

    .line 122
    :cond_d
    move v11, v0

    .line 129
    .end local v0    # "c":C
    .local v11, "c":C
    :goto_4
    :try_start_0
    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v0, "idx":I
    nop

    .line 133
    if-eqz v12, :cond_e

    if-lez v0, :cond_e

    move-object/from16 v17, v4

    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->size()I

    move-result v4

    if-gt v0, v4, :cond_f

    .line 134
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->index()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v2, v4}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v13

    move v0, v9

    move v9, v11

    goto/16 :goto_5

    .line 133
    :cond_e
    move-object/from16 v17, v4

    .line 135
    :cond_f
    if-nez v12, :cond_10

    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->index()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->size()I

    move-result v18

    sub-int v4, v4, v18

    if-le v0, v4, :cond_10

    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->index()I

    move-result v4

    if-gt v0, v4, :cond_10

    .line 136
    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v4}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v13

    move v0, v9

    move v9, v11

    goto/16 :goto_5

    .line 138
    :cond_10
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move/from16 v18, v0

    .end local v0    # "idx":I
    .restart local v18    # "idx":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v12, :cond_11

    move-object/from16 v14, v17

    :cond_11
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    .end local v18    # "idx":I
    :catch_0
    move-exception v0

    move-object/from16 v17, v4

    .line 131
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v16, "e":Ljava/lang/NumberFormatException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v12, :cond_12

    move-object/from16 v14, v17

    :cond_12
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 91
    .end local v10    # "i1":I
    .end local v11    # "c":C
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    .local v0, "i":I
    .local v9, "c":C
    :sswitch_6
    move-object/from16 v17, v4

    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->size()I

    move-result v4

    if-eqz v4, :cond_14

    .line 94
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->index()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-interface {v2, v4}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "previous":Ljava/lang/String;
    const/16 v10, 0x20

    invoke-virtual {v4, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 96
    .local v10, "lastSpace":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_13

    .line 97
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 99
    :cond_13
    move-object v13, v4

    .line 101
    goto :goto_5

    .line 92
    .end local v4    # "previous":Ljava/lang/String;
    .end local v10    # "lastSpace":I
    :cond_14
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "!$: event not found"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 74
    :sswitch_7
    move-object/from16 v17, v4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    goto :goto_5

    .line 68
    :sswitch_8
    move-object/from16 v17, v4

    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->size()I

    move-result v4

    if-eqz v4, :cond_15

    .line 71
    invoke-interface/range {p1 .. p1}, Lorg/jline/reader/History;->index()I

    move-result v4

    const/4 v10, 0x1

    sub-int/2addr v4, v10

    invoke-interface {v2, v4}, Lorg/jline/reader/History;->get(I)Ljava/lang/String;

    move-result-object v13

    .line 72
    goto :goto_5

    .line 69
    :cond_15
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v10, "!!: event not found"

    invoke-direct {v4, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 104
    :sswitch_9
    move-object/from16 v17, v4

    const/16 v4, 0x21

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    nop

    .line 152
    :goto_5
    if-eqz v13, :cond_16

    .line 153
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .end local v12    # "neg":Z
    .end local v13    # "rep":Ljava/lang/String;
    :cond_16
    goto :goto_6

    .line 146
    .local v4, "ss":Ljava/lang/String;
    .local v10, "idx":I
    .restart local v12    # "neg":Z
    .restart local v13    # "rep":Ljava/lang/String;
    :cond_17
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 156
    .end local v4    # "ss":Ljava/lang/String;
    .end local v10    # "idx":I
    .end local v12    # "neg":Z
    .end local v13    # "rep":Ljava/lang/String;
    .end local v18    # "i":I
    .restart local v0    # "i":I
    :cond_18
    move-object/from16 v17, v4

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    nop

    .line 30
    .end local v9    # "c":C
    :goto_6
    const/4 v4, 0x1

    add-int/2addr v0, v4

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 183
    .end local v0    # "i":I
    :cond_19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x5c -> :sswitch_1
        0x5e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_9
        0x20 -> :sswitch_9
        0x21 -> :sswitch_8
        0x23 -> :sswitch_7
        0x24 -> :sswitch_6
        0x2d -> :sswitch_4
        0x30 -> :sswitch_5
        0x31 -> :sswitch_5
        0x32 -> :sswitch_5
        0x33 -> :sswitch_5
        0x34 -> :sswitch_5
        0x35 -> :sswitch_5
        0x36 -> :sswitch_5
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x39 -> :sswitch_5
        0x3f -> :sswitch_3
    .end sparse-switch
.end method

.method public expandVar(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "word"    # Ljava/lang/String;

    .line 188
    return-object p1
.end method

.method protected searchBackwards(Lorg/jline/reader/History;Ljava/lang/String;IZ)I
    .locals 3
    .param p1, "history"    # Lorg/jline/reader/History;
    .param p2, "searchTerm"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "startsWith"    # Z

    .line 192
    invoke-interface {p1, p3}, Lorg/jline/reader/History;->iterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 193
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/jline/reader/History$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jline/reader/History$Entry;

    .line 195
    .local v1, "e":Lorg/jline/reader/History$Entry;
    if-eqz p4, :cond_0

    .line 196
    invoke-interface {v1}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-interface {v1}, Lorg/jline/reader/History$Entry;->index()I

    move-result v2

    return v2

    .line 200
    :cond_0
    invoke-interface {v1}, Lorg/jline/reader/History$Entry;->line()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-interface {v1}, Lorg/jline/reader/History$Entry;->index()I

    move-result v2

    return v2

    .line 204
    .end local v1    # "e":Lorg/jline/reader/History$Entry;
    :cond_1
    goto :goto_0

    .line 205
    :cond_2
    const/4 v1, -0x1

    return v1
.end method
