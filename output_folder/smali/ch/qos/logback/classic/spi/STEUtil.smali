.class public Lch/qos/logback/classic/spi/STEUtil;
.super Ljava/lang/Object;
.source "STEUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static UNUSED_findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Ljava/lang/StackTraceElement;)I
    .locals 5
    .param p0, "steArray"    # [Ljava/lang/StackTraceElement;
    .param p1, "otherSTEArray"    # [Ljava/lang/StackTraceElement;

    .line 19
    if-nez p1, :cond_0

    .line 20
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 24
    .local v0, "steIndex":I
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 25
    .local v1, "parentIndex":I
    const/4 v2, 0x0

    .line 26
    .local v2, "count":I
    :goto_0
    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 27
    aget-object v3, p0, v0

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 35
    :cond_1
    return v2
.end method

.method static findNumberOfCommonFrames([Ljava/lang/StackTraceElement;[Lch/qos/logback/classic/spi/StackTraceElementProxy;)I
    .locals 5
    .param p0, "steArray"    # [Ljava/lang/StackTraceElement;
    .param p1, "otherSTEPArray"    # [Lch/qos/logback/classic/spi/StackTraceElementProxy;

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 44
    .local v0, "steIndex":I
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 45
    .local v1, "parentIndex":I
    const/4 v2, 0x0

    .line 46
    .local v2, "count":I
    :goto_0
    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 47
    aget-object v3, p0, v0

    aget-object v4, p1, v1

    iget-object v4, v4, Lch/qos/logback/classic/spi/StackTraceElementProxy;->ste:Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 55
    :cond_1
    return v2
.end method
