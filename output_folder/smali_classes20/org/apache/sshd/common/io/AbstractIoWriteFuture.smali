.class public abstract Lorg/apache/sshd/common/io/AbstractIoWriteFuture;
.super Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;
.source "AbstractIoWriteFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoWriteFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture<",
        "Lorg/apache/sshd/common/io/IoWriteFuture;",
        ">;",
        "Lorg/apache/sshd/common/io/IoWriteFuture;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 58
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 59
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 60
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 62
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public isWritten()Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic verify(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;->verify(J)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object p1

    return-object p1
.end method

.method public verify(J)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;->verifyResult(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 40
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    return-object p0

    .line 41
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/future/AbstractSshFuture$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 44
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 41
    const-string v3, "Write failed signalled while wait %d msec."

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/sshd/common/io/AbstractIoWriteFuture;->formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/SshException;

    throw v1
.end method
