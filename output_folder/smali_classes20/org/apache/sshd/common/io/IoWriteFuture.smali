.class public interface abstract Lorg/apache/sshd/common/io/IoWriteFuture;
.super Ljava/lang/Object;
.source "IoWriteFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFuture;
.implements Lorg/apache/sshd/common/future/VerifiableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFuture<",
        "Lorg/apache/sshd/common/io/IoWriteFuture;",
        ">;",
        "Lorg/apache/sshd/common/future/VerifiableFuture<",
        "Lorg/apache/sshd/common/io/IoWriteFuture;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract isWritten()Z
.end method
