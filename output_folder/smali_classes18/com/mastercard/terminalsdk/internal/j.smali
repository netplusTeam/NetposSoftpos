.class public Lcom/mastercard/terminalsdk/internal/j;
.super Ljava/lang/Object;


# direct methods
.method public static b([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, p0, v0

    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    aput v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static c(I)I
    .locals 6

    sget-object v0, Lcom/mastercard/terminalsdk/internal/e;->c:Lcom/mastercard/terminalsdk/internal/e;

    ushr-int/lit8 v1, p0, 0x18

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 p0, p0, 0xff

    iget-object v4, v0, Lcom/mastercard/terminalsdk/internal/e;->e:[[I

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget v1, v4, v1

    iget-object v4, v0, Lcom/mastercard/terminalsdk/internal/e;->e:[[I

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget v2, v4, v2

    add-int/2addr v1, v2

    iget-object v2, v0, Lcom/mastercard/terminalsdk/internal/e;->e:[[I

    const/4 v4, 0x2

    aget-object v2, v2, v4

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v0, v0, Lcom/mastercard/terminalsdk/internal/e;->e:[[I

    const/4 v2, 0x3

    aget-object v0, v0, v2

    aget p0, v0, p0

    add-int/2addr v1, p0

    return v1
.end method

.method public static c([C[IZ)[I
    .locals 10

    const/4 v0, 0x0

    aget-char v1, p0, v0

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    const/4 v3, 0x1

    aget-char v4, p0, v3

    add-int/2addr v1, v4

    const/4 v4, 0x2

    aget-char v5, p0, v4

    shl-int/2addr v5, v2

    const/4 v6, 0x3

    aget-char v7, p0, v6

    add-int/2addr v5, v7

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/mastercard/terminalsdk/internal/j;->b([I)V

    :cond_0
    move v7, v0

    :goto_0
    if-ge v7, v2, :cond_1

    aget v8, p1, v7

    xor-int/2addr v1, v8

    invoke-static {v1}, Lcom/mastercard/terminalsdk/internal/j;->c(I)I

    move-result v8

    xor-int/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    move v9, v5

    move v5, v1

    move v1, v9

    goto :goto_0

    :cond_1
    aget v2, p1, v2

    xor-int/2addr v1, v2

    const/16 v2, 0x11

    aget v2, p1, v2

    xor-int/2addr v2, v5

    new-array v5, v4, [I

    aput v2, v5, v0

    aput v1, v5, v3

    ushr-int/lit8 v7, v2, 0x10

    int-to-char v7, v7

    aput-char v7, p0, v0

    int-to-char v0, v2

    aput-char v0, p0, v3

    ushr-int/lit8 v0, v1, 0x10

    int-to-char v0, v0

    aput-char v0, p0, v4

    int-to-char v0, v1

    aput-char v0, p0, v6

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/mastercard/terminalsdk/internal/j;->b([I)V

    :cond_2
    return-object v5
.end method
