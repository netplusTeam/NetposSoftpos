.class public Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;
.super Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;
.source "DefaultKeyExchangeFuture.java"

# interfaces
.implements Lorg/apache/sshd/common/future/KeyExchangeFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture<",
        "Lorg/apache/sshd/common/future/KeyExchangeFuture;",
        ">;",
        "Lorg/apache/sshd/common/future/KeyExchangeFuture;"
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$VYMsHVTCR0mVW3pu5cS3-2BVVDM(Ljava/lang/String;)Lorg/apache/sshd/common/SshException;
    .locals 1

    new-instance v0, Lorg/apache/sshd/common/SshException;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 33
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 51
    invoke-virtual {p0}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 53
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 55
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic verify(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->verify(J)Lorg/apache/sshd/common/future/KeyExchangeFuture;

    move-result-object p1

    return-object p1
.end method

.method public verify(J)Lorg/apache/sshd/common/future/KeyExchangeFuture;
    .locals 5
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->verifyResult(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 39
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    return-object p0

    .line 40
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 40
    const-string v3, "Key exchange failed while waiting %d msec."

    invoke-virtual {p0, v1, v3, v2}, Lorg/apache/sshd/common/future/DefaultKeyExchangeFuture;->formatExceptionMessage(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/SshException;

    throw v1
.end method
