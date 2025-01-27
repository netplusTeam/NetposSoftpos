.class public Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;
    }
.end annotation


# instance fields
.field private encAlgorithm:I

.field private random:Ljava/security/SecureRandom;

.field private withIntegrityPacket:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->encAlgorithm:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null cipher specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->encAlgorithm:I

    return p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->withIntegrityPacket:Z

    return p0
.end method


# virtual methods
.method public build([B)Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder$MyPGPDataEncryptor;-><init>(Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;[B)V

    return-object v0
.end method

.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->encAlgorithm:I

    return v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->random:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public setWithIntegrityPacket(Z)Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPDataEncryptorBuilder;->withIntegrityPacket:Z

    return-object p0
.end method
