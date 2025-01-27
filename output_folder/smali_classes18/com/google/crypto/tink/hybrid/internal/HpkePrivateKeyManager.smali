.class public final Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;
.super Lcom/google/crypto/tink/internal/PrivateKeyTypeManager;
.source "HpkePrivateKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/PrivateKeyTypeManager<",
        "Lcom/google/crypto/tink/proto/HpkePrivateKey;",
        "Lcom/google/crypto/tink/proto/HpkePublicKey;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 54
    const-class v0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    const-class v1, Lcom/google/crypto/tink/proto/HpkePublicKey;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/crypto/tink/internal/PrimitiveFactory;

    new-instance v3, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager$1;

    const-class v4, Lcom/google/crypto/tink/HybridDecrypt;

    invoke-direct {v3, v4}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager$1;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/crypto/tink/internal/PrivateKeyTypeManager;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lcom/google/crypto/tink/internal/PrimitiveFactory;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/proto/HpkeKem;Lcom/google/crypto/tink/proto/HpkeKdf;Lcom/google/crypto/tink/proto/HpkeAead;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/proto/HpkeKem;
    .param p1, "x1"    # Lcom/google/crypto/tink/proto/HpkeKdf;
    .param p2, "x2"    # Lcom/google/crypto/tink/proto/HpkeAead;
    .param p3, "x3"    # Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->createKeyFormat(Lcom/google/crypto/tink/proto/HpkeKem;Lcom/google/crypto/tink/proto/HpkeKdf;Lcom/google/crypto/tink/proto/HpkeAead;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    move-result-object v0

    return-object v0
.end method

.method private static createKeyFormat(Lcom/google/crypto/tink/proto/HpkeKem;Lcom/google/crypto/tink/proto/HpkeKdf;Lcom/google/crypto/tink/proto/HpkeAead;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;
    .locals 3
    .param p0, "kem"    # Lcom/google/crypto/tink/proto/HpkeKem;
    .param p1, "kdf"    # Lcom/google/crypto/tink/proto/HpkeKdf;
    .param p2, "aead"    # Lcom/google/crypto/tink/proto/HpkeAead;
    .param p3, "prefixType"    # Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "kem",
            "kdf",
            "aead",
            "prefixType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/proto/HpkeKem;",
            "Lcom/google/crypto/tink/proto/HpkeKdf;",
            "Lcom/google/crypto/tink/proto/HpkeAead;",
            "Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;",
            ")",
            "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat<",
            "Lcom/google/crypto/tink/proto/HpkeKeyFormat;",
            ">;"
        }
    .end annotation

    .line 303
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkeParams;->newBuilder()Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->setKem(Lcom/google/crypto/tink/proto/HpkeKem;)Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->setKdf(Lcom/google/crypto/tink/proto/HpkeKdf;)Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->setAead(Lcom/google/crypto/tink/proto/HpkeAead;)Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/HpkeParams;

    .line 304
    .local v0, "params":Lcom/google/crypto/tink/proto/HpkeParams;
    new-instance v1, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    .line 305
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-direct {v1, v2, p3}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;-><init>(Ljava/lang/Object;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 304
    return-object v1
.end method

.method public static registerPair(Z)V
    .locals 2
    .param p0, "newKeyAllowed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;-><init>()V

    new-instance v1, Lcom/google/crypto/tink/hybrid/internal/HpkePublicKeyManager;

    invoke-direct {v1}, Lcom/google/crypto/tink/hybrid/internal/HpkePublicKeyManager;-><init>()V

    invoke-static {v0, v1, p0}, Lcom/google/crypto/tink/Registry;->registerAsymmetricKeyManagers(Lcom/google/crypto/tink/internal/PrivateKeyTypeManager;Lcom/google/crypto/tink/internal/KeyTypeManager;Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 77
    const-string/jumbo v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    return-object v0
.end method

.method public getPublicKey(Lcom/google/crypto/tink/proto/HpkePrivateKey;)Lcom/google/crypto/tink/proto/HpkePublicKey;
    .locals 1
    .param p1, "key"    # Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 87
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublicKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    check-cast p1, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->getPublicKey(Lcom/google/crypto/tink/proto/HpkePrivateKey;)Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()I
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public keyFactory()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory<",
            "Lcom/google/crypto/tink/proto/HpkeKeyFormat;",
            "Lcom/google/crypto/tink/proto/HpkePrivateKey;",
            ">;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager$2;

    const-class v1, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager$2;-><init>(Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;Ljava/lang/Class;)V

    return-object v0
.end method

.method public keyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;
    .locals 1

    .line 92
    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    return-object v0
.end method

.method public parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
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

    .line 97
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
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

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->parseKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HpkePrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public validateKey(Lcom/google/crypto/tink/proto/HpkePrivateKey;)V
    .locals 2
    .param p1, "key"    # Lcom/google/crypto/tink/proto/HpkePrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getPrivateKey()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->hasPublicKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getVersion()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Validators;->validateVersion(II)V

    .line 109
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getParams()Lcom/google/crypto/tink/proto/HpkeParams;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->validateParams(Lcom/google/crypto/tink/proto/HpkeParams;)V

    .line 110
    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Missing public key."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Private key is empty."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic validateKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    check-cast p1, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->validateKey(Lcom/google/crypto/tink/proto/HpkePrivateKey;)V

    return-void
.end method
