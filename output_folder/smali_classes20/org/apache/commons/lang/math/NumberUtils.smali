.class public Lorg/apache/commons/lang/math/NumberUtils;
.super Ljava/lang/Object;
.source "NumberUtils.java"


# static fields
.field public static final BYTE_MINUS_ONE:Ljava/lang/Byte;

.field public static final BYTE_ONE:Ljava/lang/Byte;

.field public static final BYTE_ZERO:Ljava/lang/Byte;

.field public static final DOUBLE_MINUS_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ONE:Ljava/lang/Double;

.field public static final DOUBLE_ZERO:Ljava/lang/Double;

.field public static final FLOAT_MINUS_ONE:Ljava/lang/Float;

.field public static final FLOAT_ONE:Ljava/lang/Float;

.field public static final FLOAT_ZERO:Ljava/lang/Float;

.field public static final INTEGER_MINUS_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ONE:Ljava/lang/Integer;

.field public static final INTEGER_ZERO:Ljava/lang/Integer;

.field public static final LONG_MINUS_ONE:Ljava/lang/Long;

.field public static final LONG_ONE:Ljava/lang/Long;

.field public static final LONG_ZERO:Ljava/lang/Long;

.field public static final SHORT_MINUS_ONE:Ljava/lang/Short;

.field public static final SHORT_ONE:Ljava/lang/Short;

.field public static final SHORT_ZERO:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ZERO:Ljava/lang/Long;

    .line 43
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_ONE:Ljava/lang/Long;

    .line 45
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->LONG_MINUS_ONE:Ljava/lang/Long;

    .line 47
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ZERO:Ljava/lang/Integer;

    .line 49
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 51
    new-instance v0, Ljava/lang/Integer;

    const/4 v3, -0x1

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->INTEGER_MINUS_ONE:Ljava/lang/Integer;

    .line 53
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ZERO:Ljava/lang/Short;

    .line 55
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_ONE:Ljava/lang/Short;

    .line 57
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v3}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->SHORT_MINUS_ONE:Ljava/lang/Short;

    .line 59
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ZERO:Ljava/lang/Byte;

    .line 61
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_ONE:Ljava/lang/Byte;

    .line 63
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->BYTE_MINUS_ONE:Ljava/lang/Byte;

    .line 65
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ZERO:Ljava/lang/Double;

    .line 67
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_ONE:Ljava/lang/Double;

    .line 69
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->DOUBLE_MINUS_ONE:Ljava/lang/Double;

    .line 71
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ZERO:Ljava/lang/Float;

    .line 73
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_ONE:Ljava/lang/Float;

    .line 75
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lorg/apache/commons/lang/math/NumberUtils;->FLOAT_MINUS_ONE:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static compare(DD)I
    .locals 7
    .param p0, "lhs"    # D
    .param p2, "rhs"    # D

    .line 1363
    cmpg-double v0, p0, p2

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 1364
    return v1

    .line 1366
    :cond_0
    cmpl-double v0, p0, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 1367
    return v2

    .line 1373
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 1374
    .local v3, "lhsBits":J
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 1375
    .local v5, "rhsBits":J
    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 1376
    const/4 v0, 0x0

    return v0

    .line 1384
    :cond_2
    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    .line 1385
    return v1

    .line 1387
    :cond_3
    return v2
.end method

.method public static compare(FF)I
    .locals 4
    .param p0, "lhs"    # F
    .param p1, "rhs"    # F

    .line 1424
    cmpg-float v0, p0, p1

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 1425
    return v1

    .line 1427
    :cond_0
    cmpl-float v0, p0, p1

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 1428
    return v2

    .line 1434
    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 1435
    .local v0, "lhsBits":I
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 1436
    .local v3, "rhsBits":I
    if-ne v0, v3, :cond_2

    .line 1437
    const/4 v1, 0x0

    return v1

    .line 1445
    :cond_2
    if-ge v0, v3, :cond_3

    .line 1446
    return v1

    .line 1448
    :cond_3
    return v2
.end method

