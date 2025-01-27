.class public final Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;
.super Ljava/lang/Object;
.source "QTESLAKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private secureRandom:Ljava/security/SecureRandom;

.field private securityCategory:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private allocatePrivate(I)[B
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getPrivateSize(I)I

    move-result p1

    new-array p1, p1, [B

    return-object p1
.end method

.method private allocatePublic(I)[B
    .locals 0

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getPublicSize(I)I

    move-result p1

    new-array p1, p1, [B

    return-object p1
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 5

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->allocatePrivate(I)[B

    move-result-object v0

    .line 2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->allocatePublic(I)[B

    move-result-object v1

    .line 4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    packed-switch v2, :pswitch_data_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :pswitch_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->generateKeyPairIIIP([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    .line 24
    :pswitch_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->generateKeyPairIP([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    .line 25
    :pswitch_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->generateKeyPairIIISpeed([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    .line 26
    :pswitch_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->generateKeyPairIIISize([B[BLjava/security/SecureRandom;)I

    goto :goto_0

    .line 27
    :pswitch_4
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->generateKeyPairI([B[BLjava/security/SecureRandom;)I

    .line 45
    :goto_0
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;-><init>(I[B)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;-><init>(I[B)V

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    .line 1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyGenerationParameters;

    .line 3
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->secureRandom:Ljava/security/SecureRandom;

    .line 4
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyGenerationParameters;->getSecurityCategory()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAKeyPairGenerator;->securityCategory:I

    return-void
.end method
