.class public abstract Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;
.super Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;
.source "AbstractDHClientKeyExchange.java"

# interfaces
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;


# instance fields
.field protected serverKey:Ljava/security/PublicKey;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/session/Session;)V
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 39
    const-class v0, Lorg/apache/sshd/client/session/ClientSession;

    const-string v1, "Using a client side KeyExchange on a server: %s"

    invoke-static {p1, v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/session/Session;

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/kex/dh/AbstractDHKeyExchange;-><init>(Lorg/apache/sshd/common/session/Session;)V

    .line 41
    return-void
.end method


# virtual methods
.method public final getClientSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSession;

    return-object v0
.end method

.method public getServerKey()Ljava/security/PublicKey;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/sshd/client/kex/AbstractDHClientKeyExchange;->serverKey:Ljava/security/PublicKey;

    return-object v0
.end method
