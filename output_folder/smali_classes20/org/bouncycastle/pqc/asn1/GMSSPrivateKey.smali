.class public Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "GMSSPrivateKey.java"


# instance fields
.field private primitive:Lorg/bouncycastle/asn1/ASN1Primitive;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 4
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v2, v2, [I

    move v3, v0

    .line 5
    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 7
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->checkBigIntegerInIntRange(Lorg/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 11
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 12
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v3, v2, [[B

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_1

    .line 15
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 19
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 20
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v3, v2, [[B

    move v4, v0

    :goto_2
    if-ge v4, v2, :cond_2

    .line 23
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x3

    .line 27
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 30
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v3, v2, [[[B

    move v4, v0

    :goto_3
    if-ge v4, v2, :cond_4

    .line 33
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 34
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    new-array v6, v6, [[B

    aput-object v6, v3, v4

    move v6, v0

    .line 35
    :goto_4
    aget-object v7, v3, v4

    array-length v8, v7

    if-ge v6, v8, :cond_3

    .line 37
    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x4

    .line 42
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 45
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v3, v2, [[[B

    move v4, v0

    :goto_5
    if-ge v4, v2, :cond_6

    .line 48
    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 49
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    new-array v6, v6, [[B

    aput-object v6, v3, v4

    move v6, v0

    .line 50
    :goto_6
    aget-object v7, v3, v4

    array-length v8, v7

    if-ge v6, v8, :cond_5

    .line 52
    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    aput-object v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x5

    .line 57
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 64
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    new-array p1, p1, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    return-void
.end method

.method public constructor <init>([I[[B[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v6, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    .line 65
    invoke-direct/range {p0 .. p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    move-object/from16 v23, v0

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    aput-object p22, v0, v24

    .line 67
    move-object/from16 v0, v23

    invoke-direct/range {v0 .. v22}, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->encode([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void
.end method

.method private static checkBigIntegerInIntRange(Lorg/bouncycastle/asn1/ASN1Encodable;)I
    .locals 3

    .line 1
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    .line 2
    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    .line 3
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BigInteger not in Range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encode([I[[B[[B[[[B[[[B[[[B[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;[I[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;[[B[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;[Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 21

    .line 1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v15, p22

    new-instance v14, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 4
    new-instance v13, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    const/16 v16, 0x0

    move/from16 v12, v16

    .line 5
    :goto_0
    array-length v11, v0

    if-ge v12, v11, :cond_0

    .line 7
    new-instance v11, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v10, v0, v12

    int-to-long v9, v10

    invoke-direct {v11, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v13, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 12
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v9, v16

    .line 13
    :goto_1
    array-length v10, v1

    if-ge v9, v10, :cond_1

    .line 15
    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v11, v1, v9

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 20
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v1, v16

    .line 21
    :goto_2
    array-length v9, v2

    if-ge v1, v9, :cond_2

    .line 23
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, v2, v1

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25
    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 29
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v2, v16

    .line 30
    :goto_3
    array-length v9, v3

    if-ge v2, v9, :cond_4

    move/from16 v9, v16

    .line 32
    :goto_4
    aget-object v10, v3, v2

    array-length v11, v10

    if-ge v9, v11, :cond_3

    .line 34
    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, v10, v9

    invoke-direct {v11, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 36
    :cond_3
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 39
    :cond_4
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 42
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 43
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v2, v16

    .line 44
    :goto_5
    array-length v3, v4

    if-ge v2, v3, :cond_6

    move/from16 v3, v16

    .line 46
    :goto_6
    aget-object v9, v4, v2

    array-length v10, v9

    if-ge v3, v10, :cond_5

    .line 48
    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v9, v3

    invoke-direct {v10, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 50
    :cond_5
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 51
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 53
    :cond_6
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 57
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 58
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 59
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 60
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v9, v16

    .line 62
    :goto_7
    array-length v10, v6

    const/16 v17, 0x2

    const/16 v18, 0x1

    if-ge v9, v10, :cond_a

    move/from16 v10, v16

    .line 64
    :goto_8
    aget-object v11, v6, v9

    array-length v11, v11

    if-ge v10, v11, :cond_9

    .line 66
    new-instance v11, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v12, v15, v16

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 68
    aget-object v11, v6, v9

    aget-object v11, v11, v10

    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v11

    aget v11, v11, v18

    .line 70
    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, v6, v9

    aget-object v19, v19, v10

    .line 71
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v19

    aget-object v13, v19, v16

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 72
    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 74
    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, v6, v9

    aget-object v13, v13, v10

    .line 75
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    aget-object v13, v13, v18

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 76
    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 78
    new-instance v12, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v13, v6, v9

    aget-object v13, v13, v10

    .line 79
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v13

    aget-object v13, v13, v17

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 80
    invoke-virtual {v3, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move/from16 v12, v16

    :goto_9
    if-ge v12, v11, :cond_7

    .line 84
    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, v6, v9

    aget-object v19, v19, v10

    .line 85
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v19

    add-int/lit8 v20, v12, 0x3

    aget-object v8, v19, v20

    invoke-direct {v13, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 86
    invoke-virtual {v3, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p9

    goto :goto_9

    .line 89
    :cond_7
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 90
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 92
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v9

    aget-object v12, v12, v10

    .line 93
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    aget v12, v12, v16

    int-to-long v12, v12

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 94
    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 96
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v12, v11

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 97
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v9

    aget-object v12, v12, v10

    .line 98
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    aget v12, v12, v17

    int-to-long v12, v12

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 99
    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 101
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v9

    aget-object v12, v12, v10

    .line 102
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    const/4 v13, 0x3

    aget v12, v12, v13

    int-to-long v12, v12

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 103
    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 105
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v9

    aget-object v12, v12, v10

    .line 106
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    const/4 v13, 0x4

    aget v12, v12, v13

    int-to-long v12, v12

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 107
    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 109
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v12, v6, v9

    aget-object v12, v12, v10

    .line 110
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v12

    const/4 v13, 0x5

    aget v12, v12, v13

    int-to-long v12, v12

    invoke-direct {v8, v12, v13}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 111
    invoke-virtual {v4, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move/from16 v8, v16

    :goto_a
    if-ge v8, v11, :cond_8

    .line 115
    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v13, v6, v9

    aget-object v13, v13, v10

    .line 116
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v13

    add-int/lit8 v19, v8, 0x6

    aget v13, v13, v19

    int-to-long v5, v13

    invoke-direct {v12, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 117
    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    goto :goto_a

    .line 120
    :cond_8
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 121
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 123
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 124
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v8, p9

    goto/16 :goto_8

    .line 126
    :cond_9
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 127
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v8, p9

    goto/16 :goto_7

    .line 129
    :cond_a
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 132
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 134
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 135
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 136
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v5, v16

    .line 138
    :goto_b
    array-length v6, v7

    if-ge v5, v6, :cond_e

    move/from16 v6, v16

    .line 140
    :goto_c
    aget-object v8, v7, v5

    array-length v8, v8

    if-ge v6, v8, :cond_d

    .line 142
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v9, v15, v16

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 144
    aget-object v8, v7, v5

    aget-object v8, v8, v6

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v8

    aget v8, v8, v18

    .line 146
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, v7, v5

    aget-object v10, v10, v6

    .line 147
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v10

    aget-object v10, v10, v16

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 148
    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, v7, v5

    aget-object v10, v10, v6

    .line 151
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v10

    aget-object v10, v10, v18

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 152
    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 154
    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v10, v7, v5

    aget-object v10, v10, v6

    .line 155
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v10

    aget-object v10, v10, v17

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 156
    invoke-virtual {v3, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move/from16 v9, v16

    :goto_d
    if-ge v9, v8, :cond_b

    .line 160
    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v11, v7, v5

    aget-object v11, v11, v6

    .line 161
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v11

    add-int/lit8 v12, v9, 0x3

    aget-object v11, v11, v12

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 162
    invoke-virtual {v3, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 165
    :cond_b
    new-instance v9, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v9, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 166
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 168
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, v7, v5

    aget-object v10, v10, v6

    .line 169
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    aget v10, v10, v16

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 170
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v10, v8

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 171
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, v7, v5

    aget-object v10, v10, v6

    .line 172
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    aget v10, v10, v17

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 173
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, v7, v5

    aget-object v10, v10, v6

    .line 174
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x3

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 175
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, v7, v5

    aget-object v10, v10, v6

    .line 176
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x4

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 177
    new-instance v9, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v10, v7, v5

    aget-object v10, v10, v6

    .line 178
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v10

    const/4 v11, 0x5

    aget v10, v10, v11

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move/from16 v9, v16

    :goto_e
    if-ge v9, v8, :cond_c

    .line 181
    new-instance v10, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v11, v7, v5

    aget-object v11, v11, v6

    .line 182
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v11

    add-int/lit8 v12, v9, 0x6

    aget v11, v11, v12

    int-to-long v11, v11

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 183
    invoke-virtual {v4, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 186
    :cond_c
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 187
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 189
    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    .line 192
    :cond_d
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    new-instance v8, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v8, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v6, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 193
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    .line 195
    :cond_e
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 198
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 199
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v2, v16

    .line 200
    :goto_f
    move-object/from16 v3, p6

    array-length v4, v3

    if-ge v2, v4, :cond_10

    move/from16 v4, v16

    .line 202
    :goto_10
    aget-object v5, v3, v2

    array-length v6, v5

    if-ge v4, v6, :cond_f

    .line 204
    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v5, v4

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 206
    :cond_f
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 207
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 209
    :cond_10
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 212
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 213
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v2, v16

    .line 214
    :goto_11
    move-object/from16 v3, p9

    array-length v4, v3

    if-ge v2, v4, :cond_12

    move/from16 v4, v16

    .line 216
    :goto_12
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_11

    .line 218
    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v6, v3, v2

    .line 219
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 220
    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 223
    :cond_11
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 224
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 226
    :cond_12
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 229
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 230
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v2, v16

    .line 231
    :goto_13
    move-object/from16 v3, p10

    array-length v4, v3

    if-ge v2, v4, :cond_14

    move/from16 v4, v16

    .line 233
    :goto_14
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_13

    .line 235
    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v6, v3, v2

    .line 236
    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 237
    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 240
    :cond_13
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 241
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 243
    :cond_14
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 246
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 247
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 248
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v3, v16

    .line 249
    :goto_15
    move-object/from16 v4, p11

    array-length v5, v4

    if-ge v3, v5, :cond_17

    move/from16 v5, v16

    .line 251
    :goto_16
    aget-object v6, v4, v3

    array-length v6, v6

    if-ge v5, v6, :cond_16

    move/from16 v6, v16

    .line 253
    :goto_17
    aget-object v7, v4, v3

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_15

    .line 255
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v8, v4, v3

    aget-object v8, v8, v5

    .line 256
    invoke-virtual {v8, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 257
    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 260
    :cond_15
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 261
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 263
    :cond_16
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 264
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 266
    :cond_17
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 269
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 270
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 271
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v3, v16

    .line 272
    :goto_18
    move-object/from16 v4, p12

    array-length v5, v4

    if-ge v3, v5, :cond_1a

    move/from16 v5, v16

    .line 274
    :goto_19
    aget-object v6, v4, v3

    array-length v6, v6

    if-ge v5, v6, :cond_19

    move/from16 v6, v16

    .line 276
    :goto_1a
    aget-object v7, v4, v3

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_18

    .line 278
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v8, v4, v3

    aget-object v8, v8, v5

    .line 279
    invoke-virtual {v8, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 280
    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 283
    :cond_18
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 284
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 286
    :cond_19
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 287
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 289
    :cond_1a
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 292
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 293
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 294
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 295
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v4, v16

    .line 297
    :goto_1b
    move-object/from16 v5, p13

    array-length v6, v5

    if-ge v4, v6, :cond_1b

    .line 299
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v7, v15, v16

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 301
    aget-object v6, v5, v4

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v6

    .line 302
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v8, v6, v16

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 303
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v8, v6, v18

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 304
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v8, v6, v17

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 305
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v8, 0x3

    aget-object v6, v6, v8

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 306
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 307
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 309
    aget-object v6, v5, v4

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v6

    .line 310
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v8, v6, v16

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 311
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v8, v6, v18

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 312
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v8, v6, v17

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 313
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v8, 0x3

    aget v6, v6, v8

    int-to-long v8, v6

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 314
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 315
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 317
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 318
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1b

    .line 320
    :cond_1b
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 323
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 324
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 325
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 326
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v4, v16

    .line 328
    :goto_1c
    move-object/from16 v5, p14

    array-length v6, v5

    if-ge v4, v6, :cond_1c

    .line 330
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v7, v15, v16

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 332
    aget-object v6, v5, v4

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v6

    .line 333
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v8, v6, v16

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 334
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v8, v6, v18

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 335
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v8, v6, v17

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 336
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v8, 0x3

    aget-object v6, v6, v8

    invoke-direct {v7, v6}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 337
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 338
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 340
    aget-object v6, v5, v4

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v6

    .line 341
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v8, v6, v16

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 342
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v8, v6, v18

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 343
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v8, v6, v17

    int-to-long v8, v8

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 344
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v8, 0x3

    aget v6, v6, v8

    int-to-long v8, v6

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 345
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 346
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 348
    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 349
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1c

    .line 351
    :cond_1c
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 354
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 355
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 356
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 357
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v4, v16

    .line 359
    :goto_1d
    move-object/from16 v5, p15

    move-object v6, v14

    array-length v7, v5

    if-ge v4, v7, :cond_1d

    .line 361
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v8, v15, v16

    invoke-direct {v7, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 363
    aget-object v7, v5, v4

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatByte()[[B

    move-result-object v7

    .line 364
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v7, v16

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 365
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v7, v18

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 366
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v7, v17

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 367
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    const/4 v9, 0x3

    aget-object v7, v7, v9

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 368
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 369
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 371
    aget-object v7, v5, v4

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;->getStatInt()[I

    move-result-object v7

    .line 372
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v9, v7, v16

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 373
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v9, v7, v18

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 374
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v9, v7, v17

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 375
    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v9, 0x3

    aget v7, v7, v9

    int-to-long v9, v7

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 376
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 377
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 379
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 380
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    move-object v14, v6

    goto/16 :goto_1d

    .line 382
    :cond_1d
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 385
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v1, v16

    .line 386
    :goto_1e
    move-object/from16 v2, p16

    move-object v3, v15

    array-length v4, v2

    if-ge v1, v4, :cond_1e

    .line 388
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    aget v5, v2, v1

    int-to-long v7, v5

    invoke-direct {v4, v7, v8}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    move-object v15, v3

    goto :goto_1e

    .line 390
    :cond_1e
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 393
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v1, v16

    .line 394
    :goto_1f
    move-object/from16 v2, p17

    array-length v4, v2

    if-ge v1, v4, :cond_1f

    .line 396
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v5, v2, v1

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 398
    :cond_1f
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 401
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 402
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 403
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 404
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 405
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 406
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 407
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v8, v16

    .line 409
    :goto_20
    move-object/from16 v9, p18

    array-length v10, v9

    const/4 v11, 0x7

    const/4 v12, 0x6

    if-ge v8, v10, :cond_2a

    .line 411
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v13, v3, v16

    invoke-direct {v10, v13}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 412
    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 414
    aget-object v10, v9, v8

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v10

    aget v10, v10, v16

    .line 415
    aget-object v13, v9, v8

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v13

    aget v11, v13, v11

    .line 417
    new-instance v13, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v14, v9, v8

    .line 418
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v14

    aget-object v14, v14, v16

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 419
    invoke-virtual {v2, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move/from16 v13, v16

    :goto_21
    if-ge v13, v10, :cond_20

    .line 423
    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v15, v9, v8

    .line 424
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    aget-object v15, v15, v13

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 425
    invoke-virtual {v2, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_21

    :cond_20
    move/from16 v13, v16

    :goto_22
    if-ge v13, v11, :cond_21

    .line 430
    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v15, v9, v8

    .line 431
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatByte()[[B

    move-result-object v15

    add-int/lit8 v19, v10, 0x1

    add-int v19, v19, v13

    aget-object v15, v15, v19

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 432
    invoke-virtual {v2, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_22

    .line 436
    :cond_21
    new-instance v13, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v13, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 437
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 439
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v14, v10

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 440
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    aget v14, v14, v18

    int-to-long v14, v14

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 441
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    aget v14, v14, v17

    int-to-long v14, v14

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 442
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    int-to-long v14, v14

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 443
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    const/4 v15, 0x4

    aget v14, v14, v15

    int-to-long v14, v14

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 444
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    const/4 v15, 0x5

    aget v14, v14, v15

    int-to-long v14, v14

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 445
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    aget v12, v14, v12

    int-to-long v14, v12

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 446
    new-instance v12, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v13, v11

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move/from16 v12, v16

    :goto_23
    if-ge v12, v10, :cond_22

    .line 449
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v9, v8

    .line 450
    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v15, v12, 0x8

    aget v14, v14, v15

    int-to-long v14, v14

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 451
    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_23

    :cond_22
    move/from16 v12, v16

    :goto_24
    if-ge v12, v11, :cond_23

    .line 456
    new-instance v13, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getStatInt()[I

    move-result-object v14

    add-int/lit8 v15, v10, 0x8

    add-int/2addr v15, v12

    aget v14, v14, v15

    int-to-long v14, v14

    invoke-direct {v13, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v13}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_24

    .line 460
    :cond_23
    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 461
    new-instance v4, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 465
    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 466
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 467
    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 469
    aget-object v13, v9, v8

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v13

    if-eqz v13, :cond_27

    move/from16 v13, v16

    .line 471
    :goto_25
    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v14

    array-length v14, v14

    if-ge v13, v14, :cond_26

    .line 473
    new-instance v14, Lorg/bouncycastle/asn1/DERSequence;

    aget-object v15, v3, v16

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v10, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 475
    aget-object v14, v9, v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v14

    aget-object v14, v14, v13

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v14

    aget v14, v14, v18

    .line 477
    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, v9, v8

    .line 478
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v19

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v19

    move-object/from16 p4, v2

    aget-object v2, v19, v16

    invoke-direct {v15, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 479
    invoke-virtual {v11, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 481
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v15, v9, v8

    .line 482
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v15

    aget-object v15, v15, v13

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v15

    aget-object v15, v15, v18

    invoke-direct {v2, v15}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 483
    invoke-virtual {v11, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 485
    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v15, v9, v8

    .line 486
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v15

    aget-object v15, v15, v13

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v15

    aget-object v15, v15, v17

    invoke-direct {v2, v15}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 487
    invoke-virtual {v11, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move/from16 v2, v16

    :goto_26
    if-ge v2, v14, :cond_24

    .line 491
    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v19, v9, v8

    .line 492
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v19

    aget-object v19, v19, v13

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatByte()[[B

    move-result-object v19

    add-int/lit8 v20, v2, 0x3

    move-object/from16 p5, v4

    aget-object v4, v19, v20

    invoke-direct {v15, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 493
    invoke-virtual {v11, v15}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v4, p5

    goto :goto_26

    .line 496
    :cond_24
    move-object/from16 p5, v4

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 497
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 499
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v4, v9, v8

    .line 500
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v4

    aget-object v4, v4, v13

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v4

    aget v4, v4, v16

    int-to-long v3, v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 501
    invoke-virtual {v12, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 503
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v3, v14

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v12, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 504
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v9, v8

    .line 505
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    aget v3, v3, v17

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 506
    invoke-virtual {v12, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 508
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v9, v8

    .line 509
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 510
    invoke-virtual {v12, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 512
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v9, v8

    .line 513
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    const/4 v4, 0x4

    aget v3, v3, v4

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 514
    invoke-virtual {v12, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 516
    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v3, v9, v8

    .line 517
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v3

    const/4 v4, 0x5

    aget v3, v3, v4

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 518
    invoke-virtual {v12, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    move/from16 v2, v16

    :goto_27
    if-ge v2, v14, :cond_25

    .line 522
    new-instance v3, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v4, v9, v8

    .line 523
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getTreehash()[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v4

    aget-object v4, v4, v13

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/Treehash;->getStatInt()[I

    move-result-object v4

    add-int/lit8 v15, v2, 0x6

    aget v4, v4, v15

    move/from16 p6, v14

    int-to-long v14, v4

    invoke-direct {v3, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 524
    invoke-virtual {v12, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v14, p6

    goto :goto_27

    .line 527
    :cond_25
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v12}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 528
    new-instance v12, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 530
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v10}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v5, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 531
    new-instance v10, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v3, p22

    goto/16 :goto_25

    .line 471
    :cond_26
    move-object/from16 p4, v2

    move-object/from16 p5, v4

    goto :goto_28

    .line 469
    :cond_27
    move-object/from16 p4, v2

    move-object/from16 p5, v4

    .line 535
    :goto_28
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v5}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 536
    new-instance v5, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 541
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 542
    aget-object v3, v9, v8

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_29

    move/from16 v3, v16

    .line 544
    :goto_29
    aget-object v4, v9, v8

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_29

    move/from16 v4, v16

    .line 546
    :goto_2a
    aget-object v10, v9, v8

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v4, v10, :cond_28

    .line 548
    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v11, v9, v8

    .line 549
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;->getRetain()[Ljava/util/Vector;

    move-result-object v11

    aget-object v11, v11, v3

    .line 550
    invoke-virtual {v11, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 551
    invoke-virtual {v2, v10}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 555
    :cond_28
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v7, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 556
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 560
    :cond_29
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v7}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 561
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 563
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 564
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p4

    move-object/from16 v4, p5

    move-object/from16 v3, p22

    goto/16 :goto_20

    .line 566
    :cond_2a
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 569
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v1, v16

    .line 570
    :goto_2b
    move-object/from16 v2, p19

    array-length v3, v2

    if-ge v1, v3, :cond_2b

    .line 572
    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v4, v2, v1

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 574
    :cond_2b
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 577
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 578
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 579
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 580
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 581
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v4, v16

    .line 583
    :goto_2c
    move-object/from16 v5, p20

    array-length v7, v5

    if-ge v4, v7, :cond_2c

    .line 585
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    move-object/from16 v8, p22

    aget-object v9, v8, v16

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 586
    new-instance v7, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 588
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v5, v4

    .line 589
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v9

    aget-object v9, v9, v16

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 590
    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 592
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v5, v4

    .line 593
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v9

    aget-object v9, v9, v18

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 594
    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 596
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v5, v4

    .line 597
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v9

    aget-object v9, v9, v17

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 598
    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 600
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v5, v4

    .line 601
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v9

    const/4 v10, 0x3

    aget-object v9, v9, v10

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 602
    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 604
    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    aget-object v9, v5, v4

    .line 605
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatByte()[[B

    move-result-object v9

    const/4 v10, 0x4

    aget-object v9, v9, v10

    invoke-direct {v7, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 606
    invoke-virtual {v2, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 609
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 610
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 612
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v16

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 613
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v18

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 614
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v17

    int-to-long v9, v9

    invoke-direct {v7, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 615
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    const/4 v10, 0x3

    aget v9, v9, v10

    int-to-long v13, v9

    invoke-direct {v7, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 616
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    const/4 v13, 0x4

    aget v9, v9, v13

    int-to-long v14, v9

    invoke-direct {v7, v14, v15}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 617
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    const/4 v14, 0x5

    aget v9, v9, v14

    int-to-long v13, v9

    invoke-direct {v7, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 618
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v12

    int-to-long v13, v9

    invoke-direct {v7, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 619
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    aget v9, v9, v11

    int-to-long v13, v9

    invoke-direct {v7, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 620
    new-instance v7, Lorg/bouncycastle/asn1/ASN1Integer;

    aget-object v9, v5, v4

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;->getStatInt()[I

    move-result-object v9

    const/16 v13, 0x8

    aget v9, v9, v13

    int-to-long v13, v9

    invoke-direct {v7, v13, v14}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 622
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v1, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 623
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 625
    new-instance v7, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 626
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2c

    .line 628
    :cond_2c
    move-object/from16 v8, p22

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 631
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 632
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 633
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 634
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v4, v16

    .line 636
    :goto_2d
    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_2d

    .line 638
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 639
    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getHeightOfTrees()[I

    move-result-object v7

    aget v7, v7, v4

    int-to-long v9, v7

    invoke-direct {v5, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 640
    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 642
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 643
    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getWinternitzParameter()[I

    move-result-object v7

    aget v7, v7, v4

    int-to-long v9, v7

    invoke-direct {v5, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    .line 644
    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 646
    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getK()[I

    move-result-object v7

    aget v7, v7, v4

    int-to-long v9, v7

    invoke-direct {v5, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 648
    :cond_2d
    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual/range {p21 .. p21}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->getNumOfLayers()I

    move-result v5

    int-to-long v9, v5

    invoke-direct {v4, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 649
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 650
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 651
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 652
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 655
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    move/from16 v1, v16

    .line 657
    :goto_2e
    array-length v2, v8

    if-ge v1, v2, :cond_2e

    .line 659
    aget-object v2, v8, v1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 662
    :cond_2e
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v6, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 663
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v6}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/asn1/GMSSPrivateKey;->primitive:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object v0
.end method
