.class public final Ljdbm/helper/ObjectBAComparator;
.super Ljava/lang/Object;
.source "ObjectBAComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private _comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .param p1, "comparator"    # Ljava/util/Comparator;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Ljdbm/helper/ObjectBAComparator;->_comparator:Ljava/util/Comparator;

    .line 89
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'comparator\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compareByteArray([B[B)I
    .locals 6
    .param p0, "thisKey"    # [B
    .param p1, "otherKey"    # [B

    .line 127
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ge v1, v0, :cond_6

    .line 131
    aget-byte v4, p0, v1

    if-ltz v4, :cond_2

    .line 132
    aget-byte v4, p1, v1

    if-ltz v4, :cond_1

    .line 134
    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    if-ge v4, v5, :cond_0

    .line 135
    return v2

    .line 136
    :cond_0
    aget-byte v2, p0, v1

    aget-byte v4, p1, v1

    if-le v2, v4, :cond_5

    .line 137
    return v3

    .line 141
    :cond_1
    return v2

    .line 144
    :cond_2
    aget-byte v4, p1, v1

    if-ltz v4, :cond_3

    .line 146
    return v3

    .line 149
    :cond_3
    aget-byte v4, p0, v1

    aget-byte v5, p1, v1

    if-ge v4, v5, :cond_4

    .line 150
    return v2

    .line 151
    :cond_4
    aget-byte v2, p0, v1

    aget-byte v4, p1, v1

    if-le v2, v4, :cond_5

    .line 152
    return v3

    .line 130
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "i":I
    :cond_6
    array-length v1, p0

    array-length v4, p1

    if-ne v1, v4, :cond_7

    .line 158
    const/4 v1, 0x0

    return v1

    .line 160
    :cond_7
    array-length v1, p0

    array-length v4, p1

    if-ge v1, v4, :cond_8

    .line 161
    return v2

    .line 163
    :cond_8
    return v3
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .line 101
    if-eqz p1, :cond_1

    .line 105
    if-eqz p2, :cond_0

    .line 110
    :try_start_0
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Ljdbm/helper/Serialization;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    .line 111
    move-object v0, p2

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Ljdbm/helper/Serialization;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    .line 113
    iget-object v0, p0, Ljdbm/helper/ObjectBAComparator;->_comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "except":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljdbm/helper/WrappedRuntimeException;

    invoke-direct {v1, v0}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 114
    .end local v0    # "except":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, "except":Ljava/io/IOException;
    new-instance v1, Ljdbm/helper/WrappedRuntimeException;

    invoke-direct {v1, v0}, Ljdbm/helper/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 106
    .end local v0    # "except":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'obj2\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'obj1\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
