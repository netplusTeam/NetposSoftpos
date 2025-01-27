.class public Lorg/apache/commons/codec/language/Metaphone;
.super Ljava/lang/Object;
.source "Metaphone.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# static fields
.field private static final FRONTV:Ljava/lang/String; = "EIY"

.field private static final VARSON:Ljava/lang/String; = "CSPTG"

.field private static final VOWELS:Ljava/lang/String; = "AEIOU"


# instance fields
.field private maxCodeLen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    .line 79
    return-void
.end method

.method private isLastChar(II)Z
    .locals 1
    .param p1, "wdsz"    # I
    .param p2, "n"    # I

    .line 370
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNextChar(Ljava/lang/StringBuilder;IC)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "matches":Z
    if-ltz p2, :cond_1

    .line 353
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    .line 354
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 356
    :cond_1
    return v0
.end method

.method private isPreviousChar(Ljava/lang/StringBuilder;IC)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "c"    # C

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "matches":Z
    if-lez p2, :cond_1

    .line 344
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 345
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 347
    :cond_1
    return v0
.end method

.method private isVowel(Ljava/lang/StringBuilder;I)Z
    .locals 2
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I

    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const-string v1, "AEIOU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/StringBuilder;
    .param p2, "index"    # I
    .param p3, "test"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "matches":Z
    if-ltz p2, :cond_0

    .line 362
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 363
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, p2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "substring":Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 366
    .end local v1    # "substring":Ljava/lang/String;
    :cond_0
    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 388
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 391
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Metaphone encode is not of type java.lang.String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 402
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCodeLen()I
    .locals 1

    .line 421
    iget v0, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return v0
.end method

