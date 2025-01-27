.class public Lorg/apache/commons/lang/math/IEEE754rUtils;
.super Ljava/lang/Object;
.source "IEEE754rUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static max(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 222
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    return-wide p2

    .line 225
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    return-wide p0

    .line 228
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 209
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 158
    if-eqz p0, :cond_2

    .line 160
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 166
    .local v0, "max":D
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 167
    aget-wide v3, p0, v2

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(DD)D

    move-result-wide v0

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v2    # "j":I
    :cond_0
    return-wide v0

    .line 161
    .end local v0    # "max":D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 256
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    return p1

    .line 259
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    return p0

    .line 262
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 243
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 183
    if-eqz p0, :cond_2

    .line 185
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 190
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 191
    .local v0, "max":F
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 192
    aget v2, p0, v1

    invoke-static {v2, v0}, Lorg/apache/commons/lang/math/IEEE754rUtils;->max(FF)F

    move-result v0

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v1    # "j":I
    :cond_0
    return v0

    .line 186
    .end local v0    # "max":F
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(DD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 104
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    return-wide p2

    .line 107
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    return-wide p0

    .line 110
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DDD)D
    .locals 2
    .param p0, "a"    # D
    .param p2, "b"    # D
    .param p4, "c"    # D

    .line 91
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([D)D
    .locals 5
    .param p0, "array"    # [D

    .line 40
    if-eqz p0, :cond_2

    .line 42
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 48
    .local v0, "min":D
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 49
    aget-wide v3, p0, v2

    invoke-static {v3, v4, v0, v1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(DD)D

    move-result-wide v0

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_0
    return-wide v0

    .line 43
    .end local v0    # "min":D
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 138
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    return p1

    .line 141
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    return p0

    .line 144
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 125
    invoke-static {p0, p1}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v0

    invoke-static {v0, p2}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min([F)F
    .locals 3
    .param p0, "array"    # [F

    .line 65
    if-eqz p0, :cond_2

    .line 67
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 72
    const/4 v0, 0x0

    aget v0, p0, v0

    .line 73
    .local v0, "min":F
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 74
    aget v2, p0, v1

    invoke-static {v2, v0}, Lorg/apache/commons/lang/math/IEEE754rUtils;->min(FF)F

    move-result v0

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return v0

    .line 68
    .end local v0    # "min":F
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array cannot be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
