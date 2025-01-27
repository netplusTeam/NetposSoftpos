.class public Lorg/apache/sshd/common/future/DefaultCloseFuture;
.super Lorg/apache/sshd/common/future/DefaultSshFuture;
.source "DefaultCloseFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/CloseFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/future/DefaultSshFuture<",
        "Lorg/apache/sshd/common/future/CloseFuture;",
        ">;",
        "Lorg/apache/sshd/common/future/CloseFuture;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/future/DefaultSshFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public isClosed()Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setClosed()V
    .locals 1

    .line 50
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/future/DefaultCloseFuture;->setValue(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
