.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;
.super Ljava/lang/Object;
.source "GMSSKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.3"


# instance fields
.field private K:[I

.field private currentRootSigs:[[B

.field private currentSeeds:[[B

.field private digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

.field private gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

.field private gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private heightOfTrees:[I

.field private initialized:Z

.field private mdLength:I

.field private messDigestTree:Lorg/bouncycastle/crypto/Digest;

.field private nextNextSeeds:[[B

.field private numLayer:I

.field private otsIndex:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    .line 40
    invoke-interface {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    .line 43
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    .line 45
    new-instance p1, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->messDigestTree:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    if-nez v1, :cond_0

    .line 3
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initializeDefault()V

    .line 7
    :cond_0
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v5, v1, [[[B

    add-int/lit8 v2, v1, -0x1

    .line 8
    new-array v6, v2, [[[B

    .line 9
    new-array v7, v1, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    .line 10
    new-array v8, v2, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    .line 12
    new-array v9, v1, [Ljava/util/Vector;

    .line 13
    new-array v10, v2, [Ljava/util/Vector;

    .line 15
    new-array v11, v1, [[Ljava/util/Vector;

    .line 16
    new-array v12, v2, [[Ljava/util/Vector;

    const/4 v1, 0x0

    move v2, v1

    .line 18
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/4 v4, 0x2

    const/4 v13, 0x1

    if-ge v2, v3, :cond_3

    .line 20
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, v2

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v15, v4, [I

    aput v14, v15, v13

    aput v3, v15, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    aput-object v1, v5, v2

    .line 21
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v1, v1, v2

    sub-int v1, v3, v1

    new-array v15, v1, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aput-object v15, v7, v2

    if-lez v2, :cond_1

    add-int/lit8 v15, v2, -0x1

    .line 25
    new-array v4, v4, [I

    aput v14, v4, v13

    const/4 v13, 0x0

    aput v3, v4, v13

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    aput-object v3, v6, v15

    .line 26
    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    aput-object v1, v8, v15

    .line 29
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v9, v2

    if-lez v2, :cond_2

    add-int/lit8 v1, v2, -0x1

    .line 32
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v10, v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_0

    .line 37
    :cond_3
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v2, v4, [I

    aput v1, v2, v13

    const/4 v14, 0x0

    aput v3, v2, v14

    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    add-int/lit8 v15, v3, -0x1

    .line 38
    move-object/from16 v17, v8

    new-array v8, v4, [I

    aput v1, v8, v13

    aput v15, v8, v14

    sget-object v15, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    check-cast v15, [[B

    .line 40
    new-array v8, v4, [I

    aput v1, v8, v13

    aput v3, v8, v14

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    const/4 v3, 0x0

    .line 43
    :goto_1
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v3, v8, :cond_4

    .line 45
    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v8, v8, v3

    aget-object v14, v1, v3

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    const/4 v13, 0x0

    invoke-static {v8, v13, v14, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    const/4 v13, 0x1

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    .line 49
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move-object/from16 v19, v15

    const/4 v14, 0x2

    new-array v15, v14, [I

    aput v4, v15, v3

    aput v8, v15, v13

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    :goto_2
    if-ltz v8, :cond_7

    .line 62
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    sub-int/2addr v4, v3

    if-ne v8, v4, :cond_5

    .line 64
    aget-object v4, v9, v8

    aget-object v13, v1, v8

    const/4 v14, 0x0

    invoke-direct {v0, v14, v4, v13, v8}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v4

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v8, 0x1

    .line 70
    aget-object v4, v2, v4

    aget-object v13, v9, v8

    aget-object v14, v1, v8

    invoke-direct {v0, v4, v13, v14, v8}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v4

    :goto_3
    const/4 v13, 0x0

    .line 74
    :goto_4
    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v14, v14, v8

    if-ge v13, v14, :cond_6

    .line 76
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v14

    aget-object v14, v14, v13

    aget-object v15, v5, v8

    aget-object v15, v15, v13

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move-object/from16 v20, v9

    const/4 v9, 0x0

    invoke-static {v14, v9, v15, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v9, v20

    const/4 v3, 0x1

    goto :goto_4

    .line 78
    :cond_6
    move-object/from16 v20, v9

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v3

    aput-object v3, v11, v8

    .line 79
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v3

    aput-object v3, v7, v8

    .line 80
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v3

    aget-object v4, v2, v8

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    const/4 v13, 0x0

    invoke-static {v3, v13, v4, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, -0x1

    move-object/from16 v9, v20

    const/4 v3, 0x1

    goto :goto_2

    .line 85
    :cond_7
    move-object/from16 v20, v9

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    :goto_5
    if-ltz v3, :cond_9

    .line 87
    aget-object v4, v10, v3

    add-int/lit8 v8, v3, 0x1

    aget-object v9, v1, v8

    invoke-direct {v0, v4, v9, v8}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v4

    const/4 v13, 0x0

    .line 90
    :goto_6
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v9, v9, v8

    if-ge v13, v9, :cond_8

    .line 92
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getAuthPath()[[B

    move-result-object v9

    aget-object v9, v9, v13

    aget-object v14, v6, v3

    aget-object v14, v14, v13

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    move-object/from16 v18, v11

    const/4 v11, 0x0

    invoke-static {v9, v11, v14, v11, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v18

    goto :goto_6

    .line 94
    :cond_8
    move-object/from16 v18, v11

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v9

    aput-object v9, v12, v3

    .line 95
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v9

    aput-object v9, v17, v3

    .line 96
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRoot()[B

    move-result-object v4

    aget-object v9, v19, v3

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    const/4 v13, 0x0

    invoke-static {v4, v13, v9, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    aget-object v4, v1, v8

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    aget-object v8, v8, v3

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    invoke-static {v4, v13, v8, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v11, v18

    goto :goto_5

    .line 105
    :cond_9
    move-object/from16 v18, v11

    const/4 v13, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    aget-object v2, v2, v13

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;-><init>([BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 108
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object v2, v15

    move-object/from16 v8, v17

    move-object/from16 v9, v20

    move-object/from16 v16, v11

    move-object/from16 v11, v18

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    move-object v0, v15

    move-object/from16 v15, v17

    invoke-direct/range {v2 .. v16}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 112
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method private generateCurrentAuthpathAndRoot([BLjava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 7

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    new-array v1, v0, [B

    .line 3
    new-array v0, v0, [B

    .line 4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v0

    .line 10
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v2, v2, p4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v3, v3, p4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 12
    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    .line 15
    iget p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    if-ne p4, p2, :cond_0

    .line 17
    new-instance p1, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {p2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object p2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v3, v3, p4

    invoke-direct {p1, v0, p2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v4, v4, p4

    invoke-direct {p2, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    invoke-virtual {p2, p1}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getSignature([B)[B

    move-result-object p2

    aput-object p2, v0, p4

    .line 28
    new-instance p2, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v3, v3, p4

    invoke-direct {p2, v0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/bouncycastle/crypto/Digest;I)V

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentRootSigs:[[B

    aget-object v0, v0, p4

    invoke-virtual {p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->Verify([B[B)[B

    move-result-object p1

    .line 32
    :goto_0
    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    const/4 p1, 0x3

    const/4 p2, 0x0

    move v0, v2

    .line 38
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, p4

    shl-int v4, v2, v3

    if-ge v0, v4, :cond_2

    if-ne v0, p1, :cond_1

    .line 41
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v4, v4, p4

    sub-int/2addr v3, v4

    if-ge p2, v3, :cond_1

    .line 43
    invoke-virtual {v1, p3, p2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 48
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v3, p3}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    .line 49
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v6, v6, p4

    invoke-direct {v4, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 50
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v1

    .line 57
    :cond_3
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private generateNextAuthpathAndRoot(Ljava/util/Vector;[BI)Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 7

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    new-array v0, v0, [B

    .line 6
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v2, v2, p3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 7
    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initialize(Ljava/util/Vector;)V

    const/4 p1, 0x0

    const/4 v1, 0x3

    move v2, v1

    move v1, p1

    .line 13
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    aget v3, v3, p3

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    if-ge p1, v4, :cond_1

    if-ne p1, v2, :cond_0

    .line 16
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    aget v4, v4, p3

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 18
    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->initializeTreehashSeed([BI)V

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 23
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    .line 24
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->digestProvider:Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v5}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSDigestProvider;->get()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    aget v6, v6, p3

    invoke-direct {v4, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/bouncycastle/crypto/Digest;I)V

    .line 25
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->getPublicKey()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->wasFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    .line 32
    :cond_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "N\ufffdchster Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private initializeDefault()V
    .locals 7

    .line 1
    const/4 v0, 0x4

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 2
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    .line 3
    new-array v3, v0, [I

    fill-array-data v3, :array_2

    .line 5
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-direct {v6, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 6
    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void

    :array_0
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x2

    if-gt p1, v0, :cond_0

    .line 1
    const/4 p1, 0x1

    new-array v2, p1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 2
    new-array v0, p1, [I

    const/4 v4, 0x3

    aput v4, v0, v3

    .line 3
    new-array v4, p1, [I

    aput v1, v4, v3

    .line 5
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-direct {v3, p1, v2, v0, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v1, p2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    .line 9
    new-array p1, v1, [I

    fill-array-data p1, :array_0

    .line 10
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    .line 11
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    .line 12
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-direct {v4, v1, p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    move-object v1, v3

    goto :goto_0

    :cond_1
    nop

    .line 16
    const/4 p1, 0x4

    new-array v0, p1, [I

    fill-array-data v0, :array_3

    .line 17
    new-array v1, p1, [I

    fill-array-data v1, :array_4

    .line 18
    new-array v2, p1, [I

    fill-array-data v2, :array_5

    .line 19
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-direct {v4, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v3, p2, v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;)V

    move-object v1, v3

    .line 23
    :goto_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void

    :array_0
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x9
        0x9
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 6

    .line 24
    check-cast p1, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    .line 27
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    .line 28
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssParams:Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    .line 30
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    .line 31
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->heightOfTrees:[I

    .line 32
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->otsIndex:[I

    .line 33
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssPS:Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->K:[I

    .line 36
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->mdLength:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v4, 0x0

    aput p1, v2, v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    sub-int/2addr p1, v3

    .line 37
    new-array v1, v1, [I

    aput v0, v1, v3

    aput p1, v1, v4

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->nextNextSeeds:[[B

    .line 40
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    .line 43
    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->numLayer:I

    if-ge v4, v0, :cond_0

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v0, v0, v4

    invoke-virtual {p1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->gmssRandom:Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->currentSeeds:[[B

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 49
    iput-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    return-void
.end method
