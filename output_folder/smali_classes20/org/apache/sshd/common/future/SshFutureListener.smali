.class public interface abstract Lorg/apache/sshd/common/future/SshFutureListener;
.super Ljava/lang/Object;
.source "SshFutureListener.java"

# interfaces
.implements Lorg/apache/sshd/common/util/SshdEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/sshd/common/future/SshFuture;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/util/SshdEventListener;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract operationComplete(Lorg/apache/sshd/common/future/SshFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