.method public isMetaphoneEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "str1"    # Ljava/lang/String;
    .param p2, "str2"    # Ljava/lang/String;

    .line 414
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/Metaphone;->metaphone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public metaphone(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "txt"    # Ljava/lang/String;

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 94
    .local v2, "hard":Z
    if-eqz v1, :cond_27

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move v4, v3

    .local v4, "txtLength":I
    if-nez v3, :cond_0

    goto/16 :goto_8

    .line 98
    :cond_0
    const/4 v3, 0x1

    if-ne v4, v3, :cond_1

    .line 99
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 102
    :cond_1
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 104
    .local v5, "inwd":[C
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x28

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v6, "local":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 107
    .local v7, "code":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    aget-char v9, v5, v8

    const/16 v10, 0x48

    const/16 v11, 0x53

    sparse-switch v9, :sswitch_data_0

    .line 141
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :sswitch_0
    aput-char v11, v5, v8

    .line 138
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 139
    goto :goto_0

    .line 125
    :sswitch_1
    aget-char v9, v5, v3

    const/16 v12, 0x52

    if-ne v9, v12, :cond_2

    .line 126
    array-length v8, v5

    sub-int/2addr v8, v3

    invoke-virtual {v6, v5, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 127
    goto :goto_0

    .line 129
    :cond_2
    aget-char v9, v5, v3

    if-ne v9, v10, :cond_3

    .line 130
    array-length v9, v5

    sub-int/2addr v9, v3

    invoke-virtual {v6, v5, v3, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 131
    const/16 v9, 0x57

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 135
    goto :goto_0

    .line 111
    :sswitch_2
    aget-char v8, v5, v3

    const/16 v9, 0x4e

    if-ne v8, v9, :cond_4

    .line 112
    array-length v8, v5

    sub-int/2addr v8, v3

    invoke-virtual {v6, v5, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 114
    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 116
    goto :goto_0

    .line 118
    :sswitch_3
    aget-char v8, v5, v3

    const/16 v9, 0x45

    if-ne v8, v9, :cond_5

    .line 119
    array-length v8, v5

    sub-int/2addr v8, v3

    invoke-virtual {v6, v5, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 121
    :cond_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 123
    nop

    .line 144
    :goto_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    .line 145
    .local v8, "wdsz":I
    const/4 v9, 0x0

    .line 147
    .local v9, "n":I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v13

    if-ge v12, v13, :cond_26

    if-ge v9, v8, :cond_26

    .line 149
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    .line 151
    .local v12, "symb":C
    const/16 v13, 0x43

    if-eq v12, v13, :cond_6

    invoke-direct {v0, v6, v9, v12}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 152
    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v10

    move v10, v3

    move/from16 v3, v16

    goto/16 :goto_7

    .line 154
    :cond_6
    const/16 v3, 0x54

    const/16 v14, 0x46

    const-string v15, "EIY"

    const/16 v13, 0x58

    const/16 v10, 0x4b

    packed-switch v12, :pswitch_data_0

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 322
    :pswitch_0
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 318
    :pswitch_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 312
    :pswitch_2
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_8

    add-int/lit8 v3, v9, 0x1

    .line 313
    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 314
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 313
    :cond_7
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 312
    :cond_8
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 309
    :pswitch_3
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 292
    :pswitch_4
    const-string v10, "TIA"

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 293
    const-string v10, "TIO"

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_2

    .line 297
    :cond_9
    const-string v10, "TCH"

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 299
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 302
    :cond_a
    const-string v10, "TH"

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 303
    const/16 v3, 0x30

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 305
    :cond_b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 294
    :cond_c
    :goto_2
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 283
    :pswitch_5
    const-string v3, "SH"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 284
    const-string v3, "SIO"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 285
    const-string v3, "SIA"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_3

    .line 288
    :cond_d
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 286
    :cond_e
    :goto_3
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 280
    :pswitch_6
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 272
    :pswitch_7
    const/16 v3, 0x48

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 274
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 276
    :cond_f
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 263
    :pswitch_8
    if-lez v9, :cond_11

    .line 264
    const/16 v3, 0x43

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v3

    if-nez v3, :cond_10

    .line 265
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 264
    :cond_10
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 268
    :cond_11
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 270
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 243
    :pswitch_9
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 244
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 246
    :cond_12
    if-lez v9, :cond_13

    add-int/lit8 v3, v9, -0x1

    .line 247
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const-string v10, "CSPTG"

    invoke-virtual {v10, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_13

    .line 248
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 250
    :cond_13
    add-int/lit8 v3, v9, 0x1

    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 251
    const/16 v3, 0x48

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 250
    :cond_14
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 214
    :pswitch_a
    const/16 v3, 0x48

    add-int/lit8 v13, v9, 0x1

    invoke-direct {v0, v8, v13}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 215
    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 216
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 218
    :cond_15
    add-int/lit8 v3, v9, 0x1

    invoke-direct {v0, v8, v3}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_16

    .line 219
    const/16 v3, 0x48

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v13

    if-eqz v13, :cond_16

    add-int/lit8 v3, v9, 0x2

    .line 220
    invoke-direct {v0, v6, v3}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v3

    if-nez v3, :cond_16

    .line 221
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 223
    :cond_16
    if-lez v9, :cond_18

    .line 224
    const-string v3, "GN"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 225
    const-string v3, "GNED"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 226
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 224
    :cond_17
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 228
    :cond_18
    const/16 v3, 0x47

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 230
    const/4 v2, 0x1

    goto :goto_4

    .line 232
    :cond_19
    const/4 v2, 0x0

    .line 234
    :goto_4
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1a

    add-int/lit8 v3, v9, 0x1

    .line 235
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1a

    if-nez v2, :cond_1a

    .line 237
    const/16 v3, 0x4a

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 239
    :cond_1a
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    nop

    .line 328
    :goto_5
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 260
    :pswitch_b
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 205
    :pswitch_c
    add-int/lit8 v10, v9, 0x1

    invoke-direct {v0, v8, v10}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 206
    const/16 v10, 0x47

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v10

    if-eqz v10, :cond_1b

    add-int/lit8 v10, v9, 0x2

    .line 207
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ltz v10, :cond_1b

    .line 208
    const/16 v3, 0x4a

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x2

    const/16 v3, 0x48

    goto/16 :goto_6

    .line 210
    :cond_1b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 173
    :pswitch_d
    invoke-direct {v0, v6, v9, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 174
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1c

    add-int/lit8 v3, v9, 0x1

    .line 175
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1c

    .line 176
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 178
    :cond_1c
    const-string v3, "CIA"

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->regionMatch(Ljava/lang/StringBuilder;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 179
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    const/16 v3, 0x48

    goto/16 :goto_6

    .line 182
    :cond_1d
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v3

    if-nez v3, :cond_1e

    add-int/lit8 v3, v9, 0x1

    .line 183
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1e

    .line 184
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    const/16 v3, 0x48

    goto :goto_6

    .line 187
    :cond_1e
    invoke-direct {v0, v6, v9, v11}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 188
    const/16 v3, 0x48

    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v14

    if-eqz v14, :cond_20

    .line 189
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    goto :goto_6

    .line 187
    :cond_1f
    const/16 v3, 0x48

    .line 192
    :cond_20
    invoke-direct {v0, v6, v9, v3}, Lorg/apache/commons/codec/language/Metaphone;->isNextChar(Ljava/lang/StringBuilder;IC)Z

    move-result v14

    if-eqz v14, :cond_22

    .line 193
    if-nez v9, :cond_21

    const/4 v14, 0x3

    if-lt v8, v14, :cond_21

    .line 195
    const/4 v14, 0x2

    invoke-direct {v0, v6, v14}, Lorg/apache/commons/codec/language/Metaphone;->isVowel(Ljava/lang/StringBuilder;I)Z

    move-result v14

    if-eqz v14, :cond_21

    .line 196
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 198
    :cond_21
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 201
    :cond_22
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    goto :goto_6

    .line 165
    :pswitch_e
    const/16 v3, 0x48

    const/16 v10, 0x4d

    invoke-direct {v0, v6, v9, v10}, Lorg/apache/commons/codec/language/Metaphone;->isPreviousChar(Ljava/lang/StringBuilder;IC)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 166
    invoke-direct {v0, v8, v9}, Lorg/apache/commons/codec/language/Metaphone;->isLastChar(II)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 167
    goto :goto_6

    .line 169
    :cond_23
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    goto :goto_6

    .line 160
    :pswitch_f
    const/16 v3, 0x48

    if-nez v9, :cond_24

    .line 161
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :cond_24
    :goto_6
    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 330
    :goto_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v14

    if-le v13, v14, :cond_25

    .line 331
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/codec/language/Metaphone;->getMaxCodeLen()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 333
    .end local v12    # "symb":C
    :cond_25
    move/from16 v16, v10

    move v10, v3

    move/from16 v3, v16

    goto/16 :goto_1

    .line 334
    :cond_26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 95
    .end local v4    # "txtLength":I
    .end local v5    # "inwd":[C
    .end local v6    # "local":Ljava/lang/StringBuilder;
    .end local v7    # "code":Ljava/lang/StringBuilder;
    .end local v8    # "wdsz":I
    .end local v9    # "n":I
    :cond_27
    :goto_8
    const-string v3, ""

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_3
        0x47 -> :sswitch_2
        0x4b -> :sswitch_2
        0x50 -> :sswitch_2
        0x57 -> :sswitch_1
        0x58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_f
        :pswitch_7
        :pswitch_6
        :pswitch_b
        :pswitch_5
        :pswitch_4
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxCodeLen(I)V
    .locals 0
    .param p1, "maxCodeLen"    # I

    .line 427
    iput p1, p0, Lorg/apache/commons/codec/language/Metaphone;->maxCodeLen:I

    return-void
.end method
