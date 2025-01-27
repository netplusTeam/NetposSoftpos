.class public Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;
.super Lorg/bouncycastle/openpgp/PGPKeyPair;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPKeyPair;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, p3}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->getPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->priv:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPKeyPair;-><init>()V

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->getPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    iget-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->pub:Lorg/bouncycastle/openpgp/PGPPublicKey;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->getPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyPair;->priv:Lorg/bouncycastle/openpgp/PGPPrivateKey;

    return-void
.end method

.method private static getPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/openpgp/PGPPrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPGPPrivateKey(Lorg/bouncycastle/openpgp/PGPPublicKey;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/openpgp/PGPPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method private static getPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;->getPGPPublicKey(ILorg/bouncycastle/openpgp/PGPAlgorithmParameters;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Ljava/util/Date;)Lorg/bouncycastle/openpgp/PGPPublicKey;

    move-result-object p0

    return-object p0
.end method
