.class public interface abstract Lorg/apache/sshd/server/auth/password/PasswordAuthenticator;
.super Ljava/lang/Object;
.source "PasswordAuthenticator.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract authenticate(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/server/session/ServerSession;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;,
            Lorg/apache/sshd/server/auth/AsyncAuthException;
        }
    .end annotation
.end method

.method public handleClientPasswordChangeRequest(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "oldPassword"    # Ljava/lang/String;
    .param p4, "newPassword"    # Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Password change not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
