.class public Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD128Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x10


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 2
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    .line 10
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->reset()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    .line 31
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    return-void
.end method

.method private F1(IIIIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private F2(IIIIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5a827999

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private F3(IIIIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6ed9eba1

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private F4(IIIIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, -0x70e44324

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private FF1(IIIIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private FF2(IIIIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x6d703ef3

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private FF3(IIIIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x5c4dd124

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private FF4(IIIIII)I
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, p5

    const p2, 0x50a28be6

    add-int/2addr p1, p2

    invoke-direct {p0, p1, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result p1

    return p1
.end method

.method private RL(II)I
    .locals 1

    shl-int v0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 3
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 4
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 5
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 6
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 8
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget p1, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    iput p1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    return-void
.end method

.method private f1(III)I
    .locals 0

    xor-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private f2(III)I
    .locals 0

    and-int/2addr p2, p1

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private f3(III)I
    .locals 0

    not-int p2, p2

    or-int/2addr p1, p2

    xor-int/2addr p1, p3

    return p1
.end method

.method private f4(III)I
    .locals 0

    and-int/2addr p1, p3

    not-int p3, p3

    and-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private unpackWord(I[BI)V
    .locals 2

    int-to-byte v0, p1

    .line 1
    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    .line 2
    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    .line 3
    aput-byte v1, p2, v0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 4
    aput-byte p1, p2, p3

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->finish()V

    .line 3
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    .line 4
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    .line 5
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    .line 6
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->unpackWord(I[BI)V

    .line 8
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->reset()V

    const/16 p1, 0x10

    return p1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "RIPEMD128"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 32

    .line 1
    move-object/from16 v7, p0

    iget v8, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 2
    iget v9, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 3
    iget v10, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 4
    iget v11, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 9
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v12, 0x0

    aget v5, v0, v12

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v13

    .line 10
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v14, 0x1

    aget v5, v0, v14

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v11

    move v2, v13

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v15

    .line 11
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v16, 0x2

    aget v5, v0, v16

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v15

    move v3, v13

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v17

    .line 12
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v18, 0x3

    aget v5, v0, v18

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v9

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v19

    .line 13
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v20, 0x4

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v13

    .line 14
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v21, 0x5

    aget v5, v0, v21

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v15

    .line 15
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v22, 0x6

    aget v5, v0, v22

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v17

    .line 16
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v23, 0x7

    aget v5, v0, v23

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v19

    .line 17
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v24, 0x8

    aget v5, v0, v24

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v13

    .line 18
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v25, 0x9

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v15

    .line 19
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v26, 0xa

    aget v5, v0, v26

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v17

    .line 20
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v27, 0xb

    aget v5, v0, v27

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v19

    .line 21
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v28, 0xc

    aget v5, v0, v28

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v13

    .line 22
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v29, 0xd

    aget v5, v0, v29

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v15

    .line 23
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v30, 0xe

    aget v5, v0, v30

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v17

    .line 24
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v31, 0xf

    aget v5, v0, v31

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v19

    .line 29
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v23

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v13

    .line 30
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v15

    .line 31
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v29

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v17

    .line 32
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v19

    .line 33
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v13

    .line 34
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v15

    .line 35
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v31

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v17

    .line 36
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v19

    .line 37
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v28

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v13

    .line 38
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v12

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v15

    .line 39
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v17

    .line 40
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v19

    .line 41
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v16

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v13

    .line 42
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v30

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v15

    .line 43
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v17

    .line 44
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v19

    .line 49
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v13

    .line 50
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v15

    .line 51
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v30

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v17

    .line 52
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v19

    .line 53
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v13

    .line 54
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v31

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v15

    .line 55
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v17

    .line 56
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v19

    .line 57
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v16

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v13

    .line 58
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v15

    .line 59
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v12

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v17

    .line 60
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v22

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v19

    .line 61
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v29

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v13

    .line 62
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v15

    .line 63
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v17

    .line 64
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v28

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v19

    .line 69
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v13

    .line 70
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v15

    .line 71
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v17

    .line 72
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v19

    .line 73
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v12

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v13

    .line 74
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v15

    .line 75
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v28

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v17

    .line 76
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v20

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v19

    .line 77
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v29

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v13

    .line 78
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v15

    .line 79
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v23

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v17

    .line 80
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v31

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v19

    .line 81
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v30

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v19

    move/from16 v3, v17

    move v4, v15

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v13

    .line 82
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v21

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v15

    move v2, v13

    move/from16 v3, v19

    move/from16 v4, v17

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v15

    .line 83
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v22

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    move v2, v15

    move v3, v13

    move/from16 v4, v19

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v17

    .line 84
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v16

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v17

    move v3, v15

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v19

    .line 89
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    .line 90
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v30

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    .line 91
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v23

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v10

    .line 92
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v12

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v9

    .line 93
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    .line 94
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v16

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    .line 95
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v27

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v10

    .line 96
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v9

    .line 97
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v29

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    .line 98
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v22

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    .line 99
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v31

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v10

    .line 100
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v9

    .line 101
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v8

    .line 102
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v26

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v11

    .line 103
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v10

    .line 104
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v28

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v9

    .line 109
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v22

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    .line 110
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    .line 111
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v10

    .line 112
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v23

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v9

    .line 113
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v12

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    .line 114
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v29

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    .line 115
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v21

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v10

    .line 116
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v9

    .line 117
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v30

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    .line 118
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v31

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    .line 119
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v10

    .line 120
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v28

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v9

    .line 121
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v8

    .line 122
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v11

    .line 123
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v10

    .line 124
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v16

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v9

    .line 129
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v31

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    .line 130
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v21

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    .line 131
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v10

    .line 132
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v9

    .line 133
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v23

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    .line 134
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v30

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    .line 135
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v22

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v10

    .line 136
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v9

    .line 137
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v27

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    .line 138
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    .line 139
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v28

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v10

    .line 140
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v16

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v9

    .line 141
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xd

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v8

    .line 142
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v12

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v11

    .line 143
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v20

    const/4 v6, 0x7

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v10

    .line 144
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v29

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v9

    .line 149
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v24

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    .line 150
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v22

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    .line 151
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v20

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v10

    .line 152
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v14

    const/16 v6, 0xb

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v9

    .line 153
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v18

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    .line 154
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v27

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    .line 155
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v31

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v10

    .line 156
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v12

    const/16 v6, 0xe

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v9

    .line 157
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v21

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    .line 158
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v28

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    .line 159
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v16

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v10

    .line 160
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v29

    const/16 v6, 0x9

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v9

    .line 161
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v25

    const/16 v6, 0xc

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v8

    .line 162
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v23

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move v1, v11

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v11

    .line 163
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v26

    const/16 v6, 0xf

    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move v3, v8

    move v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v10

    .line 164
    iget-object v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v0, v30

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v0

    .line 166
    iget v1, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int v17, v17, v1

    add-int v11, v11, v17

    .line 171
    iget v1, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int/2addr v1, v15

    add-int/2addr v1, v8

    iput v1, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 172
    iget v1, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int/2addr v1, v13

    add-int/2addr v1, v0

    iput v1, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 173
    iget v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    add-int v0, v0, v19

    add-int/2addr v0, v10

    iput v0, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 174
    iput v11, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 179
    iput v12, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    move v0, v12

    .line 180
    :goto_0
    iget-object v1, v7, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v2, v1

    if-eq v0, v2, :cond_0

    .line 182
    aput v12, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4

    .line 1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    const/16 v1, 0x20

    ushr-long/2addr p1, v1

    long-to-int p1, p1

    const/16 p2, 0xf

    .line 7
    aput p1, v0, p2

    return-void
.end method

.method protected processWord([BI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v3

    aput p1, v0, v1

    if-ne v2, v5, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .line 1
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 3
    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 4
    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 5
    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 6
    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    move v1, v0

    .line 10
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_0

    .line 12
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 0

    .line 13
    check-cast p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    .line 15
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    return-void
.end method
