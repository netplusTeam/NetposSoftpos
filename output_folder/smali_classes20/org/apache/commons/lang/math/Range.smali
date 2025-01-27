.class public abstract Lorg/apache/commons/lang/math/Range;
.super Ljava/lang/Object;
.source "Range.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public containsDouble(D)Z
    .locals 3
    .param p1, "value"    # D

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumDouble()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/lang/math/NumberUtils;->compare(DD)I

    move-result v0

    .line 273
    .local v0, "compareMin":I
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumDouble()D

    move-result-wide v1

    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/lang/math/NumberUtils;->compare(DD)I

    move-result v1

    .line 274
    .local v1, "compareMax":I
    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public containsDouble(Ljava/lang/Number;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .line 254
    if-nez p1, :cond_0

    .line 255
    const/4 v0, 0x0

    return v0

    .line 257
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/math/Range;->containsDouble(D)Z

    move-result v0

    return v0
.end method

.method public containsFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .line 308
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumFloat()F

    move-result v0

    invoke-static {v0, p1}, Lorg/apache/commons/lang/math/NumberUtils;->compare(FF)I

    move-result v0

    .line 309
    .local v0, "compareMin":I
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumFloat()F

    move-result v1

    invoke-static {v1, p1}, Lorg/apache/commons/lang/math/NumberUtils;->compare(FF)I

    move-result v1

    .line 310
    .local v1, "compareMax":I
    if-gtz v0, :cond_0

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public containsFloat(Ljava/lang/Number;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 290
    if-nez p1, :cond_0

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/Range;->containsFloat(F)Z

    move-result v0

    return v0
.end method

.method public containsInteger(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 238
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumInteger()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumInteger()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsInteger(Ljava/lang/Number;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Number;

    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/math/Range;->containsInteger(I)Z

    move-result v0

    return v0
.end method

.method public containsLong(J)Z
    .locals 2
    .param p1, "value"    # J

    .line 204
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumLong()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumLong()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsLong(Ljava/lang/Number;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Number;

    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang/math/Range;->containsLong(J)Z

    move-result v0

    return v0
.end method

.method public abstract containsNumber(Ljava/lang/Number;)Z
.end method

.method public containsRange(Lorg/apache/commons/lang/math/Range;)Z
    .locals 2
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 334
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 335
    return v0

    .line 337
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 384
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 385
    return v0

    .line 386
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 389
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/commons/lang/math/Range;

    .line 390
    .local v2, "range":Lorg/apache/commons/lang/math/Range;
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 387
    .end local v2    # "range":Lorg/apache/commons/lang/math/Range;
    :cond_3
    :goto_1
    return v1
.end method

.method public getMaximumDouble()D
    .locals 2

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumFloat()F
    .locals 1

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMaximumInteger()I
    .locals 1

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaximumLong()J
    .locals 2

    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getMaximumNumber()Ljava/lang/Number;
.end method

.method public getMinimumDouble()D
    .locals 2

    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumFloat()F
    .locals 1

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getMinimumInteger()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinimumLong()J
    .locals 2

    .line 60
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getMinimumNumber()Ljava/lang/Number;
.end method

.method public hashCode()I
    .locals 3

    .line 405
    const/16 v0, 0x11

    .line 406
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 407
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 408
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 409
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public overlapsRange(Lorg/apache/commons/lang/math/Range;)Z
    .locals 2
    .param p1, "range"    # Lorg/apache/commons/lang/math/Range;

    .line 360
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 361
    return v0

    .line 363
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang/math/Range;->containsNumber(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Lorg/apache/commons/lang/text/StrBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;-><init>(I)V

    .line 425
    .local v0, "buf":Lorg/apache/commons/lang/text/StrBuilder;
    const-string v1, "Range["

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 426
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMinimumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 427
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 428
    invoke-virtual {p0}, Lorg/apache/commons/lang/math/Range;->getMaximumNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/text/StrBuilder;

    .line 429
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/text/StrBuilder;->append(C)Lorg/apache/commons/lang/text/StrBuilder;

    .line 430
    invoke-virtual {v0}, Lorg/apache/commons/lang/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
