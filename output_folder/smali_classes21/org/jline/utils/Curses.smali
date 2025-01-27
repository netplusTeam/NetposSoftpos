.class public final Lorg/jline/utils/Curses;
.super Ljava/lang/Object;
.source "Curses.java"


# static fields
.field private static final IFTE_ELSE:I = 0x3

.field private static final IFTE_IF:I = 0x1

.field private static final IFTE_NONE:I = 0x0

.field private static final IFTE_THEN:I = 0x2

.field private static dv:[Ljava/lang/Object;

.field private static sv:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const/16 v0, 0x1a

    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/jline/utils/Curses;->sv:[Ljava/lang/Object;

    .line 25
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/jline/utils/Curses;->dv:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static varargs doTputs(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 21
    .param p0, "out"    # Ljava/lang/Appendable;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    .line 68
    .local v0, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 69
    .local v4, "length":I
    const/4 v5, 0x0

    .line 70
    .local v5, "ifte":I
    const/4 v6, 0x1

    .line 71
    .local v6, "exec":Z
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 72
    .local v7, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    :goto_0
    if-ge v0, v4, :cond_36

    .line 73
    add-int/lit8 v8, v0, 0x1

    .end local v0    # "index":I
    .local v8, "index":I
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 74
    .local v0, "ch":C
    const/16 v9, 0x20

    const/4 v10, 0x2

    const/16 v11, 0x30

    const/4 v12, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 459
    move/from16 v20, v5

    move-object/from16 v17, v7

    .end local v5    # "ifte":I
    .end local v7    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .local v17, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .local v20, "ifte":I
    if-eqz v6, :cond_35

    .line 460
    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto/16 :goto_1d

    .line 139
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .end local v20    # "ifte":I
    .restart local v5    # "ifte":I
    .restart local v7    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    :sswitch_0
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "index":I
    .local v9, "index":I
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    if-eqz v6, :cond_0

    .line 141
    add-int/lit8 v8, v0, -0x40

    int-to-char v8, v8

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 464
    .end local v0    # "ch":C
    :cond_0
    move-object/from16 v17, v7

    move v0, v9

    goto/16 :goto_1e

    .line 76
    .end local v9    # "index":I
    .restart local v0    # "ch":C
    .restart local v8    # "index":I
    :sswitch_1
    add-int/lit8 v12, v8, 0x1

    .end local v8    # "index":I
    .local v12, "index":I
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 77
    if-lt v0, v11, :cond_3

    const/16 v8, 0x37

    if-gt v0, v8, :cond_3

    .line 78
    add-int/lit8 v9, v0, -0x30

    .line 79
    .local v9, "val":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v10, :cond_2

    .line 80
    add-int/lit8 v14, v12, 0x1

    .end local v12    # "index":I
    .local v14, "index":I
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 81
    if-lt v0, v11, :cond_1

    if-gt v0, v8, :cond_1

    .line 84
    mul-int/lit8 v12, v9, 0x8

    add-int/lit8 v15, v0, -0x30

    add-int v9, v12, v15

    .line 79
    add-int/lit8 v13, v13, 0x1

    move v12, v14

    goto :goto_1

    .line 82
    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8

    .line 86
    .end local v13    # "i":I
    .end local v14    # "index":I
    .restart local v12    # "index":I
    :cond_2
    int-to-char v8, v9

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 87
    .end local v9    # "val":I
    move-object/from16 v17, v7

    move v0, v12

    goto/16 :goto_1e

    .line 88
    :cond_3
    sparse-switch v0, :sswitch_data_1

    .line 134
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 107
    :sswitch_2
    if-eqz v6, :cond_4

    .line 108
    const/16 v8, 0x9

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 122
    :sswitch_3
    if-eqz v6, :cond_4

    .line 123
    invoke-interface {v1, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 102
    :sswitch_4
    if-eqz v6, :cond_4

    .line 103
    const/16 v8, 0xd

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 96
    :sswitch_5
    const/16 v8, 0xa

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 97
    goto :goto_2

    .line 117
    :sswitch_6
    if-eqz v6, :cond_4

    .line 118
    const/16 v8, 0xc

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 112
    :sswitch_7
    if-eqz v6, :cond_4

    .line 113
    const/16 v8, 0x8

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 91
    :sswitch_8
    if-eqz v6, :cond_4

    .line 92
    const/16 v8, 0x1b

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    .line 129
    :sswitch_9
    if-eqz v6, :cond_4

    .line 130
    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 464
    .end local v0    # "ch":C
    :cond_4
    :goto_2
    move-object/from16 v17, v7

    move v0, v12

    goto/16 :goto_1e

    .line 145
    .end local v12    # "index":I
    .restart local v0    # "ch":C
    .restart local v8    # "index":I
    :sswitch_a
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "index":I
    .local v13, "index":I
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 146
    const/16 v8, 0x5a

    const/16 v14, 0x7a

    const/16 v11, 0x41

    const/16 v9, 0x61

    const/4 v15, 0x0

    sparse-switch v0, :sswitch_data_2

    .line 355
    const/16 v8, 0x3a

    if-ne v0, v8, :cond_1f

    .line 356
    add-int/lit8 v8, v13, 0x1

    .end local v13    # "index":I
    .restart local v8    # "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v13, v8

    goto/16 :goto_f

    .line 300
    .end local v8    # "index":I
    .restart local v13    # "index":I
    :sswitch_b
    if-eqz v6, :cond_1e

    .line 301
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 302
    .local v8, "v1":I
    not-int v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v8    # "v1":I
    goto/16 :goto_e

    .line 252
    :sswitch_c
    if-eqz v6, :cond_1e

    .line 253
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 254
    .local v8, "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 255
    .local v9, "v1":I
    or-int v10, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 197
    :sswitch_d
    move v8, v13

    .line 198
    .local v8, "start":I
    :goto_3
    add-int/lit8 v9, v13, 0x1

    .end local v13    # "index":I
    .local v9, "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x7d

    if-eq v10, v11, :cond_5

    move v13, v9

    goto :goto_3

    .line 199
    :cond_5
    if-eqz v6, :cond_6

    .line 200
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 201
    .local v10, "v":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .end local v8    # "start":I
    .end local v10    # "v":I
    :cond_6
    move-object/from16 v17, v7

    move v13, v9

    goto/16 :goto_19

    .line 320
    .end local v9    # "index":I
    .restart local v13    # "index":I
    :sswitch_e
    if-eq v5, v12, :cond_8

    const/4 v8, 0x3

    if-ne v5, v8, :cond_7

    goto :goto_4

    .line 321
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 323
    :cond_8
    :goto_4
    const/4 v5, 0x2

    .line 325
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    move v12, v15

    :goto_5
    move v6, v12

    .line 326
    move-object/from16 v17, v7

    goto/16 :goto_19

    .line 153
    :sswitch_f
    add-int/lit8 v8, v13, 0x1

    .end local v13    # "index":I
    .local v8, "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 154
    if-eqz v6, :cond_a

    .line 155
    add-int/lit8 v9, v0, -0x31

    aget-object v9, v3, v9

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_a
    move-object/from16 v17, v7

    move v13, v8

    goto/16 :goto_19

    .line 238
    .end local v8    # "index":I
    .restart local v13    # "index":I
    :sswitch_10
    if-eqz v6, :cond_1e

    .line 239
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 240
    .local v8, "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 241
    .local v9, "v1":I
    rem-int v10, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 205
    :sswitch_11
    if-eqz v6, :cond_1e

    .line 206
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    .line 344
    :sswitch_12
    array-length v8, v3

    if-lt v8, v12, :cond_b

    .line 345
    aget-object v8, v3, v15

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v15

    .line 347
    :cond_b
    array-length v8, v3

    if-lt v8, v10, :cond_1e

    .line 348
    aget-object v8, v3, v12

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v12

    goto/16 :goto_e

    .line 173
    :sswitch_13
    add-int/lit8 v10, v13, 0x1

    .end local v13    # "index":I
    .local v10, "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 174
    if-lt v0, v9, :cond_c

    if-gt v0, v14, :cond_c

    .line 175
    if-eqz v6, :cond_11

    .line 176
    sget-object v8, Lorg/jline/utils/Curses;->dv:[Ljava/lang/Object;

    add-int/lit8 v9, v0, -0x61

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 178
    :cond_c
    if-lt v0, v11, :cond_d

    if-gt v0, v8, :cond_d

    .line 179
    if-eqz v6, :cond_11

    .line 180
    sget-object v8, Lorg/jline/utils/Curses;->sv:[Ljava/lang/Object;

    add-int/lit8 v9, v0, -0x41

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 183
    :cond_d
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 328
    .end local v10    # "index":I
    .restart local v13    # "index":I
    :sswitch_14
    if-ne v5, v10, :cond_f

    .line 331
    const/4 v5, 0x3

    .line 333
    if-nez v6, :cond_e

    goto :goto_6

    :cond_e
    move v12, v15

    :goto_6
    move v6, v12

    .line 334
    move-object/from16 v17, v7

    goto/16 :goto_19

    .line 329
    :cond_f
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 352
    :sswitch_15
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 353
    goto/16 :goto_e

    .line 259
    :sswitch_16
    if-eqz v6, :cond_1e

    .line 260
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 261
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 262
    .restart local v9    # "v1":I
    xor-int v10, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 159
    :sswitch_17
    add-int/lit8 v10, v13, 0x1

    .end local v13    # "index":I
    .restart local v10    # "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 160
    if-lt v0, v9, :cond_10

    if-gt v0, v14, :cond_10

    .line 161
    if-eqz v6, :cond_11

    .line 162
    sget-object v8, Lorg/jline/utils/Curses;->dv:[Ljava/lang/Object;

    add-int/lit8 v9, v0, -0x61

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v9

    goto :goto_7

    .line 164
    :cond_10
    if-lt v0, v11, :cond_12

    if-gt v0, v8, :cond_12

    .line 165
    if-eqz v6, :cond_11

    .line 166
    sget-object v8, Lorg/jline/utils/Curses;->sv:[Ljava/lang/Object;

    add-int/lit8 v9, v0, -0x41

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v8, v9

    .line 428
    :cond_11
    :goto_7
    move-object/from16 v17, v7

    move v13, v10

    goto/16 :goto_19

    .line 169
    :cond_12
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 306
    .end local v10    # "index":I
    .restart local v13    # "index":I
    :sswitch_18
    if-eqz v6, :cond_1e

    .line 307
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 308
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 309
    .restart local v9    # "v1":I
    if-nez v9, :cond_14

    if-eqz v8, :cond_13

    goto :goto_8

    :cond_13
    move v12, v15

    :cond_14
    :goto_8
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 287
    :sswitch_19
    if-eqz v6, :cond_1e

    .line 288
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 289
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 290
    .restart local v9    # "v1":I
    if-eqz v9, :cond_15

    if-eqz v8, :cond_15

    goto :goto_9

    :cond_15
    move v12, v15

    :goto_9
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 313
    :sswitch_1a
    if-nez v5, :cond_16

    .line 316
    const/4 v5, 0x1

    .line 318
    move-object/from16 v17, v7

    goto/16 :goto_19

    .line 314
    :cond_16
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 273
    :sswitch_1b
    if-eqz v6, :cond_1e

    .line 274
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 275
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 276
    .restart local v9    # "v1":I
    if-le v9, v8, :cond_17

    goto :goto_a

    :cond_17
    move v12, v15

    :goto_a
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 266
    :sswitch_1c
    if-eqz v6, :cond_1e

    .line 267
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 268
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 269
    .restart local v9    # "v1":I
    if-ne v9, v8, :cond_18

    goto :goto_b

    :cond_18
    move v12, v15

    :goto_b
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 280
    :sswitch_1d
    if-eqz v6, :cond_1e

    .line 281
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 282
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 283
    .restart local v9    # "v1":I
    if-ge v9, v8, :cond_19

    goto :goto_c

    :cond_19
    move v12, v15

    :goto_c
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 336
    :sswitch_1e
    if-eqz v5, :cond_1a

    if-eq v5, v12, :cond_1a

    .line 339
    const/4 v5, 0x0

    .line 341
    const/4 v6, 0x1

    .line 342
    move-object/from16 v17, v7

    goto/16 :goto_19

    .line 337
    :cond_1a
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 231
    :sswitch_1f
    if-eqz v6, :cond_1e

    .line 232
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 233
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 234
    .restart local v9    # "v1":I
    div-int v10, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 217
    :sswitch_20
    if-eqz v6, :cond_1e

    .line 218
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 219
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 220
    .restart local v9    # "v1":I
    sub-int v10, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 210
    :sswitch_21
    if-eqz v6, :cond_1e

    .line 211
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 212
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 213
    .restart local v9    # "v1":I
    add-int v10, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto/16 :goto_e

    .line 224
    :sswitch_22
    if-eqz v6, :cond_1e

    .line 225
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 226
    .restart local v8    # "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 227
    .restart local v9    # "v1":I
    mul-int v10, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto :goto_e

    .line 187
    :sswitch_23
    add-int/lit8 v8, v13, 0x1

    .end local v13    # "index":I
    .local v8, "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 188
    if-eqz v6, :cond_1b

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_1b
    add-int/lit8 v13, v8, 0x1

    .end local v8    # "index":I
    .restart local v13    # "index":I
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 192
    const/16 v8, 0x27

    if-ne v0, v8, :cond_1c

    move-object/from16 v17, v7

    goto/16 :goto_19

    .line 193
    :cond_1c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 245
    :sswitch_24
    if-eqz v6, :cond_1e

    .line 246
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 247
    .local v8, "v2":I
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v9

    .line 248
    .restart local v9    # "v1":I
    and-int v10, v9, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    .end local v8    # "v2":I
    .end local v9    # "v1":I
    goto :goto_e

    .line 148
    :sswitch_25
    if-eqz v6, :cond_1e

    .line 149
    const/16 v8, 0x25

    invoke-interface {v1, v8}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_e

    .line 294
    :sswitch_26
    if-eqz v6, :cond_1e

    .line 295
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v8

    .line 296
    .local v8, "v1":I
    if-nez v8, :cond_1d

    goto :goto_d

    :cond_1d
    move v12, v15

    :goto_d
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .end local v8    # "v1":I
    :cond_1e
    :goto_e
    move-object/from16 v17, v7

    goto/16 :goto_19

    .line 358
    :cond_1f
    :goto_f
    const/4 v8, 0x0

    .line 359
    .local v8, "alternate":Z
    const/4 v9, 0x0

    .line 360
    .local v9, "left":Z
    const/4 v10, 0x0

    .line 361
    .local v10, "space":Z
    const/4 v11, 0x0

    .line 362
    .local v11, "plus":Z
    const/4 v14, 0x0

    .line 363
    .local v14, "width":I
    const/16 v19, -0x1

    .line 365
    .local v19, "prec":I
    :goto_10
    const-string v12, "-+# "

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_20

    .line 366
    sparse-switch v0, :sswitch_data_3

    goto :goto_11

    .line 367
    :sswitch_27
    const/4 v9, 0x1

    goto :goto_11

    .line 368
    :sswitch_28
    const/4 v11, 0x1

    goto :goto_11

    .line 369
    :sswitch_29
    const/4 v8, 0x1

    goto :goto_11

    .line 370
    :sswitch_2a
    const/4 v10, 0x1

    .line 372
    :goto_11
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v13, v12

    const/4 v12, 0x1

    goto :goto_10

    .line 374
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_20
    const-string v12, "123456789"

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const-string v15, "0123456789"

    if-ltz v12, :cond_22

    .line 376
    :goto_12
    mul-int/lit8 v12, v14, 0xa

    add-int/lit8 v20, v0, -0x30

    add-int v14, v12, v20

    .line 377
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 378
    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_21

    move v13, v12

    goto :goto_13

    :cond_21
    move v13, v12

    goto :goto_12

    .line 380
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_22
    :goto_13
    const/16 v12, 0x2e

    if-ne v0, v12, :cond_23

    .line 381
    const/16 v19, 0x0

    .line 382
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v13, v12

    .line 384
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_23
    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-ltz v12, :cond_25

    .line 386
    :goto_14
    mul-int/lit8 v12, v19, 0xa

    add-int/lit8 v20, v0, -0x30

    add-int v19, v12, v20

    .line 387
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 388
    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-gez v13, :cond_24

    move v13, v12

    move/from16 v12, v19

    goto :goto_15

    :cond_24
    move v13, v12

    goto :goto_14

    .line 384
    .end local v12    # "index":I
    .restart local v13    # "index":I
    :cond_25
    move/from16 v12, v19

    .line 390
    .end local v19    # "prec":I
    .local v12, "prec":I
    :goto_15
    const-string v15, "cdoxXs"

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-ltz v15, :cond_2f

    .line 393
    move v15, v0

    .line 394
    .local v15, "cnv":I
    if-eqz v6, :cond_2e

    .line 396
    move/from16 v19, v0

    .end local v0    # "ch":C
    .local v19, "ch":C
    const/16 v0, 0x73

    if-ne v15, v0, :cond_27

    .line 397
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    .local v0, "res":Ljava/lang/String;
    if-ltz v12, :cond_26

    .line 399
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move/from16 v20, v5

    move-object/from16 v17, v7

    goto :goto_16

    .line 398
    :cond_26
    move/from16 v20, v5

    move-object/from16 v17, v7

    goto :goto_16

    .line 402
    .end local v0    # "res":Ljava/lang/String;
    :cond_27
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/jline/utils/Curses;->toInteger(Ljava/lang/Object;)I

    move-result v0

    .line 403
    .local v0, "p":I
    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v20, v5

    .end local v5    # "ifte":I
    .restart local v20    # "ifte":I
    const/16 v5, 0x10

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 404
    .local v3, "fmt":Ljava/lang/StringBuilder;
    const/16 v5, 0x25

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    if-eqz v8, :cond_28

    .line 406
    const/16 v5, 0x23

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 408
    :cond_28
    if-eqz v11, :cond_29

    .line 409
    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    :cond_29
    if-eqz v10, :cond_2a

    .line 412
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_2a
    if-ltz v12, :cond_2b

    .line 415
    const/16 v5, 0x30

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 418
    :cond_2b
    int-to-char v5, v15

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v3

    move-object/from16 v17, v7

    const/4 v3, 0x1

    .end local v3    # "fmt":Ljava/lang/StringBuilder;
    .end local v7    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .local v16, "fmt":Ljava/lang/StringBuilder;
    .restart local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v7, v18

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 421
    .end local v16    # "fmt":Ljava/lang/StringBuilder;
    .local v0, "res":Ljava/lang/String;
    :goto_16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v14, v3, :cond_2d

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v9, :cond_2c

    const-string v5, "-"

    goto :goto_17

    :cond_2c
    const-string v5, ""

    :goto_17
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "s"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 424
    :cond_2d
    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_18

    .line 394
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .end local v19    # "ch":C
    .end local v20    # "ifte":I
    .local v0, "ch":C
    .restart local v5    # "ifte":I
    .restart local v7    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    :cond_2e
    move/from16 v19, v0

    move/from16 v20, v5

    move-object/from16 v17, v7

    .line 428
    .end local v0    # "ch":C
    .end local v5    # "ifte":I
    .end local v7    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .end local v8    # "alternate":Z
    .end local v9    # "left":Z
    .end local v10    # "space":Z
    .end local v11    # "plus":Z
    .end local v12    # "prec":I
    .end local v14    # "width":I
    .end local v15    # "cnv":I
    .restart local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .restart local v19    # "ch":C
    .restart local v20    # "ifte":I
    :goto_18
    move/from16 v0, v19

    move/from16 v5, v20

    .end local v19    # "ch":C
    .end local v20    # "ifte":I
    .restart local v0    # "ch":C
    .restart local v5    # "ifte":I
    :goto_19
    move v0, v13

    goto :goto_1e

    .line 391
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .restart local v7    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .restart local v8    # "alternate":Z
    .restart local v9    # "left":Z
    .restart local v10    # "space":Z
    .restart local v11    # "plus":Z
    .restart local v12    # "prec":I
    .restart local v14    # "width":I
    :cond_2f
    move/from16 v19, v0

    .end local v0    # "ch":C
    .restart local v19    # "ch":C
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 430
    .end local v9    # "left":Z
    .end local v10    # "space":Z
    .end local v11    # "plus":Z
    .end local v12    # "prec":I
    .end local v13    # "index":I
    .end local v14    # "width":I
    .end local v19    # "ch":C
    .restart local v0    # "ch":C
    .local v8, "index":I
    :sswitch_2b
    move/from16 v20, v5

    move-object/from16 v17, v7

    .end local v5    # "ifte":I
    .end local v7    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .restart local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .restart local v20    # "ifte":I
    if-ge v8, v4, :cond_34

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3c

    if-ne v3, v5, :cond_34

    .line 432
    const/4 v3, 0x0

    .line 433
    .local v3, "nb":I
    :goto_1a
    const/4 v5, 0x1

    add-int/2addr v8, v5

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v9, v7

    .end local v0    # "ch":C
    .local v9, "ch":C
    const/16 v0, 0x3e

    if-eq v7, v0, :cond_32

    .line 434
    const/16 v0, 0x30

    if-lt v9, v0, :cond_30

    const/16 v7, 0x39

    if-gt v9, v7, :cond_30

    .line 435
    mul-int/lit8 v7, v3, 0xa

    add-int/lit8 v10, v9, -0x30

    add-int v3, v7, v10

    move v0, v9

    goto :goto_1a

    .line 436
    :cond_30
    const/16 v7, 0x2a

    if-ne v9, v7, :cond_31

    goto :goto_1b

    .line 438
    :cond_31
    nop

    .line 433
    :goto_1b
    move v0, v9

    goto :goto_1a

    .line 444
    :cond_32
    add-int/lit8 v8, v8, 0x1

    .line 446
    :try_start_0
    instance-of v0, v1, Ljava/io/Flushable;

    if-eqz v0, :cond_33

    .line 447
    move-object v0, v1

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    .line 449
    :cond_33
    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    goto :goto_1c

    .line 450
    :catch_0
    move-exception v0

    .line 452
    .end local v3    # "nb":I
    :goto_1c
    move v0, v8

    move/from16 v5, v20

    goto :goto_1e

    .line 453
    .end local v9    # "ch":C
    .restart local v0    # "ch":C
    :cond_34
    if-eqz v6, :cond_35

    .line 454
    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 464
    .end local v0    # "ch":C
    :cond_35
    :goto_1d
    move v0, v8

    move/from16 v5, v20

    .end local v8    # "index":I
    .end local v20    # "ifte":I
    .local v0, "index":I
    .restart local v5    # "ifte":I
    :goto_1e
    move-object/from16 v3, p2

    move-object/from16 v7, v17

    goto/16 :goto_0

    .line 465
    .end local v17    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    .restart local v7    # "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Object;>;"
    :cond_36
    return-void

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_2b
        0x25 -> :sswitch_a
        0x5c -> :sswitch_1
        0x5e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x3a -> :sswitch_9
        0x45 -> :sswitch_8
        0x5c -> :sswitch_9
        0x5e -> :sswitch_9
        0x62 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_6
        0x6e -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_26
        0x25 -> :sswitch_25
        0x26 -> :sswitch_24
        0x27 -> :sswitch_23
        0x2a -> :sswitch_22
        0x2b -> :sswitch_21
        0x2d -> :sswitch_20
        0x2f -> :sswitch_1f
        0x3b -> :sswitch_1e
        0x3c -> :sswitch_1d
        0x3d -> :sswitch_1c
        0x3e -> :sswitch_1b
        0x3f -> :sswitch_1a
        0x41 -> :sswitch_19
        0x4f -> :sswitch_18
        0x50 -> :sswitch_17
        0x5e -> :sswitch_16
        0x64 -> :sswitch_15
        0x65 -> :sswitch_14
        0x67 -> :sswitch_13
        0x69 -> :sswitch_12
        0x6c -> :sswitch_11
        0x6d -> :sswitch_10
        0x70 -> :sswitch_f
        0x74 -> :sswitch_e
        0x7b -> :sswitch_d
        0x7c -> :sswitch_c
        0x7e -> :sswitch_b
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x20 -> :sswitch_2a
        0x23 -> :sswitch_29
        0x2b -> :sswitch_28
        0x2d -> :sswitch_27
    .end sparse-switch
.end method

.method private static toInteger(Ljava/lang/Object;)I
    .locals 1
    .param p0, "pop"    # Ljava/lang/Object;

    .line 468
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 469
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 470
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 471
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 473
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static varargs tputs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "cap"    # Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/Object;

    .line 43
    if-eqz p0, :cond_0

    .line 44
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 45
    .local v0, "sw":Ljava/io/StringWriter;
    invoke-static {v0, p0, p1}, Lorg/jline/utils/Curses;->tputs(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 48
    .end local v0    # "sw":Ljava/io/StringWriter;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs tputs(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "out"    # Ljava/lang/Appendable;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .line 60
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/jline/utils/Curses;->doTputs(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    nop

    .line 64
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
