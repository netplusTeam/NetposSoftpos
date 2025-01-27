.class public Lorg/apache/sshd/agent/common/AgentDelegate;
.super Ljava/lang/Object;
.source "AgentDelegate.java"

# interfaces
.implements Lorg/apache/sshd/agent/SshAgent;


# instance fields
.field private final agent:Lorg/apache/sshd/agent/SshAgent;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/agent/SshAgent;)V
    .locals 0
    .param p1, "agent"    # Lorg/apache/sshd/agent/SshAgent;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/apache/sshd/agent/common/AgentDelegate;->agent:Lorg/apache/sshd/agent/SshAgent;

    .line 35
    return-void
.end method


# virtual methods
.method public addIdentity(Ljava/security/KeyPair;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/KeyPair;
    .param p2, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AgentDelegate;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/agent/SshAgent;->addIdentity(Ljava/security/KeyPair;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public getIdentities()Ljava/lang/Iterable;
    .locals 1
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

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AgentDelegate;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v0}, Lorg/apache/sshd/agent/SshAgent;->getIdentities()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AgentDelegate;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v0}, Lorg/apache/sshd/agent/SshAgent;->isOpen()Z

    move-result v0

    return v0
.end method

.method public removeAllIdentities()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AgentDelegate;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v0}, Lorg/apache/sshd/agent/SshAgent;->removeAllIdentities()V

    .line 70
    return-void
.end method

.method public removeIdentity(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AgentDelegate;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v0, p1}, Lorg/apache/sshd/agent/SshAgent;->removeIdentity(Ljava/security/PublicKey;)V

    .line 65
    return-void
.end method

.method public sign(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;[B)[B
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/apache/sshd/agent/common/AgentDelegate;->agent:Lorg/apache/sshd/agent/SshAgent;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/agent/SshAgent;->sign(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PublicKey;[B)[B

    move-result-object v0

    return-object v0
.end method
