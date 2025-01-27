.class public Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;
.super Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;
.source "ECBufferPublicKeyParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser<",
        "Ljava/security/interfaces/ECPublicKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;->INSTANCE:Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    const-class v0, Ljava/security/interfaces/ECPublicKey;

    sget-object v1, Lorg/apache/sshd/common/cipher/ECCurves;->KEY_TYPES:Ljava/util/NavigableSet;

    invoke-direct {p0, v0, v1}, Lorg/apache/sshd/common/util/buffer/keys/AbstractBufferPublicKeyParser;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected getRawECKey(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/interfaces/ECPublicKey;
    .locals 6
    .param p1, "expectedCurve"    # Ljava/lang/String;
    .param p2, "spec"    # Ljava/security/spec/ECParameterSpec;
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "curveName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "getRawECKey("

    if-eqz v1, :cond_1

    .line 64
    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v1

    .line 71
    .local v1, "octets":[B
    :try_start_0
    invoke-static {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToEcPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .local v2, "w":Ljava/security/spec/ECPoint;
    nop

    .line 79
    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, v2, p2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    const-string v4, "EC"

    invoke-virtual {p0, v4, v3}, Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;->generatePublicKey(Ljava/lang/String;Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    return-object v3

    .line 72
    .end local v2    # "w":Ljava/security/spec/ECPoint;
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") cannot ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") retrieve W value: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 65
    .end local v1    # "octets":[B
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") missing curve parameters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") curve name does not match expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;->getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/interfaces/ECPublicKey;
    .locals 4
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;->isKeyTypeSupported(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Unsupported key type: %s"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Lorg/apache/sshd/common/cipher/ECCurves;->fromKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    .line 49
    .local v0, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "curveName":Ljava/lang/String;
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    .line 55
    .local v2, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {p0, v1, v2, p2}, Lorg/apache/sshd/common/util/buffer/keys/ECBufferPublicKeyParser;->getRawECKey(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v3

    return-object v3

    .line 50
    .end local v1    # "curveName":Ljava/lang/String;
    .end local v2    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_0
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported raw public algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
