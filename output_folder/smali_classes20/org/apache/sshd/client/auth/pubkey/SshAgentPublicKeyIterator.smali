.class public Lorg/apache/sshd/client/auth/pubkey/SshAgentPublicKeyIterator;
.super Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;
.source "SshAgentPublicKeyIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator<",
        "Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;",
        ">;"
    }
.end annotation


# instance fields
.field private final agent:Lorg/apache/sshd/agent/SshAgent;

.field private final keys:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/Map$Entry<",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/session/ClientSession;Lorg/apache/sshd/agent/SshAgent;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "agent"    # Lorg/apache/sshd/agent/SshAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1}, Lorg/apache/sshd/client/auth/pubkey/AbstractKeyPairIterator;-><init>(Lorg/apache/sshd/client/session/ClientSession;)V

    .line 41
    const-string v0, "No agent"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/agent/SshAgent;

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/SshAgentPublicKeyIterator;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 42
    invoke-interface {p2}, Lorg/apache/sshd/agent/SshAgent;->getIdentities()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/SshAgentPublicKeyIterator;->keys:Ljava/util/Iterator;

    .line 43
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/SshAgentPublicKeyIterator;->keys:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/pubkey/SshAgentPublicKeyIterator;->next()Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;
    .locals 5

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/client/auth/pubkey/SshAgentPublicKeyIterator;->keys:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    .local v0, "kp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/PublicKey;Ljava/lang/String;>;"
    new-instance v1, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;

    iget-object v2, p0, Lorg/apache/sshd/client/auth/pubkey/SshAgentPublicKeyIterator;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/sshd/client/auth/pubkey/KeyAgentIdentity;-><init>(Lorg/apache/sshd/agent/SshAgent;Ljava/security/PublicKey;Ljava/lang/String;)V

    return-object v1
.end method
