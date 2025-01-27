.class public Lcom/mastercard/terminalsdk/internal/n;
.super Ljava/lang/Object;


# direct methods
.method public static b([CCCCC)V
    .locals 8

    const/4 v0, 0x0

    const v1, 0xe370

    move v2, v0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    aget-char v4, p0, v3

    aget-char v5, p0, v0

    add-int v6, v5, v1

    shl-int/lit8 v7, v5, 0x4

    add-int/2addr v7, p3

    xor-int/2addr v6, v7

    ushr-int/lit8 v7, v5, 0x5

    add-int/2addr v7, p4

    xor-int/2addr v6, v7

    sub-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, p0, v3

    add-int v3, v4, v1

    shl-int/lit8 v6, v4, 0x4

    add-int/2addr v6, p1

    xor-int/2addr v3, v6

    ushr-int/lit8 v4, v4, 0x5

    add-int/2addr v4, p2

    xor-int/2addr v3, v4

    sub-int/2addr v5, v3

    int-to-char v3, v5

    aput-char v3, p0, v0

    const v3, 0x9e37

    sub-int/2addr v1, v3

    int-to-char v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
