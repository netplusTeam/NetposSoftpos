.class public abstract Lorg/apache/sshd/server/auth/pubkey/StaticPublickeyAuthenticator;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "StaticPublickeyAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/pubkey/PublickeyAuthenticator;


# instance fields
.field private final acceptance:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "acceptance"    # Z

    .line 33
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 34
    iput-boolean p1, p0, Lorg/apache/sshd/server/auth/pubkey/StaticPublickeyAuthenticator;->acceptance:Z

    .line 35
    return-void
.end method


# virtual methods
.method public final authenticate(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 43
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/pubkey/StaticPublickeyAuthenticator;->isAccepted()Z

    move-result v0

    .line 44
    .local v0, "accepted":Z
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/server/auth/pubkey/StaticPublickeyAuthenticator;->handleAcceptance(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)V

    .line 48
    :cond_0
    return v0
.end method

.method protected handleAcceptance(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/StaticPublickeyAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    if-nez p2, :cond_0

    const-string v2, "null"

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 53
    const-string v2, "authenticate({}[{}][{}][{}]: accepted without checking"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method protected handleRejection(Ljava/lang/String;Ljava/security/PublicKey;Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/PublicKey;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 58
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/StaticPublickeyAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/server/auth/pubkey/StaticPublickeyAuthenticator;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    if-nez p2, :cond_0

    const-string v3, "null"

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getFingerPrint(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    const-string v2, "authenticate({}[{}][{}][{}]: rejected"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_1
    return-void
.end method

.method public final isAccepted()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/apache/sshd/server/auth/pubkey/StaticPublickeyAuthenticator;->acceptance:Z

    return v0
.end method
