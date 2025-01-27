.class Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;
.super Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
.source "JwtEcdsaSignKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->keyFactory()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;",
        "Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;
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

    .line 153
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;>;"
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;->this$0:Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;)Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey;
    .locals 8
    .param p1, "format"    # Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;
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

    .line 173
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    move-result-object v0

    .line 174
    .local v0, "ecdsaAlgorithm":Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;
    nop

    .line 176
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager;->getCurve(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;)Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->generateKeyPair(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/KeyPair;

    move-result-object v1

    .line 177
    .local v1, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/ECPublicKey;

    .line 178
    .local v2, "pubKey":Ljava/security/interfaces/ECPublicKey;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPrivateKey;

    .line 179
    .local v3, "privKey":Ljava/security/interfaces/ECPrivateKey;
    invoke-interface {v2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 182
    .local v4, "w":Ljava/security/spec/ECPoint;
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;->this$0:Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;

    .line 183
    invoke-virtual {v6}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v5

    .line 184
    invoke-virtual {v5, v0}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setAlgorithm(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v5

    .line 185
    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setX(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v5

    .line 186
    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->setY(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;

    .line 189
    .local v5, "ecdsaPubKey":Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;->this$0:Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;

    .line 190
    invoke-virtual {v7}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey$Builder;

    move-result-object v6

    .line 191
    invoke-virtual {v6, v5}, Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/proto/JwtEcdsaPublicKey;)Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey$Builder;

    move-result-object v6

    .line 192
    invoke-interface {v3}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey$Builder;

    move-result-object v6

    .line 193
    invoke-virtual {v6}, Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v6

    check-cast v6, Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey;

    .line 189
    return-object v6
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

    .line 153
    check-cast p1, Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;->createKey(Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;)Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public deriveKey(Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey;
    .locals 1
    .param p1, "format"    # Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;
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

    .line 167
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

    .line 153
    check-cast p1, Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;->deriveKey(Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/JwtEcdsaPrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public keyFormats()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat<",
            "Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;",
            ">;>;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat<Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;>;>;"
    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES256:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    sget-object v2, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 206
    invoke-static {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->access$000(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 204
    const-string v2, "JWT_ES256_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES256:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    sget-object v2, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 209
    invoke-static {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->access$000(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 207
    const-string v2, "JWT_ES256"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES384:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    sget-object v2, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 212
    invoke-static {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->access$000(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 210
    const-string v2, "JWT_ES384_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES384:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    sget-object v2, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 215
    invoke-static {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->access$000(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 213
    const-string v2, "JWT_ES384"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES512:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    sget-object v2, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 218
    invoke-static {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->access$000(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 216
    const-string v2, "JWT_ES512_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v1, Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;->ES512:Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    sget-object v2, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 221
    invoke-static {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager;->access$000(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v1

    .line 219
    const-string v2, "JWT_ES512"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;
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

    .line 162
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;

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

    .line 153
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;)V
    .locals 1
    .param p1, "format"    # Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;
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

    .line 156
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaVerifyKeyManager;->validateEcdsaAlgorithm(Lcom/google/crypto/tink/proto/JwtEcdsaAlgorithm;)V

    .line 157
    return-void
.end method

.method public bridge synthetic validateKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
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

    .line 153
    check-cast p1, Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtEcdsaSignKeyManager$1;->validateKeyFormat(Lcom/google/crypto/tink/proto/JwtEcdsaKeyFormat;)V

    return-void
.end method
