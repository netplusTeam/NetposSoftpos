.class public interface abstract Lorg/apache/sshd/common/future/KeyExchangeFuture;
.super Ljava/lang/Object;
.source "KeyExchangeFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/SshFuture;
.implements Lorg/apache/sshd/common/future/VerifiableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/future/SshFuture<",
        "Lorg/apache/sshd/common/future/KeyExchangeFuture;",
        ">;",
        "Lorg/apache/sshd/common/future/VerifiableFuture<",
        "Lorg/apache/sshd/common/future/KeyExchangeFuture;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getException()Ljava/lang/Throwable;
.end method
