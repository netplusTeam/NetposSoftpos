.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;
.source "NTRUSigningKeyGenerationParameters.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final APR2011_439:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final APR2011_439_PROD:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final APR2011_743:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final APR2011_743_PROD:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final BASIS_TYPE_STANDARD:I = 0x0

.field public static final BASIS_TYPE_TRANSPOSE:I = 0x1

.field public static final KEY_GEN_ALG_FLOAT:I = 0x1

.field public static final KEY_GEN_ALG_RESULTANT:I

.field public static final TEST157:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public static final TEST157_PROD:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;


# instance fields
.field public B:I

.field public N:I

.field public basisType:I

.field beta:D

.field public betaSq:D

.field bitsF:I

.field public d:I

.field public d1:I

.field public d2:I

.field public d3:I

.field public hashAlg:Lorg/bouncycastle/crypto/Digest;

.field public keyGenAlg:I

.field keyNormBound:D

.field public keyNormBoundSq:D

.field normBound:D

.field public normBoundSq:D

.field public polyType:I

.field public primeCheck:Z

.field public q:I

.field public signFailTolerance:I

.field public sparse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v16, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v15, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v15}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x92

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-wide v6, 0x3fc51eb851eb851fL    # 0.165

    const-wide v8, 0x407ea00000000000L    # 490.0

    const-wide v10, 0x4071800000000000L    # 280.0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V

    sput-object v16, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->APR2011_439:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 6
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v17, v0

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    move-object/from16 v34, v1

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v18, 0x1b7

    const/16 v19, 0x800

    const/16 v20, 0x9

    const/16 v21, 0x8

    const/16 v22, 0x5

    const/16 v23, 0x1

    const/16 v24, 0x1

    const-wide v25, 0x3fc51eb851eb851fL    # 0.165

    const-wide v27, 0x407ea00000000000L    # 490.0

    const-wide v29, 0x4071800000000000L    # 280.0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    invoke-direct/range {v17 .. v34}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->APR2011_439_PROD:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 11
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v16, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v2, 0x2e7

    const/16 v3, 0x800

    const/16 v4, 0xf8

    const/4 v6, 0x1

    const-wide v7, 0x3fc04189374bc6a8L    # 0.127

    const-wide v9, 0x4081800000000000L    # 560.0

    const-wide v11, 0x4076800000000000L    # 360.0

    const/4 v15, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->APR2011_743:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 16
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v17, v0

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    move-object/from16 v34, v1

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    const/16 v18, 0x2e7

    const/16 v20, 0xb

    const/16 v21, 0xb

    const/16 v22, 0xf

    const-wide v25, 0x3fc04189374bc6a8L    # 0.127

    const-wide v27, 0x4081800000000000L    # 560.0

    const-wide v29, 0x4076800000000000L    # 360.0

    const/16 v31, 0x1

    const/16 v32, 0x0

    invoke-direct/range {v17 .. v34}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->APR2011_743_PROD:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 21
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    new-instance v16, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v2, 0x9d

    const/16 v3, 0x100

    const/16 v4, 0x1d

    const-wide v7, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v9, 0x4069000000000000L    # 200.0

    const-wide/high16 v11, 0x4054000000000000L    # 80.0

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v16}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->TEST157:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 25
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v17, v0

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    move-object/from16 v34, v1

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    const/16 v18, 0x9d

    const/16 v19, 0x100

    const/16 v20, 0x5

    const/16 v21, 0x5

    const/16 v22, 0x8

    const-wide v25, 0x3fd851eb851eb852L    # 0.38

    const-wide/high16 v27, 0x4069000000000000L    # 200.0

    const-wide/high16 v29, 0x4054000000000000L    # 80.0

    const/16 v31, 0x0

    invoke-direct/range {v17 .. v34}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->TEST157_PROD:Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    return-void
.end method

