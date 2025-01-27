.class public Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP224R1Point.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

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
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 14
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 16
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 17
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 19
    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 20
    invoke-virtual {p1, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 23
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v7

    .line 24
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    .line 25
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v9

    .line 26
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v10

    .line 28
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 32
    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 33
    iget-object v4, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    goto :goto_0

    .line 38
    :cond_3
    iget-object v12, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v12, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 41
    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v9, v3, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 43
    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v9, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 44
    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v9, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    move-object v3, v8

    move-object v4, v9

    .line 47
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 51
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 52
    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    goto :goto_1

    .line 57
    :cond_4
    iget-object v13, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v13, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 60
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v10, v0, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 62
    iget-object v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 63
    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v10, v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    move-object v0, v7

    move-object v2, v10

    .line 66
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v13

    .line 67
    invoke-static {v0, v3, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 70
    invoke-static {v2, v4, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 73
    invoke-static {v13}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 75
    invoke-static {v8}, Lorg/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 78
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 82
    :cond_5
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 86
    :cond_6
    invoke-static {v13, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 88
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v3

    .line 89
    invoke-static {v9, v13, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 92
    invoke-static {v9, v0, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 94
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 95
    invoke-static {v2, v3, v7}, Lorg/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 97
    invoke-static {v9, v9, v3}, Lorg/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v0

    .line 98
    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 100
    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v2, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 101
    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v8, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 102
    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 104
    new-instance v4, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v4, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 105
    iget-object v0, v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v3, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v9, v0, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 106
    iget-object v0, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiplyAddToExt([I[I[I)V

    .line 107
    iget-object v0, v4, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 109
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v13}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    if-nez v11, :cond_7

    .line 112
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v5, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, v5, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    .line 116
    iget-object v3, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object p1, p1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, p1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    .line 119
    new-array p1, p1, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v0, p1, v6

    .line 121
    new-instance v6, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    iget-boolean v5, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v0, v6

    move-object v3, v4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v6
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
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
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECPoint;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->negate()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public threeTimes()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 8
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 9
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 14
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 17
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v5

    .line 18
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v6

    .line 20
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    .line 21
    iget-object v8, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 23
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    .line 24
    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 26
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v9

    .line 28
    iget-object v10, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    if-nez v9, :cond_2

    .line 32
    invoke-static {v10, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    move-object v10, v6

    .line 35
    :cond_2
    iget-object v11, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v11, v10, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 38
    iget-object v11, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v11, v10, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 39
    invoke-static {v6, v5, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 40
    invoke-static {v6, v6, v6}, Lorg/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v10

    .line 41
    invoke-static {v10, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 44
    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v1, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    const/4 v1, 0x2

    .line 45
    const/4 v10, 0x7

    invoke-static {v10, v7, v1, v4}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v1

    .line 46
    invoke-static {v1, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    const/4 v1, 0x3

    .line 48
    invoke-static {v10, v8, v1, v4, v5}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v1

    .line 49
    invoke-static {v1, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 51
    new-instance v10, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v10, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 52
    iget-object v1, v10, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v6, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 53
    iget-object v1, v10, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v7, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 54
    iget-object v1, v10, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v7, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 56
    new-instance v8, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v8, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 57
    iget-object v1, v10, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v11, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v1, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 58
    iget-object v1, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 59
    iget-object v1, v8, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v5, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 61
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v1, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 62
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    if-nez v9, :cond_3

    .line 65
    iget-object v0, v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 68
    :cond_3
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    const/4 v3, 0x1

    new-array v5, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v5, v4

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, v0

    move-object v3, v10

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    if-ne p0, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

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
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

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

    .line 18
    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
