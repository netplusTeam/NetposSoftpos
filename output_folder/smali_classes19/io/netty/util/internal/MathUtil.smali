.class public final Lio/netty/util/internal/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 78
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static compare(JJ)I
    .locals 1
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 93
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static findNextPositivePowerOfTwo(I)I
    .locals 2
    .param p0, "value"    # I

    .line 35
    const/high16 v0, -0x80000000

    if-le p0, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_0

    .line 36
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static isOutOfBounds(III)Z
    .locals 2
    .param p0, "index"    # I
    .param p1, "length"    # I
    .param p2, "capacity"    # I

    .line 64
    or-int v0, p0, p1

    add-int v1, p0, p1

    or-int/2addr v0, v1

    add-int v1, p0, p1

    sub-int v1, p2, v1

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static safeFindNextPositivePowerOfTwo(I)I
    .locals 1
    .param p0, "value"    # I

    .line 52
    const/high16 v0, 0x40000000    # 2.0f

    if-gtz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lio/netty/util/internal/MathUtil;->findNextPositivePowerOfTwo(I)I

    move-result v0

    :goto_0
    return v0
.end method
