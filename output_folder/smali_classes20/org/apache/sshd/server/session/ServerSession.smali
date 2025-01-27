.class public interface abstract Lorg/apache/sshd/server/session/ServerSession;
.super Ljava/lang/Object;
.source "ServerSession.java"

# interfaces
.implements Lorg/apache/sshd/common/session/Session;
.implements Lorg/apache/sshd/server/session/ServerProxyAcceptorHolder;
.implements Lorg/apache/sshd/server/ServerAuthenticationManager;


# virtual methods
.method public abstract getActiveSessionCountForUser(Ljava/lang/String;)I
.end method

.method public abstract getClientAddress()Ljava/net/SocketAddress;
.end method

.method public bridge synthetic getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1

    .line 34
    invoke-interface {p0}, Lorg/apache/sshd/server/session/ServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;
.end method

.method public abstract getHostKey()Ljava/security/KeyPair;
.end method

.method public abstract signalAuthenticationSuccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
