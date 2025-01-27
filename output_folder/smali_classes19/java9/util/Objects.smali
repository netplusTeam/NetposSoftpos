.class public final Ljava9/util/Objects;
.super Ljava/lang/Object;
.source "Objects.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static checkFromIndexSize(III)I
    .locals 4
    .param p0, "fromIndex"    # I
    .param p1, "size"    # I
    .param p2, "length"    # I

    .line 448
    or-int v0, p2, p0

    or-int/2addr v0, p1

    if-ltz v0, :cond_0

    sub-int v0, p2, p0

    if-gt p1, v0, :cond_0

    .line 453
    return p0

    .line 449
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 451
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 449
    const-string v2, "Range [%d, %<d + %d) out-of-bounds for length %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkFromToIndex(III)I
    .locals 4
    .param p0, "fromIndex"    # I
    .param p1, "toIndex"    # I
    .param p2, "length"    # I

    .line 417
    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 422
    return p0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 419
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 420
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 418
    const-string v2, "Range [%d, %d) out-of-bounds for length %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkIndex(II)I
    .locals 4
    .param p0, "index"    # I
    .param p1, "length"    # I

    .line 387
    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    .line 391
    return p0

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 389
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 388
    const-string v2, "Index %d out-of-bounds for length %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 217
    .local p0, "a":Ljava/lang/Object;, "TT;"
    .local p1, "b":Ljava/lang/Object;, "TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 89
    if-ne p0, p1, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 91
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p0, p1}, Ljava9/util/Objects;->deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 92
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static deepEquals0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .line 99
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 100
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .local v0, "eq":Z
    goto/16 :goto_0

    .line 101
    .end local v0    # "eq":Z
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 102
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    move-object v1, p1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_0

    .line 103
    .end local v0    # "eq":Z
    :cond_1
    instance-of v0, p0, [S

    if-eqz v0, :cond_2

    instance-of v0, p1, [S

    if-eqz v0, :cond_2

    .line 104
    move-object v0, p0

    check-cast v0, [S

    check-cast v0, [S

    move-object v1, p1

    check-cast v1, [S

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_0

    .line 105
    .end local v0    # "eq":Z
    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    instance-of v0, p1, [I

    if-eqz v0, :cond_3

    .line 106
    move-object v0, p0

    check-cast v0, [I

    check-cast v0, [I

    move-object v1, p1

    check-cast v1, [I

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto/16 :goto_0

    .line 107
    .end local v0    # "eq":Z
    :cond_3
    instance-of v0, p0, [J

    if-eqz v0, :cond_4

    instance-of v0, p1, [J

    if-eqz v0, :cond_4

    .line 108
    move-object v0, p0

    check-cast v0, [J

    check-cast v0, [J

    move-object v1, p1

    check-cast v1, [J

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 109
    .end local v0    # "eq":Z
    :cond_4
    instance-of v0, p0, [C

    if-eqz v0, :cond_5

    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    .line 110
    move-object v0, p0

    check-cast v0, [C

    check-cast v0, [C

    move-object v1, p1

    check-cast v1, [C

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 111
    .end local v0    # "eq":Z
    :cond_5
    instance-of v0, p0, [F

    if-eqz v0, :cond_6

    instance-of v0, p1, [F

    if-eqz v0, :cond_6

    .line 112
    move-object v0, p0

    check-cast v0, [F

    check-cast v0, [F

    move-object v1, p1

    check-cast v1, [F

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 113
    .end local v0    # "eq":Z
    :cond_6
    instance-of v0, p0, [D

    if-eqz v0, :cond_7

    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    .line 114
    move-object v0, p0

    check-cast v0, [D

    check-cast v0, [D

    move-object v1, p1

    check-cast v1, [D

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 115
    .end local v0    # "eq":Z
    :cond_7
    instance-of v0, p0, [Z

    if-eqz v0, :cond_8

    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 116
    move-object v0, p0

    check-cast v0, [Z

    check-cast v0, [Z

    move-object v1, p1

    check-cast v1, [Z

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava9/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .restart local v0    # "eq":Z
    goto :goto_0

    .line 118
    .end local v0    # "eq":Z
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 119
    .restart local v0    # "eq":Z
    :goto_0
    return v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 68
    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 1
    .param p0, "values"    # [Ljava/lang/Object;

    .line 162
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 132
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNull(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 281
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static nonNull(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 299
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 236
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 238
    return-object p0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 261
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 263
    return-object p0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static requireNonNull(Ljava/lang/Object;Ljava9/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava9/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 361
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    .local p1, "messageSupplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 362
    new-instance v0, Ljava/lang/NullPointerException;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 363
    :cond_0
    invoke-interface {p1}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    return-object p0
.end method

.method public static requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 317
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    .local p1, "defaultObj":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, "defaultObj"

    invoke-static {p1, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static requireNonNullElseGet(Ljava/lang/Object;Ljava9/util/function/Supplier;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava9/util/function/Supplier<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 336
    .local p0, "obj":Ljava/lang/Object;, "TT;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 337
    :cond_0
    const-string v0, "supplier"

    invoke-static {p1, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/function/Supplier;

    invoke-interface {v0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "supplier.get()"

    invoke-static {v0, v1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .line 176
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "nullDefault"    # Ljava/lang/String;

    .line 193
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method
