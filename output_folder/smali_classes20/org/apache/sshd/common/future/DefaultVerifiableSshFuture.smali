.class public abstract Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;
.super Lorg/apache/sshd/common/future/DefaultSshFuture;
.source "DefaultVerifiableSshFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/VerifiableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/sshd/common/future/SshFuture;",
        ">",
        "Lorg/apache/sshd/common/future/DefaultSshFuture<",
        "TT;>;",
        "Lorg/apache/sshd/common/future/VerifiableFuture<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 30
    .local p0, "this":Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;, "Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/future/DefaultSshFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method
