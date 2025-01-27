.class public Lorg/apache/sshd/common/kex/DHG;
.super Lorg/apache/sshd/common/kex/AbstractDH;
.source "DHG.java"


# static fields
.field public static final KEX_TYPE:Ljava/lang/String; = "DH"


# instance fields
.field private f:Ljava/math/BigInteger;

.field private factory:Lorg/apache/sshd/common/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    .local p1, "digestFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/sshd/common/kex/DHG;-><init>(Lorg/apache/sshd/common/Factory;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/Factory;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p2, "pValue"    # Ljava/math/BigInteger;
    .param p3, "gValue"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/digest/Digest;",
            ">;",
            "Ljava/math/BigInteger;",
            "Ljava/math/BigInteger;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    .local p1, "digestFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/digest/Digest;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/kex/AbstractDH;-><init>()V

    .line 54
    const-string v0, "DH"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/kex/DHG;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    .line 55
    iput-object p1, p0, Lorg/apache/sshd/common/kex/DHG;->factory:Lorg/apache/sshd/common/Factory;

    .line 56
    iput-object p2, p0, Lorg/apache/sshd/common/kex/DHG;->p:Ljava/math/BigInteger;

    .line 57
    iput-object p3, p0, Lorg/apache/sshd/common/kex/DHG;->g:Ljava/math/BigInteger;

    .line 58
    return-void
.end method


# virtual methods
.method protected calculateE()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/apache/sshd/common/kex/DHG;->p:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/sshd/common/kex/DHG;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 63
    .local v0, "dhSkipParamSpec":Ljavax/crypto/spec/DHParameterSpec;
    const-string v1, "DH"

    invoke-static {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 64
    .local v1, "myKpairGen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 66
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    .line 67
    .local v2, "myKpair":Ljava/security/KeyPair;
    iget-object v3, p0, Lorg/apache/sshd/common/kex/DHG;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    .line 69
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljavax/crypto/interfaces/DHPublicKey;

    .line 70
    .local v3, "pubKey":Ljavax/crypto/interfaces/DHPublicKey;
    invoke-interface {v3}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    .line 71
    .local v4, "e":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method protected calculateK()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/kex/DHG;->f:Ljava/math/BigInteger;

    const-string v1, "Missing \'f\' value"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v1, p0, Lorg/apache/sshd/common/kex/DHG;->f:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/sshd/common/kex/DHG;->p:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/apache/sshd/common/kex/DHG;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 78
    .local v0, "keySpec":Ljavax/crypto/spec/DHPublicKeySpec;
    const-string v1, "DH"

    invoke-static {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 79
    .local v1, "myKeyFac":Ljava/security/KeyFactory;
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 80
    .local v2, "yourPubKey":Ljava/security/PublicKey;
    iget-object v3, p0, Lorg/apache/sshd/common/kex/DHG;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 81
    iget-object v3, p0, Lorg/apache/sshd/common/kex/DHG;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v3}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v3

    invoke-static {v3}, Lorg/apache/sshd/common/kex/DHG;->stripLeadingZeroes([B)[B

    move-result-object v3

    return-object v3
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/sshd/common/kex/DHG;->g:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getHash()Lorg/apache/sshd/common/digest/Digest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/apache/sshd/common/kex/DHG;->factory:Lorg/apache/sshd/common/Factory;

    invoke-interface {v0}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/digest/Digest;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/sshd/common/kex/DHG;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public setF(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "f"    # Ljava/math/BigInteger;

    .line 114
    const-string v0, "No \'f\' value specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/apache/sshd/common/kex/DHG;->f:Ljava/math/BigInteger;

    .line 115
    return-void
.end method

.method public setF([B)V
    .locals 1
    .param p1, "f"    # [B

    .line 94
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/kex/DHG;->setF(Ljava/math/BigInteger;)V

    .line 95
    return-void
.end method

.method public setG(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "g"    # Ljava/math/BigInteger;

    .line 110
    iput-object p1, p0, Lorg/apache/sshd/common/kex/DHG;->g:Ljava/math/BigInteger;

    .line 111
    return-void
.end method

.method public setG([B)V
    .locals 1
    .param p1, "g"    # [B

    .line 89
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/kex/DHG;->setG(Ljava/math/BigInteger;)V

    .line 90
    return-void
.end method

.method public setP(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;

    .line 102
    iput-object p1, p0, Lorg/apache/sshd/common/kex/DHG;->p:Ljava/math/BigInteger;

    .line 103
    return-void
.end method

.method public setP([B)V
    .locals 1
    .param p1, "p"    # [B

    .line 85
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/kex/DHG;->setP(Ljava/math/BigInteger;)V

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/sshd/common/kex/AbstractDH;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/kex/DHG;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", g="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/kex/DHG;->g:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/kex/DHG;->f:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", digest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/kex/DHG;->factory:Lorg/apache/sshd/common/Factory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
