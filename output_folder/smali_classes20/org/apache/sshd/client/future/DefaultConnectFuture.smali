.class public Lorg/apache/sshd/client/future/DefaultConnectFuture;
.super Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;
.source "DefaultConnectFuture.java"

# interfaces
.implements Lorg/apache/sshd/client/future/ConnectFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture<",
        "Lorg/apache/sshd/client/future/ConnectFuture;",
        ">;",
        "Lorg/apache/sshd/client/future/ConnectFuture;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/future/DefaultVerifiableSshFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lorg/apache/sshd/client/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 71
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 73
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 4

    .line 53
    invoke-virtual {p0}, Lorg/apache/sshd/client/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_3

    .line 56
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_2

    .line 58
    instance-of v1, v0, Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 60
    instance-of v1, v0, Lorg/apache/sshd/client/session/ClientSession;

    if-eqz v1, :cond_0

    .line 61
    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/client/session/ClientSession;

    return-object v1

    .line 63
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 59
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Failed to get the session."

    invoke-direct {v1, v3, v2}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 57
    :cond_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 55
    :cond_3
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/sshd/client/future/DefaultConnectFuture;->getSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/apache/sshd/client/future/DefaultConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/sshd/client/session/ClientSession;

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 90
    const-string v0, "No exception provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/future/DefaultConnectFuture;->setValue(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public setSession(Lorg/apache/sshd/client/session/ClientSession;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;

    .line 84
    const-string v0, "No client session provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/future/DefaultConnectFuture;->setValue(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public bridge synthetic verify(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/client/future/DefaultConnectFuture;->verify(J)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object p1

    return-object p1
.end method

.method public verify(J)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 10
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 42
    .local v0, "startTime":J
    const-class v2, Lorg/apache/sshd/client/session/ClientSession;

    invoke-virtual {p0, v2, p1, p2}, Lorg/apache/sshd/client/future/DefaultConnectFuture;->verifyResult(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/client/session/ClientSession;

    .line 43
    .local v2, "session":Lorg/apache/sshd/client/session/ClientSession;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 44
    .local v3, "endTime":J
    iget-boolean v5, p0, Lorg/apache/sshd/client/future/DefaultConnectFuture;->debugEnabled:Z

    if-eqz v5, :cond_0

    .line 45
    invoke-interface {v2}, Lorg/apache/sshd/client/session/ClientSession;->getIoSession()Lorg/apache/sshd/common/io/IoSession;

    move-result-object v5

    .line 46
    .local v5, "ioSession":Lorg/apache/sshd/common/io/IoSession;
    iget-object v6, p0, Lorg/apache/sshd/client/future/DefaultConnectFuture;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connected to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v3, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " nanos"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 48
    .end local v5    # "ioSession":Lorg/apache/sshd/common/io/IoSession;
    :cond_0
    return-object p0
.end method
