.class public Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;
.super Lorg/apache/sshd/common/future/DefaultSshFuture;
.source "Nio2Connector.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoConnectFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/io/nio2/Nio2Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultIoConnectFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/future/DefaultSshFuture<",
        "Lorg/apache/sshd/common/io/IoConnectFuture;",
        ">;",
        "Lorg/apache/sshd/common/io/IoConnectFuture;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "lock"    # Ljava/lang/Object;

    .line 221
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/common/future/DefaultSshFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .locals 2

    .line 232
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getSession()Lorg/apache/sshd/common/io/IoSession;
    .locals 2

    .line 226
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 227
    .local v0, "v":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/sshd/common/io/IoSession;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/common/io/IoSession;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    .line 238
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/sshd/common/io/IoSession;

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 248
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;->setValue(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public setSession(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 0
    .param p1, "session"    # Lorg/apache/sshd/common/io/IoSession;

    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/io/nio2/Nio2Connector$DefaultIoConnectFuture;->setValue(Ljava/lang/Object;)V

    .line 244
    return-void
.end method
