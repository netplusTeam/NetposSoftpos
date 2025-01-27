.class public Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;
.super Lorg/apache/sshd/client/auth/AbstractUserAuth;
.source "UserAuthPublicKey.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# static fields
.field public static final NAME:Ljava/lang/String; = "publickey"


# instance fields
.field protected current:Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

.field protected factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected keys:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;-><init>(Ljava/util/List;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 57
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    const-string v0, "publickey"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->factories:Ljava/util/List;

    .line 59
    return-void
.end method


# virtual methods
.method protected appendSignature(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 21
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "algo"    # Ljava/lang/String;
    .param p6, "key"    # Ljava/security/PublicKey;
    .param p7, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getSessionId()[B

    move-result-object v6

    .line 213
    .local v6, "id":[B
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    array-length v7, v6

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    .line 214
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x100

    add-int/lit8 v7, v7, 0x40

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    move-object v7, v0

    .line 215
    .local v7, "bs":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v7, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 216
    const/16 v0, 0x32

    invoke-virtual {v7, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 217
    move-object/from16 v9, p4

    invoke-virtual {v7, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v7, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v7, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 220
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 221
    invoke-virtual {v7, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 222
    move-object/from16 v11, p6

    invoke-virtual {v7, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putPublicKey(Ljava/security/PublicKey;)V

    .line 224
    invoke-virtual {v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v12

    .line 227
    .local v12, "contents":[B
    :try_start_0
    iget-object v0, v1, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->current:Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

    invoke-interface {v0, v2, v12}, Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;->sign(Lorg/apache/sshd/common/session/SessionContext;[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v0, "sig":[B
    nop

    .line 238
    iget-object v13, v1, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v13}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 239
    iget-object v13, v1, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v14, 0x6

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v2, v15, v8

    aput-object v3, v15, v10

    const/16 v19, 0x2

    aput-object v4, v15, v19

    const/16 v18, 0x3

    aput-object v5, v15, v18

    .line 240
    invoke-static/range {p6 .. p6}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v20

    const/16 v16, 0x4

    aput-object v20, v15, v16

    invoke-static {v12}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v20

    const/16 v17, 0x5

    aput-object v20, v15, v17

    .line 239
    const-string v10, "appendSignature({})[{}] name={}, key type={}, fingerprint={} - verification data={}"

    invoke-interface {v13, v10, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v10, v1, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v2, v13, v8

    const/4 v8, 0x1

    aput-object v3, v13, v8

    const/4 v8, 0x2

    aput-object v4, v13, v8

    const/4 v8, 0x3

    aput-object v5, v13, v8

    .line 242
    invoke-static/range {p6 .. p6}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x4

    aput-object v8, v13, v14

    invoke-static {v0}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v8

    const/4 v14, 0x5

    aput-object v8, v13, v14

    .line 241
    const-string v8, "appendSignature({})[{}] name={}, key type={}, fingerprint={} - generated signature={}"

    invoke-interface {v10, v8, v13}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :cond_0
    invoke-virtual {v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 246
    invoke-virtual {v7, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v7, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 248
    invoke-virtual {v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v10

    invoke-virtual {v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v13

    move-object/from16 v14, p7

    invoke-virtual {v14, v8, v10, v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([BII)V

    .line 249
    return-void

    .line 228
    .end local v0    # "sig":[B
    :catch_0
    move-exception v0

    move-object/from16 v14, p7

    .line 229
    .local v0, "e":Ljava/lang/Error;
    iget-object v10, v1, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v2, v13, v8

    const/4 v8, 0x1

    aput-object v3, v13, v8

    const/4 v8, 0x2

    aput-object v4, v13, v8

    .line 230
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x3

    aput-object v8, v13, v15

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x4

    aput-object v8, v13, v15

    .line 229
    const-string v8, "appendSignature({})[{}][{}] failed ({}) to sign contents: {}"

    invoke-interface {v10, v8, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v8, v1, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 232
    iget-object v8, v1, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appendSignature("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ")["

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "]["

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "] signing failure details"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :cond_1
    new-instance v8, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v8, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public destroy()V
    .locals 4

    .line 254
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->releaseKeys()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    nop

    .line 259
    invoke-super {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->destroy()V

    .line 260
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to close agent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSignatureFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->factories:Ljava/util/List;

    return-object v0
.end method

.method public init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->releaseKeys()V

    .line 77
    :try_start_0
    new-instance v0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;-><init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)V

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->keys:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .line 87
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 79
    const-string v3, "init({})[{}] failed ({}) to initialize session keys: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] session keys initialization failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected processAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 20
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->getName()Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "name":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v13

    .line 151
    .local v13, "cmd":I
    const-string v1, "]["

    const-string v2, ")["

    const-string v3, "processAuthDataRequest("

    const/16 v0, 0x3c

    if-ne v13, v0, :cond_4

    .line 161
    iget-object v0, v9, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v14

    .line 163
    .local v14, "debugEnabled":Z
    const/4 v7, 0x0

    const/4 v8, 0x5

    :try_start_0
    iget-object v0, v9, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->current:Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

    invoke-interface {v0}, Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .local v0, "key":Ljava/security/PublicKey;
    nop

    .line 174
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "algo":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "rspKeyType":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const-string v6, ", actual="

    if-eqz v18, :cond_2

    .line 181
    invoke-virtual/range {p3 .. p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    .line 182
    .local v15, "rspKey":Ljava/security/PublicKey;
    invoke-static {v15, v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 187
    if-eqz v14, :cond_0

    .line 188
    iget-object v1, v9, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v10, v2, v7

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    const/4 v3, 0x3

    aput-object v5, v2, v3

    .line 189
    invoke-static {v15}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    aput-object v3, v2, v6

    .line 188
    const-string v3, "processAuthDataRequest({})[{}][{}] SSH_MSG_USERAUTH_PK_OK type={}, fingerprint={}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getUsername()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "username":Ljava/lang/String;
    const/16 v1, 0x32

    .line 194
    invoke-static {v8}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static/range {p2 .. p2}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    .line 195
    invoke-static {v12}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x100

    add-int/lit8 v2, v2, 0x40

    .line 193
    invoke-interface {v10, v1, v2}, Lorg/apache/sshd/client/session/ClientSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v7

    .line 197
    .end local p3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v7, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v7, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v7, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v7, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 201
    invoke-virtual {v7, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v7, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putPublicKey(Ljava/security/PublicKey;)V

    .line 203
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v16, v4

    .end local v4    # "algo":Ljava/lang/String;
    .local v16, "algo":Ljava/lang/String;
    move-object v4, v12

    move-object v6, v5

    .end local v5    # "rspKeyType":Ljava/lang/String;
    .local v6, "rspKeyType":Ljava/lang/String;
    move-object v5, v8

    move/from16 v19, v13

    move-object v13, v6

    .end local v6    # "rspKeyType":Ljava/lang/String;
    .local v13, "rspKeyType":Ljava/lang/String;
    .local v19, "cmd":I
    move-object/from16 v6, v16

    move-object/from16 p3, v7

    .end local v7    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    move-object v7, v0

    move-object/from16 v17, v8

    .end local v8    # "username":Ljava/lang/String;
    .local v17, "username":Ljava/lang/String;
    move-object/from16 v8, p3

    invoke-virtual/range {v1 .. v8}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->appendSignature(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 205
    move-object/from16 v1, p3

    .end local p3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-interface {v10, v1}, Lorg/apache/sshd/client/session/ClientSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 206
    const/4 v2, 0x1

    return v2

    .line 183
    .end local v1    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v16    # "algo":Ljava/lang/String;
    .end local v17    # "username":Ljava/lang/String;
    .end local v19    # "cmd":I
    .restart local v4    # "algo":Ljava/lang/String;
    .restart local v5    # "rspKeyType":Ljava/lang/String;
    .local v13, "cmd":I
    .restart local p3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_1
    move-object/from16 v16, v4

    move/from16 v19, v13

    move-object v13, v5

    .end local v4    # "algo":Ljava/lang/String;
    .end local v5    # "rspKeyType":Ljava/lang/String;
    .local v13, "rspKeyType":Ljava/lang/String;
    .restart local v16    # "algo":Ljava/lang/String;
    .restart local v19    # "cmd":I
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mismatched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v16

    .end local v16    # "algo":Ljava/lang/String;
    .local v5, "algo":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " keys: expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 184
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v15}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    .end local v15    # "rspKey":Ljava/security/PublicKey;
    .end local v19    # "cmd":I
    .restart local v4    # "algo":Ljava/lang/String;
    .local v5, "rspKeyType":Ljava/lang/String;
    .local v13, "cmd":I
    :cond_2
    move/from16 v19, v13

    move-object v13, v5

    move-object v5, v4

    .end local v4    # "algo":Ljava/lang/String;
    .local v5, "algo":Ljava/lang/String;
    .local v13, "rspKeyType":Ljava/lang/String;
    .restart local v19    # "cmd":I
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mismatched key types: expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    .end local v0    # "key":Ljava/security/PublicKey;
    .end local v5    # "algo":Ljava/lang/String;
    .end local v19    # "cmd":I
    .local v13, "cmd":I
    :catch_0
    move-exception v0

    move/from16 v19, v13

    .line 165
    .end local v13    # "cmd":I
    .local v0, "e":Ljava/lang/Error;
    .restart local v19    # "cmd":I
    iget-object v4, v9, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v10, v5, v7

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    aput-object v12, v5, v6

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 165
    const-string v6, "processAuthDataRequest({})[{}][{}] failed ({}) to retrieve public key: {}"

    invoke-interface {v4, v6, v5}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    if-eqz v14, :cond_3

    .line 168
    iget-object v4, v9, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] public key retrieval failure details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    :cond_3
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 152
    .end local v0    # "e":Ljava/lang/Error;
    .end local v14    # "debugEnabled":Z
    .end local v19    # "cmd":I
    .restart local v13    # "cmd":I
    :cond_4
    move/from16 v19, v13

    .end local v13    # "cmd":I
    .restart local v19    # "cmd":I
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] received unknown packet: cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    invoke-static/range {v19 .. v19}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected releaseKeys()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->keys:Ljava/util/Iterator;

    instance-of v1, v1, Ljava/io/Closeable;

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const-string v2, "releaseKeys({}) closing {}"

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->keys:Ljava/util/Iterator;

    invoke-interface {v1, v2, v3, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->keys:Ljava/util/Iterator;

    check-cast v1, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_1
    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->keys:Ljava/util/Iterator;

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->keys:Ljava/util/Iterator;

    .line 272
    throw v1
.end method

.method protected sendAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)Z
    .locals 11
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    const-string v0, ")["

    const-string v1, "sendAuthDataRequest("

    iget-object v2, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 93
    .local v2, "debugEnabled":Z
    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->keys:Ljava/util/Iterator;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    goto/16 :goto_0

    .line 101
    :cond_0
    iget-object v8, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->keys:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

    iput-object v8, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->current:Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    nop

    .line 112
    iget-object v8, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    invoke-interface {v8}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 113
    iget-object v8, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-array v9, v4, [Ljava/lang/Object;

    aput-object p1, v9, v7

    aput-object p2, v9, v6

    iget-object v10, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->current:Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

    aput-object v10, v9, v5

    const-string v10, "sendAuthDataRequest({})[{}] current key details: {}"

    invoke-interface {v8, v10, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_1
    :try_start_1
    iget-object v8, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->current:Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

    invoke-interface {v8}, Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .local v0, "key":Ljava/security/PublicKey;
    nop

    .line 129
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "algo":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->getName()Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 132
    iget-object v9, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v7

    aput-object p2, v10, v6

    aput-object v8, v10, v5

    aput-object v1, v10, v4

    .line 133
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    .line 132
    const-string v3, "sendAuthDataRequest({})[{}] send SSH_MSG_USERAUTH_REQUEST request {} type={} - fingerprint={}"

    invoke-interface {v9, v3, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_2
    const/16 v3, 0x32

    invoke-interface {p1, v3}, Lorg/apache/sshd/client/session/ClientSession;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 137
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-interface {p1}, Lorg/apache/sshd/client/session/ClientSession;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v3, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 141
    invoke-virtual {v3, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putPublicKey(Ljava/security/PublicKey;)V

    .line 143
    invoke-interface {p1, v3}, Lorg/apache/sshd/client/session/ClientSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 144
    return v6

    .line 119
    .end local v0    # "key":Ljava/security/PublicKey;
    .end local v1    # "algo":Ljava/lang/String;
    .end local v3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v8    # "name":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 120
    .local v8, "e":Ljava/lang/Error;
    iget-object v9, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    aput-object p2, v3, v6

    .line 121
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v8}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 120
    const-string v4, "sendAuthDataRequest({})[{}] failed ({}) to retrieve public key: {}"

    invoke-interface {v9, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    if-eqz v2, :cond_3

    .line 123
    iget-object v3, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] public key retrieval failure details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_3
    new-instance v0, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v0, v8}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 94
    .end local v8    # "e":Ljava/lang/Error;
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 95
    :try_start_2
    iget-object v8, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    const-string v9, "sendAuthDataRequest({})[{}] no more keys to send"

    invoke-interface {v8, v9, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 98
    :cond_5
    return v7

    .line 102
    :catch_1
    move-exception v8

    .line 103
    .restart local v8    # "e":Ljava/lang/Error;
    iget-object v9, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v7

    aput-object p2, v3, v6

    .line 104
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v8}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 103
    const-string v4, "sendAuthDataRequest({})[{}] failed ({}) to get next key: {}"

    invoke-interface {v9, v4, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    if-eqz v2, :cond_6

    .line 106
    iget-object v3, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] next key fetch failure details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    :cond_6
    new-instance v0, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v0, v8}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSignatureFactories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;)V"
        }
    .end annotation

    .line 68
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKey;->factories:Ljava/util/List;

    .line 69
    return-void
.end method
