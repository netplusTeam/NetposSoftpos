.class public Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;
.super Ljava/lang/Object;
.source "SPHINCS256Signer.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private final hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

.field private keyData:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 6
    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    .line 11
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;-><init>(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "2n-digest needs to produce 64 bytes of output"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n-digest needs to produce 32 bytes of output"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V
    .locals 22

    .line 1
    move-object/from16 v0, p4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>(Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 3
    const/16 v2, 0x800

    new-array v2, v2, [B

    .line 4
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 5
    const v4, 0x10c00

    new-array v12, v4, [B

    .line 8
    const-wide/16 v13, 0x0

    iput-wide v13, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_0
    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const-wide/16 v15, 0x20

    cmp-long v6, v4, v15

    const-wide/16 v17, 0x1

    if-gez v6, :cond_0

    mul-long/2addr v4, v15

    long-to-int v4, v4

    .line 10
    move-object/from16 v11, p0

    move-object/from16 v5, p5

    invoke-static {v11, v3, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 11
    iget-wide v6, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v6, v6, v17

    iput-wide v6, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_0

    .line 16
    :cond_0
    move-object/from16 v11, p0

    new-instance v19, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    .line 18
    iput-wide v13, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_1
    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    cmp-long v6, v4, v15

    const-wide/16 v20, 0x43

    if-gez v6, :cond_1

    mul-long v20, v20, v4

    mul-long v6, v20, v15

    long-to-int v7, v6

    mul-long/2addr v4, v15

    long-to-int v9, v4

    const/16 v20, 0x0

    .line 20
    move-object/from16 v4, v19

    move-object/from16 v5, p0

    move-object v6, v12

    move-object v8, v3

    move-object/from16 v10, p6

    move/from16 v11, v20

    invoke-virtual/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 21
    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v4, v4, v17

    iput-wide v4, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    move-object/from16 v11, p0

    goto :goto_1

    :cond_1
    nop

    .line 26
    iput-wide v13, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    :goto_2
    iget-wide v3, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    cmp-long v5, v3, v15

    if-gez v5, :cond_2

    mul-long v5, v3, v15

    const-wide/16 v7, 0x400

    add-long/2addr v5, v7

    long-to-int v5, v5

    mul-long v3, v3, v20

    mul-long/2addr v3, v15

    long-to-int v7, v3

    const/4 v9, 0x0

    .line 28
    move-object/from16 v3, p0

    move-object v4, v2

    move-object v6, v12

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    .line 29
    iget-wide v3, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    add-long v3, v3, v17

    iput-wide v3, v1, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/16 v10, 0x20

    move v12, v1

    move v11, v10

    :goto_3
    if-lez v11, :cond_4

    move v13, v1

    :goto_4
    if-ge v13, v11, :cond_3

    ushr-int/lit8 v3, v11, 0x1

    mul-int/2addr v3, v10

    ushr-int/lit8 v4, v13, 0x1

    mul-int/2addr v4, v10

    add-int v5, v3, v4

    mul-int/lit8 v3, v11, 0x20

    mul-int/lit8 v4, v13, 0x20

    add-int v7, v3, v4

    add-int/lit8 v3, v12, 0x7

    mul-int/lit8 v3, v3, 0x2

    mul-int/lit8 v9, v3, 0x20

    .line 42
    move-object/from16 v3, p0

    move-object v4, v2

    move-object v6, v2

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    add-int/lit8 v13, v13, 0x2

    goto :goto_4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    ushr-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 51
    :cond_4
    iget-wide v3, v0, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    long-to-int v0, v3

    move v3, v1

    :goto_5
    move/from16 v4, p7

    if-ge v3, v4, :cond_5

    ushr-int v5, v10, v3

    mul-int/2addr v5, v10

    ushr-int v6, v0, v3

    xor-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v10

    add-int/2addr v5, v6

    mul-int/lit8 v6, v3, 0x20

    add-int v6, p3, v6

    .line 56
    move-object/from16 v7, p2

    invoke-static {v2, v5, v7, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    nop

    .line 60
    move-object/from16 v0, p1

    invoke-static {v2, v10, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V
    .locals 13

    .line 1
    const/16 v0, 0x40

    new-array v0, v0, [B

    and-int/lit8 v1, p3, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x20

    if-eqz v1, :cond_1

    move v1, v8

    :goto_0
    if-ge v1, v9, :cond_0

    add-int/lit8 v2, v1, 0x20

    .line 7
    aget-byte v3, p2, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_1
    if-ge v1, v9, :cond_3

    add-int v2, p5, v1

    .line 11
    aget-byte v2, p4, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v8

    :goto_2
    if-ge v1, v9, :cond_2

    .line 18
    aget-byte v2, p2, v1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v8

    :goto_3
    if-ge v1, v9, :cond_3

    add-int/lit8 v2, v1, 0x20

    add-int v3, p5, v1

    .line 22
    aget-byte v3, p4, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, p5, 0x20

    move v10, v1

    move v11, v8

    move/from16 v1, p3

    :goto_4
    add-int/lit8 v2, p7, -0x1

    if-ge v11, v2, :cond_6

    ushr-int/lit8 v12, v1, 0x1

    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v11, 0x7

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    const/16 v3, 0x20

    const/4 v5, 0x0

    .line 32
    move-object v1, p0

    move-object v2, v0

    move-object v4, v0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    move v1, v8

    :goto_5
    if-ge v1, v9, :cond_5

    add-int v2, v10, v1

    .line 35
    aget-byte v2, p4, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v11, 0x7

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 40
    move-object v1, p0

    move-object v2, v0

    move-object v4, v0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    move v1, v8

    :goto_6
    if-ge v1, v9, :cond_5

    add-int/lit8 v2, v1, 0x20

    add-int v3, v10, v1

    .line 43
    aget-byte v3, p4, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v10, v10, 0x20

    add-int/lit8 v11, v11, 0x1

    move v1, v12

    goto :goto_4

    :cond_6
    add-int/lit8 v1, p7, 0x7

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v7, v1, 0x20

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 48
    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_2n_n_mask([BI[BI[BI)I

    return-void
.end method

.method private zerobytes([BII)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eq v1, p3, :cond_0

    add-int v2, p2, v1

    .line 1
    aput-byte v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B
    .locals 26

    .line 1
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const v1, 0xa028

    new-array v11, v1, [B

    .line 5
    const/16 v12, 0x20

    new-array v13, v12, [B

    .line 6
    const/16 v1, 0x40

    new-array v14, v1, [B

    .line 7
    const/16 v15, 0x8

    new-array v1, v15, [J

    .line 9
    new-array v8, v12, [B

    .line 10
    new-array v7, v12, [B

    .line 11
    const/16 v6, 0x400

    new-array v5, v6, [B

    .line 13
    const/16 v4, 0x440

    new-array v3, v4, [B

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    if-ge v6, v4, :cond_0

    .line 17
    aget-byte v17, p3, v6

    aput-byte v17, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0x420

    .line 26
    const v4, 0xa008

    invoke-static {v3, v6, v11, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    .line 29
    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v15

    new-array v15, v15, [B

    .line 31
    invoke-interface {v6, v11, v4, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 33
    array-length v4, v10

    invoke-interface {v6, v10, v2, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 35
    invoke-interface {v6, v15, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 38
    const v4, 0xa008

    invoke-direct {v0, v11, v4, v12}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    move v4, v2

    :goto_1
    const/16 v6, 0x8

    if-eq v4, v6, :cond_1

    mul-int/lit8 v6, v4, 0x8

    .line 42
    invoke-static {v15, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v18

    aput-wide v18, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 44
    aget-wide v18, v1, v2

    const-wide v20, 0xfffffffffffffffL

    and-long v18, v18, v20

    const/16 v1, 0x10

    .line 46
    invoke-static {v15, v1, v13, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    const v15, 0x9be8

    invoke-static {v13, v2, v11, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    const/16 v1, 0xb

    .line 56
    iput v1, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 57
    move-object v4, v3

    const-wide/16 v2, 0x0

    iput-wide v2, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    .line 58
    iput-wide v2, v6, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const v1, 0x9c08

    .line 62
    const/16 v3, 0x400

    invoke-static {v4, v12, v11, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const v16, 0xa008

    const/16 v21, 0x5

    const v22, 0x9c08

    .line 64
    move-object/from16 v1, p1

    const/4 v12, 0x0

    move-object v2, v11

    move/from16 v20, v3

    move/from16 v3, v16

    move-object/from16 p3, v4

    const/16 v12, 0x440

    move/from16 v4, v21

    move-object/from16 v24, v5

    move-object/from16 v5, p3

    move-object/from16 v25, v7

    move-object v7, v11

    move-object/from16 v17, v8

    move/from16 v8, v22

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->treehash(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BII[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[BI)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 68
    invoke-interface {v1, v11, v15, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 69
    array-length v2, v10

    const/4 v3, 0x0

    invoke-interface {v1, v10, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 70
    invoke-interface {v1, v14, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 73
    new-instance v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;

    invoke-direct {v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;-><init>()V

    .line 75
    const/16 v15, 0xc

    iput v15, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    const-wide/16 v20, 0x1f

    and-long v1, v18, v20

    long-to-int v1, v1

    int-to-long v1, v1

    .line 76
    iput-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    const/16 v22, 0x5

    ushr-long v1, v18, v22

    .line 77
    iput-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    const/4 v2, 0x0

    :goto_2
    const/16 v1, 0x20

    if-ge v2, v1, :cond_2

    .line 81
    aget-byte v3, v13, v2

    aput-byte v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 86
    move-object/from16 v8, p3

    move-object/from16 v13, v24

    const/16 v2, 0x400

    const/4 v3, 0x0

    invoke-static {v8, v1, v13, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x8

    if-ge v2, v3, :cond_3

    add-int v4, v1, v2

    mul-int/lit8 v5, v2, 0x8

    ushr-long v5, v18, v5

    const-wide/16 v23, 0xff

    and-long v5, v5, v23

    long-to-int v5, v5

    int-to-byte v5, v5

    .line 89
    aput-byte v5, v11, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    nop

    .line 94
    move-object/from16 v7, v25

    const/4 v1, 0x0

    invoke-static {v9, v7, v1, v8, v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 95
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    const/16 v3, 0x28

    .line 97
    move-object/from16 v1, p1

    move-object v2, v11

    move-object/from16 v4, v17

    move-object v5, v7

    move-object v6, v13

    move-object v12, v7

    move-object v7, v14

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B[B)I

    move-result v1

    add-int/lit8 v1, v1, 0x28

    .line 101
    new-instance v14, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct {v14}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    move v7, v1

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v15, :cond_4

    .line 105
    iput v6, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->level:I

    .line 107
    const/4 v1, 0x0

    invoke-static {v9, v12, v1, v8, v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->get_seed(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BLorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;)V

    .line 109
    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v11

    move v4, v7

    move-object/from16 v5, v17

    move/from16 v18, v6

    move-object v6, v12

    move v15, v7

    move-object v7, v13

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V

    add-int/lit16 v15, v15, 0x860

    const/16 v19, 0x5

    .line 113
    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move v4, v15

    move-object v5, v10

    move-object v6, v8

    move-object v9, v8

    move/from16 v8, v19

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->compute_authpath_wots(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BILorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;[B[BI)V

    add-int/lit16 v7, v15, 0xa0

    .line 116
    iget-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    and-long v3, v1, v20

    long-to-int v3, v3

    int-to-long v3, v3

    iput-wide v3, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subleaf:J

    ushr-long v1, v1, v22

    .line 117
    iput-wide v1, v10, Lorg/bouncycastle/pqc/crypto/sphincs/Tree$leafaddr;->subtree:J

    add-int/lit8 v6, v18, 0x1

    move-object v8, v9

    const/16 v15, 0xc

    move-object/from16 v9, p1

    goto :goto_4

    :cond_4
    move-object v9, v8

    .line 120
    const/16 v1, 0x440

    const/4 v2, 0x0

    invoke-direct {v0, v9, v2, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->zerobytes([BII)V

    return-object v11
.end method

.method public generateSignature([B)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->crypto_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_0

    .line 5
    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    goto :goto_0

    .line 10
    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPublicKeyParameters;->getKeyData()[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    :goto_0
    return-void
.end method

.method verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z
    .locals 24

    .line 1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    array-length v2, v1

    .line 3
    const/16 v3, 0x860

    new-array v11, v3, [B

    .line 4
    const/16 v12, 0x20

    new-array v15, v12, [B

    .line 5
    new-array v14, v12, [B

    .line 6
    const v4, 0xa028

    new-array v13, v4, [B

    .line 8
    const/16 v5, 0x420

    new-array v10, v5, [B

    if-ne v2, v4, :cond_6

    const/16 v2, 0x40

    .line 15
    new-array v9, v2, [B

    const/4 v2, 0x0

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_0

    .line 18
    aget-byte v7, p4, v6

    aput-byte v7, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 22
    new-array v6, v12, [B

    move v7, v2

    :goto_1
    if-ge v7, v12, :cond_1

    .line 25
    aget-byte v8, v1, v7

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 27
    invoke-static {v1, v2, v13, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->getMessageHash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 32
    invoke-interface {v1, v6, v2, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 35
    invoke-interface {v1, v10, v2, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 38
    array-length v4, v0

    invoke-interface {v1, v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 40
    invoke-interface {v1, v9, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v0, 0x0

    move v4, v2

    :goto_2
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    add-int v5, v12, v4

    .line 51
    aget-byte v5, v13, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    mul-int/lit8 v7, v4, 0x8

    shl-long/2addr v5, v7

    xor-long/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 55
    :cond_2
    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;-><init>()V

    const/16 v7, 0x28

    move-object/from16 v4, p1

    move-object v5, v14

    move-object v6, v13

    move-object v8, v10

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Horst;->horst_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)I

    const/16 v4, 0x3428

    .line 64
    new-instance v21, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;

    invoke-direct/range {v21 .. v21}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;-><init>()V

    move v8, v2

    move v9, v4

    :goto_3
    const/16 v4, 0xc

    if-ge v8, v4, :cond_3

    .line 68
    move-object/from16 v4, v21

    move-object/from16 v5, p1

    move-object v6, v11

    move-object v7, v13

    move/from16 v22, v8

    move v8, v9

    move v2, v9

    move-object v9, v14

    move-object/from16 v23, v10

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->wots_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V

    add-int/2addr v2, v3

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 73
    move-object/from16 v4, p1

    move-object v5, v15

    move-object v7, v11

    move-object/from16 v9, v23

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincs/Tree;->l_tree(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V

    const-wide/16 v4, 0x1f

    and-long/2addr v4, v0

    long-to-int v4, v4

    const/16 v20, 0x5

    .line 74
    move-object v5, v13

    move-object/from16 v13, p1

    move-object v6, v14

    move-object v7, v15

    move/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v2

    move-object/from16 v19, v23

    invoke-static/range {v13 .. v20}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->validate_authpath(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[BI[BI)V

    const/4 v4, 0x5

    shr-long/2addr v0, v4

    add-int/lit16 v9, v2, 0xa0

    add-int/lit8 v8, v22, 0x1

    move-object v13, v5

    move-object/from16 v10, v23

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v23, v10

    move-object v6, v14

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v12, :cond_5

    .line 84
    aget-byte v2, v6, v1

    add-int/lit16 v3, v1, 0x400

    aget-byte v3, v23, v3

    if-eq v2, v3, :cond_4

    const/4 v0, 0x0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return v0

    .line 85
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature wrong size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verifySignature([B[B)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->hashFunctions:Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->keyData:[B

    invoke-virtual {p0, v0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCS256Signer;->verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[B[B)Z

    move-result p1

    return p1
.end method
