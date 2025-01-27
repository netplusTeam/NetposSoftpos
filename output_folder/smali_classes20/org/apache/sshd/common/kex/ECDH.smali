.class public Lorg/apache/sshd/common/kex/ECDH;
.super Lorg/apache/sshd/common/kex/AbstractDH;
.source "ECDH.java"


# static fields
.field public static final KEX_TYPE:Ljava/lang/String; = "ECDH"


# instance fields
.field private curve:Lorg/apache/sshd/common/cipher/ECCurves;

.field private f:Ljava/security/spec/ECPoint;

.field private params:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECParameterSpec;

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/ECDH;-><init>(Ljava/security/spec/ECParameterSpec;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "curveName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    invoke-static {p1}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveName(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    const-string v1, "Unknown curve name: %s"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/ECDH;-><init>(Lorg/apache/sshd/common/cipher/ECCurves;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/security/spec/ECParameterSpec;)V
    .locals 1
    .param p1, "paramSpec"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lorg/apache/sshd/common/kex/AbstractDH;-><init>()V

    .line 63
    const-string v0, "ECDH"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    .line 64
    iput-object p1, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/cipher/ECCurves;)V
    .locals 1
    .param p1, "curve"    # Lorg/apache/sshd/common/cipher/ECCurves;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    const-string v0, "No known curve instance provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/ECDH;-><init>(Ljava/security/spec/ECParameterSpec;)V

    .line 59
    iput-object p1, p0, Lorg/apache/sshd/common/kex/ECDH;->curve:Lorg/apache/sshd/common/cipher/ECCurves;

    .line 60
    return-void
.end method


# virtual methods
.method protected calculateE()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    const-string v1, "No ECParameterSpec(s)"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    const-string v0, "EC"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 71
    .local v0, "myKpairGen":Ljava/security/KeyPairGenerator;
    iget-object v1, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 74
    .local v1, "myKpair":Ljava/security/KeyPair;
    iget-object v2, p0, Lorg/apache/sshd/common/kex/ECDH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 76
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 77
    .local v2, "pubKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 78
    .local v3, "e":Ljava/security/spec/ECPoint;
    iget-object v4, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    invoke-static {v3, v4}, Lorg/apache/sshd/common/cipher/ECCurves;->encodeECPoint(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)[B

    move-result-object v4

    return-object v4
.end method

.method protected calculateK()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    const-string v1, "No ECParameterSpec(s)"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->f:Ljava/security/spec/ECPoint;

    const-string v1, "Missing \'f\' value"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    iget-object v1, p0, Lorg/apache/sshd/common/kex/ECDH;->f:Ljava/security/spec/ECPoint;

    iget-object v2, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, v2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 86
    .local v0, "keySpec":Ljava/security/spec/ECPublicKeySpec;
    const-string v1, "EC"

    invoke-static {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 87
    .local v1, "myKeyFac":Ljava/security/KeyFactory;
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 88
    .local v2, "yourPubKey":Ljava/security/PublicKey;
    iget-object v3, p0, Lorg/apache/sshd/common/kex/ECDH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 89
    iget-object v3, p0, Lorg/apache/sshd/common/kex/ECDH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/sshd/common/kex/ECDH;->stripLeadingZeroes([B)[B

    move-result-object v3

    return-object v3
.end method

.method public getHash()Lorg/apache/sshd/common/digest/Digest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->curve:Lorg/apache/sshd/common/cipher/ECCurves;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    const-string v1, "No ECParameterSpec(s)"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    invoke-static {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    const-string v1, "Unknown curve parameters"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/ECCurves;

    iput-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->curve:Lorg/apache/sshd/common/cipher/ECCurves;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->curve:Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getDigestForParams()Lorg/apache/sshd/common/digest/Digest;

    move-result-object v0

    return-object v0
.end method

.method public setCurveParameters(Ljava/security/spec/ECParameterSpec;)V
    .locals 0
    .param p1, "paramSpec"    # Ljava/security/spec/ECParameterSpec;

    .line 93
    iput-object p1, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    .line 94
    return-void
.end method

.method public setF([B)V
    .locals 2
    .param p1, "f"    # [B

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->params:Ljava/security/spec/ECParameterSpec;

    const-string v1, "No ECParameterSpec(s)"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v0, "No \'f\' value specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToEcPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/ECDH;->f:Ljava/security/spec/ECPoint;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/sshd/common/kex/AbstractDH;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[curve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/kex/ECDH;->curve:Lorg/apache/sshd/common/cipher/ECCurves;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/kex/ECDH;->f:Ljava/security/spec/ECPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
