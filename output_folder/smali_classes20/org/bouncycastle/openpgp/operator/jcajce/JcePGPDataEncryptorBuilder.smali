.class public Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPDataEncryptorBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;
    }
.end annotation


# instance fields
.field private encAlgorithm:I

.field private helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

.field private random:Ljava/security/SecureRandom;

.field private withIntegrityPacket:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    iput p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->encAlgorithm:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null cipher specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->encAlgorithm:I

    return p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->withIntegrityPacket:Z

    return p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;)Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method


# virtual methods
.method public build([B)Lorg/bouncycastle/openpgp/operator/PGPDataEncryptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder$MyPGPDataEncryptor;-><init>(Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;[B)V

    return-object v0
.end method

.method public getAlgorithm()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->encAlgorithm:I

    return v0
.end method

.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->random:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object v0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    new-instance v1, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v1, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->helper:Lorg/bouncycastle/openpgp/operator/jcajce/OperatorHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

.method public setWithIntegrityPacket(Z)Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/openpgp/operator/jcajce/JcePGPDataEncryptorBuilder;->withIntegrityPacket:Z

    return-object p0
.end method