.method public constructor <init>(IIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V
    .locals 3

    .line 1
    move-object v0, p0

    move v1, p1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 2
    const/16 v2, 0x64

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    .line 7
    const/4 v2, 0x6

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    .line 32
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    .line 33
    move v1, p2

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    .line 34
    move v1, p3

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    .line 35
    move v1, p4

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    .line 36
    move v1, p5

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    .line 37
    move-wide v1, p6

    iput-wide v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    .line 38
    move-wide v1, p8

    iput-wide v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    .line 39
    move-wide v1, p10

    iput-wide v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    .line 40
    move v1, p12

    iput-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    .line 41
    move/from16 v1, p13

    iput-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    .line 42
    move/from16 v1, p14

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    .line 43
    move-object/from16 v1, p15

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 44
    const/4 v1, 0x0

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->init()V

    return-void
.end method

.method public constructor <init>(IIIIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V
    .locals 3

    .line 46
    move-object v0, p0

    move v1, p1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 47
    const/16 v2, 0x64

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    .line 52
    const/4 v2, 0x6

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    .line 114
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    .line 115
    move v1, p2

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    .line 116
    move v1, p3

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    .line 117
    move v1, p4

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    .line 118
    move v1, p5

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    .line 119
    move v1, p6

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    .line 120
    move v1, p7

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    .line 121
    move-wide v1, p8

    iput-wide v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    .line 122
    move-wide v1, p10

    iput-wide v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    .line 123
    move-wide v1, p12

    iput-wide v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    .line 124
    move/from16 v1, p14

    iput-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    .line 125
    move/from16 v1, p15

    iput-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    .line 126
    move/from16 v1, p16

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    .line 127
    move-object/from16 v1, p17

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 128
    const/4 v1, 0x1

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    .line 129
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    .line 131
    const/16 v0, 0x64

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    .line 136
    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    .line 233
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    .line 235
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    .line 236
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    .line 237
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    .line 238
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    .line 239
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    .line 240
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    .line 241
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    .line 242
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    .line 243
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    .line 244
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    .line 245
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    .line 246
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    .line 247
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    .line 248
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    .line 249
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    .line 250
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 251
    const-string v1, "SHA-512"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    goto :goto_0

    .line 255
    :cond_0
    const-string v1, "SHA-256"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    .line 259
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    .line 260
    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->betaSq:D

    .line 2
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBoundSq:D

    .line 3
    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    mul-double/2addr v0, v0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->clone()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;
    .locals 37

    .line 2
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    iget-wide v8, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    iget-wide v10, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    iget-wide v12, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    iget-boolean v14, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    iget-boolean v15, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    move/from16 v16, v15

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    move/from16 v17, v2

    move-object v2, v1

    move-object/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    invoke-direct/range {v2 .. v17}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V

    return-object v1

    .line 8
    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    move-object/from16 v19, v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    move/from16 v20, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    move/from16 v21, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    move/from16 v22, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    move/from16 v23, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    move/from16 v24, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    move/from16 v25, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    move/from16 v26, v2

    iget-wide v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    move-wide/from16 v27, v2

    iget-wide v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    move-wide/from16 v29, v2

    iget-wide v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    move-wide/from16 v31, v2

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    move/from16 v33, v2

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    move/from16 v34, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    move/from16 v35, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v36, v2

    invoke-direct/range {v19 .. v36}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;-><init>(IIIIIIIDDDZZILorg/bouncycastle/crypto/Digest;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-nez v2, :cond_2

    return v1

    .line 5
    :cond_2
    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 6
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    if-eq v2, v3, :cond_3

    return v1

    .line 10
    :cond_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    if-eq v2, v3, :cond_4

    return v1

    .line 14
    :cond_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    if-eq v2, v3, :cond_5

    return v1

    .line 18
    :cond_5
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v1

    .line 22
    :cond_6
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->betaSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->betaSq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    .line 26
    :cond_7
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    if-eq v2, v3, :cond_8

    return v1

    .line 30
    :cond_8
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    if-eq v2, v3, :cond_9

    return v1

    .line 34
    :cond_9
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    if-eq v2, v3, :cond_a

    return v1

    .line 38
    :cond_a
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    if-eq v2, v3, :cond_b

    return v1

    .line 42
    :cond_b
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    if-eq v2, v3, :cond_c

    return v1

    .line 46
    :cond_c
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v2, :cond_d

    .line 48
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v2, :cond_e

    return v1

    .line 53
    :cond_d
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    return v1

    .line 57
    :cond_e
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    if-eq v2, v3, :cond_f

    return v1

    .line 61
    :cond_f
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    return v1

    .line 65
    :cond_10
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_11

    return v1

    .line 69
    :cond_11
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    return v1

    .line 73
    :cond_12
    iget-wide v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBoundSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBoundSq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    return v1

    .line 77
    :cond_13
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-eq v2, v3, :cond_14

    return v1

    .line 81
    :cond_14
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    iget-boolean v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    if-eq v2, v3, :cond_15

    return v1

    .line 85
    :cond_15
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    if-eq v2, v3, :cond_16

    return v1

    .line 89
    :cond_16
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    if-eq v2, v3, :cond_17

    return v1

    .line 93
    :cond_17
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    iget-boolean p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    if-eq v2, p1, :cond_18

    return v1

    :cond_18
    return v0
.end method

.method public getSigningParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;
    .locals 11

    .line 1
    new-instance v10, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    iget-wide v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    iget-wide v7, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningParameters;-><init>(IIIIDDLorg/bouncycastle/crypto/Digest;)V

    return-object v10
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    add-int/2addr v0, v1

    .line 5
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 7
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->betaSq:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    add-int/2addr v0, v1

    .line 16
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 18
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 20
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 22
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBoundSq:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 24
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 26
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 27
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SignatureParameters(N="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " polyType=SIMPLE d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " polyType=PRODUCT d1="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " d2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " d3="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " B="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " basisType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " beta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " normBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    .line 13
    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keyNormBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " prime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sparse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " keyGenAlg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " hashAlg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->N:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 3
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 4
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 5
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d1:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 6
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d2:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 7
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->d3:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 8
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->B:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->basisType:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 10
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->beta:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 11
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->normBound:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 12
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBound:D

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    .line 13
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->signFailTolerance:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 14
    iget-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 15
    iget-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->sparse:Z

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 16
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bitsF:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 17
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    .line 18
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 19
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->polyType:I

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write(I)V

    return-void
.end method
