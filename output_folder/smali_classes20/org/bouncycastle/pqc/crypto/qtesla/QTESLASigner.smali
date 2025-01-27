.class public Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;
.super Ljava/lang/Object;
.source "QTESLASigner.java"

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->getSignatureSize(I)I

    move-result v0

    new-array v0, v0, [B

    .line 3
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown security category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :pswitch_0
    array-length v4, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->signingIIIP([B[BII[BLjava/security/SecureRandom;)I

    goto :goto_0

    .line 23
    :pswitch_1
    array-length v4, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->signingIP([B[BII[BLjava/security/SecureRandom;)I

    goto :goto_0

    .line 24
    :pswitch_2
    array-length v4, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->signingIIISpeed([B[BII[BLjava/security/SecureRandom;)I

    goto :goto_0

    .line 25
    :pswitch_3
    array-length v4, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->signingIIISize([B[BII[BLjava/security/SecureRandom;)I

    goto :goto_0

    .line 26
    :pswitch_4
    array-length v4, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->signingI([B[BII[BLjava/security/SecureRandom;)I

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    .line 4
    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    .line 9
    check-cast p2, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    :goto_0
    nop

    .line 11
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    .line 12
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->validate(I)V

    goto :goto_1

    :cond_1
    nop

    .line 16
    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPrivateKeyParameters;

    .line 17
    check-cast p2, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    .line 18
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASecurityCategory;->validate(I)V

    :goto_1
    return-void
.end method

.method public verifySignature([B[B)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unknown security category: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :pswitch_0
    array-length v0, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->verifyingPIII([B[BII[B)I

    move-result p1

    goto :goto_0

    .line 21
    :pswitch_1
    array-length v0, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->verifyingPI([B[BII[B)I

    move-result p1

    goto :goto_0

    .line 22
    :pswitch_2
    array-length v0, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->verifyingIIISpeed([B[BII[B)I

    move-result p1

    goto :goto_0

    .line 23
    :pswitch_3
    array-length v0, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->verifyingIIISize([B[BII[B)I

    move-result p1

    goto :goto_0

    .line 24
    :pswitch_4
    array-length v0, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/qtesla/QTESLA;->verifyingI([B[BII[B)I

    move-result p1

    :goto_0
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
