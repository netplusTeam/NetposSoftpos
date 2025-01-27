.class public final Ljava9/lang/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method public static compare(JJ)I
    .locals 1
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 117
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static compareUnsigned(JJ)I
    .locals 4
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 133
    const-wide/high16 v0, -0x8000000000000000L

    add-long v2, p0, v0

    add-long/2addr v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava9/lang/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static divideUnsigned(JJ)J
    .locals 3
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 65
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 68
    invoke-static {p0, p1, p2, p3}, Ljava9/lang/Longs;->compareUnsigned(JJ)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    .line 71
    :cond_1
    cmp-long v0, p0, v0

    if-lez v0, :cond_2

    .line 72
    div-long v0, p0, p2

    return-wide v0

    .line 80
    :cond_2
    invoke-static {p0, p1}, Ljava9/lang/Longs;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 81
    invoke-static {p2, p3}, Ljava9/lang/Longs;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static hashCode(J)I
    .locals 2
    .param p0, "value"    # J

    .line 43
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static max(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 185
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static min(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 199
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static remainderUnsigned(JJ)J
    .locals 3
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 149
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 150
    rem-long v0, p0, p2

    return-wide v0

    .line 152
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ljava9/lang/Longs;->compareUnsigned(JJ)I

    move-result v0

    if-gez v0, :cond_1

    .line 153
    return-wide p0

    .line 155
    :cond_1
    invoke-static {p0, p1}, Ljava9/lang/Longs;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 156
    invoke-static {p2, p3}, Ljava9/lang/Longs;->toUnsignedBigInteger(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static sum(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 171
    add-long v0, p0, p2

    return-wide v0
.end method

.method private static toUnsignedBigInteger(J)Ljava/math/BigInteger;
    .locals 5
    .param p0, "i"    # J

    .line 90
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 91
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    const/16 v0, 0x20

    ushr-long v1, p0, v0

    long-to-int v1, v1

    .line 94
    .local v1, "upper":I
    long-to-int v2, p0

    .line 97
    .local v2, "lower":I
    invoke-static {v1}, Ljava9/lang/Integers;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 98
    invoke-static {v2}, Ljava9/lang/Integers;->toUnsignedLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
