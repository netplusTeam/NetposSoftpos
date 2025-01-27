.class public final Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandom;
.super Lorg/apache/sshd/common/random/AbstractRandom;
.source "BouncyCastleRandom.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "BC"


# instance fields
.field private final random:Lorg/bouncycastle/crypto/prng/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Lorg/apache/sshd/common/random/AbstractRandom;-><init>()V

    .line 42
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isBouncyCastleRegistered()Z

    move-result v0

    const-string v1, "BouncyCastle not registered"

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 43
    new-instance v0, Lorg/bouncycastle/crypto/prng/VMPCRandomGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/prng/VMPCRandomGenerator;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandom;->random:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    .line 44
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v1

    .line 45
    .local v1, "seed":[B
    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->addSeedMaterial([B)V

    .line 46
    return-void
.end method

.method private next(I)I
    .locals 6
    .param p1, "numBits"    # I

    .line 79
    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 80
    .local v0, "bytes":I
    new-array v1, v0, [B

    .line 81
    .local v1, "next":[B
    const/4 v2, 0x0

    .line 82
    .local v2, "ret":I
    iget-object v3, p0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandom;->random:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v3, v1}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([B)V

    .line 83
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 84
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v2, 0x8

    or-int v2, v4, v5

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v3    # "i":I
    :cond_0
    mul-int/lit8 v3, v0, 0x8

    sub-int/2addr v3, p1

    ushr-int v3, v2, v3

    return v3
.end method


# virtual methods
.method public fill([BII)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "start"    # I
    .param p3, "len"    # I

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandom;->random:Lorg/bouncycastle/crypto/prng/RandomGenerator;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/prng/RandomGenerator;->nextBytes([BII)V

    .line 56
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "BC"

    return-object v0
.end method

.method public random(I)I
    .locals 6
    .param p1, "n"    # I

    .line 64
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v1, p1

    const-string v3, "Limit must be positive: %d"

    invoke-static {v0, v3, v1, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 65
    neg-int v0, p1

    and-int/2addr v0, p1

    const/16 v1, 0x1f

    if-ne v0, p1, :cond_1

    .line 66
    int-to-long v2, p1

    invoke-direct {p0, v1}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandom;->next(I)I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    shr-long v0, v2, v1

    long-to-int v0, v0

    return v0

    .line 72
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandom;->next(I)I

    move-result v0

    .line 73
    .local v0, "bits":I
    rem-int v2, v0, p1

    .line 74
    .local v2, "val":I
    sub-int v3, v0, v2

    add-int/lit8 v4, p1, -0x1

    add-int/2addr v3, v4

    if-ltz v3, :cond_2

    .line 75
    return v2

    .line 74
    :cond_2
    goto :goto_1
.end method
