.class public Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "StaticHostBasedAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/hostbased/HostBasedAuthenticator;


# instance fields
.field private final acceptance:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "acceptance"    # Z

    .line 36
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 37
    iput-boolean p1, p0, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;->acceptance:Z

    .line 38
    return-void
.end method


# virtual methods
.method public final authenticate(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "clientHostKey"    # Ljava/security/PublicKey;
    .param p4, "clientHostName"    # Ljava/lang/String;
    .param p5, "clientUsername"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .line 47
    .local p6, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;->isAccepted()Z

    move-result v0

    .line 48
    .local v0, "accepted":Z
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual/range {p0 .. p6}, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;->handleAcceptance(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual/range {p0 .. p6}, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;->handleRejection(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 54
    :goto_0
    return v0
.end method

.method protected handleAcceptance(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "clientHostKey"    # Ljava/security/PublicKey;
    .param p4, "clientHostName"    # Ljava/lang/String;
    .param p5, "clientUsername"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p6, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 61
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 60
    const-string v2, "authenticate({}[{}]: accepted without checking {}@{} key={} fingerprint={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method protected handleRejection(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "clientHostKey"    # Ljava/security/PublicKey;
    .param p4, "clientHostName"    # Ljava/lang/String;
    .param p5, "clientUsername"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/lang/String;",
            "Ljava/security/PublicKey;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p6, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v0, p0, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    .line 69
    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getKeyType(Ljava/security/Key;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 68
    const-string v2, "authenticate({}[{}]: rejected {}@{} key={} fingerprint={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final isAccepted()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lorg/apache/sshd/server/auth/hostbased/StaticHostBasedAuthenticator;->acceptance:Z

    return v0
.end method
