.class public Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;
.super Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
.source "SecT571R1Point.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)V

    .line 13
    iput-boolean p5, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 10
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 12
    iget-object v2, v0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 15
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 22
    :cond_2
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 25
    :cond_3
    iget-object v5, v0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v6, v0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 26
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-virtual {v1, v7}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 28
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v9

    .line 29
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v10

    .line 30
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v11

    .line 31
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v12

    .line 33
    invoke-virtual {v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    iget-object v13, v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v13}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v13

    :goto_0
    if-nez v13, :cond_5

    .line 37
    iget-object v15, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 38
    iget-object v14, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    goto :goto_1

    .line 42
    :cond_5
    iget-object v14, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v14, v13, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 43
    iget-object v14, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v14, v13, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v15, v10

    move-object v14, v12

    .line 46
    :goto_1
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v1

    :goto_2
    if-nez v1, :cond_7

    .line 50
    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 51
    iget-object v7, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    goto :goto_3

    .line 55
    :cond_7
    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2, v1, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 56
    iget-object v2, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2, v1, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v2, v9

    move-object v7, v11

    .line 60
    :goto_3
    invoke-static {v7, v14, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 63
    invoke-static {v2, v15, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 65
    invoke-static {v12}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 67
    invoke-static {v11}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 69
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 72
    :cond_8
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 76
    :cond_9
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 79
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 81
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->addOne()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 87
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 89
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v3, v0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 92
    :cond_a
    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 94
    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    move-object v6, v1

    goto :goto_4

    .line 98
    :cond_b
    invoke-static {v12, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 100
    invoke-static {v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v3

    .line 105
    invoke-static {v2, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 106
    invoke-static {v15, v3, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 108
    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v2, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 109
    iget-object v7, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v10, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 111
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 113
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v5, v0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 116
    :cond_c
    new-instance v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v7, v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 117
    iget-object v8, v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v12, v3, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    if-eqz v1, :cond_d

    .line 121
    iget-object v3, v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v1, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 124
    :cond_d
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v1

    .line 126
    invoke-static {v10, v12, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 127
    invoke-static {v12, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 129
    iget-object v3, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v5, v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v5, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 130
    iget-object v3, v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v12, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 132
    new-instance v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v3, v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 133
    iget-object v5, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    if-eqz v13, :cond_e

    .line 137
    iget-object v1, v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1, v13, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    :cond_e
    move-object v5, v2

    move-object v6, v3

    move-object v2, v7

    .line 141
    :goto_4
    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v3, 0x1

    new-array v7, v3, [Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v2, v7, v3

    iget-boolean v8, v0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method protected detach()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    .line 1
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected getCompressionYTilde()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 3
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 12
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->divide(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public negate()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 6
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 7
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 13
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 14
    new-instance v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->add(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v5, v2

    iget-boolean v6, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, v7

    move-object v2, v4

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v7
.end method

.method public twice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

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
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 9
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 15
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 17
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v5

    .line 18
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v6

    .line 20
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v7

    :goto_0
    if-nez v7, :cond_3

    .line 24
    iget-object v8, v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    .line 25
    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    goto :goto_1

    .line 29
    :cond_3
    iget-object v8, v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v8, v7, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 30
    iget-object v3, v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v3, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    move-object v8, v5

    move-object v3, v6

    .line 33
    :goto_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v9

    .line 34
    iget-object v1, v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v1, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 35
    invoke-static {v8, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 37
    invoke-static {v9}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 39
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v1, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v4, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 42
    :cond_4
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v1

    .line 43
    invoke-static {v9, v8, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 45
    new-instance v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v8, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 46
    iget-object v5, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 48
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v5, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    if-eqz v7, :cond_5

    .line 51
    iget-object v9, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v3, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    :cond_5
    if-nez v7, :cond_6

    .line 57
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    goto :goto_2

    .line 61
    :cond_6
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v7, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    move-object v0, v6

    .line 64
    :goto_2
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareAddToExt([J[J)V

    .line 65
    invoke-static {v1, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 66
    iget-object v0, v8, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v1, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 67
    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 69
    new-instance v7, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v1, 0x1

    new-array v6, v1, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v6, v4

    iget-boolean v9, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v1, v7

    move-object v3, v8

    move-object v4, v0

    move-object v5, v6

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v7
.end method

.method public twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 11

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

    .line 7
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 12
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECPoint;->x:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 13
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    .line 19
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 20
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isZero()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->isOne()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    .line 25
    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECPoint;->y:Lorg/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-object v5, p0, Lorg/bouncycastle/math/ec/ECPoint;->zs:[Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v5, v5, v3

    check-cast v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 26
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    .line 28
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v7

    .line 29
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v8

    .line 30
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v9

    .line 31
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v10

    .line 34
    iget-object v0, v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 37
    iget-object v0, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 40
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 43
    iget-object v0, v4, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    iget-object v4, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v4, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 46
    invoke-static {v9, v8, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([J[J[J)V

    .line 48
    invoke-static {v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->precompMultiplicand([J)[J

    move-result-object v0

    .line 51
    iget-object v4, v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v4, v0, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 52
    invoke-static {v9, v8, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 54
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v4

    .line 55
    invoke-static {v9, v10, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 56
    invoke-static {v7, v0, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecompAddToExt([J[J[J)V

    .line 57
    invoke-static {v4, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 60
    iget-object v2, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v2, v0, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 63
    invoke-static {v7, v10, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 64
    invoke-static {v8, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 66
    invoke-static {v8}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-static {v9}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 73
    :cond_4
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 76
    :cond_5
    invoke-static {v9}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 78
    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v0, v9}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Curve;->SecT571R1_B_SQRT:Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-direct {p1, v1, v0, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object p1

    .line 81
    :cond_6
    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>()V

    .line 82
    iget-object p1, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 83
    iget-object p1, v2, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {p1, v7, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 85
    new-instance p1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {p1, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 86
    iget-object v5, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v8, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 87
    iget-object v5, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v5, v0, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyPrecomp([J[J[J)V

    .line 89
    new-instance v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;

    invoke-direct {v5, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;-><init>([J)V

    .line 90
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v9, v8, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 91
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    const/16 v0, 0x12

    .line 93
    invoke-static {v0, v4}, Lorg/bouncycastle/math/raw/Nat;->zero64(I[J)V

    .line 94
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v10, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 95
    iget-object v0, v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addOne([J[J)V

    .line 96
    iget-object v0, p1, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v10, v0, v4}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiplyAddToExt([J[J[J)V

    .line 97
    iget-object v0, v5, Lorg/bouncycastle/math/ec/custom/sec/SecT571FieldElement;->x:[J

    invoke-static {v4, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 99
    new-instance v6, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;

    const/4 v0, 0x1

    new-array v4, v0, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aput-object p1, v4, v3

    iget-boolean p1, p0, Lorg/bouncycastle/math/ec/ECPoint;->withCompression:Z

    move-object v0, v6

    move-object v3, v5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v6

    .line 100
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571R1Point;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
