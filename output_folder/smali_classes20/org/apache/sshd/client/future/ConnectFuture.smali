.class public interface abstract Lorg/apache/sshd/client/future/ConnectFuture;
.super Ljava/lang/Object;
.source "ConnectFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFuture;
.implements Lorg/apache/sshd/common/future/VerifiableFuture;
.implements Lorg/apache/sshd/common/session/SessionHolder;
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFuture<",
        "Lorg/apache/sshd/client/future/ConnectFuture;",
        ">;",
        "Lorg/apache/sshd/common/future/VerifiableFuture<",
        "Lorg/apache/sshd/client/future/ConnectFuture;",
        ">;",
        "Lorg/apache/sshd/common/session/SessionHolder<",
        "Lorg/apache/sshd/client/session/ClientSession;",
        ">;",
        "Lorg/apache/sshd/client/session/ClientSessionHolder;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public getClientSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 40
    invoke-interface {p0}, Lorg/apache/sshd/client/future/ConnectFuture;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSession;

    return-object v0
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setException(Ljava/lang/Throwable;)V
.end method

.method public abstract setSession(Lorg/apache/sshd/client/session/ClientSession;)V
.end method
