.class public final Lorg/apache/commons/lang/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static compare(DD)I
    .locals 7
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .line 494
    cmpg-double v0, p0, p2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 495
    return v1

    .line 497
    :cond_0
    cmpl-double v0, p0, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 498
    return v2

    .line 504
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 505
    .local v3, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 506
    .local v5, "rhsBits":J
    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 507
    const/4 v0, 0x0

    return v0

    .line 515
    :cond_2
    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    .line 516
    return v1

    .line 518
    :cond_3
    return v2
.end method

.method public static compare(FF)I
    .locals 4
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .line 555
    cmpg-float v0, p0, p1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 556
    return v1

    .line 558
    :cond_0
    cmpl-float v0, p0, p1

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 559
    return v2

    .line 565
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 566
    .local v0, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 567
    .local v3, "rhsBits":I
    if-ne v0, v3, :cond_2

    .line 568
    const/4 v1, 0x0

    return v1

    .line 576
    :cond_2
    if-ge v0, v3, :cond_3

    .line 577
    return v1

    .line 579
    :cond_3
    return v2
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 379
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, "bd":Ljava/math/BigDecimal;
    return-object v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 367
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "bi":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 332
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 321
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 345
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "val"    # Ljava/lang/String;

    .line 356
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 16
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 139
    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 140
    return-object v0

    .line 142
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1b

    .line 145
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " is not a valid number."

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    :goto_0
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    return-object v0

    .line 155
    :cond_3
    const-string v0, "0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "-0x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_c

    .line 158
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 162
    .local v2, "lastChar":C
    const/16 v0, 0x2e

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 163
    .local v6, "decPos":I
    const/16 v0, 0x65

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v7, 0x45

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    .line 165
    .local v7, "expPos":I
    const/4 v0, -0x1

    if-le v6, v0, :cond_7

    .line 167
    if-le v7, v0, :cond_6

    .line 168
    if-lt v7, v6, :cond_5

    .line 171
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "dec":Ljava/lang/String;
    goto :goto_1

    .line 169
    .end local v8    # "dec":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_6
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 175
    .restart local v8    # "dec":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .local v9, "mant":Ljava/lang/String;
    goto :goto_3

    .line 177
    .end local v8    # "dec":Ljava/lang/String;
    .end local v9    # "mant":Ljava/lang/String;
    :cond_7
    if-le v7, v0, :cond_8

    .line 178
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v8, "mant":Ljava/lang/String;
    goto :goto_2

    .line 180
    .end local v8    # "mant":Ljava/lang/String;
    :cond_8
    move-object/from16 v8, p0

    move-object v9, v8

    .line 182
    .restart local v9    # "mant":Ljava/lang/String;
    :goto_2
    const/4 v8, 0x0

    .line 184
    .local v8, "dec":Ljava/lang/String;
    :goto_3
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    if-nez v10, :cond_12

    .line 185
    if-le v7, v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    if-ge v7, v0, :cond_9

    .line 186
    add-int/lit8 v0, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v5

    invoke-virtual {v1, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .local v0, "exp":Ljava/lang/String;
    goto :goto_4

    .line 188
    .end local v0    # "exp":Ljava/lang/String;
    :cond_9
    const/4 v0, 0x0

    move-object v10, v0

    .line 191
    .local v10, "exp":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 192
    .local v14, "numeric":Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v10}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v5

    goto :goto_5

    :cond_a
    move v0, v4

    :goto_5
    move v15, v0

    .line 193
    .local v15, "allZeros":Z
    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_8

    .line 196
    :sswitch_0
    if-nez v8, :cond_d

    if-nez v10, :cond_d

    invoke-virtual {v14, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_b

    invoke-virtual {v14, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    invoke-static {v14}, Lorg/apache/commons/lang/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    :cond_c
    :try_start_0
    invoke-static {v14}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 204
    invoke-static {v14}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 207
    :cond_d
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :sswitch_1
    :try_start_1
    invoke-static {v14}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 212
    .local v0, "f":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    cmpl-float v4, v4, v11

    if-nez v4, :cond_e

    if-eqz v15, :cond_f

    .line 215
    :cond_e
    return-object v0

    .line 220
    .end local v0    # "f":Ljava/lang/Float;
    :cond_f
    goto :goto_6

    .line 218
    :catch_1
    move-exception v0

    .line 225
    :goto_6
    :sswitch_2
    :try_start_2
    invoke-static {v14}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 226
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    float-to-double v4, v4

    cmpl-double v4, v4, v12

    if-nez v4, :cond_10

    if-eqz v15, :cond_11

    .line 227
    :cond_10
    return-object v0

    .line 231
    .end local v0    # "d":Ljava/lang/Double;
    :cond_11
    goto :goto_7

    .line 229
    :catch_2
    move-exception v0

    .line 233
    :goto_7
    :try_start_3
    invoke-static {v14}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 234
    :catch_3
    move-exception v0

    .line 239
    :goto_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    .end local v10    # "exp":Ljava/lang/String;
    .end local v14    # "numeric":Ljava/lang/String;
    .end local v15    # "allZeros":Z
    :cond_12
    if-le v7, v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    if-ge v7, v0, :cond_13

    .line 246
    add-int/lit8 v0, v7, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .local v0, "exp":Ljava/lang/String;
    goto :goto_9

    .line 248
    .end local v0    # "exp":Ljava/lang/String;
    :cond_13
    const/4 v0, 0x0

    move-object v3, v0

    .line 250
    .local v3, "exp":Ljava/lang/String;
    :goto_9
    if-nez v8, :cond_14

    if-nez v3, :cond_14

    .line 253
    :try_start_4
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v0

    .line 254
    :catch_4
    move-exception v0

    .line 258
    :try_start_5
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v0

    .line 259
    :catch_5
    move-exception v0

    .line 262
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 266
    :cond_14
    invoke-static {v9}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {v3}, Lorg/apache/commons/lang/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v4, v5

    .line 268
    .local v4, "allZeros":Z
    :cond_15
    :try_start_6
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    .line 269
    .local v0, "f":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->isInfinite()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    cmpl-float v5, v5, v11

    if-nez v5, :cond_16

    if-eqz v4, :cond_17

    .line 270
    :cond_16
    return-object v0

    .line 274
    .end local v0    # "f":Ljava/lang/Float;
    :cond_17
    goto :goto_a

    .line 272
    :catch_6
    move-exception v0

    .line 276
    :goto_a
    :try_start_7
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    .line 277
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->isInfinite()Z

    move-result v5

    if-nez v5, :cond_19

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    cmpl-double v5, v10, v12

    if-nez v5, :cond_18

    if-eqz v4, :cond_19

    .line 278
    :cond_18
    return-object v0

    .line 282
    .end local v0    # "d":Ljava/lang/Double;
    :cond_19
    goto :goto_b

    .line 280
    :catch_7
    move-exception v0

    .line 284
    :goto_b
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 156
    .end local v2    # "lastChar":C
    .end local v3    # "exp":Ljava/lang/String;
    .end local v4    # "allZeros":Z
    .end local v6    # "decPos":I
    .end local v7    # "expPos":I
    .end local v8    # "dec":Ljava/lang/String;
    .end local v9    # "mant":Ljava/lang/String;
    :cond_1a
    :goto_c
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 143
    :cond_1b
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v2, "\"\" is not a valid number."

    invoke-direct {v0, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x46 -> :sswitch_1
        0x4c -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_1
        0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method private static isAllZeros(Ljava/lang/String;)Z
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 300
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 301
    return v0

    .line 303
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 304
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 305
    return v2

    .line 303
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 308
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0
.end method

.method public static isDigits(Ljava/lang/String;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 596
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 599
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 600
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 601
    return v0

    .line 599
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 597
    :cond_3
    :goto_1
    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 16
    .param p0, "str"    # Ljava/lang/String;

    .line 621
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 622
    return v1

    .line 624
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 625
    .local v0, "chars":[C
    array-length v2, v0

    .line 626
    .local v2, "sz":I
    const/4 v3, 0x0

    .line 627
    .local v3, "hasExp":Z
    const/4 v4, 0x0

    .line 628
    .local v4, "hasDecPoint":Z
    const/4 v5, 0x0

    .line 629
    .local v5, "allowSigns":Z
    const/4 v6, 0x0

    .line 631
    .local v6, "foundDigit":Z
    aget-char v7, v0, v1

    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v1

    .line 632
    .local v7, "start":I
    :goto_0
    add-int/lit8 v10, v7, 0x1

    const/16 v11, 0x46

    const/16 v12, 0x66

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-le v2, v10, :cond_8

    .line 633
    aget-char v10, v0, v7

    if-ne v10, v14, :cond_8

    add-int/lit8 v10, v7, 0x1

    aget-char v10, v0, v10

    const/16 v15, 0x78

    if-ne v10, v15, :cond_8

    .line 634
    add-int/lit8 v8, v7, 0x2

    .line 635
    .local v8, "i":I
    if-ne v8, v2, :cond_2

    .line 636
    return v1

    .line 639
    :cond_2
    :goto_1
    array-length v10, v0

    if-ge v8, v10, :cond_7

    .line 640
    aget-char v10, v0, v8

    if-lt v10, v14, :cond_3

    aget-char v10, v0, v8

    if-le v10, v13, :cond_5

    :cond_3
    aget-char v10, v0, v8

    const/16 v15, 0x61

    if-lt v10, v15, :cond_4

    aget-char v10, v0, v8

    if-le v10, v12, :cond_5

    :cond_4
    aget-char v10, v0, v8

    const/16 v15, 0x41

    if-lt v10, v15, :cond_6

    aget-char v10, v0, v8

    if-le v10, v11, :cond_5

    goto :goto_2

    .line 639
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 643
    :cond_6
    :goto_2
    return v1

    .line 646
    :cond_7
    return v9

    .line 649
    .end local v8    # "i":I
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 651
    move v10, v7

    .line 654
    .local v10, "i":I
    :goto_3
    const/16 v15, 0x45

    const/16 v8, 0x65

    if-lt v10, v2, :cond_14

    add-int/lit8 v1, v2, 0x1

    if-ge v10, v1, :cond_9

    if-eqz v5, :cond_9

    if-nez v6, :cond_9

    goto :goto_8

    .line 687
    :cond_9
    array-length v1, v0

    if-ge v10, v1, :cond_12

    .line 688
    aget-char v1, v0, v10

    if-lt v1, v14, :cond_a

    aget-char v1, v0, v10

    if-gt v1, v13, :cond_a

    .line 690
    return v9

    .line 692
    :cond_a
    aget-char v1, v0, v10

    if-eq v1, v8, :cond_11

    aget-char v1, v0, v10

    if-ne v1, v15, :cond_b

    goto :goto_6

    .line 696
    :cond_b
    if-nez v5, :cond_d

    aget-char v1, v0, v10

    const/16 v8, 0x64

    if-eq v1, v8, :cond_c

    aget-char v1, v0, v10

    const/16 v8, 0x44

    if-eq v1, v8, :cond_c

    aget-char v1, v0, v10

    if-eq v1, v12, :cond_c

    aget-char v1, v0, v10

    if-ne v1, v11, :cond_d

    .line 701
    :cond_c
    return v6

    .line 703
    :cond_d
    aget-char v1, v0, v10

    const/16 v8, 0x6c

    if-eq v1, v8, :cond_f

    aget-char v1, v0, v10

    const/16 v8, 0x4c

    if-ne v1, v8, :cond_e

    goto :goto_4

    .line 709
    :cond_e
    const/4 v1, 0x0

    return v1

    .line 706
    :cond_f
    :goto_4
    if-eqz v6, :cond_10

    if-nez v3, :cond_10

    move v1, v9

    goto :goto_5

    :cond_10
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 694
    :cond_11
    :goto_6
    const/4 v1, 0x0

    return v1

    .line 713
    :cond_12
    if-nez v5, :cond_13

    if-eqz v6, :cond_13

    move v1, v9

    goto :goto_7

    :cond_13
    const/4 v1, 0x0

    :goto_7
    return v1

    .line 655
    :cond_14
    :goto_8
    aget-char v1, v0, v10

    if-lt v1, v14, :cond_15

    aget-char v1, v0, v10

    if-gt v1, v13, :cond_15

    .line 656
    const/4 v1, 0x1

    .line 657
    .end local v6    # "foundDigit":Z
    .local v1, "foundDigit":Z
    const/4 v5, 0x0

    move v6, v1

    const/4 v1, 0x0

    const/16 v8, 0x2d

    goto :goto_c

    .line 659
    .end local v1    # "foundDigit":Z
    .restart local v6    # "foundDigit":Z
    :cond_15
    aget-char v1, v0, v10

    const/16 v9, 0x2e

    if-ne v1, v9, :cond_18

    .line 660
    if-nez v4, :cond_17

    if-eqz v3, :cond_16

    goto :goto_9

    .line 664
    :cond_16
    const/4 v1, 0x1

    move v4, v1

    const/4 v1, 0x0

    const/16 v8, 0x2d

    .end local v4    # "hasDecPoint":Z
    .local v1, "hasDecPoint":Z
    goto :goto_c

    .line 662
    .end local v1    # "hasDecPoint":Z
    .restart local v4    # "hasDecPoint":Z
    :cond_17
    :goto_9
    const/4 v1, 0x0

    return v1

    .line 665
    :cond_18
    aget-char v1, v0, v10

    if-eq v1, v8, :cond_1d

    aget-char v1, v0, v10

    if-ne v1, v15, :cond_19

    const/4 v1, 0x0

    const/16 v8, 0x2d

    goto :goto_b

    .line 676
    :cond_19
    aget-char v1, v0, v10

    const/16 v8, 0x2b

    if-eq v1, v8, :cond_1b

    aget-char v1, v0, v10

    const/16 v8, 0x2d

    if-ne v1, v8, :cond_1a

    const/4 v1, 0x0

    goto :goto_a

    .line 683
    :cond_1a
    const/4 v1, 0x0

    return v1

    .line 676
    :cond_1b
    const/4 v1, 0x0

    const/16 v8, 0x2d

    .line 677
    :goto_a
    if-nez v5, :cond_1c

    .line 678
    return v1

    .line 680
    :cond_1c
    const/4 v5, 0x0

    .line 681
    const/4 v6, 0x0

    goto :goto_c

    .line 665
    :cond_1d
    const/4 v1, 0x0

    const/16 v8, 0x2d

    .line 667
    :goto_b
    if-eqz v3, :cond_1e

    .line 669
    return v1

    .line 671
    :cond_1e
    if-nez v6, :cond_1f

    .line 672
    return v1

    .line 674
    :cond_1f
    const/4 v3, 0x1

    .line 675
    const/4 v5, 0x1

    .line 685
    :goto_c
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x1

    goto/16 :goto_3
.end method

.method public static maximum(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 448
    if-le p1, p0, :cond_0

    .line 449
    move p0, p1

    .line 451
    :cond_0
    if-le p2, p0, :cond_1

    .line 452
    move p0, p2

    .line 454
    :cond_1
    return p0
.end method

.method public static maximum(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 430
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 431
    move-wide p0, p2

    .line 433
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 434
    move-wide p0, p4

    .line 436
    :cond_1
    return-wide p0
.end method

.method public static minimum(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 412
    if-ge p1, p0, :cond_0

    .line 413
    move p0, p1

    .line 415
    :cond_0
    if-ge p2, p0, :cond_1

    .line 416
    move p0, p2

    .line 418
    :cond_1
    return p0
.end method

.method public static minimum(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 394
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 395
    move-wide p0, p2

    .line 397
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 398
    move-wide p0, p4

    .line 400
    :cond_1
    return-wide p0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/NumberUtils;->stringToInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 74
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method
