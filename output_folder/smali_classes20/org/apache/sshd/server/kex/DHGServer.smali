.class public Lorg/apache/sshd/server/kex/DHGServer;
.super Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;
.source "DHGServer.java"


# instance fields
.field protected dh:Lorg/apache/sshd/common/kex/AbstractDH;

.field protected final factory:Lorg/apache/sshd/common/kex/DHFactory;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/kex/DHFactory;Lorg/apache/sshd/common/session/Session;)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/sshd/common/kex/DHFactory;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 49
    invoke-direct {p0, p2}, Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;-><init>(Lorg/apache/sshd/common/session/Session;)V

    .line 50
    const-string v0, "No factory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/DHFactory;

    iput-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    .line 51
    return-void
.end method

.method public static newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;
    .locals 1
    .param p0, "factory"    # Lorg/apache/sshd/common/kex/DHFactory;

    .line 59
    new-instance v0, Lorg/apache/sshd/server/kex/DHGServer$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/server/kex/DHGServer$1;-><init>(Lorg/apache/sshd/common/kex/DHFactory;)V

    return-object v0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/DHFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init([B[B[B[B)V
    .locals 2
    .param p1, "v_s"    # [B
    .param p2, "v_c"    # [B
    .param p3, "i_s"    # [B
    .param p4, "i_c"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;->init([B[B[B[B)V

    .line 82
    iget-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/kex/DHFactory;->create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/AbstractDH;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    .line 83
    invoke-virtual {v0}, Lorg/apache/sshd/common/kex/AbstractDH;->getHash()Lorg/apache/sshd/common/digest/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v0}, Lorg/apache/sshd/common/digest/Digest;->init()V

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    invoke-virtual {v0}, Lorg/apache/sshd/common/kex/AbstractDH;->getE()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/kex/DHGServer;->f:[B

    .line 86
    return-void
.end method

.method public next(ILorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 17
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/kex/DHGServer;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v1

    .line 91
    .local v1, "session":Lorg/apache/sshd/server/session/ServerSession;
    iget-object v2, v0, Lorg/apache/sshd/server/kex/DHGServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, v0, Lorg/apache/sshd/server/kex/DHGServer;->log:Lorg/slf4j/Logger;

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v0, v7, v5

    aput-object v1, v7, v4

    .line 93
    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getSimpleKexOpcodeName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 92
    const-string v8, "next({})[{}] process command={}"

    invoke-interface {v2, v8, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    const/16 v2, 0x1e

    move/from16 v7, p1

    if-ne v7, v2, :cond_3

    .line 101
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/sshd/server/kex/DHGServer;->e:[B

    .line 102
    iget-object v2, v0, Lorg/apache/sshd/server/kex/DHGServer;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    iget-object v8, v0, Lorg/apache/sshd/server/kex/DHGServer;->e:[B

    invoke-virtual {v2, v8}, Lorg/apache/sshd/common/kex/AbstractDH;->setF([B)V

    .line 103
    iget-object v2, v0, Lorg/apache/sshd/server/kex/DHGServer;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    invoke-virtual {v2}, Lorg/apache/sshd/common/kex/AbstractDH;->getK()[B

    move-result-object v2

    iput-object v2, v0, Lorg/apache/sshd/server/kex/DHGServer;->k:[B

    .line 105
    invoke-interface {v1}, Lorg/apache/sshd/server/session/ServerSession;->getHostKey()Ljava/security/KeyPair;

    move-result-object v2

    const-string v8, "No server key pair available"

    invoke-static {v2, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/KeyPair;

    .line 106
    .local v2, "kp":Ljava/security/KeyPair;
    sget-object v8, Lorg/apache/sshd/common/kex/KexProposalOption;->SERVERKEYS:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v1, v8}, Lorg/apache/sshd/server/session/ServerSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "algo":Ljava/lang/String;
    nop

    .line 108
    invoke-interface {v1}, Lorg/apache/sshd/server/session/ServerSession;->getSignatureFactories()Ljava/util/List;

    move-result-object v9

    invoke-static {v9, v8}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 107
    const-string v10, "Unknown negotiated server keys: %s"

    invoke-static {v9, v10, v8}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/sshd/common/signature/Signature;

    .line 110
    .local v9, "sig":Lorg/apache/sshd/common/signature/Signature;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v10

    invoke-interface {v9, v1, v10}, Lorg/apache/sshd/common/signature/Signature;->initSigner(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PrivateKey;)V

    .line 112
    new-instance v10, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v10}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    .line 113
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v10, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawPublicKey(Ljava/security/PublicKey;)V

    .line 114
    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v11

    .line 116
    .local v11, "k_s":[B
    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 117
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->v_c:[B

    invoke-virtual {v10, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 118
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->v_s:[B

    invoke-virtual {v10, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 119
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->i_c:[B

    invoke-virtual {v10, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 120
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->i_s:[B

    invoke-virtual {v10, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 121
    invoke-virtual {v10, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 122
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->e:[B

    invoke-virtual {v10, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 123
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->f:[B

    invoke-virtual {v10, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 124
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->k:[B

    invoke-virtual {v10, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 125
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v13

    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v14

    invoke-interface {v12, v13, v5, v14}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 126
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v12}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v12

    iput-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->h:[B

    .line 127
    iget-object v12, v0, Lorg/apache/sshd/server/kex/DHGServer;->h:[B

    invoke-interface {v9, v1, v12}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[B)V

    .line 129
    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 130
    invoke-virtual {v10, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 131
    invoke-interface {v9, v1}, Lorg/apache/sshd/common/signature/Signature;->sign(Lorg/apache/sshd/common/session/SessionContext;)[B

    move-result-object v12

    .line 132
    .local v12, "sigBytes":[B
    invoke-virtual {v10, v12}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 134
    invoke-virtual {v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v13

    .line 135
    .local v13, "sigH":[B
    iget-object v14, v0, Lorg/apache/sshd/server/kex/DHGServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v14}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 136
    iget-object v14, v0, Lorg/apache/sshd/server/kex/DHGServer;->log:Lorg/slf4j/Logger;

    new-array v15, v6, [Ljava/lang/Object;

    aput-object v0, v15, v5

    aput-object v1, v15, v4

    invoke-static {v11}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v3

    const-string v3, "next({})[{}][K_S]:  {}"

    invoke-interface {v14, v3, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v3, v0, Lorg/apache/sshd/server/kex/DHGServer;->log:Lorg/slf4j/Logger;

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v0, v14, v5

    aput-object v1, v14, v4

    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGServer;->f:[B

    invoke-static {v15}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    const-string v15, "next({})[{}][f]:    {}"

    invoke-interface {v3, v15, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v3, v0, Lorg/apache/sshd/server/kex/DHGServer;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object v1, v6, v4

    invoke-static {v13}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v16

    const-string v5, "next({})[{}][sigH]: {}"

    invoke-interface {v3, v5, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_1
    iget-object v3, v0, Lorg/apache/sshd/server/kex/DHGServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    iget-object v3, v0, Lorg/apache/sshd/server/kex/DHGServer;->log:Lorg/slf4j/Logger;

    const-string v5, "next({})[{}] Send SSH_MSG_KEXDH_REPLY"

    invoke-interface {v3, v5, v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    :cond_2
    const/16 v3, 0x1f

    invoke-static {v10}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->clear(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v5

    invoke-interface {v1, v3, v5}, Lorg/apache/sshd/server/session/ServerSession;->prepareBuffer(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 147
    .end local v10    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v3, v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 148
    iget-object v5, v0, Lorg/apache/sshd/server/kex/DHGServer;->f:[B

    invoke-virtual {v3, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 149
    invoke-virtual {v3, v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 150
    invoke-interface {v1, v3}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 151
    return v4

    .line 97
    .end local v2    # "kp":Ljava/security/KeyPair;
    .end local v3    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v8    # "algo":Ljava/lang/String;
    .end local v9    # "sig":Lorg/apache/sshd/common/signature/Signature;
    .end local v11    # "k_s":[B
    .end local v12    # "sigBytes":[B
    .end local v13    # "sigH":[B
    .restart local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_3
    new-instance v2, Lorg/apache/sshd/common/SshException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol error: expected packet SSH_MSG_KEXDH_INIT, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getSimpleKexOpcodeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v2
.end method
