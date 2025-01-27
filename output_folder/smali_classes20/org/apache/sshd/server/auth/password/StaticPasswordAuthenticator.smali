.class public Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "StaticPasswordAuthenticator.java"

# interfaces
.implements Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;


# instance fields
.field private final acceptance:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "acceptance"    # Z

    .line 30
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 31
    iput-boolean p1, p0, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;->acceptance:Z

    .line 32
    return-void
.end method


# virtual methods
.method public final authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 40
    invoke-virtual {p0}, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;->isAccepted()Z

    move-result v0

    .line 41
    .local v0, "accepted":Z
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;->handleAcceptance(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;->handleRejection(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)V

    .line 47
    :goto_0
    return v0
.end method

.method protected handleAcceptance(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v1, "authenticate({}[{}]: accepted without checking"

    invoke-interface {v0, v1, p1, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected handleRejection(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)V
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "session"    # Lorg/apache/sshd/server/session/ServerSession;

    .line 56
    iget-object v0, p0, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;->log:Lorg/slf4j/Logger;

    const-string v1, "authenticate({}[{}]: rejected"

    invoke-interface {v0, v1, p1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    :cond_0
    return-void
.end method

.method public final isAccepted()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lorg/apache/sshd/server/auth/password/StaticPasswordAuthenticator;->acceptance:Z

    return v0
.end method
