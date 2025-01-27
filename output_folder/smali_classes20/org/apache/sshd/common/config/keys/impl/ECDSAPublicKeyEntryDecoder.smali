.class public Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;
.super Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;
.source "ECDSAPublicKeyEntryDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder<",
        "Ljava/security/interfaces/ECPublicKey;",
        "Ljava/security/interfaces/ECPrivateKey;",
        ">;"
    }
.end annotation


# static fields
.field public static final ECPOINT_COMPRESSED_VARIANT_2:B = 0x2t

.field public static final ECPOINT_COMPRESSED_VARIANT_3:B = 0x2t

.field public static final ECPOINT_UNCOMPRESSED_FORM_INDICATOR:B = 0x4t

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;

.field public static final MAX_ALLOWED_POINT_SIZE:I = 0x7fff

.field public static final MAX_CURVE_NAME_LENGTH:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 64
    const-class v0, Ljava/security/interfaces/ECPublicKey;

    const-class v1, Ljava/security/interfaces/ECPrivateKey;

    sget-object v2, Lorg/apache/sshd/common/cipher/ECCurves;->KEY_TYPES:Ljava/util/NavigableSet;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/sshd/common/config/keys/impl/AbstractPublicKeyEntryDecoder;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Collection;)V

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic clonePrivateKey(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->clonePrivateKey(Ljava/security/interfaces/ECPrivateKey;)Ljava/security/interfaces/ECPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePrivateKey(Ljava/security/interfaces/ECPrivateKey;)Ljava/security/interfaces/ECPrivateKey;
    .locals 3
    .param p1, "key"    # Ljava/security/interfaces/ECPrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 126
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    if-nez p1, :cond_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 135
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v0, :cond_1

    .line 139
    new-instance v1, Ljava/security/spec/ECPrivateKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->generatePrivateKey(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    return-object v1

    .line 136
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Missing parameters in key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 127
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_2
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "ECC not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clonePublicKey(Ljava/security/PublicKey;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->clonePublicKey(Ljava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public clonePublicKey(Ljava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPublicKey;
    .locals 3
    .param p1, "key"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 108
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 117
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    if-eqz v0, :cond_1

    .line 121
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v1}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    return-object v1

    .line 118
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Missing parameters in key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v0    # "params":Ljava/security/spec/ECParameterSpec;
    :cond_2
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "ECC not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/interfaces/ECPublicKey;
    .locals 10
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/interfaces/ECPublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, " from octets="

    invoke-static {p2}, Lorg/apache/sshd/common/cipher/ECCurves;->fromKeyType(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v1

    .line 72
    .local v1, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v1, :cond_3

    .line 76
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-virtual {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "keyCurveName":Ljava/lang/String;
    const/16 v3, 0x400

    invoke-static {p3, v3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "encCurveName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    const/16 v4, 0x7fff

    invoke-static {p3, v4}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->readRLEBytes(Ljava/io/InputStream;I)[B

    move-result-object v4

    .line 90
    .local v4, "octets":[B
    const/16 v5, 0x3a

    :try_start_0
    invoke-static {v4}, Lorg/apache/sshd/common/cipher/ECCurves;->octetStringToEcPoint([B)Ljava/security/spec/ECPoint;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v6, "w":Ljava/security/spec/ECPoint;
    if-eqz v6, :cond_0

    .line 100
    nop

    .line 102
    invoke-virtual {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 103
    .local v0, "paramSpec":Ljava/security/spec/ECParameterSpec;
    new-instance v5, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v5, v6, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v5}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->generatePublicKey(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/ECPublicKey;

    return-object v5

    .line 92
    .end local v0    # "paramSpec":Ljava/security/spec/ECParameterSpec;
    :cond_0
    :try_start_1
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No ECPoint generated for curve="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 93
    invoke-static {v5, v4}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local v1    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .end local v2    # "keyCurveName":Ljava/lang/String;
    .end local v3    # "encCurveName":Ljava/lang/String;
    .end local v4    # "octets":[B
    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "keyType":Ljava/lang/String;
    .end local p3    # "keyData":Ljava/io/InputStream;
    .end local p4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    throw v7
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .end local v6    # "w":Ljava/security/spec/ECPoint;
    .restart local v1    # "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    .restart local v2    # "keyCurveName":Ljava/lang/String;
    .restart local v3    # "encCurveName":Ljava/lang/String;
    .restart local v4    # "octets":[B
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "keyType":Ljava/lang/String;
    .restart local p3    # "keyData":Ljava/io/InputStream;
    .restart local p4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 96
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/security/spec/InvalidKeySpecException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to generate ECPoint for curve="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 98
    invoke-static {v5, v4}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-virtual {v6}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 84
    .end local v4    # "octets":[B
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatched key curve name ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") vs. encoded one ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    .end local v2    # "keyCurveName":Ljava/lang/String;
    .end local v3    # "encCurveName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v2, "ECC not supported"

    invoke-direct {v0, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an EC curve name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic encodePublicKey(Ljava/io/OutputStream;Ljava/security/PublicKey;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->encodePublicKey(Ljava/io/OutputStream;Ljava/security/interfaces/ECPublicKey;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public encodePublicKey(Ljava/io/OutputStream;Ljava/security/interfaces/ECPublicKey;)Ljava/lang/String;
    .locals 6
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "key"    # Ljava/security/interfaces/ECPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    const-string v0, "No public key provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    const-string v1, "No EC parameters available"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    .line 147
    .local v0, "params":Ljava/security/spec/ECParameterSpec;
    invoke-static {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveParameters(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v1

    const-string v2, "Cannot determine curve"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/cipher/ECCurves;

    .line 148
    .local v1, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    invoke-virtual {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->getKeyType()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "keyType":Ljava/lang/String;
    invoke-virtual {v1}, Lorg/apache/sshd/common/cipher/ECCurves;->getName()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "curveName":Ljava/lang/String;
    invoke-static {p1, v2}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeString(Ljava/io/OutputStream;Ljava/lang/String;)I

    .line 152
    invoke-static {p1, v3}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->encodeString(Ljava/io/OutputStream;Ljava/lang/String;)I

    .line 153
    sget-object v4, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->UNCOMPRESSED:Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v5

    invoke-virtual {v4, p1, v3, v5}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->writeECPoint(Ljava/io/OutputStream;Ljava/lang/String;Ljava/security/spec/ECPoint;)V

    .line 154
    return-object v2
.end method

.method public generateKeyPair(I)Ljava/security/KeyPair;
    .locals 4
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 168
    invoke-static {p1}, Lorg/apache/sshd/common/cipher/ECCurves;->fromCurveSize(I)Lorg/apache/sshd/common/cipher/ECCurves;

    move-result-object v0

    .line 169
    .local v0, "curve":Lorg/apache/sshd/common/cipher/ECCurves;
    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/impl/ECDSAPublicKeyEntryDecoder;->getKeyPairGenerator()Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 174
    .local v1, "gen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v0}, Lorg/apache/sshd/common/cipher/ECCurves;->getParameters()Ljava/security/spec/ECParameterSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 175
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2

    return-object v2

    .line 170
    .end local v1    # "gen":Ljava/security/KeyPairGenerator;
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown curve for key size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getKeyFactoryInstance()Ljava/security/KeyFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 159
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "EC"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "ECC not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getKeyPairGenerator()Ljava/security/KeyPairGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 180
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const-string v0, "EC"

    invoke-static {v0}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0

    .line 183
    :cond_0
    new-instance v0, Ljava/security/NoSuchProviderException;

    const-string v1, "ECC not supported"

    invoke-direct {v0, v1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
