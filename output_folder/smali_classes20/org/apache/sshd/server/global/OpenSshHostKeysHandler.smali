.class public Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;
.super Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;
.source "OpenSshHostKeysHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;

.field public static final REQUEST:Ljava/lang/String; = "hostkeys-prove-00@openssh.com"


# instance fields
.field private factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/signature/Signature;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler$1;

    invoke-direct {v0}, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->INSTANCE:Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    const-string v0, "hostkeys-prove-00@openssh.com"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
            "+",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p1, "parser":Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;, "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<+Ljava/security/PublicKey;>;"
    const-string v0, "hostkeys-prove-00@openssh.com"

    invoke-direct {p0, v0, p1}, Lorg/apache/sshd/common/global/AbstractOpenSshHostKeysHandler;-><init>(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;)V

    .line 75
    return-void
.end method


# virtual methods
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

    .line 79
    iget-object v0, p0, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->factories:Ljava/util/List;

    return-object v0
.end method

.method protected handleHostKeys(Lorg/apache/sshd/common/session/Session;Ljava/util/Collection;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 16
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/Session;",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/PublicKey;",
            ">;Z",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")",
            "Lorg/apache/sshd/common/channel/RequestHandler$Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    .local p2, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/PublicKey;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "No reply required for host keys of %s"

    move/from16 v3, p3

    invoke-static {v3, v0, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 93
    nop

    .line 95
    invoke-static/range {p0 .. p1}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->resolveSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 94
    const-string v7, "No signature factories available for host keys of session=%s"

    invoke-static {v0, v7, v5}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    .line 98
    .local v5, "factories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iget-object v0, v1, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, v1, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v2, v10, v6

    .line 100
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static/range {p2 .. p2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v5}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 99
    const-string v11, "handleHostKeys({})[want-reply={}] received {} keys - factories={}"

    invoke-interface {v0, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_0
    const/16 v0, 0x51

    invoke-interface {v2, v0}, Lorg/apache/sshd/common/session/Session;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v10

    .line 106
    .end local p4    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v10, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    move-object v11, v0

    .line 107
    .local v11, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/common/session/Session;->getSessionId()[B

    move-result-object v12

    .line 108
    .local v12, "sessionId":[B
    move-object v0, v2

    check-cast v0, Lorg/apache/sshd/server/session/ServerSession;

    .line 109
    invoke-interface {v0}, Lorg/apache/sshd/server/session/ServerSession;->getKeyPairProvider()Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v0

    .line 108
    const-string v13, "No server keys provider"

    invoke-static {v0, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    .line 110
    .local v13, "kpp":Lorg/apache/sshd/common/keyprovider/KeyPairProvider;
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/PublicKey;

    .line 111
    .local v14, "k":Ljava/security/PublicKey;
    invoke-static {v14}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v15

    .line 112
    .local v15, "keyType":Ljava/lang/String;
    nop

    .line 113
    invoke-static {v5, v15}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 112
    const-string v8, "No signer could be located for key type=%s"

    invoke-static {v7, v8, v15}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/common/signature/Signature;

    .line 119
    .local v7, "verifier":Lorg/apache/sshd/common/signature/Signature;
    :try_start_0
    invoke-interface {v13, v2, v15}, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->loadKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v8

    const-string v4, "No key of type=%s available"

    invoke-static {v8, v4, v15}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .local v4, "kp":Ljava/security/KeyPair;
    nop

    .line 129
    invoke-virtual {v4}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lorg/apache/sshd/common/signature/Signature;->initSigner(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PrivateKey;)V

    .line 131
    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 132
    const-string v8, "hostkeys-prove-00@openssh.com"

    invoke-virtual {v11, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v11, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 134
    invoke-virtual {v11, v14}, Lorg/apache/sshd/common/util/buffer/Buffer;->putPublicKey(Ljava/security/PublicKey;)V

    .line 136
    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v8

    .line 137
    .local v8, "data":[B
    invoke-interface {v7, v2, v8}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[B)V

    .line 139
    invoke-interface {v7, v2}, Lorg/apache/sshd/common/signature/Signature;->sign(Lorg/apache/sshd/common/session/SessionContext;)[B

    move-result-object v6

    .line 140
    .local v6, "signature":[B
    invoke-virtual {v10, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 141
    .end local v4    # "kp":Ljava/security/KeyPair;
    .end local v6    # "signature":[B
    .end local v7    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .end local v8    # "data":[B
    .end local v14    # "k":Ljava/security/PublicKey;
    .end local v15    # "keyType":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto :goto_0

    .line 120
    .restart local v7    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .restart local v14    # "k":Ljava/security/PublicKey;
    .restart local v15    # "keyType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Error;
    iget-object v4, v1, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v6, v8

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    const/4 v8, 0x2

    aput-object v15, v6, v8

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v6, v9

    .line 121
    const-string v8, "handleHostKeys({}) failed ({}) to load key of type={}: {}"

    invoke-interface {v4, v8, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v4, v1, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 124
    iget-object v4, v1, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleHostKey("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ") "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " key load failure details"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    :cond_1
    new-instance v4, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v4, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 143
    .end local v0    # "e":Ljava/lang/Error;
    .end local v7    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .end local v14    # "k":Ljava/security/PublicKey;
    .end local v15    # "keyType":Ljava/lang/String;
    :cond_2
    invoke-interface {v2, v10}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 144
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Replied:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0
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

    .line 84
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/server/global/OpenSshHostKeysHandler;->factories:Ljava/util/List;

    .line 85
    return-void
.end method
