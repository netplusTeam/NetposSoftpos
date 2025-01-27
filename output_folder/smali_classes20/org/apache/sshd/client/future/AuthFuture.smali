.class public interface abstract Lorg/apache/sshd/client/future/AuthFuture;
.super Ljava/lang/Object;
.source "AuthFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFuture;
.implements Lorg/apache/sshd/common/future/VerifiableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFuture<",
        "Lorg/apache/sshd/client/future/AuthFuture;",
        ">;",
        "Lorg/apache/sshd/common/future/VerifiableFuture<",
        "Lorg/apache/sshd/client/future/AuthFuture;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isFailure()Z
.end method

.method public abstract isSuccess()Z
.end method

.method public abstract setAuthed(Z)V
.end method

.method public abstract setException(Ljava/lang/Throwable;)V
.end method
