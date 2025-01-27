.class public abstract Lorg/jpos/q2/ssh/AbstractPKA;
.super Ljava/lang/Object;
.source "AbstractPKA.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 72
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    .line 74
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {p0, v0, p2}, Lorg/jpos/q2/ssh/AbstractPKA;->compare(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 76
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v0, :cond_1

    .line 78
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    invoke-direct {p0, v0, p2}, Lorg/jpos/q2/ssh/AbstractPKA;->compare(Ljava/security/interfaces/DSAPublicKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 80
    :cond_1
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    .line 82
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {p0, v0, p2}, Lorg/jpos/q2/ssh/AbstractPKA;->compare(Ljava/security/interfaces/ECPublicKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 84
    :cond_2
    instance-of v0, p1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    if-eqz v0, :cond_3

    .line 86
    move-object v0, p1

    check-cast v0, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    invoke-direct {p0, v0, p2}, Lorg/jpos/q2/ssh/AbstractPKA;->compare(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 88
    :cond_3
    const-string v0, "Q2"

    const-string v1, "sshd"

    invoke-static {v0, v1}, Lorg/jpos/util/Log;->getLog(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/util/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ssh key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method private compare(Ljava/security/interfaces/DSAPublicKey;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "k"    # Ljava/security/interfaces/DSAPublicKey;
    .param p2, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 117
    return v0

    .line 120
    :cond_0
    instance-of v1, p2, Ljava/security/interfaces/DSAPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 122
    return v2

    .line 125
    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/security/interfaces/DSAPublicKey;

    .line 127
    .local v1, "other":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 129
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 127
    :goto_0
    return v0
.end method

.method private compare(Ljava/security/interfaces/ECPublicKey;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "k"    # Ljava/security/interfaces/ECPublicKey;
    .param p2, "o"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 137
    return v0

    .line 140
    :cond_0
    instance-of v1, p2, Ljava/security/interfaces/ECPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 142
    return v2

    .line 145
    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 146
    .local v1, "ko":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareECParams(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECParameterSpec;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 146
    :goto_0
    return v0
.end method

.method private compare(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "k"    # Ljava/security/interfaces/RSAPublicKey;
    .param p2, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 99
    return v0

    .line 102
    :cond_0
    instance-of v1, p2, Ljava/security/interfaces/RSAPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 104
    return v2

    .line 107
    :cond_1
    move-object v1, p2

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 109
    .local v1, "other":Ljava/security/interfaces/RSAPublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 109
    :goto_0
    return v0
.end method

.method private compare(Lnet/i2p/crypto/eddsa/EdDSAPublicKey;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "k"    # Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    .param p2, "o"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 154
    return v0

    .line 157
    :cond_0
    instance-of v1, p2, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 159
    return v2

    .line 162
    :cond_1
    move-object v1, p2

    check-cast v1, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;

    .line 163
    .local v1, "edo":Lnet/i2p/crypto/eddsa/EdDSAPublicKey;
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v3

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getAbyte()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v3

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/EdDSAPublicKey;->getParams()Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/sshd/common/util/security/eddsa/EdDSASecurityProviderUtils;->compareEDDSAKeyParams(Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;Lnet/i2p/crypto/eddsa/spec/EdDSAParameterSpec;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 163
    :goto_0
    return v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 5
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 46
    .local v1, "authorizedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/jpos/q2/ssh/AbstractPKA;->parseAuthorizedKeys()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 51
    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    .line 50
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Q2"

    const-string v4, "sshd"

    invoke-static {v3, v4}, Lorg/jpos/util/Log;->getLog(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/util/Log;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jpos/util/Log;->error(Ljava/lang/Object;)V

    .line 53
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v1, :cond_1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    .line 57
    .local v3, "authorizedKey":Ljava/security/PublicKey;
    invoke-direct {p0, v3, p2}, Lorg/jpos/q2/ssh/AbstractPKA;->compare(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 60
    goto :goto_2

    .line 62
    .end local v3    # "authorizedKey":Ljava/security/PublicKey;
    :cond_0
    goto :goto_1

    .line 64
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/jpos/q2/ssh/AbstractPKA;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    return v2
.end method

.method protected abstract getUsername()Ljava/lang/String;
.end method

.method protected abstract parseAuthorizedKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
