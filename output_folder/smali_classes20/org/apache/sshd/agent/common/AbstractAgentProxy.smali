.class public abstract Lorg/apache/sshd/agent/common/AbstractAgentProxy;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractAgentProxy.java"

# interfaces
.implements Lorg/apache/sshd/agent/SshAgent;
.implements Lorg/apache/sshd/common/util/threads/ExecutorServiceCarrier;


# instance fields
.field private channelType:Ljava/lang/String;

.field private executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/util/threads/CloseableExecutorService;)V
    .locals 1
    .param p1, "executorService"    # Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 52
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 50
    const-string v0, "auth-agent-req@openssh.com"

    iput-object v0, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->channelType:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    .line 54
    return-void
.end method


# virtual methods
.method public addIdentity(Ljava/security/KeyPair;Ljava/lang/String;)V
    .locals 6
    .param p1, "kp"    # Ljava/security/KeyPair;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 151
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putKeyPair(Ljava/security/KeyPair;)V

    .line 152
    invoke-virtual {v0, p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object p2, v3, v2

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "addIdentity({})[{}]: {}"

    invoke-interface {v1, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->prepare(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v1

    .line 159
    .local v1, "available":I
    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 160
    .local v3, "response":I
    :goto_0
    if-ne v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v3, v2, :cond_2

    .line 163
    return-void

    .line 161
    :cond_2
    new-instance v2, Lorg/apache/sshd/common/SshException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad addIdentity response ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lorg/apache/sshd/agent/SshAgentConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - available="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    invoke-virtual {p0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    move-result-object v0

    .line 200
    .local v0, "service":Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-interface {v0}, Lorg/apache/sshd/common/util/threads/CloseableExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v1

    .line 202
    .local v1, "runners":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close() - shutdown runners count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 206
    .end local v1    # "runners":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_0
    return-void
.end method

.method protected createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 1
    .param p1, "cmd"    # B

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    return-object v0
.end method

.method protected createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 3
    .param p1, "cmd"    # B
    .param p2, "extraLen"    # I

    .line 213
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    if-gtz p2, :cond_0

    const/16 v1, 0x100

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x8

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>(IZ)V

    .line 214
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 215
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 216
    return-object v0
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->channelType:Ljava/lang/String;

    return-object v0
.end method

.method public getExecutorService()Lorg/apache/sshd/common/util/threads/CloseableExecutorService;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->executor:Lorg/apache/sshd/common/util/threads/CloseableExecutorService;

    return-object v0
.end method

.method public getIdentities()Ljava/lang/Iterable;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    const/16 v0, 0xb

    .line 72
    .local v0, "cmd":I
    const/16 v1, 0xc

    .line 73
    .local v1, "okcmd":I
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->channelType:Ljava/lang/String;

    const-string v3, "auth-agent-req"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const/16 v0, 0xcc

    .line 75
    const/16 v1, 0x68

    .line 78
    :cond_0
    int-to-byte v2, v0

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 79
    .local v2, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {p0, v2}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->prepare(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v4

    .line 81
    .local v4, "type":I
    if-ne v4, v1, :cond_4

    .line 85
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v5

    .line 86
    .local v5, "nbIdentities":I
    if-ltz v5, :cond_3

    const/16 v6, 0x400

    if-gt v5, v6, :cond_3

    .line 90
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 91
    .local v6, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/util/AbstractMap$SimpleImmutableEntry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    iget-object v7, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v7}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v7

    .line 92
    .local v7, "debugEnabled":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_2

    .line 93
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 94
    .local v9, "key":Ljava/security/PublicKey;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, "comment":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 96
    iget-object v11, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 97
    invoke-static {v9}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    aput-object v10, v12, v3

    const/4 v13, 0x2

    invoke-static {v9}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 96
    const-string v13, "getIdentities() key type={}, comment={}, fingerprint={}"

    invoke-interface {v11, v13, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_1
    new-instance v11, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v11, v9, v10}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v9    # "key":Ljava/security/PublicKey;
    .end local v10    # "comment":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 102
    .end local v8    # "i":I
    :cond_2
    return-object v6

    .line 87
    .end local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/util/AbstractMap$SimpleImmutableEntry<Ljava/security/PublicKey;Ljava/lang/String;>;>;"
    .end local v7    # "debugEnabled":Z
    :cond_3
    new-instance v3, Lorg/apache/sshd/common/SshException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illogical identities count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 82
    .end local v5    # "nbIdentities":I
    :cond_4
    new-instance v3, Lorg/apache/sshd/common/SshException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad agent identities answer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lorg/apache/sshd/agent/SshAgentConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected prepare(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;

    .line 220
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos()I

    move-result v0

    .line 221
    .local v0, "wpos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 222
    add-int/lit8 v1, v0, -0x4

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 223
    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 224
    return-object p1
.end method

.method public removeAllIdentities()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 185
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    const-string v3, "removeAllIdentities"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 188
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->prepare(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v2

    .line 191
    .local v2, "available":I
    if-lt v2, v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 192
    .local v3, "response":I
    :goto_0
    if-ne v2, v1, :cond_2

    const/4 v1, 0x6

    if-ne v3, v1, :cond_2

    .line 195
    return-void

    .line 193
    :cond_2
    new-instance v1, Lorg/apache/sshd/common/SshException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad removeAllIdentities response ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lorg/apache/sshd/agent/SshAgentConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - available="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeIdentity(Ljava/security/PublicKey;)V
    .locals 6
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 168
    .local v0, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putPublicKey(Ljava/security/PublicKey;)V

    .line 169
    iget-object v1, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "removeIdentity({}) {}"

    invoke-interface {v1, v4, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->prepare(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v1

    .line 176
    .local v1, "available":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 177
    .local v3, "response":I
    :goto_0
    if-ne v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v3, v2, :cond_2

    .line 180
    return-void

    .line 178
    :cond_2
    new-instance v2, Lorg/apache/sshd/common/SshException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad removeIdentity response ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lorg/apache/sshd/agent/SshAgentConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - available="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected abstract request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setChannelType(Ljava/lang/String;)V
    .locals 0
    .param p1, "channelType"    # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->channelType:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public sign(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;[B)[B
    .locals 17
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    move-object/from16 v0, p0

    const/16 v1, 0xd

    .line 108
    .local v1, "cmd":I
    const/16 v2, 0xe

    .line 109
    .local v2, "okcmd":I
    iget-object v3, v0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->channelType:Ljava/lang/String;

    const-string v4, "auth-agent-req"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    const/16 v1, 0xcd

    .line 111
    const/16 v2, 0x69

    .line 114
    :cond_0
    int-to-byte v3, v1

    invoke-virtual {v0, v3}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 115
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v5, v0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->channelType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    const-string v5, "sign"

    invoke-virtual {v3, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 118
    :cond_1
    move-object/from16 v5, p2

    invoke-virtual {v3, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putPublicKey(Ljava/security/PublicKey;)V

    .line 119
    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 120
    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 121
    invoke-virtual {v0, v3}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->prepare(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->request(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 123
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v7

    .line 124
    .local v7, "responseType":I
    if-ne v7, v2, :cond_4

    .line 128
    invoke-virtual {v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v8

    .line 129
    .local v8, "signature":[B
    iget-object v9, v0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v9

    .line 130
    .local v9, "debugEnabled":Z
    iget-object v10, v0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->channelType:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v10, 0x3a

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v4, :cond_2

    .line 131
    if-eqz v9, :cond_3

    .line 132
    iget-object v4, v0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    new-array v11, v11, [Ljava/lang/Object;

    .line 133
    invoke-static/range {p2 .. p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-static/range {p2 .. p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v10, v8}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v12

    .line 132
    const-string v10, "sign({})[{}] : {}"

    invoke-interface {v4, v10, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 136
    :cond_2
    new-instance v4, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v4, v8}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>([B)V

    .line 137
    .local v4, "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v15

    .line 138
    .local v15, "algorithm":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v8

    .line 139
    if-eqz v9, :cond_3

    .line 140
    iget-object v11, v0, Lorg/apache/sshd/agent/common/AbstractAgentProxy;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    .line 141
    invoke-static/range {p2 .. p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v10, v14

    invoke-static/range {p2 .. p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v13

    aput-object v15, v10, v12

    const/16 v12, 0x3a

    invoke-static {v12, v8}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v10, v13

    .line 140
    const-string v12, "sign({})[{}] {}: {}"

    invoke-interface {v11, v12, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .end local v4    # "buf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v15    # "algorithm":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v8

    .line 125
    .end local v8    # "signature":[B
    .end local v9    # "debugEnabled":Z
    :cond_4
    new-instance v4, Lorg/apache/sshd/common/SshException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bad signing response type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lorg/apache/sshd/agent/SshAgentConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
