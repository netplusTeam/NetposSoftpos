.class public Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;
.super Ljava/lang/Object;
.source "EdDSAPrivateKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final A:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final a:[B

.field private final h:[B

.field private final seed:[B

.field private final spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;[B)V
    .locals 4
    .param p1, "spec"    # Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .param p2, "h"    # [B

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    array-length v0, p2

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_0

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->seed:[B

    .line 82
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->h:[B

    .line 83
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 84
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v0

    .line 86
    .local v0, "b":I
    const/4 v1, 0x0

    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 87
    div-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p2, v2

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 88
    div-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, p2, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 89
    div-int/lit8 v2, v0, 0x8

    invoke-static {p2, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->a:[B

    .line 91
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    iput-object v1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 92
    return-void

    .line 79
    .end local v0    # "b":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hash length is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V
    .locals 6
    .param p1, "seed"    # [B
    .param p2, "spec"    # Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    array-length v0, p1

    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    if-ne v0, v1, :cond_0

    .line 41
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 42
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->seed:[B

    .line 45
    :try_start_0
    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 46
    .local v0, "hash":Ljava/security/MessageDigest;
    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getCurve()Lnet/i2p/crypto/eddsa/math/Curve;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v1

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v1

    .line 49
    .local v1, "b":I
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    iput-object v2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->h:[B

    .line 57
    const/4 v3, 0x0

    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xf8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 58
    div-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, -0x1

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x3f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 59
    div-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, -0x1

    aget-byte v5, v2, v4

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 60
    div-int/lit8 v4, v1, 0x8

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->a:[B

    .line 62
    invoke-virtual {p2}, Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;->getB()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iput-object v2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "hash":Ljava/security/MessageDigest;
    .end local v1    # "b":I
    nop

    .line 66
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported hash algorithm"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "seed length is wrong"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B[B[BLnet/i2p/crypto/eddsa/math/GroupElement;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)V
    .locals 0
    .param p1, "seed"    # [B
    .param p2, "h"    # [B
    .param p3, "a"    # [B
    .param p4, "A"    # Lnet/i2p/crypto/eddsa/math/GroupElement;
    .param p5, "spec"    # Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->seed:[B

    .line 96
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->h:[B

    .line 97
    iput-object p3, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->a:[B

    .line 98
    iput-object p4, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 99
    iput-object p5, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    .line 100
    return-void
.end method


# virtual methods
.method public getA()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 127
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->A:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0
.end method

.method public getH()[B
    .locals 1

    .line 113
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->h:[B

    return-object v0
.end method

.method public getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;
    .locals 1

    .line 131
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->spec:Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 106
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->seed:[B

    return-object v0
.end method

.method public geta()[B
    .locals 1

    .line 120
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/spec/EdDSAPrivateKeySpec;->a:[B

    return-object v0
.end method
