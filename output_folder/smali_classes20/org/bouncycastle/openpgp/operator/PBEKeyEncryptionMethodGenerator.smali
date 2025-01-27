.class public abstract Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
.super Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;


# instance fields
.field private passPhrase:[C

.field private random:Ljava/security/SecureRandom;

.field private s2k:Lorg/bouncycastle/bcpg/S2K;

.field private s2kCount:I

.field private s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;


# direct methods
.method protected constructor <init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;)V
    .locals 1

    const/16 v0, 0x60

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;-><init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V

    return-void
.end method

.method protected constructor <init>([CLorg/bouncycastle/openpgp/operator/PGPDigestCalculator;I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->passPhrase:[C

    iput-object p2, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    if-ltz p3, :cond_0

    const/16 p1, 0xff

    if-gt p3, p1, :cond_0

    iput p3, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "s2kCount value outside of range 0 to 255."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract encryptSessionInfo(I[B[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation
.end method

.method public generate(I[B)Lorg/bouncycastle/bcpg/ContainedPacket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->getKey(I)[B

    move-result-object v0

    if-nez p2, :cond_0

    new-instance p2, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/bouncycastle/bcpg/S2K;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;-><init>(ILorg/bouncycastle/bcpg/S2K;[B)V

    return-object p2

    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p2, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/bouncycastle/bcpg/S2K;

    invoke-virtual {p0, p1, v0, v2}, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->encryptSessionInfo(I[B[B)[B

    move-result-object v0

    invoke-direct {p2, p1, v1, v0}, Lorg/bouncycastle/bcpg/SymmetricKeyEncSessionPacket;-><init>(ILorg/bouncycastle/bcpg/S2K;[B)V

    return-object p2
.end method

.method public getKey(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/bouncycastle/bcpg/S2K;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/bcpg/S2K;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    invoke-interface {v2}, Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;->getAlgorithm()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kCount:I

    invoke-direct {v1, v2, v0, v3}, Lorg/bouncycastle/bcpg/S2K;-><init>(I[BI)V

    iput-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/bouncycastle/bcpg/S2K;

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2kDigestCalculator:Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->s2k:Lorg/bouncycastle/bcpg/S2K;

    iget-object v2, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->passPhrase:[C

    invoke-static {v0, p1, v1, v2}, Lorg/bouncycastle/openpgp/operator/PGPUtil;->makeKeyFromPassPhrase(Lorg/bouncycastle/openpgp/operator/PGPDigestCalculator;ILorg/bouncycastle/bcpg/S2K;[C)[B

    move-result-object p1

    return-object p1
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/PBEKeyEncryptionMethodGenerator;->random:Ljava/security/SecureRandom;

    return-object p0
.end method
