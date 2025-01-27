.class public abstract Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;
.super Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;
.source "AbstractDHServerKeyExchange.java"

# interfaces
.implements Lorg/apache/sshd/server/session/ServerSessionHolder;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/session/Session;)V
    .locals 2
    .param p1, "s"    # Lorg/apache/sshd/common/session/Session;

    .line 39
    const-class v0, Lorg/apache/sshd/server/session/ServerSession;

    const-string v1, "Using a client side KeyExchange on a server: %s"

    invoke-static {p1, v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/Session;

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;-><init>(Lorg/apache/sshd/common/session/Session;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getServerKey()Ljava/security/PublicKey;
    .locals 3

    .line 50
    invoke-virtual {p0}, Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    .line 51
    .local v0, "session":Lorg/apache/sshd/server/session/ServerSession;
    nop

    .line 52
    invoke-interface {v0}, Lorg/apache/sshd/server/session/ServerSession;->getHostKey()Ljava/security/KeyPair;

    move-result-object v1

    .line 51
    const-string v2, "No server key pair available"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPair;

    .line 53
    .local v1, "kpHost":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method

.method public final getServerSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method
