.class public final Lcom/hivemq/client/internal/util/ByteArrayUtil;
.super Ljava/lang/Object;
.source "ByteArrayUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals([BII[BII)Z
    .locals 8
    .param p0, "array1"    # [B
    .param p1, "start1"    # I
    .param p2, "end1"    # I
    .param p3, "array2"    # [B
    .param p4, "start2"    # I
    .param p5, "end2"    # I

    .line 34
    sub-int v0, p2, p1

    .line 35
    .local v0, "length1":I
    sub-int v1, p5, p4

    .line 36
    .local v1, "length2":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 37
    return v2

    .line 40
    :cond_0
    const/4 v3, 0x1

    if-ne p0, p3, :cond_1

    if-ne p1, p4, :cond_1

    .line 41
    return v3

    .line 44
    :cond_1
    move v4, p1

    .local v4, "i1":I
    move v5, p4

    .local v5, "i2":I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 45
    aget-byte v6, p0, v4

    aget-byte v7, p3, v5

    if-eq v6, v7, :cond_2

    .line 46
    return v2

    .line 44
    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    .end local v4    # "i1":I
    .end local v5    # "i2":I
    :cond_3
    return v3
.end method

.method public static hashCode([BII)I
    .locals 4
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "result":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 55
    mul-int/lit8 v2, v0, 0x1f

    aget-byte v3, p0, v1

    add-int v0, v2, v3

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static indexOf([BIB)I
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "search"    # B

    .line 61
    move v0, p1

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 62
    aget-byte v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 63
    return v0

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_1
    array-length v0, p0

    return v0
.end method
