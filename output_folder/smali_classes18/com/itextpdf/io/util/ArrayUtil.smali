.class public final Lcom/itextpdf/io/util/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static cloneArray([I)[I
    .locals 1
    .param p0, "src"    # [I

    .line 107
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    return-object v0
.end method

.method public static fillWithValue([Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)V"
        }
    .end annotation

    .line 101
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 102
    aput-object p1, p0, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static fillWithValue([FF)[F
    .locals 2
    .param p0, "a"    # [F
    .param p1, "value"    # F

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 95
    aput p1, p0, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public static fillWithValue([II)[I
    .locals 2
    .param p0, "a"    # [I
    .param p1, "value"    # I

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 88
    aput p1, p0, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public static hashCode([B)I
    .locals 5
    .param p0, "a"    # [B

    .line 76
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 77
    return v0

    .line 79
    :cond_0
    const/4 v1, 0x1

    .line 80
    .local v1, "result":I
    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-byte v3, p0, v0

    .line 81
    .local v3, "element":B
    mul-int/lit8 v4, v1, 0x1f

    add-int v1, v4, v3

    .line 80
    .end local v3    # "element":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    return v1
.end method

.method public static shortenArray([BI)[B
    .locals 2
    .param p0, "src"    # [B
    .param p1, "length"    # I

    .line 58
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 59
    new-array v0, p1, [B

    .line 60
    .local v0, "shortened":[B
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    return-object v0

    .line 63
    .end local v0    # "shortened":[B
    :cond_0
    return-object p0
.end method

.method public static toIntArray(Ljava/util/Collection;)[I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 67
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 68
    .local v0, "array":[I
    const/4 v1, 0x0

    .line 69
    .local v1, "k":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 70
    .local v3, "key":Ljava/lang/Integer;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "k":I
    .local v4, "k":I
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v1

    .line 71
    .end local v3    # "key":Ljava/lang/Integer;
    move v1, v4

    goto :goto_0

    .line 72
    .end local v4    # "k":I
    .restart local v1    # "k":I
    :cond_0
    return-object v0
.end method
