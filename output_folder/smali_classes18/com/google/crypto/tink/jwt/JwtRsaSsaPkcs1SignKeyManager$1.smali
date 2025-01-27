.class Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;
.super Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
.source "JwtRsaSsaPkcs1SignKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->keyFactory()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;",
        "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "clazz"
        }
    .end annotation

    .line 176
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;>;"
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->this$0:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
    .locals 9
    .param p1, "format"    # Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    move-result-object v0

    .line 202
    .local v0, "algorithm":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;
    sget-object v1, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_PAIR_GENERATOR:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v2, "RSA"

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    .line 203
    .local v1, "keyGen":Ljava/security/KeyPairGenerator;
    new-instance v2, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 205
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getModulusSizeInBits()I

    move-result v3

    new-instance v4, Ljava/math/BigInteger;

    .line 206
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getPublicExponent()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 207
    .local v2, "spec":Ljava/security/spec/RSAKeyGenParameterSpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 208
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 209
    .local v3, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    .line 210
    .local v4, "pubKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    check-cast v5, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 213
    .local v5, "privKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->this$0:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;

    .line 214
    invoke-virtual {v7}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v6

    .line 215
    invoke-virtual {v6, v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setAlgorithm(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v6

    .line 216
    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setE(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v6

    .line 217
    invoke-interface {v4}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setN(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v6

    .line 218
    invoke-virtual {v6}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    .line 220
    .local v6, "pkcs1PubKey":Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->this$0:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;

    .line 221
    invoke-virtual {v8}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->getVersion()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    .line 222
    invoke-virtual {v7, v6}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    .line 223
    invoke-interface {v5}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setD(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    .line 224
    invoke-interface {v5}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setP(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    .line 225
    invoke-interface {v5}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setQ(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    .line 226
    invoke-interface {v5}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setDp(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    .line 227
    invoke-interface {v5}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setDq(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    .line 228
    invoke-interface {v5}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setCrt(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v7

    .line 229
    invoke-virtual {v7}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v7

    check-cast v7, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    .line 220
    return-object v7
.end method

.method public bridge synthetic createKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    check-cast p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->createKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public deriveKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;
    .locals 1
    .param p1, "format"    # Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "inputStream"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic deriveKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "format",
            "inputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    check-cast p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->deriveKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public keyFormats()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat<",
            "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;",
            ">;>;"
        }
    .end annotation

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat<Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;>;>;"
    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS256:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 242
    const/16 v4, 0x800

    invoke-static {v1, v4, v2, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;ILjava/math/BigInteger;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 240
    const-string v2, "JWT_RS256_2048_F4_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS256:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 249
    invoke-static {v1, v4, v2, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;ILjava/math/BigInteger;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 247
    const-string v2, "JWT_RS256_2048_F4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS256:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 256
    const/16 v4, 0xc00

    invoke-static {v1, v4, v2, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;ILjava/math/BigInteger;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 254
    const-string v2, "JWT_RS256_3072_F4_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS256:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 263
    invoke-static {v1, v4, v2, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;ILjava/math/BigInteger;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 261
    const-string v2, "JWT_RS256_3072_F4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS384:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 270
    invoke-static {v1, v4, v2, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;ILjava/math/BigInteger;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 268
    const-string v2, "JWT_RS384_3072_F4_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS384:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 277
    invoke-static {v1, v4, v2, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;ILjava/math/BigInteger;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 275
    const-string v2, "JWT_RS384_3072_F4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS512:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 284
    const/16 v4, 0x1000

    invoke-static {v1, v4, v2, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;ILjava/math/BigInteger;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 282
    const-string v2, "JWT_RS512_4096_F4_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS512:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 291
    invoke-static {v1, v4, v2, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->access$200(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;ILjava/math/BigInteger;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 289
    const-string v2, "JWT_RS512_4096_F4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;
    .locals 1
    .param p1, "byteString"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 188
    nop

    .line 189
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 188
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "byteString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;)V
    .locals 3
    .param p1, "keyFormat"    # Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 180
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getModulusSizeInBits()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    .line 181
    new-instance v0, Ljava/math/BigInteger;

    .line 182
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getPublicExponent()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 181
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    .line 183
    return-void
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "keyFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    check-cast p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;->validateKeyFormat(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;)V

    return-void
.end method
