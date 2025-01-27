.class public Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;
.super Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;
.source "UserAuthPublicKeyIterator.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<",
        "Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;",
        ">;",
        "Ljava/nio/channels/Channel;"
    }
.end annotation


# instance fields
.field private agent:Lorg/apache/sshd/agent/SshAgent;

.field private current:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)V
    .locals 6
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "signatureFactories"    # Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;-><init>(Lorg/apache/sshd/client/session/ClientSession;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .local v0, "identities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Iterable<+Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;>;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->initializeAgentIdentities(Lorg/apache/sshd/client/session/ClientSession;)Ljava/lang/Iterable;

    move-result-object v1

    .line 60
    .local v1, "agentIds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;>;"
    if-eqz v1, :cond_0

    .line 61
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    nop

    .line 65
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->initializeSessionIdentities(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/lang/Iterable;

    move-result-object v2

    .line 66
    .local v2, "sessionIds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;>;"
    if-eqz v2, :cond_1

    .line 67
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->current:Ljava/util/Iterator;

    goto :goto_0

    .line 73
    :cond_2
    nop

    .line 74
    invoke-static {v0}, Lorg/apache/sshd/common/util/helper/LazyIterablesConcatenator;->lazyConcatenateIterables(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    .line 75
    .local v3, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-class v5, Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/helper/LazyMatchingTypeIterator;->lazySelectMatchingTypes(Ljava/util/Iterator;Ljava/lang/Class;)Ljava/util/Iterator;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->current:Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "identities":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Iterable<+Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;>;>;"
    .end local v1    # "agentIds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;>;"
    .end local v2    # "sessionIds":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;>;"
    .end local v3    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;>;"
    :goto_0
    nop

    .line 86
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->closeAgent()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    goto :goto_1

    .line 80
    :catch_1
    move-exception v1

    .line 81
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v0, v1}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    .end local v1    # "err":Ljava/lang/Exception;
    :goto_1
    throw v0
.end method

.method static synthetic access$200(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;)Lorg/apache/sshd/agent/SshAgent;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->agent:Lorg/apache/sshd/agent/SshAgent;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->closeAgent()V

    .line 218
    :cond_0
    return-void
.end method

.method protected closeAgent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->agent:Lorg/apache/sshd/agent/SshAgent;

    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/sshd/agent/SshAgent;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iput-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 226
    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 226
    throw v0

    .line 228
    :cond_0
    :goto_0
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 193
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method protected initializeAgentIdentities(Lorg/apache/sshd/client/session/ClientSession;)Ljava/lang/Iterable;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Lorg/apache/sshd/client/session/ClientSession;->getFactoryManager()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v0

    const-string v1, "No session factory manager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    .line 146
    .local v0, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v0}, Lorg/apache/sshd/common/FactoryManager;->getAgentFactory()Lorg/apache/sshd/agent/SshAgentFactory;

    move-result-object v1

    .line 147
    .local v1, "factory":Lorg/apache/sshd/agent/SshAgentFactory;
    if-nez v1, :cond_0

    .line 148
    const/4 v2, 0x0

    return-object v2

    .line 151
    :cond_0
    invoke-interface {v1, v0}, Lorg/apache/sshd/agent/SshAgentFactory;->createClient(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/agent/SshAgent;

    move-result-object v2

    const-string v3, "No agent created"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/agent/SshAgent;

    iput-object v2, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 152
    new-instance v2, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;

    invoke-direct {v2, p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$2;-><init>(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;)V

    return-object v2
.end method

.method protected initializeSessionIdentities(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "signatureFactories"    # Lorg/apache/sshd/common/signature/SignatureFactoriesManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/client/session/ClientSession;",
            "Lorg/apache/sshd/common/signature/SignatureFactoriesManager;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/sshd/client/auth/pubkey/KeyPairIdentity;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator$1;-><init>(Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/common/signature/SignatureFactoriesManager;)V

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->next()Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;
    .locals 2

    .line 202
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/UserAuthPublicKeyIterator;->current:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/auth/pubkey/PublicKeyIdentity;

    return-object v0

    .line 203
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator is closed"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
