.class public Lorg/apache/sshd/agent/local/AgentImpl;
.super Ljava/lang/Object;
.source "AgentImpl.java"

# interfaces
.implements Lorg/apache/sshd/agent/SshAgent;


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/security/KeyPair;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->keys:Ljava/util/List;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    return-void
.end method

.method protected static getKeyPair(Ljava/util/Collection;Ljava/security/PublicKey;)Ljava/util/Map$Entry;
    .locals 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/KeyPair;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/security/PublicKey;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/security/KeyPair;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    .local p0, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/Map$Entry<Ljava/security/KeyPair;Ljava/lang/String;>;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 148
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 149
    .local v2, "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/KeyPair;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyPair;

    .line 150
    .local v3, "kp":Ljava/security/KeyPair;
    invoke-virtual {v3}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    invoke-static {p1, v4}, Lorg/apache/sshd/common/config/keys/KeyUtils;->compareKeys(Ljava/security/PublicKey;Ljava/security/PublicKey;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 151
    return-object v2

    .line 153
    .end local v2    # "k":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/KeyPair;Ljava/lang/String;>;"
    .end local v3    # "kp":Ljava/security/KeyPair;
    :cond_1
    goto :goto_0

    .line 155
    :cond_2
    return-object v1

    .line 145
    :cond_3
    :goto_1
    return-object v1
.end method

.method static synthetic lambda$getIdentities$0(Ljava/util/Map$Entry;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 3
    .param p0, "kp"    # Ljava/util/Map$Entry;

    .line 69
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPair;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addIdentity(Ljava/security/KeyPair;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/security/KeyPair;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->keys:Ljava/util/List;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const-string v2, "No key"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void

    .line 109
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Agent closed"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    :cond_0
    return-void
.end method

.method public getIdentities()Ljava/lang/Iterable;
    .locals 2
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

    .line 65
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->keys:Ljava/util/List;

    new-instance v1, Lorg/apache/sshd/agent/local/AgentImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/agent/local/AgentImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Agent closed"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public removeAllIdentities()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->keys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 133
    return-void

    .line 130
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Agent closed"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIdentity(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->keys:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/apache/sshd/agent/local/AgentImpl;->getKeyPair(Ljava/util/Collection;Ljava/security/PublicKey;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 121
    .local v0, "kp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/KeyPair;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lorg/apache/sshd/agent/local/AgentImpl;->keys:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void

    .line 122
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const-string v2, "Key not found"

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    .end local v0    # "kp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/KeyPair;Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Agent closed"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sign(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;[B)[B
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/apache/sshd/agent/local/AgentImpl;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/agent/local/AgentImpl;->keys:Ljava/util/List;

    invoke-static {v0, p2}, Lorg/apache/sshd/agent/local/AgentImpl;->getKeyPair(Ljava/util/Collection;Ljava/security/PublicKey;)Ljava/util/Map$Entry;

    move-result-object v0

    const-string v1, "Key not found"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 80
    .local v0, "pp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/KeyPair;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "No key pair for agent=%s"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPair;

    .line 81
    .local v1, "kp":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    const-string v3, "No public key for agent=%s"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 84
    .local v2, "pubKey":Ljava/security/PublicKey;
    instance-of v3, v2, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v3, :cond_0

    .line 85
    sget-object v3, Lorg/apache/sshd/common/signature/BuiltinSignatures;->dsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    invoke-virtual {v3}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/signature/Signature;

    .local v3, "verif":Lorg/apache/sshd/common/signature/Signature;
    goto :goto_0

    .line 86
    .end local v3    # "verif":Lorg/apache/sshd/common/signature/Signature;
    :cond_0
    instance-of v3, v2, Ljava/security/interfaces/ECPublicKey;

    if-eqz v3, :cond_1

    .line 87
    move-object v3, v2

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    .line 88
    .local v3, "ecKey":Ljava/security/interfaces/ECPublicKey;
    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->getByCurveSize(Ljava/security/spec/ECParameterSpec;)Lorg/apache/sshd/common/signature/Signature;

    move-result-object v4

    move-object v3, v4

    .line 89
    .local v3, "verif":Lorg/apache/sshd/common/signature/Signature;
    goto :goto_0

    .end local v3    # "verif":Lorg/apache/sshd/common/signature/Signature;
    :cond_1
    instance-of v3, v2, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v3, :cond_2

    .line 90
    sget-object v3, Lorg/apache/sshd/common/signature/BuiltinSignatures;->rsa:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    invoke-virtual {v3}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/signature/Signature;

    .restart local v3    # "verif":Lorg/apache/sshd/common/signature/Signature;
    goto :goto_0

    .line 91
    .end local v3    # "verif":Lorg/apache/sshd/common/signature/Signature;
    :cond_2
    const-string v3, "EdDSA"

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    sget-object v3, Lorg/apache/sshd/common/signature/BuiltinSignatures;->ed25519:Lorg/apache/sshd/common/signature/BuiltinSignatures;

    invoke-virtual {v3}, Lorg/apache/sshd/common/signature/BuiltinSignatures;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/signature/Signature;

    .line 96
    .restart local v3    # "verif":Lorg/apache/sshd/common/signature/Signature;
    :goto_0
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lorg/apache/sshd/common/signature/Signature;->initSigner(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PrivateKey;)V

    .line 97
    invoke-interface {v3, p1, p3}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[B)V

    .line 98
    invoke-interface {v3, p1}, Lorg/apache/sshd/common/signature/Signature;->sign(Lorg/apache/sshd/common/session/SessionContext;)[B

    move-result-object v4

    return-object v4

    .line 94
    .end local v3    # "verif":Lorg/apache/sshd/common/signature/Signature;
    :cond_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported key type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    .end local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .end local p2    # "key":Ljava/security/PublicKey;
    .end local p3    # "data":[B
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v0    # "pp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/KeyPair;Ljava/lang/String;>;"
    .end local v1    # "kp":Ljava/security/KeyPair;
    .end local v2    # "pubKey":Ljava/security/PublicKey;
    .restart local p1    # "session":Lorg/apache/sshd/common/session/SessionContext;
    .restart local p2    # "key":Ljava/security/PublicKey;
    .restart local p3    # "data":[B
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/sshd/common/SshException;

    invoke-direct {v1, v0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Agent closed"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
