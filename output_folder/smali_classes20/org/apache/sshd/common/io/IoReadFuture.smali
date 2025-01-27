.class public interface abstract Lorg/apache/sshd/common/io/IoReadFuture;
.super Ljava/lang/Object;
.source "IoReadFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFuture;
.implements Lorg/apache/sshd/common/future/VerifiableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFuture<",
        "Lorg/apache/sshd/common/io/IoReadFuture;",
        ">;",
        "Lorg/apache/sshd/common/future/VerifiableFuture<",
        "Lorg/apache/sshd/common/io/IoReadFuture;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;
.end method

.method public abstract getException()Ljava/lang/Throwable;
.end method

.method public abstract getRead()I
.end method
