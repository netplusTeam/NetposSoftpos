.class public final Lorg/apache/commons/lang/math/Fraction;
.super Ljava/lang/Number;
.source "Fraction.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final FOUR_FIFTHS:Lorg/apache/commons/lang/math/Fraction;

.field public static final ONE:Lorg/apache/commons/lang/math/Fraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/lang/math/Fraction;

.field public static final ONE_HALF:Lorg/apache/commons/lang/math/Fraction;

.field public static final ONE_QUARTER:Lorg/apache/commons/lang/math/Fraction;

.field public static final ONE_THIRD:Lorg/apache/commons/lang/math/Fraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/lang/math/Fraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/lang/math/Fraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/lang/math/Fraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/lang/math/Fraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/lang/math/Fraction;

.field public static final ZERO:Lorg/apache/commons/lang/math/Fraction;

.field private static final serialVersionUID:J = 0x3b76f0847842L


# instance fields
.field private final denominator:I

.field private transient hashCode:I

.field private final numerator:I

.field private transient toProperString:Ljava/lang/String;

.field private transient toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 50
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->ZERO:Lorg/apache/commons/lang/math/Fraction;

    .line 54
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->ONE:Lorg/apache/commons/lang/math/Fraction;

    .line 58
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->ONE_HALF:Lorg/apache/commons/lang/math/Fraction;

    .line 62
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->ONE_THIRD:Lorg/apache/commons/lang/math/Fraction;

    .line 66
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->TWO_THIRDS:Lorg/apache/commons/lang/math/Fraction;

    .line 70
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->ONE_QUARTER:Lorg/apache/commons/lang/math/Fraction;

    .line 74
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->TWO_QUARTERS:Lorg/apache/commons/lang/math/Fraction;

    .line 78
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->THREE_QUARTERS:Lorg/apache/commons/lang/math/Fraction;

    .line 82
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    const/4 v5, 0x5

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->ONE_FIFTH:Lorg/apache/commons/lang/math/Fraction;

    .line 86
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->TWO_FIFTHS:Lorg/apache/commons/lang/math/Fraction;

    .line 90
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->THREE_FIFTHS:Lorg/apache/commons/lang/math/Fraction;

    .line 94
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang/math/Fraction;->FOUR_FIFTHS:Lorg/apache/commons/lang/math/Fraction;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/lang/math/Fraction;->hashCode:I

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toString:Ljava/lang/String;

    .line 117
    iput-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    .line 128
    iput p1, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    .line 129
    iput p2, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    .line 130
    return-void
.end method

