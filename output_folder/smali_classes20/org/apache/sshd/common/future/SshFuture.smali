.class public interface abstract Lorg/apache/sshd/common/future/SshFuture;
.super Ljava/lang/Object;
.source "SshFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/WaitableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/sshd/common/future/SshFuture;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/WaitableFuture;"
    }
.end annotation


# virtual methods
.method public abstract addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract removeListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/future/SshFutureListener<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