.method public static createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 761
    if-nez p0, :cond_0

    .line 762
    const/4 v0, 0x0

    return-object v0

    .line 765
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 745
    if-nez p0, :cond_0

    .line 746
    const/4 v0, 0x0

    return-object v0

    .line 748
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 695
    if-nez p0, :cond_0

    .line 696
    const/4 v0, 0x0

    return-object v0

    .line 698
    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static createFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 679
    if-nez p0, :cond_0

    .line 680
    const/4 v0, 0x0

    return-object v0

    .line 682
    :cond_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static createInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 712
    if-nez p0, :cond_0

    .line 713
    const/4 v0, 0x0

    return-object v0

    .line 716
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static createLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 729
    if-nez p0, :cond_0

    .line 730
    const/4 v0, 0x0

    return-object v0

    .line 732
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static createNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 15
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 497
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 498
    return-object v0

    .line 500
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 503
    const-string v1, "--"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    return-object v0

    .line 510
    :cond_1
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "-0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_c

    .line 513
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 517
    .local v0, "lastChar":C
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 518
    .local v3, "decPos":I
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/16 v5, 0x45

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 520
    .local v4, "expPos":I
    const-string v5, " is not a valid number."

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-le v3, v6, :cond_5

    .line 522
    if-le v4, v6, :cond_4

    .line 523
    if-lt v4, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v4, v8, :cond_3

    .line 526
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .local v8, "dec":Ljava/lang/String;
    goto :goto_0

    .line 524
    .end local v8    # "dec":Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    :cond_4
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 530
    .restart local v8    # "dec":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .local v9, "mant":Ljava/lang/String;
    goto :goto_2

    .line 532
    .end local v8    # "dec":Ljava/lang/String;
    .end local v9    # "mant":Ljava/lang/String;
    :cond_5
    if-le v4, v6, :cond_7

    .line 533
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v4, v8, :cond_6

    .line 536
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .local v8, "mant":Ljava/lang/String;
    goto :goto_1

    .line 534
    .end local v8    # "mant":Ljava/lang/String;
    :cond_6
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :cond_7
    move-object v8, p0

    move-object v9, v8

    .line 540
    .restart local v9    # "mant":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 542
    .local v8, "dec":Ljava/lang/String;
    :goto_2
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    if-nez v10, :cond_11

    if-eq v0, v2, :cond_11

    .line 543
    if-le v4, v6, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v4, v2, :cond_8

    .line 544
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "exp":Ljava/lang/String;
    goto :goto_3

    .line 546
    .end local v2    # "exp":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .line 549
    .restart local v2    # "exp":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 550
    .local v6, "numeric":Ljava/lang/String;
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v2}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v1

    goto :goto_4

    :cond_9
    move v10, v7

    .line 551
    .local v10, "allZeros":Z
    :goto_4
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    .line 554
    :sswitch_0
    if-nez v8, :cond_c

    if-nez v2, :cond_c

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v11, 0x2d

    if-ne v7, v11, :cond_a

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    invoke-static {v6}, Lorg/apache/commons/lang/math/NumberUtils;->isDigits(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 558
    :cond_b
    :try_start_0
    invoke-static {v6}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 559
    :catch_0
    move-exception v1

    .line 562
    invoke-static {v6}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 565
    :cond_c
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :sswitch_1
    :try_start_1
    invoke-static {v6}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 570
    .local v1, "f":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    cmpl-float v7, v7, v13

    if-nez v7, :cond_d

    if-eqz v10, :cond_e

    .line 573
    :cond_d
    return-object v1

    .line 578
    .end local v1    # "f":Ljava/lang/Float;
    :cond_e
    goto :goto_5

    .line 576
    :catch_1
    move-exception v1

    .line 583
    :goto_5
    :sswitch_2
    :try_start_2
    invoke-static {v6}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 584
    .local v1, "d":Ljava/lang/Double;
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v7

    if-nez v7, :cond_10

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    float-to-double v13, v7

    cmpl-double v7, v13, v11

    if-nez v7, :cond_f

    if-eqz v10, :cond_10

    .line 585
    :cond_f
    return-object v1

    .line 589
    .end local v1    # "d":Ljava/lang/Double;
    :cond_10
    goto :goto_6

    .line 587
    :catch_2
    move-exception v1

    .line 591
    :goto_6
    :try_start_3
    invoke-static {v6}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v1

    .line 592
    :catch_3
    move-exception v1

    .line 597
    :goto_7
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 603
    .end local v2    # "exp":Ljava/lang/String;
    .end local v6    # "numeric":Ljava/lang/String;
    .end local v10    # "allZeros":Z
    :cond_11
    if-le v4, v6, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v4, v2, :cond_12

    .line 604
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "exp":Ljava/lang/String;
    goto :goto_8

    .line 606
    .end local v2    # "exp":Ljava/lang/String;
    :cond_12
    const/4 v2, 0x0

    .line 608
    .restart local v2    # "exp":Ljava/lang/String;
    :goto_8
    if-nez v8, :cond_13

    if-nez v2, :cond_13

    .line 611
    :try_start_4
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    return-object v1

    .line 612
    :catch_4
    move-exception v1

    .line 616
    :try_start_5
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    return-object v1

    .line 617
    :catch_5
    move-exception v1

    .line 620
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigInteger(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 624
    :cond_13
    invoke-static {v9}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {v2}, Lorg/apache/commons/lang/math/NumberUtils;->isAllZeros(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_9

    :cond_14
    move v1, v7

    .line 626
    .local v1, "allZeros":Z
    :goto_9
    :try_start_6
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    .line 627
    .local v5, "f":Ljava/lang/Float;
    invoke-virtual {v5}, Ljava/lang/Float;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_16

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    cmpl-float v6, v6, v13

    if-nez v6, :cond_15

    if-eqz v1, :cond_16

    .line 628
    :cond_15
    return-object v5

    .line 632
    .end local v5    # "f":Ljava/lang/Float;
    :cond_16
    goto :goto_a

    .line 630
    :catch_6
    move-exception v5

    .line 634
    :goto_a
    :try_start_7
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    .line 635
    .local v5, "d":Ljava/lang/Double;
    invoke-virtual {v5}, Ljava/lang/Double;->isInfinite()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    cmpl-double v6, v6, v11

    if-nez v6, :cond_17

    if-eqz v1, :cond_18

    .line 636
    :cond_17
    return-object v5

    .line 640
    .end local v5    # "d":Ljava/lang/Double;
    :cond_18
    goto :goto_b

    .line 638
    :catch_7
    move-exception v5

    .line 642
    :goto_b
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v5

    return-object v5

    .line 511
    .end local v0    # "lastChar":C
    .end local v1    # "allZeros":Z
    .end local v2    # "exp":Ljava/lang/String;
    .end local v3    # "decPos":I
    .end local v4    # "expPos":I
    .end local v8    # "dec":Ljava/lang/String;
    .end local v9    # "mant":Ljava/lang/String;
    :cond_19
    :goto_c
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->createInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 501
    :cond_1a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .param p0, "str"    # Ljava/lang/String;

    .line 657
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 658
    return v0

    .line 660
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    .line 661
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 662
    return v2

    .line 660
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 665
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

    .line 1464
    invoke-static {p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1465
    return v1

    .line 1467
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1468
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1469
    return v1

    .line 1467
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1472
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isNumber(Ljava/lang/String;)Z
    .locals 17
    .param p0, "str"    # Ljava/lang/String;

    .line 1489
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/lang/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1490
    return v1

    .line 1492
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1493
    .local v0, "chars":[C
    array-length v2, v0

    .line 1494
    .local v2, "sz":I
    const/4 v3, 0x0

    .line 1495
    .local v3, "hasExp":Z
    const/4 v4, 0x0

    .line 1496
    .local v4, "hasDecPoint":Z
    const/4 v5, 0x0

    .line 1497
    .local v5, "allowSigns":Z
    const/4 v6, 0x0

    .line 1499
    .local v6, "foundDigit":Z
    aget-char v7, v0, v1

    const/16 v8, 0x2d

    const/4 v9, 0x1

    if-ne v7, v8, :cond_1

    move v7, v9

    goto :goto_0

    :cond_1
    move v7, v1

    .line 1500
    .local v7, "start":I
    :goto_0
    add-int/lit8 v10, v7, 0x1

    const/16 v11, 0x46

    const/16 v12, 0x66

    const/16 v13, 0x39

    const/16 v14, 0x30

    if-le v2, v10, :cond_8

    .line 1501
    aget-char v10, v0, v7

    if-ne v10, v14, :cond_8

    add-int/lit8 v10, v7, 0x1

    aget-char v10, v0, v10

    const/16 v15, 0x78

    if-ne v10, v15, :cond_8

    .line 1502
    add-int/lit8 v8, v7, 0x2

    .line 1503
    .local v8, "i":I
    if-ne v8, v2, :cond_2

    .line 1504
    return v1

    .line 1507
    :cond_2
    :goto_1
    array-length v10, v0

    if-ge v8, v10, :cond_7

    .line 1508
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

    .line 1507
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1511
    :cond_6
    :goto_2
    return v1

    .line 1514
    :cond_7
    return v9

    .line 1517
    .end local v8    # "i":I
    :cond_8
    add-int/lit8 v2, v2, -0x1

    .line 1519
    move v10, v7

    .line 1522
    .local v10, "i":I
    :goto_3
    const/16 v15, 0x45

    const/16 v8, 0x65

    const/16 v11, 0x2e

    if-lt v10, v2, :cond_17

    add-int/lit8 v12, v2, 0x1

    if-ge v10, v12, :cond_9

    if-eqz v5, :cond_9

    if-nez v6, :cond_9

    const/16 v12, 0x66

    const/16 v16, 0x46

    goto :goto_7

    .line 1555
    :cond_9
    array-length v12, v0

    if-ge v10, v12, :cond_15

    .line 1556
    aget-char v12, v0, v10

    if-lt v12, v14, :cond_a

    aget-char v12, v0, v10

    if-gt v12, v13, :cond_a

    .line 1558
    return v9

    .line 1560
    :cond_a
    aget-char v12, v0, v10

    if-eq v12, v8, :cond_14

    aget-char v8, v0, v10

    if-ne v8, v15, :cond_b

    goto :goto_6

    .line 1564
    :cond_b
    aget-char v8, v0, v10

    if-ne v8, v11, :cond_e

    .line 1565
    if-nez v4, :cond_d

    if-eqz v3, :cond_c

    goto :goto_4

    .line 1570
    :cond_c
    return v6

    .line 1567
    :cond_d
    :goto_4
    return v1

    .line 1572
    :cond_e
    if-nez v5, :cond_10

    aget-char v8, v0, v10

    const/16 v11, 0x64

    if-eq v8, v11, :cond_f

    aget-char v8, v0, v10

    const/16 v11, 0x44

    if-eq v8, v11, :cond_f

    aget-char v8, v0, v10

    const/16 v12, 0x66

    if-eq v8, v12, :cond_f

    aget-char v8, v0, v10

    const/16 v11, 0x46

    if-ne v8, v11, :cond_10

    .line 1577
    :cond_f
    return v6

    .line 1579
    :cond_10
    aget-char v8, v0, v10

    const/16 v11, 0x6c

    if-eq v8, v11, :cond_12

    aget-char v8, v0, v10

    const/16 v11, 0x4c

    if-ne v8, v11, :cond_11

    goto :goto_5

    .line 1585
    :cond_11
    return v1

    .line 1582
    :cond_12
    :goto_5
    if-eqz v6, :cond_13

    if-nez v3, :cond_13

    move v1, v9

    :cond_13
    return v1

    .line 1562
    :cond_14
    :goto_6
    return v1

    .line 1589
    :cond_15
    if-nez v5, :cond_16

    if-eqz v6, :cond_16

    move v1, v9

    :cond_16
    return v1

    .line 1522
    :cond_17
    const/16 v16, 0x46

    .line 1523
    :goto_7
    aget-char v9, v0, v10

    if-lt v9, v14, :cond_18

    aget-char v9, v0, v10

    if-gt v9, v13, :cond_18

    .line 1524
    const/4 v6, 0x1

    .line 1525
    const/4 v5, 0x0

    const/16 v9, 0x2d

    goto :goto_b

    .line 1527
    :cond_18
    aget-char v9, v0, v10

    if-ne v9, v11, :cond_1b

    .line 1528
    if-nez v4, :cond_1a

    if-eqz v3, :cond_19

    goto :goto_8

    .line 1532
    :cond_19
    const/4 v4, 0x1

    const/16 v9, 0x2d

    goto :goto_b

    .line 1530
    :cond_1a
    :goto_8
    return v1

    .line 1533
    :cond_1b
    aget-char v9, v0, v10

    if-eq v9, v8, :cond_20

    aget-char v8, v0, v10

    if-ne v8, v15, :cond_1c

    const/16 v9, 0x2d

    goto :goto_a

    .line 1544
    :cond_1c
    aget-char v8, v0, v10

    const/16 v9, 0x2b

    if-eq v8, v9, :cond_1e

    aget-char v8, v0, v10

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1d

    goto :goto_9

    .line 1551
    :cond_1d
    return v1

    .line 1544
    :cond_1e
    const/16 v9, 0x2d

    .line 1545
    :goto_9
    if-nez v5, :cond_1f

    .line 1546
    return v1

    .line 1548
    :cond_1f
    const/4 v5, 0x0

    .line 1549
    const/4 v6, 0x0

    goto :goto_b

    .line 1533
    :cond_20
    const/16 v9, 0x2d

    .line 1535
    :goto_a
    if-eqz v3, :cond_21

    .line 1537
    return v1

    .line 1539
    :cond_21
    if-nez v6, :cond_22

    .line 1540
    return v1

    .line 1542
    :cond_22
    const/4 v3, 0x1

    .line 1543
    const/4 v5, 0x1

    .line 1553
    :goto_b
    add-int/lit8 v10, v10, 0x1

    move v8, v9

    move/from16 v11, v16

    const/4 v9, 0x1

    goto/16 :goto_3
.end method

.method public static max(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1286
    if-le p1, p0, :cond_0

    .line 1287
    move p0, p1

    .line 1289
    :cond_0
    if-le p2, p0, :cond_1

    .line 1290
    move p0, p2

    .line 1292
    :cond_1
    return p0
.end method

.method public static max([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 1036
    if-eqz p0, :cond_3

    .line 1038
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 1043
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 1044
    .local v0, "max":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1045
    aget-byte v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1046
    aget-byte v0, p0, v1

    .line 1044
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1050
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 1039
    .end local v0    # "max":B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1308
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 1064
    if-eqz p0, :cond_4

    .line 1066
    array-length v0, p0

    if-eqz v0, :cond_3

    .line 1071
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 1072
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 1073
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1074
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 1076
    :cond_0
    aget-wide v3, p0, v2

    cmpl-double v3, v3, v0

    if-lez v3, :cond_1

    .line 1077
    aget-wide v0, p0, v2

    .line 1072
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1081
    .end local v2    # "j":I
    :cond_2
    return-wide v0

    .line 1067
    .end local v0    # "max":D
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1065
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1324
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 1095
    if-eqz p0, :cond_4

    .line 1097
    array-length v0, p0

    if-eqz v0, :cond_3

    .line 1102
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 1103
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 1104
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1105
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 1107
    :cond_0
    aget v2, p0, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    .line 1108
    aget v0, p0, v1

    .line 1103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1112
    .end local v1    # "j":I
    :cond_2
    return v0

    .line 1098
    .end local v0    # "max":F
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1250
    if-le p1, p0, :cond_0

    .line 1251
    move p0, p1

    .line 1253
    :cond_0
    if-le p2, p0, :cond_1

    .line 1254
    move p0, p2

    .line 1256
    :cond_1
    return p0
.end method

.method public static max([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 982
    if-eqz p0, :cond_3

    .line 984
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 989
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 990
    .local v0, "max":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 991
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 992
    aget v0, p0, v1

    .line 990
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 996
    .end local v1    # "j":I
    :cond_1
    return v0

    .line 985
    .end local v0    # "max":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 983
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1232
    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    .line 1233
    move-wide p0, p2

    .line 1235
    :cond_0
    cmp-long v0, p4, p0

    if-lez v0, :cond_1

    .line 1236
    move-wide p0, p4

    .line 1238
    :cond_1
    return-wide p0
.end method

.method public static max([J)J
    .locals 5
    .param p0, "array"    # [J

    .line 955
    if-eqz p0, :cond_3

    .line 957
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 962
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 963
    .local v0, "max":J
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 964
    aget-wide v3, p0, v2

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    .line 965
    aget-wide v0, p0, v2

    .line 963
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 969
    .end local v2    # "j":I
    :cond_1
    return-wide v0

    .line 958
    .end local v0    # "max":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 956
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1268
    if-le p1, p0, :cond_0

    .line 1269
    move p0, p1

    .line 1271
    :cond_0
    if-le p2, p0, :cond_1

    .line 1272
    move p0, p2

    .line 1274
    :cond_1
    return p0
.end method

.method public static max([S)S
    .locals 3
    .param p0, "array"    # [S

    .line 1009
    if-eqz p0, :cond_3

    .line 1011
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 1016
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 1017
    .local v0, "max":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1018
    aget-short v2, p0, v1

    if-le v2, v0, :cond_0

    .line 1019
    aget-short v0, p0, v1

    .line 1017
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 1012
    .end local v0    # "max":S
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(BBB)B
    .locals 0
    .param p0, "a"    # B
    .param p1, "b"    # B
    .param p2, "c"    # B

    .line 1180
    if-ge p1, p0, :cond_0

    .line 1181
    move p0, p1

    .line 1183
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1184
    move p0, p2

    .line 1186
    :cond_1
    return p0
.end method

.method public static min([B)B
    .locals 3
    .param p0, "array"    # [B

    .line 864
    if-eqz p0, :cond_3

    .line 866
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 871
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    .line 872
    .local v0, "min":B
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 873
    aget-byte v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 874
    aget-byte v0, p0, v1

    .line 872
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 867
    .end local v0    # "min":B
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 1202
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 892
    if-eqz p0, :cond_4

    .line 894
    array-length v0, p0

    if-eqz v0, :cond_3

    .line 899
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 900
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 901
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 902
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    return-wide v3

    .line 904
    :cond_0
    aget-wide v3, p0, v2

    cmpg-double v3, v3, v0

    if-gez v3, :cond_1

    .line 905
    aget-wide v0, p0, v2

    .line 900
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    .end local v2    # "i":I
    :cond_2
    return-wide v0

    .line 895
    .end local v0    # "min":D
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 893
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 1218
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 923
    if-eqz p0, :cond_4

    .line 925
    array-length v0, p0

    if-eqz v0, :cond_3

    .line 930
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 931
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 932
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 933
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 935
    :cond_0
    aget v2, p0, v1

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    .line 936
    aget v0, p0, v1

    .line 931
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 940
    .end local v1    # "i":I
    :cond_2
    return v0

    .line 926
    .end local v0    # "min":F
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(III)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 1144
    if-ge p1, p0, :cond_0

    .line 1145
    move p0, p1

    .line 1147
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1148
    move p0, p2

    .line 1150
    :cond_1
    return p0
.end method

.method public static min([I)I
    .locals 3
    .param p0, "array"    # [I

    .line 810
    if-eqz p0, :cond_3

    .line 812
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 817
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 818
    .local v0, "min":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 819
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 820
    aget v0, p0, v1

    .line 818
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 824
    .end local v1    # "j":I
    :cond_1
    return v0

    .line 813
    .end local v0    # "min":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(JJJ)J
    .locals 1
    .param p0, "a"    # J
    .param p2, "b"    # J
    .param p4, "c"    # J

    .line 1126
    cmp-long v0, p2, p0

    if-gez v0, :cond_0

    .line 1127
    move-wide p0, p2

    .line 1129
    :cond_0
    cmp-long v0, p4, p0

    if-gez v0, :cond_1

    .line 1130
    move-wide p0, p4

    .line 1132
    :cond_1
    return-wide p0
.end method

.method public static min([J)J
    .locals 5
    .param p0, "array"    # [J

    .line 783
    if-eqz p0, :cond_3

    .line 785
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 790
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 791
    .local v0, "min":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 792
    aget-wide v3, p0, v2

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    .line 793
    aget-wide v0, p0, v2

    .line 791
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 797
    .end local v2    # "i":I
    :cond_1
    return-wide v0

    .line 786
    .end local v0    # "min":J
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(SSS)S
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # S
    .param p2, "c"    # S

    .line 1162
    if-ge p1, p0, :cond_0

    .line 1163
    move p0, p1

    .line 1165
    :cond_0
    if-ge p2, p0, :cond_1

    .line 1166
    move p0, p2

    .line 1168
    :cond_1
    return p0
.end method

.method public static min([S)S
    .locals 3
    .param p0, "array"    # [S

    .line 837
    if-eqz p0, :cond_3

    .line 839
    array-length v0, p0

    if-eqz v0, :cond_2

    .line 844
    const/4 v0, 0x0

    aget-short v0, p0, v0

    .line 845
    .local v0, "min":S
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 846
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 847
    aget-short v0, p0, v1

    .line 845
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 851
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 840
    .end local v0    # "min":S
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static stringToInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 151
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 354
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toByte(Ljava/lang/String;B)B

    move-result v0

    return v0
.end method

.method public static toByte(Ljava/lang/String;B)B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # B

    .line 375
    if-nez p0, :cond_0

    .line 376
    return p1

    .line 379
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 302
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toDouble(Ljava/lang/String;D)D
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .line 325
    if-nez p0, :cond_0

    .line 326
    return-wide p1

    .line 329
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toFloat(Ljava/lang/String;)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static toFloat(Ljava/lang/String;F)F
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .line 273
    if-nez p0, :cond_0

    .line 274
    return p1

    .line 277
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .line 172
    if-nez p0, :cond_0

    .line 173
    return p1

    .line 176
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method

.method public static toLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 200
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang/math/NumberUtils;->toLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static toLong(Ljava/lang/String;J)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .line 221
    if-nez p0, :cond_0

    .line 222
    return-wide p1

    .line 225
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return-wide p1
.end method

.method public static toShort(Ljava/lang/String;)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 403
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/lang/math/NumberUtils;->toShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public static toShort(Ljava/lang/String;S)S
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # S

    .line 424
    if-nez p0, :cond_0

    .line 425
    return p1

    .line 428
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return p1
.end method
