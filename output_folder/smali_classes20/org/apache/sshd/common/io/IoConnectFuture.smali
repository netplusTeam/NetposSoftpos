.class public interface abstract Lorg/apache/sshd/common/io/IoConnectFuture;
.super Ljava/lang/Object;
.source "IoConnectFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFuture<",
        "Lorg/apache/sshd/common/io/IoConnectFuture;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract getSession()Lorg/apache/sshd/common/io/IoSession;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract setException(Ljava/lang/Throwable;)V
.end method

.method public abstract setSession(Lorg/apache/sshd/common/io/IoSession;)V
.end method
