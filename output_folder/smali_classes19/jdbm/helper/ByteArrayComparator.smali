.class public final Ljdbm/helper/ByteArrayComparator;
.super Ljava/lang/Object;
.source "ByteArrayComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareByteArray([B[B)I
    .locals 6
    .param p0, "thisKey"    # [B
    .param p1, "otherKey"    # [B

    .line 95
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, v0, :cond_6

    .line 99
    aget-byte v4, p0, v1

    if-ltz v4, :cond_2

    .line 100
    aget-byte v4, p1, v1

    if-ltz v4, :cond_1

    .line 102
    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    if-ge v4, v5, :cond_0

    .line 103
    return v2

    .line 104
    :cond_0
    aget-byte v2, p0, v1

    aget-byte v4, p1, v1

    if-le v2, v4, :cond_5

    .line 105
    return v3

    .line 109
    :cond_1
    return v2

    .line 112
    :cond_2
    aget-byte v4, p1, v1

    if-ltz v4, :cond_3

    .line 114
    return v3

    .line 117
    :cond_3
    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    if-ge v4, v5, :cond_4

    .line 118
    return v2

    .line 119
    :cond_4
    aget-byte v2, p0, v1

    aget-byte v4, p1, v1

    if-le v2, v4, :cond_5

    .line 120
    return v3

    .line 98
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_6
    array-length v1, p0

    array-length v4, p1

    if-ne v1, v4, :cond_7

    .line 126
    const/4 v1, 0x0

    return v1

    .line 128
    :cond_7
    array-length v1, p0

    array-length v4, p1

    if-ge v1, v4, :cond_8

    .line 129
    return v2

    .line 131
    :cond_8
    return v3
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 78
    if-eqz p1, :cond_1

    .line 82
    if-eqz p2, :cond_0

    .line 86
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Ljdbm/helper/ByteArrayComparator;->compareByteArray([B[B)I

    move-result v0

    return v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'obj2\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'obj1\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