.method private static addAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 667
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 668
    .local v0, "s":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 672
    long-to-int v2, v0

    return v2

    .line 670
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: add"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private addSub(Lorg/apache/commons/lang/math/Fraction;Z)Lorg/apache/commons/lang/math/Fraction;
    .locals 11
    .param p1, "fraction"    # Lorg/apache/commons/lang/math/Fraction;
    .param p2, "isAdd"    # Z

    .line 732
    if-eqz p1, :cond_8

    .line 736
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-nez v0, :cond_1

    .line 737
    if-eqz p2, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Fraction;->negate()Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    :goto_0
    return-object v0

    .line 739
    :cond_1
    iget v0, p1, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-nez v0, :cond_2

    .line 740
    return-object p0

    .line 744
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    iget v1, p1, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 745
    .local v0, "d1":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 747
    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    iget v2, p1, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang/math/Fraction;->mulAndCheck(II)I

    move-result v1

    .line 748
    .local v1, "uvp":I
    iget v2, p1, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    iget v3, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-static {v2, v3}, Lorg/apache/commons/lang/math/Fraction;->mulAndCheck(II)I

    move-result v2

    .line 749
    .local v2, "upv":I
    new-instance v3, Lorg/apache/commons/lang/math/Fraction;

    if-eqz p2, :cond_3

    invoke-static {v1, v2}, Lorg/apache/commons/lang/math/Fraction;->addAndCheck(II)I

    move-result v4

    goto :goto_1

    :cond_3
    invoke-static {v1, v2}, Lorg/apache/commons/lang/math/Fraction;->subAndCheck(II)I

    move-result v4

    :goto_1
    iget v5, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    iget v6, p1, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-static {v5, v6}, Lorg/apache/commons/lang/math/Fraction;->mulPosAndCheck(II)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    return-object v3

    .line 756
    .end local v1    # "uvp":I
    .end local v2    # "upv":I
    :cond_4
    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p1, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 758
    .local v1, "uvp":Ljava/math/BigInteger;
    iget v2, p1, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v3, v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 760
    .local v2, "upv":Ljava/math/BigInteger;
    if-eqz p2, :cond_5

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 763
    .local v3, "t":Ljava/math/BigInteger;
    :goto_2
    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 764
    .local v4, "tmodd1":I
    if-nez v4, :cond_6

    move v5, v0

    goto :goto_3

    :cond_6
    invoke-static {v4, v0}, Lorg/apache/commons/lang/math/Fraction;->greatestCommonDivisor(II)I

    move-result v5

    .line 767
    .local v5, "d2":I
    :goto_3
    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 768
    .local v6, "w":Ljava/math/BigInteger;
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    const/16 v8, 0x1f

    if-gt v7, v8, :cond_7

    .line 772
    new-instance v7, Lorg/apache/commons/lang/math/Fraction;

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    iget v9, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v9, v0

    iget v10, p1, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v10, v5

    invoke-static {v9, v10}, Lorg/apache/commons/lang/math/Fraction;->mulPosAndCheck(II)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    return-object v7

    .line 769
    :cond_7
    new-instance v7, Ljava/lang/ArithmeticException;

    const-string v8, "overflow: numerator too large after multiply"

    invoke-direct {v7, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 733
    .end local v0    # "d1":I
    .end local v1    # "uvp":Ljava/math/BigInteger;
    .end local v2    # "upv":Ljava/math/BigInteger;
    .end local v3    # "t":Ljava/math/BigInteger;
    .end local v4    # "tmodd1":I
    .end local v5    # "d2":I
    .end local v6    # "w":Ljava/math/BigInteger;
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fraction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(D)Lorg/apache/commons/lang/math/Fraction;
    .locals 30
    .param p0, "value"    # D

    .line 252
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 253
    .local v0, "sign":I
    :goto_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 254
    .end local p0    # "value":D
    .local v2, "value":D
    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4

    .line 258
    double-to-int v4, v2

    .line 259
    .local v4, "wholeNumber":I
    int-to-double v5, v4

    sub-double/2addr v2, v5

    .line 261
    const/4 v5, 0x0

    .line 262
    .local v5, "numer0":I
    const/4 v6, 0x1

    .line 263
    .local v6, "denom0":I
    const/4 v7, 0x1

    .line 264
    .local v7, "numer1":I
    const/4 v8, 0x0

    .line 265
    .local v8, "denom1":I
    const/4 v9, 0x0

    .line 266
    .local v9, "numer2":I
    const/4 v10, 0x0

    .line 267
    .local v10, "denom2":I
    double-to-int v11, v2

    .line 268
    .local v11, "a1":I
    const/4 v12, 0x0

    .line 269
    .local v12, "a2":I
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    .line 270
    .local v13, "x1":D
    const-wide/16 v15, 0x0

    .line 271
    .local v15, "x2":D
    move/from16 p0, v5

    move/from16 p1, v6

    .end local v5    # "numer0":I
    .end local v6    # "denom0":I
    .local p0, "numer0":I
    .local p1, "denom0":I
    int-to-double v5, v11

    sub-double v5, v2, v5

    .line 272
    .local v5, "y1":D
    const-wide/16 v17, 0x0

    .line 273
    .local v17, "y2":D
    const-wide v19, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 275
    .local v19, "delta2":D
    const/16 v21, 0x1

    move/from16 v23, v21

    move-wide/from16 v21, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v15

    move-wide v15, v13

    move v13, v11

    move v14, v12

    move v11, v9

    move v12, v10

    move v9, v7

    move v10, v8

    move/from16 v7, p0

    move/from16 v8, p1

    .line 278
    .end local p0    # "numer0":I
    .end local p1    # "denom0":I
    .local v7, "numer0":I
    .local v8, "denom0":I
    .local v9, "numer1":I
    .local v10, "denom1":I
    .local v11, "numer2":I
    .local v12, "denom2":I
    .local v13, "a1":I
    .local v14, "a2":I
    .local v15, "x1":D
    .local v17, "x2":D
    .local v19, "y2":D
    .local v21, "delta2":D
    .local v23, "i":I
    :goto_1
    move-wide/from16 v24, v21

    .line 279
    .local v24, "delta1":D
    move-wide/from16 p0, v2

    .end local v2    # "value":D
    .local p0, "value":D
    div-double v1, v15, v5

    double-to-int v14, v1

    .line 280
    move-wide/from16 v17, v5

    .line 281
    int-to-double v1, v14

    mul-double/2addr v1, v5

    sub-double v19, v15, v1

    .line 282
    mul-int v1, v13, v9

    add-int v11, v1, v7

    .line 283
    mul-int v1, v13, v10

    add-int v12, v1, v8

    .line 284
    int-to-double v1, v11

    move-wide/from16 v26, v5

    .end local v5    # "y1":D
    .local v26, "y1":D
    int-to-double v5, v12

    div-double/2addr v1, v5

    .line 285
    .local v1, "fraction":D
    move-wide/from16 v5, p0

    .end local p0    # "value":D
    .local v5, "value":D
    sub-double v28, v5, v1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    .line 287
    move v13, v14

    .line 288
    move-wide/from16 v15, v17

    .line 289
    move-wide/from16 v26, v19

    .line 290
    move v7, v9

    .line 291
    move v8, v10

    .line 292
    move v9, v11

    .line 293
    move v10, v12

    .line 294
    move-wide/from16 p0, v1

    const/4 v3, 0x1

    .end local v1    # "fraction":D
    .local p0, "fraction":D
    add-int/lit8 v1, v23, 0x1

    .line 296
    .end local v23    # "i":I
    .local v1, "i":I
    cmpl-double v2, v24, v21

    const/16 v3, 0x19

    if-lez v2, :cond_2

    const/16 v2, 0x2710

    if-gt v12, v2, :cond_2

    if-lez v12, :cond_2

    if-lt v1, v3, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v23, v1

    move-wide v2, v5

    move-wide/from16 v5, v26

    goto :goto_1

    .line 297
    :cond_2
    :goto_2
    if-eq v1, v3, :cond_3

    .line 300
    mul-int v2, v4, v8

    add-int/2addr v2, v7

    mul-int/2addr v2, v0

    invoke-static {v2, v8}, Lorg/apache/commons/lang/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v2

    return-object v2

    .line 298
    :cond_3
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Unable to convert double to fraction"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    .end local v1    # "i":I
    .end local v4    # "wholeNumber":I
    .end local v5    # "value":D
    .end local v7    # "numer0":I
    .end local v8    # "denom0":I
    .end local v9    # "numer1":I
    .end local v10    # "denom1":I
    .end local v11    # "numer2":I
    .end local v12    # "denom2":I
    .end local v13    # "a1":I
    .end local v14    # "a2":I
    .end local v15    # "x1":D
    .end local v17    # "x2":D
    .end local v19    # "y2":D
    .end local v21    # "delta2":D
    .end local v24    # "delta1":D
    .end local v26    # "y1":D
    .end local p0    # "fraction":D
    .restart local v2    # "value":D
    :cond_4
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v4, "The value must not be greater than Integer.MAX_VALUE or NaN"

    invoke-direct {v1, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFraction(II)Lorg/apache/commons/lang/math/Fraction;
    .locals 2
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 144
    if-eqz p1, :cond_2

    .line 147
    if-gez p1, :cond_1

    .line 148
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 152
    neg-int p0, p0

    .line 153
    neg-int p1, p1

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    return-object v0

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(III)Lorg/apache/commons/lang/math/Fraction;
    .locals 4
    .param p0, "whole"    # I
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .line 175
    if-eqz p2, :cond_4

    .line 178
    if-ltz p2, :cond_3

    .line 181
    if-ltz p1, :cond_2

    .line 185
    if-gez p0, :cond_0

    .line 186
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .local v0, "numeratorValue":J
    goto :goto_0

    .line 188
    .end local v0    # "numeratorValue":J
    :cond_0
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 190
    .restart local v0    # "numeratorValue":J
    :goto_0
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 194
    new-instance v2, Lorg/apache/commons/lang/math/Fraction;

    long-to-int v3, v0

    invoke-direct {v2, v3, p2}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    return-object v2

    .line 192
    :cond_1
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Numerator too large to represent as an Integer."

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    .end local v0    # "numeratorValue":J
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The numerator must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(Ljava/lang/String;)Lorg/apache/commons/lang/math/Fraction;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 322
    if-eqz p0, :cond_4

    .line 326
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 327
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 328
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/lang/math/Fraction;->getFraction(D)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v1

    return-object v1

    .line 332
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 333
    const/16 v1, 0x2f

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 334
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 335
    .local v3, "whole":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 336
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 337
    if-ltz v0, :cond_1

    .line 340
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 341
    .local v1, "numer":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 342
    .local v2, "denom":I
    invoke-static {v3, v1, v2}, Lorg/apache/commons/lang/math/Fraction;->getFraction(III)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v4

    return-object v4

    .line 338
    .end local v1    # "numer":I
    .end local v2    # "denom":I
    :cond_1
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "The fraction could not be parsed as the format X Y/Z"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    .end local v3    # "whole":I
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 348
    if-gez v0, :cond_3

    .line 350
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/commons/lang/math/Fraction;->getFraction(II)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v1

    return-object v1

    .line 352
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 353
    .restart local v1    # "numer":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 354
    .restart local v2    # "denom":I
    invoke-static {v1, v2}, Lorg/apache/commons/lang/math/Fraction;->getFraction(II)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v3

    return-object v3

    .line 323
    .end local v0    # "pos":I
    .end local v1    # "numer":I
    .end local v2    # "denom":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The string must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/lang/math/Fraction;
    .locals 2
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 212
    if-eqz p1, :cond_4

    .line 215
    if-nez p0, :cond_0

    .line 216
    sget-object v0, Lorg/apache/commons/lang/math/Fraction;->ZERO:Lorg/apache/commons/lang/math/Fraction;

    return-object v0

    .line 219
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_1

    .line 220
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    .line 222
    :cond_1
    if-gez p1, :cond_3

    .line 223
    if-eq p0, v0, :cond_2

    if-eq p1, v0, :cond_2

    .line 227
    neg-int p0, p0

    .line 228
    neg-int p1, p1

    goto :goto_0

    .line 225
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 232
    .local v0, "gcd":I
    div-int/2addr p0, v0

    .line 233
    div-int/2addr p1, v0

    .line 234
    new-instance v1, Lorg/apache/commons/lang/math/Fraction;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    return-object v1

    .line 213
    .end local v0    # "gcd":I
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The denominator must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greatestCommonDivisor(II)I
    .locals 4
    .param p0, "u"    # I
    .param p1, "v"    # I

    .line 576
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_3

    .line 583
    :cond_0
    if-lez p0, :cond_1

    neg-int p0, p0

    .line 584
    :cond_1
    if-lez p1, :cond_2

    neg-int p1, p1

    .line 586
    :cond_2
    const/4 v0, 0x0

    .line 587
    .local v0, "k":I
    :goto_0
    and-int/lit8 v2, p0, 0x1

    const/16 v3, 0x1f

    if-nez v2, :cond_3

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_3

    if-ge v0, v3, :cond_3

    .line 588
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_3
    if-eq v0, v3, :cond_8

    .line 595
    and-int/lit8 v2, p0, 0x1

    if-ne v2, v1, :cond_4

    move v2, p1

    goto :goto_1

    :cond_4
    div-int/lit8 v2, p0, 0x2

    neg-int v2, v2

    .line 601
    .local v2, "t":I
    :cond_5
    :goto_1
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_6

    .line 602
    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 605
    :cond_6
    if-lez v2, :cond_7

    .line 606
    neg-int p0, v2

    goto :goto_2

    .line 608
    :cond_7
    move p1, v2

    .line 611
    :goto_2
    sub-int v3, p1, p0

    div-int/lit8 v2, v3, 0x2

    .line 614
    if-nez v2, :cond_5

    .line 615
    neg-int v3, p0

    shl-int/2addr v1, v0

    mul-int/2addr v3, v1

    return v3

    .line 591
    .end local v2    # "t":I
    :cond_8
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "overflow: gcd is 2^31"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 577
    .end local v0    # "k":I
    :cond_9
    :goto_3
    return v1
.end method

.method private static mulAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 631
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 632
    .local v0, "m":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 636
    long-to-int v2, v0

    return v2

    .line 634
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: mul"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static mulPosAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 650
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 651
    .local v0, "m":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 654
    long-to-int v2, v0

    return v2

    .line 652
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: mulPos"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static subAndCheck(II)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 685
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 686
    .local v0, "s":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 690
    long-to-int v2, v0

    return v2

    .line 688
    :cond_0
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "overflow: add"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public abs()Lorg/apache/commons/lang/math/Fraction;
    .locals 1

    .line 526
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-ltz v0, :cond_0

    .line 527
    return-object p0

    .line 529
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->negate()Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/commons/lang/math/Fraction;)Lorg/apache/commons/lang/math/Fraction;
    .locals 1
    .param p1, "fraction"    # Lorg/apache/commons/lang/math/Fraction;

    .line 704
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang/math/Fraction;->addSub(Lorg/apache/commons/lang/math/Fraction;Z)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .line 872
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/lang/math/Fraction;

    .line 873
    .local v0, "other":Lorg/apache/commons/lang/math/Fraction;
    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 874
    return v1

    .line 876
    :cond_0
    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    iget v3, v0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-ne v2, v3, :cond_1

    iget v4, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    iget v5, v0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    if-ne v4, v5, :cond_1

    .line 877
    return v1

    .line 881
    :cond_1
    int-to-long v4, v2

    iget v2, v0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    int-to-long v6, v2

    mul-long/2addr v4, v6

    .line 882
    .local v4, "first":J
    int-to-long v2, v3

    iget v6, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    int-to-long v6, v6

    mul-long/2addr v2, v6

    .line 883
    .local v2, "second":J
    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    .line 884
    return v1

    .line 885
    :cond_2
    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    .line 886
    const/4 v1, -0x1

    return v1

    .line 888
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public divideBy(Lorg/apache/commons/lang/math/Fraction;)Lorg/apache/commons/lang/math/Fraction;
    .locals 2
    .param p1, "fraction"    # Lorg/apache/commons/lang/math/Fraction;

    .line 814
    if-eqz p1, :cond_1

    .line 817
    iget v0, p1, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-eqz v0, :cond_0

    .line 820
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Fraction;->invert()Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/Fraction;->multiplyBy(Lorg/apache/commons/lang/math/Fraction;)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    return-object v0

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The fraction to divide by must not be zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fraction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doubleValue()D
    .locals 4

    .line 452
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 835
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 836
    return v0

    .line 838
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang/math/Fraction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 839
    return v2

    .line 841
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/lang/math/Fraction;

    .line 842
    .local v1, "other":Lorg/apache/commons/lang/math/Fraction;
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getNumerator()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/commons/lang/math/Fraction;->getNumerator()I

    move-result v4

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getDenominator()I

    move-result v3

    invoke-virtual {v1}, Lorg/apache/commons/lang/math/Fraction;->getDenominator()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    .line 442
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDenominator()I
    .locals 1

    .line 379
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .line 370
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    return v0
.end method

.method public getProperNumerator()I
    .locals 2

    .line 394
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getProperWhole()I
    .locals 2

    .line 409
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 852
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->hashCode:I

    if-nez v0, :cond_0

    .line 854
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getNumerator()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getDenominator()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang/math/Fraction;->hashCode:I

    .line 856
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->hashCode:I

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 422
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/apache/commons/lang/math/Fraction;
    .locals 3

    .line 488
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-eqz v0, :cond_2

    .line 491
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 494
    if-gez v0, :cond_0

    .line 495
    new-instance v1, Lorg/apache/commons/lang/math/Fraction;

    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    neg-int v2, v2

    neg-int v0, v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    return-object v1

    .line 497
    :cond_0
    new-instance v1, Lorg/apache/commons/lang/math/Fraction;

    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    return-object v1

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate numerator"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to invert zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longValue()J
    .locals 4

    .line 432
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public multiplyBy(Lorg/apache/commons/lang/math/Fraction;)Lorg/apache/commons/lang/math/Fraction;
    .locals 5
    .param p1, "fraction"    # Lorg/apache/commons/lang/math/Fraction;

    .line 788
    if-eqz p1, :cond_2

    .line 791
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-eqz v0, :cond_1

    iget v1, p1, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 796
    :cond_0
    iget v1, p1, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 797
    .local v0, "d1":I
    iget v1, p1, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    .line 798
    .local v1, "d2":I
    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/apache/commons/lang/math/Fraction;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v3, v1

    iget v4, p1, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v4, v0

    invoke-static {v3, v4}, Lorg/apache/commons/lang/math/Fraction;->mulPosAndCheck(II)I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/lang/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v2

    return-object v2

    .line 792
    .end local v0    # "d1":I
    .end local v1    # "d2":I
    :cond_1
    :goto_0
    sget-object v0, Lorg/apache/commons/lang/math/Fraction;->ZERO:Lorg/apache/commons/lang/math/Fraction;

    return-object v0

    .line 789
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The fraction must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public negate()Lorg/apache/commons/lang/math/Fraction;
    .locals 3

    .line 510
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 513
    new-instance v1, Lorg/apache/commons/lang/math/Fraction;

    neg-int v0, v0

    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/lang/math/Fraction;-><init>(II)V

    return-object v1

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: too large to negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pow(I)Lorg/apache/commons/lang/math/Fraction;
    .locals 2
    .param p1, "power"    # I

    .line 545
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 546
    return-object p0

    .line 547
    :cond_0
    if-nez p1, :cond_1

    .line 548
    sget-object v0, Lorg/apache/commons/lang/math/Fraction;->ONE:Lorg/apache/commons/lang/math/Fraction;

    return-object v0

    .line 549
    :cond_1
    if-gez p1, :cond_3

    .line 550
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_2

    .line 551
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->invert()Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/math/Fraction;->pow(I)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/math/Fraction;->pow(I)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    return-object v0

    .line 553
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->invert()Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    neg-int v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/math/Fraction;->pow(I)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    return-object v0

    .line 555
    :cond_3
    invoke-virtual {p0, p0}, Lorg/apache/commons/lang/math/Fraction;->multiplyBy(Lorg/apache/commons/lang/math/Fraction;)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    .line 556
    .local v0, "f":Lorg/apache/commons/lang/math/Fraction;
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_4

    .line 557
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/math/Fraction;->pow(I)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v1

    return-object v1

    .line 559
    :cond_4
    div-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/math/Fraction;->pow(I)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/commons/lang/math/Fraction;->multiplyBy(Lorg/apache/commons/lang/math/Fraction;)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v1

    return-object v1
.end method

.method public reduce()Lorg/apache/commons/lang/math/Fraction;
    .locals 3

    .line 468
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-nez v0, :cond_1

    .line 469
    sget-object v0, Lorg/apache/commons/lang/math/Fraction;->ZERO:Lorg/apache/commons/lang/math/Fraction;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/Fraction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0

    .line 471
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 472
    .local v0, "gcd":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 473
    return-object p0

    .line 475
    :cond_2
    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    div-int/2addr v1, v0

    iget v2, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Lorg/apache/commons/lang/math/Fraction;->getFraction(II)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v1

    return-object v1
.end method

.method public subtract(Lorg/apache/commons/lang/math/Fraction;)Lorg/apache/commons/lang/math/Fraction;
    .locals 1
    .param p1, "fraction"    # Lorg/apache/commons/lang/math/Fraction;

    .line 718
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang/math/Fraction;->addSub(Lorg/apache/commons/lang/math/Fraction;Z)Lorg/apache/commons/lang/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public toProperString()Ljava/lang/String;
    .locals 5

    .line 919
    iget-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 920
    iget v0, p0, Lorg/apache/commons/lang/math/Fraction;->numerator:I

    if-nez v0, :cond_0

    .line 921
    const-string v0, "0"

    iput-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    goto/16 :goto_1

    .line 922
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang/math/Fraction;->denominator:I

    if-ne v0, v1, :cond_1

    .line 923
    const-string v0, "1"

    iput-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_1

    .line 924
    :cond_1
    mul-int/lit8 v2, v1, -0x1

    if-ne v0, v2, :cond_2

    .line 925
    const-string v0, "-1"

    iput-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_1

    .line 926
    :cond_2
    if-lez v0, :cond_3

    neg-int v0, v0

    :cond_3
    neg-int v1, v1

    const/16 v2, 0x2f

    const/16 v3, 0x20

    if-ge v0, v1, :cond_5

    .line 931
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getProperNumerator()I

    move-result v0

    .line 932
    .local v0, "properNumerator":I
    if-nez v0, :cond_4

    .line 933
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getProperWhole()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_0

    .line 935
    :cond_4
    new-instance v1, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v1, v3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getProperWhole()I

    move-result v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getDenominator()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    .line 940
    .end local v0    # "properNumerator":I
    :goto_0
    goto :goto_1

    .line 941
    :cond_5
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    invoke-direct {v0, v3}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    .line 946
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toProperString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 900
    iget-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(I)Lorg/apache/commons/lang/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toString:Ljava/lang/String;

    .line 906
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang/math/Fraction;->toString:Ljava/lang/String;

    return-object v0
.end method
