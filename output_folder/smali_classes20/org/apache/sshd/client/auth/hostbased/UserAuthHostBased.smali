.class public Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;
.super Lorg/apache/sshd/client/auth/AbstractUserAuth;
.source "UserAuthHostBased.java"

# interfaces
.implements Lorg/apache/sshd/common/signature/SignatureFactoriesManager;


# static fields
.field public static final NAME:Ljava/lang/String; = "hostbased"


# instance fields
.field private final clientHostKeys:Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

.field private clientHostname:Ljava/lang/String;

.field private clientUsername:Ljava/lang/String;

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

.field private keys:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/KeyPair;",
            "+",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;)V
    .locals 1
    .param p1, "clientHostKeys"    # Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    .line 58
    const-string v0, "hostbased"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->clientHostKeys:Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    .line 60
    return-void
.end method


# virtual methods
.method protected appendSignature(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;[BLjava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/signature/Signature;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 17
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "keyType"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/security/PublicKey;
    .param p5, "keyBytes"    # [B
    .param p6, "clientHostname"    # Ljava/lang/String;
    .param p7, "clientUsername"    # Ljava/lang/String;
    .param p8, "verifier"    # Lorg/apache/sshd/common/signature/Signature;
    .param p9, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getSessionId()[B

    move-result-object v8

    .line 174
    .local v8, "id":[B
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getUsername()Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, "username":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->getName()Ljava/lang/String;

    move-result-object v10

    .line 176
    .local v10, "name":Ljava/lang/String;
    new-instance v11, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    array-length v12, v8

    .line 177
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    .line 178
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    array-length v13, v4

    add-int/2addr v12, v13

    .line 179
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x100

    add-int/lit8 v12, v12, 0x40

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 181
    .local v11, "bs":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v11, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 182
    const/16 v12, 0x32

    invoke-virtual {v11, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 183
    invoke-virtual {v11, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v11, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v11, v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v11, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v11, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 188
    invoke-virtual {v11, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v11, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v12

    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v14

    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v15

    invoke-interface {v7, v1, v12, v14, v15}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[BII)V

    .line 192
    invoke-interface {v7, v1}, Lorg/apache/sshd/common/signature/Signature;->sign(Lorg/apache/sshd/common/session/SessionContext;)[B

    move-result-object v12

    .line 193
    .local v12, "signature":[B
    iget-object v14, v0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    invoke-interface {v14}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 194
    iget-object v14, v0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v1, v15, v13

    const/4 v13, 0x1

    aput-object v2, v15, v13

    const/4 v13, 0x2

    aput-object v10, v15, v13

    const/4 v13, 0x3

    aput-object v3, v15, v13

    const/4 v13, 0x4

    .line 195
    invoke-static/range {p4 .. p4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    const/4 v13, 0x5

    aput-object v6, v15, v13

    const/4 v13, 0x6

    aput-object v5, v15, v13

    const/4 v13, 0x7

    .line 196
    invoke-static {v12}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v13

    .line 194
    const-string v13, "appendSignature({})[{}][{}] type={}, fingerprint={}, client={}@{}: signature={}"

    invoke-interface {v14, v13, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_0
    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 201
    invoke-virtual {v11, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v11, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 203
    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v13

    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v14

    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v15

    move-object/from16 v0, p9

    invoke-virtual {v0, v13, v14, v15}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([BII)V

    .line 204
    return-void
.end method

.method public getClientHostname()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->clientHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUsername()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->clientUsername:Ljava/lang/String;

    return-object v0
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

    .line 70
    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->factories:Ljava/util/List;

    return-object v0
.end method

.method public init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->clientHostKeys:Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;

    invoke-static {v0}, Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;->iteratorOf(Lorg/apache/sshd/client/auth/hostbased/HostKeyIdentityProvider;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->keys:Ljava/util/Iterator;

    .line 66
    return-void
.end method

.method protected processAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-virtual {p3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v0

    .line 211
    .local v0, "cmd":I
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processAuthDataRequest("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] received unknown packet: cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 212
    invoke-static {v0}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected resolveClientHostname()Ljava/lang/String;
    .locals 2

    .line 221
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->getClientHostname()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-static {}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->getFirstExternalNetwork4Address()Ljava/net/InetAddress;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lorg/apache/sshd/common/util/net/SshdSocketAddress;->toAddressString(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "127.0.0.1"

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected resolveClientUsername()Ljava/lang/String;
    .locals 2

    .line 216
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->getClientUsername()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected sendAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)Z
    .locals 28
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->getName()Ljava/lang/String;

    move-result-object v13

    .line 97
    .local v13, "name":Ljava/lang/String;
    iget-object v0, v10, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v14

    .line 98
    .local v14, "debugEnabled":Z
    iget-object v0, v10, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->keys:Ljava/util/Iterator;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v15, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v15

    goto/16 :goto_1

    .line 106
    :cond_0
    iget-object v0, v10, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->keys:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/Map$Entry;

    .line 107
    .local v16, "keyInfo":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/KeyPair;+Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/security/KeyPair;

    .line 108
    .local v17, "kp":Ljava/security/KeyPair;
    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v9

    .line 109
    .local v9, "pub":Ljava/security/PublicKey;
    invoke-static {v9}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, "keyType":Ljava/lang/String;
    iget-object v0, v10, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, v10, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v11, v6, v3

    aput-object v12, v6, v15

    aput-object v13, v6, v1

    aput-object v8, v6, v2

    .line 112
    invoke-static {v9}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 111
    const-string v7, "sendAuthDataRequest({})[{}][{}] current key details: type={}, fingerprint={}"

    invoke-interface {v0, v7, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_1
    nop

    .line 117
    invoke-static/range {p0 .. p1}, Lorg/apache/sshd/common/signature/SignatureFactoriesManager;->resolveSignatureFactories(Lorg/apache/sshd/common/signature/SignatureFactoriesManager;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/util/List;

    move-result-object v0

    new-array v6, v15, [Ljava/lang/Object;

    aput-object v11, v6, v3

    .line 116
    const-string v7, "No signature factories for session=%s"

    invoke-static {v0, v7, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v7

    .line 120
    .local v7, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    nop

    .line 121
    invoke-static {v7, v8}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    const-string v6, "No signer could be located for key type=%s"

    invoke-static {v0, v6, v8}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/sshd/common/signature/Signature;

    .line 125
    .local v6, "verifier":Lorg/apache/sshd/common/signature/Signature;
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getSessionId()[B

    move-result-object v0

    .line 126
    .local v0, "id":[B
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/client/session/ClientSession;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "username":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->resolveClientUsername()Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "clientUsername":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->resolveClientHostname()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "clientHostname":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 130
    iget-object v15, v10, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v3

    const/4 v3, 0x1

    aput-object v12, v5, v3

    const/4 v3, 0x2

    aput-object v13, v5, v3

    const/4 v3, 0x3

    aput-object v2, v5, v3

    const/4 v3, 0x4

    aput-object v1, v5, v3

    const-string v3, "sendAuthDataRequest({})[{}][{}] client={}@{}"

    invoke-interface {v15, v3, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_2
    array-length v3, v0

    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 137
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit16 v3, v3, 0x100

    add-int/lit8 v3, v3, 0x40

    .line 134
    const/16 v5, 0x32

    invoke-interface {v11, v5, v3}, Lorg/apache/sshd/client/session/ClientSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 138
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 140
    invoke-virtual {v3, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawPublicKey(Ljava/security/PublicKey;)V

    .line 142
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    .line 143
    .local v15, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    invoke-static {v15}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v18

    if-lez v18, :cond_3

    .line 144
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/security/cert/X509Certificate;

    .line 146
    .local v19, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([B)V

    .line 147
    .end local v19    # "c":Ljava/security/cert/X509Certificate;
    const/16 v5, 0x32

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v5

    invoke-interface {v6, v11, v5}, Lorg/apache/sshd/common/signature/Signature;->initSigner(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PrivateKey;)V

    .line 151
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v5

    .line 152
    .local v5, "keyBytes":[B
    nop

    .line 153
    move-object/from16 v18, v0

    .end local v0    # "id":[B
    .local v18, "id":[B
    invoke-static {v3}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->clear(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 152
    move-object/from16 v19, v3

    const/16 v3, 0x32

    .end local v3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v19, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-interface {v11, v3, v0}, Lorg/apache/sshd/client/session/ClientSession;->prepareBuffer(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 154
    .end local v19    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v3, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v3, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3, v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v3, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 159
    invoke-virtual {v3, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    move-object/from16 v19, v1

    .end local v1    # "clientHostname":Ljava/lang/String;
    .local v19, "clientHostname":Ljava/lang/String;
    move-object/from16 v1, p1

    move-object/from16 v20, v2

    .end local v2    # "clientUsername":Ljava/lang/String;
    .local v20, "clientUsername":Ljava/lang/String;
    move-object/from16 v2, p2

    move-object/from16 v21, v3

    .end local v3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v21, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    move-object v3, v8

    move-object/from16 v22, v4

    .end local v4    # "username":Ljava/lang/String;
    .local v22, "username":Ljava/lang/String;
    move-object v4, v9

    move-object/from16 v23, v5

    .end local v5    # "keyBytes":[B
    .local v23, "keyBytes":[B
    move-object/from16 v24, v6

    .end local v6    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .local v24, "verifier":Lorg/apache/sshd/common/signature/Signature;
    move-object/from16 v6, v19

    move-object/from16 v25, v7

    .end local v7    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .local v25, "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    move-object/from16 v7, v20

    move-object/from16 v26, v8

    .end local v8    # "keyType":Ljava/lang/String;
    .local v26, "keyType":Ljava/lang/String;
    move-object/from16 v8, v24

    move-object/from16 v27, v9

    .end local v9    # "pub":Ljava/security/PublicKey;
    .local v27, "pub":Ljava/security/PublicKey;
    move-object/from16 v9, v21

    invoke-virtual/range {v0 .. v9}, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->appendSignature(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;Ljava/security/PublicKey;[BLjava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/signature/Signature;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 162
    move-object/from16 v0, v21

    .end local v21    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-interface {v11, v0}, Lorg/apache/sshd/client/session/ClientSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 163
    const/4 v1, 0x1

    return v1

    .line 98
    .end local v0    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v15    # "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .end local v16    # "keyInfo":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/KeyPair;+Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;>;"
    .end local v17    # "kp":Ljava/security/KeyPair;
    .end local v18    # "id":[B
    .end local v19    # "clientHostname":Ljava/lang/String;
    .end local v20    # "clientUsername":Ljava/lang/String;
    .end local v22    # "username":Ljava/lang/String;
    .end local v23    # "keyBytes":[B
    .end local v24    # "verifier":Lorg/apache/sshd/common/signature/Signature;
    .end local v25    # "factories":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    .end local v26    # "keyType":Ljava/lang/String;
    .end local v27    # "pub":Ljava/security/PublicKey;
    :cond_4
    move v1, v15

    .line 99
    :goto_1
    if-eqz v14, :cond_5

    .line 100
    iget-object v0, v10, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v11, v2, v3

    aput-object v12, v2, v1

    const/4 v1, 0x2

    aput-object v13, v2, v1

    const-string v1, "sendAuthDataRequest({})[{}][{}] no more keys to send"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_5
    return v3
.end method

.method public setClientHostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientHostname"    # Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->clientHostname:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setClientUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "clientUsername"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->clientUsername:Ljava/lang/String;

    .line 84
    return-void
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

    .line 75
    .local p1, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/signature/Signature;>;>;"
    iput-object p1, p0, Lorg/apache/sshd/client/auth/hostbased/UserAuthHostBased;->factories:Ljava/util/List;

    .line 76
    return-void
.end method
