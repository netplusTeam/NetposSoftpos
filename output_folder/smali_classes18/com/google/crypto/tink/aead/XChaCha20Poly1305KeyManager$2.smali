.class Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;
.super Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
.source "XChaCha20Poly1305KeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->keyFactory()Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory<",
        "Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;",
        "Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;
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

    .line 90
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;>;"
    iput-object p1, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->this$0:Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;

    invoke-direct {p0, p2}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createKey(Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;
    .locals 2
    .param p1, "format"    # Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;
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

    .line 105
    invoke-static {}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;->newBuilder()Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->this$0:Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;

    .line 106
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;

    move-result-object v0

    .line 107
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;

    .line 105
    return-object v0
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

    .line 90
    check-cast p1, Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->createKey(Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;

    move-result-object p1

    return-object p1
.end method

.method public deriveKey(Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;
    .locals 4
    .param p1, "format"    # Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;->getVersion()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->this$0:Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Validators;->validateVersion(II)V

    .line 117
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 119
    .local v0, "pseudorandomness":[B
    :try_start_0
    invoke-static {p2, v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->readFully(Ljava/io/InputStream;[B)V

    .line 120
    invoke-static {}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;->newBuilder()Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;

    move-result-object v1

    .line 121
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->this$0:Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;

    .line 122
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object v1

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Reading pseudorandomness failed"

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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

    .line 90
    check-cast p1, Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->deriveKey(Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;

    move-result-object p1

    return-object p1
.end method

.method public keyFormats()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat<",
            "Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat<Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;>;>;"
    new-instance v1, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    .line 136
    invoke-static {}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;->getDefaultInstance()Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->TINK:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    invoke-direct {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;-><init>(Ljava/lang/Object;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 133
    const-string v2, "XCHACHA20_POLY1305"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v1, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;

    .line 141
    invoke-static {}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;->getDefaultInstance()Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;->RAW:Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    invoke-direct {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeyTypeManager$KeyFactory$KeyFormat;-><init>(Ljava/lang/Object;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 138
    const-string v2, "XCHACHA20_POLY1305_RAW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;
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

    .line 98
    nop

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 98
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;

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

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->parseKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;

    move-result-object p1

    return-object p1
.end method

.method public validateKeyFormat(Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;)V
    .locals 0
    .param p1, "format"    # Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;
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

    .line 93
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

    .line 90
    check-cast p1, Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$2;->validateKeyFormat(Lcom/google/crypto/tink/proto/XChaCha20Poly1305KeyFormat;)V

    return-void
.end method
