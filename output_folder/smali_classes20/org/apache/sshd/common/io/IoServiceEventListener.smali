.class public interface abstract Lorg/apache/sshd/common/io/IoServiceEventListener;
.super Ljava/lang/Object;
.source "IoServiceEventListener.java"

# interfaces
.implements Lorg/apache/sshd/common/util/SshdEventListener;


# virtual methods
.method public abortAcceptedConnection(Lorg/apache/sshd/common/io/IoAcceptor;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "acceptor"    # Lorg/apache/sshd/common/io/IoAcceptor;
    .param p2, "local"    # Ljava/net/SocketAddress;
    .param p3, "remote"    # Ljava/net/SocketAddress;
    .param p4, "service"    # Ljava/net/SocketAddress;
    .param p5, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public abortEstablishedConnection(Lorg/apache/sshd/common/io/IoConnector;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "connector"    # Lorg/apache/sshd/common/io/IoConnector;
    .param p2, "local"    # Ljava/net/SocketAddress;
    .param p3, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p4, "remote"    # Ljava/net/SocketAddress;
    .param p5, "reason"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public connectionAccepted(Lorg/apache/sshd/common/io/IoAcceptor;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "acceptor"    # Lorg/apache/sshd/common/io/IoAcceptor;
    .param p2, "local"    # Ljava/net/SocketAddress;
    .param p3, "remote"    # Ljava/net/SocketAddress;
    .param p4, "service"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public connectionEstablished(Lorg/apache/sshd/common/io/IoConnector;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "connector"    # Lorg/apache/sshd/common/io/IoConnector;
    .param p2, "local"    # Ljava/net/SocketAddress;
    .param p3, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p4, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    return-void
.end method
