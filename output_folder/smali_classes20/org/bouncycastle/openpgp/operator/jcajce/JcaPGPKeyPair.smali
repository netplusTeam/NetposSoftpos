.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;
.super Lorg/bouncycastle/openpgp/PGPKeyPair;


# direct methods
.method public constructor <init>(ILjava/security/KeyPair;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPKeyPair;-><init>()V

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->getPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->priv:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Ljava/security/KeyPair;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPKeyPair;-><init>()V

    invoke-virtual {p3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->getPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyPair;->priv:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    return-void
.end method

.method private static getPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Ljava/security/PrivateKey;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private static getPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPublicKey(ILjava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static getPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/jcajce/JcaPGPKeyConverter;->getPGPPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Ljava/security/PublicKey;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method
