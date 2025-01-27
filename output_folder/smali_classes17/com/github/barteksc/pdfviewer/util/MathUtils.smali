.class public Lcom/github/barteksc/pdfviewer/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final BIG_ENOUGH_CEIL:D = 16384.999999999996

.field private static final BIG_ENOUGH_FLOOR:D = 16384.0

.field private static final BIG_ENOUGH_INT:I = 0x4000


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static ceil(F)I
    .locals 4
    .param p0, "value"    # F

    .line 103
    float-to-double v0, p0

    const-wide v2, 0x40d0003fffffffffL    # 16384.999999999996

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static floor(F)I
    .locals 4
    .param p0, "value"    # F

    .line 97
    float-to-double v0, p0

    const-wide/high16 v2, 0x40d0000000000000L    # 16384.0

    add-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit16 v0, v0, -0x4000

    return v0
.end method

.method public static limit(FFF)F
    .locals 1
    .param p0, "number"    # F
    .param p1, "between"    # F
    .param p2, "and"    # F

    .line 53
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    .line 54
    return p1

    .line 56
    :cond_0
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_1

    .line 57
    return p2

    .line 59
    :cond_1
    return p0
.end method

.method public static limit(III)I
    .locals 0
    .param p0, "number"    # I
    .param p1, "between"    # I
    .param p2, "and"    # I

    .line 36
    if-gt p0, p1, :cond_0

    .line 37
    return p1

    .line 39
    :cond_0
    if-lt p0, p2, :cond_1

    .line 40
    return p2

    .line 42
    :cond_1
    return p0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "number"    # F
    .param p1, "max"    # F

    .line 63
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .line 64
    return p1

    .line 66
    :cond_0
    return p0
.end method

.method public static max(II)I
    .locals 0
    .param p0, "number"    # I
    .param p1, "max"    # I

    .line 77
    if-le p0, p1, :cond_0

    .line 78
    return p1

    .line 80
    :cond_0
    return p0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "number"    # F
    .param p1, "min"    # F

    .line 70
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 71
    return p1

    .line 73
    :cond_0
    return p0
.end method

.method public static min(II)I
    .locals 0
    .param p0, "number"    # I
    .param p1, "min"    # I

    .line 84
    if-ge p0, p1, :cond_0

    .line 85
    return p1

    .line 87
    :cond_0
    return p0
.end method
