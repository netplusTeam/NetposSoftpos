.class public Lorg/apache/sshd/client/kex/DHGClient;
.super Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;
.source "DHGClient.java"


# instance fields
.field protected dh:Lorg/apache/sshd/common/kex/AbstractDH;

.field protected final factory:Lorg/apache/sshd/common/kex/DHFactory;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/kex/DHFactory;Lorg/apache/sshd/common/session/Session;)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/sshd/common/kex/DHFactory;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 50
    invoke-direct {p0, p2}, Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;-><init>(Lorg/apache/sshd/common/session/Session;)V

    .line 52
    const-string v0, "No factory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/DHFactory;

    iput-object v0, p0, Lorg/apache/sshd/client/kex/DHGClient;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    .line 53
    return-void
.end method

.method public static newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;
    .locals 1
    .param p0, "delegate"    # Lorg/apache/sshd/common/kex/DHFactory;

    .line 61
    new-instance v0, Lorg/apache/sshd/client/kex/DHGClient$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/client/kex/DHGClient$1;-><init>(Lorg/apache/sshd/common/kex/DHFactory;)V

    return-object v0
.end method


# virtual methods
.method protected getDH()Lorg/apache/sshd/common/kex/AbstractDH;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/apache/sshd/client/kex/DHGClient;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/kex/DHFactory;->create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/AbstractDH;

    move-result-object v0

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/client/kex/DHGClient;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/DHFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init([B[B[B[B)V
    .locals 3
    .param p1, "v_s"    # [B
    .param p2, "v_c"    # [B
    .param p3, "i_s"    # [B
    .param p4, "i_c"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;->init([B[B[B[B)V

    .line 85
    invoke-virtual {p0}, Lorg/apache/sshd/client/kex/DHGClient;->getDH()Lorg/apache/sshd/common/kex/AbstractDH;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/kex/DHGClient;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    .line 86
    invoke-virtual {v0}, Lorg/apache/sshd/common/kex/AbstractDH;->getHash()Lorg/apache/sshd/common/digest/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/kex/DHGClient;->hash:Lorg/apache/sshd/common/digest/Digest;

    .line 87
    iget-object v0, p0, Lorg/apache/sshd/client/kex/DHGClient;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v0}, Lorg/apache/sshd/common/digest/Digest;->init()V

    .line 88
    iget-object v0, p0, Lorg/apache/sshd/client/kex/DHGClient;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    invoke-virtual {v0}, Lorg/apache/sshd/common/kex/AbstractDH;->getE()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/kex/DHGClient;->e:[B

    .line 90
    invoke-virtual {p0}, Lorg/apache/sshd/client/kex/DHGClient;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 91
    .local v0, "s":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/client/kex/DHGClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lorg/apache/sshd/client/kex/DHGClient;->log:Lorg/slf4j/Logger;

    const-string v2, "init({})[{}] Send SSH_MSG_KEXDH_INIT"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    :cond_0
    const/16 v1, 0x1e

    iget-object v2, p0, Lorg/apache/sshd/client/kex/DHGClient;->e:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x20

    .line 95
    invoke-interface {v0, v1, v2}, Lorg/apache/sshd/common/session/Session;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 96
    .local v1, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v2, p0, Lorg/apache/sshd/client/kex/DHGClient;->e:[B

    invoke-virtual {v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 98
    invoke-interface {v0, v1}, Lorg/apache/sshd/common/session/Session;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 99
    return-void
.end method

.method public next(ILorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 10
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/apache/sshd/client/kex/DHGClient;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    .line 109
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    iget-object v1, p0, Lorg/apache/sshd/client/kex/DHGClient;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lorg/apache/sshd/client/kex/DHGClient;->log:Lorg/slf4j/Logger;

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object v0, v5, v2

    const/4 v6, 0x2

    .line 111
    invoke-static {p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getSimpleKexOpcodeName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 110
    const-string v6, "next({})[{}] process command={}"

    invoke-interface {v1, v6, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_0
    const/16 v1, 0x1f

    if-ne p1, v1, :cond_3

    .line 119
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v1

    .line 120
    .local v1, "k_s":[B
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v5

    iput-object v5, p0, Lorg/apache/sshd/client/kex/DHGClient;->f:[B

    .line 121
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v5

    .line 122
    .local v5, "sig":[B
    iget-object v6, p0, Lorg/apache/sshd/client/kex/DHGClient;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->f:[B

    invoke-virtual {v6, v7}, Lorg/apache/sshd/common/kex/AbstractDH;->setF([B)V

    .line 123
    iget-object v6, p0, Lorg/apache/sshd/client/kex/DHGClient;->dh:Lorg/apache/sshd/common/kex/AbstractDH;

    invoke-virtual {v6}, Lorg/apache/sshd/common/kex/AbstractDH;->getK()[B

    move-result-object v6

    iput-object v6, p0, Lorg/apache/sshd/client/kex/DHGClient;->k:[B

    .line 125
    new-instance v6, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v6, v1}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V

    move-object p2, v6

    .line 126
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getRawPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/sshd/client/kex/DHGClient;->serverKey:Ljava/security/PublicKey;

    .line 127
    iget-object v6, p0, Lorg/apache/sshd/client/kex/DHGClient;->serverKey:Ljava/security/PublicKey;

    invoke-static {v6}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "keyAlg":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 133
    new-instance v7, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v7}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    move-object p2, v7

    .line 134
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->v_c:[B

    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 135
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->v_s:[B

    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 136
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->i_c:[B

    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 137
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->i_s:[B

    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 138
    invoke-virtual {p2, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 139
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->e:[B

    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 140
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->f:[B

    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 141
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->k:[B

    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 142
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v8

    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v9

    invoke-interface {v7, v8, v3, v9}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 143
    iget-object v3, p0, Lorg/apache/sshd/client/kex/DHGClient;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v3}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/client/kex/DHGClient;->h:[B

    .line 145
    nop

    .line 146
    invoke-interface {v0}, Lorg/apache/sshd/common/session/Session;->getSignatureFactories()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v6}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 145
    const-string v7, "No verifier located for algorithm=%s"

    invoke-static {v3, v7, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/signature/Signature;

    .line 148
    .local v3, "verif":Lorg/apache/sshd/common/signature/Signature;
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->serverKey:Ljava/security/PublicKey;

    invoke-interface {v3, v0, v7}, Lorg/apache/sshd/common/signature/Signature;->initVerifier(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;)V

    .line 149
    iget-object v7, p0, Lorg/apache/sshd/client/kex/DHGClient;->h:[B

    invoke-interface {v3, v0, v7}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[B)V

    .line 150
    invoke-interface {v3, v0, v5}, Lorg/apache/sshd/common/signature/Signature;->verify(Lorg/apache/sshd/common/session/SessionContext;[B)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 155
    return v2

    .line 151
    :cond_1
    new-instance v2, Lorg/apache/sshd/common/SshException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KeyExchange signature verification failed for key type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v7}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 129
    .end local v3    # "verif":Lorg/apache/sshd/common/signature/Signature;
    :cond_2
    new-instance v2, Lorg/apache/sshd/common/SshException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported server key type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/client/kex/DHGClient;->serverKey:Ljava/security/PublicKey;

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/sshd/client/kex/DHGClient;->serverKey:Ljava/security/PublicKey;

    .line 130
    invoke-interface {v4}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    .end local v1    # "k_s":[B
    .end local v5    # "sig":[B
    .end local v6    # "keyAlg":Ljava/lang/String;
    :cond_3
    new-instance v1, Lorg/apache/sshd/common/SshException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Protocol error: expected packet SSH_MSG_KEXDH_REPLY, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 116
    invoke-static {p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getSimpleKexOpcodeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
