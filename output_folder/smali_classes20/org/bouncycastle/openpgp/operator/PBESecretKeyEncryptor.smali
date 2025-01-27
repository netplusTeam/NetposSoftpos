.class public abstract Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;
.super Ljava/lang/Object;


# instance fields
.field protected encAlgorithm:I

.field protected passPhrase:[C

.field protected random:Ljava/security/SecureRandom;

.field protected s2k:Lorg/bouncycastle/bcpg/S2K;

.field protected s2kCount:I

.field protected s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;


# direct methods
.method protected constructor <init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    iput-object p5, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->passPhrase:[C

    iput-object p4, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->random:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    iput p3, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "s2kCount value outside of range 0 to 255."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;Ljava/security/SecureRandom;[C)V
    .locals 6

    const/16 v3, 0x60

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;-><init>(ILorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILjava/security/SecureRandom;[C)V

    return-void
.end method


# virtual methods
.method public encryptKeyData([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2k:Lorg/bouncycastle/bcpg/S2K;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/bcpg/S2K;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kCount:I

    invoke-direct {v1, v2, v0, v3}, Lorg/bouncycastle/bcpg/S2K;-><init>(I[BI)V

    iput-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2k:Lorg/bouncycastle/bcpg/S2K;

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encryptKeyData([B[BII)[B

    move-result-object p1

    return-object p1
.end method

.method public abstract encryptKeyData([B[BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public encryptKeyData([B[B[BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/openpgp/PGPException;

    const-string p2, "encryption of version 3 keys not supported."

    invoke-direct {p1, p2}, Lorg/bouncycastle/openpgp/PGPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    return v0
.end method

.method public abstract getCipherIV()[B
.end method

.method public getHashAlgorithm()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getKey()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    iget v1, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->encAlgorithm:I

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2k:Lorg/bouncycastle/bcpg/S2K;

    iget-object v3, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->passPhrase:[C

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILorg/bouncycastle/bcpg/S2K;[C)[B

    move-result-object v0

    return-object v0
.end method

.method public getS2K()Lorg/bouncycastle/bcpg/S2K;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBESecretKeyEncryptor;->s2k:Lorg/bouncycastle/bcpg/S2K;

    return-object v0
.end method
