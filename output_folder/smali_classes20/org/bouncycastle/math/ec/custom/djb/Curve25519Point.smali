.class public Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "Curve25519Point.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-ne p2, p1, :cond_2

    .line 9
    iput-boolean p4, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of the field elements is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 13
    iput-boolean p5, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 14

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 17
    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 19
    invoke-virtual {p1, v4}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 22
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v7

    .line 23
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 24
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 25
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v10

    .line 27
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 31
    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 32
    iget-object v6, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    goto :goto_0

    .line 37
    :cond_3
    iget-object v12, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v12, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 40
    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v5, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 42
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v5, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 43
    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v5, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    move-object v5, v8

    move-object v6, v9

    .line 46
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 50
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 51
    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    goto :goto_1

    .line 56
    :cond_4
    iget-object v13, p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v13, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 59
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v10, v0, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 61
    iget-object v0, p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 62
    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    move-object v0, v7

    move-object v2, v10

    .line 65
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v13

    .line 66
    invoke-static {v0, v5, v13}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 69
    invoke-static {v2, v6, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 72
    invoke-static {v13}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    invoke-static {v8}, Lorg/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 77
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 81
    :cond_5
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 84
    :cond_6
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v5

    .line 85
    invoke-static {v13, v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 87
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 88
    invoke-static {v5, v13, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 91
    invoke-static {v5, v0, v9}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 93
    invoke-static {v6, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->negate([I[I)V

    .line 94
    invoke-static {v2, v6, v7}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 96
    invoke-static {v9, v9, v6}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v0

    .line 97
    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce27(I[I)V

    .line 99
    new-instance v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v2, v10}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 100
    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v8, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 101
    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v0, v6, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 103
    new-instance v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v10, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 104
    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v6, v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v9, v0, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 105
    iget-object v0, v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v0, v8, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiplyAddToExt([I[I[I)V

    .line 106
    iget-object v0, v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 108
    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v0, v13}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    if-nez v11, :cond_7

    .line 111
    iget-object v6, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v3, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    .line 115
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v3, p1, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    :cond_8
    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    .line 121
    :goto_2
    invoke-virtual {p0, v0, v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object p1

    const/4 v3, 0x2

    .line 123
    new-array v5, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v0, v5, v4

    const/4 v0, 0x1

    aput-object p1, v5, v0

    .line 125
    new-instance p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v0, p1

    move-object v3, v10

    move-object v4, v5

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object p1
.end method

.method protected calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 2
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>()V

    if-nez p2, :cond_1

    .line 10
    iget-object p2, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    .line 11
    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {p1, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 13
    :cond_1
    iget-object p1, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {p2, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 14
    iget-object p1, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object p2, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {p1, p2, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    return-object v1
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    check-cast v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 5
    aget-object v2, v0, v2

    check-cast v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->calculateJacobianModifiedW(Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;[I)Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    return-object v2
.end method

.method public getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 7
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 9
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v0

    return-object v0
.end method

.method protected twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;
    .locals 14

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    .line 2
    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->getJacobianModifiedW()Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    move-result-object v4

    .line 6
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v5

    .line 7
    iget-object v6, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 8
    invoke-static {v5, v5, v5}, Lorg/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v6

    .line 9
    iget-object v7, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v5}, Lorg/bouncycastle/math/raw/Nat256;->addTo([I[I)I

    move-result v7

    add-int/2addr v6, v7

    .line 10
    invoke-static {v6, v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce27(I[I)V

    .line 12
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 13
    iget-object v7, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 15
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    .line 16
    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v6, v1, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 18
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v1

    .line 19
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v0, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 20
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 22
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 23
    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 24
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 26
    new-instance v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v10, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 27
    iget-object v7, v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v5, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->square([I[I)V

    .line 28
    iget-object v7, v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v1, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 29
    iget-object v7, v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v7, v1, v7}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 31
    new-instance v11, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v11, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 32
    iget-object v7, v10, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v8, v11, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v7, v8}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 33
    iget-object v1, v11, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v5, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 34
    iget-object v1, v11, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subtract([I[I[I)V

    .line 36
    new-instance v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v1, v6}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 37
    iget-object v5, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v5}, Lorg/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 39
    iget-object v5, v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {v5, v2, v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 45
    new-instance v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v2, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>([I)V

    .line 46
    iget-object p1, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    iget-object v0, v4, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->multiply([I[I[I)V

    .line 47
    iget-object p1, v2, Lorg/bouncycastle/math/ec/custom/djb/Curve25519FieldElement;->x:[I

    invoke-static {p1, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->twice([I[I)V

    .line 50
    :cond_1
    new-instance p1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    const/4 v0, 0x2

    new-array v12, v0, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v12, v3

    const/4 v0, 0x1

    aput-object v2, v12, v0

    iget-boolean v13, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v8, p1

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object p1
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    if-ne p0, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 13
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->twiceJacobianModified(Z)Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Point;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
