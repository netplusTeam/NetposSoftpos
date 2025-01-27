.class public interface abstract Lorg/apache/sshd/client/session/ClientSessionCreator;
.super Ljava/lang/Object;
.source "ClientSessionCreator.java"


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/common/AttributeRepository;

    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;ILjava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public connect(Ljava/lang/String;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/common/AttributeRepository;

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "targetAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0, p3}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .param p3, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, p3, v0}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public abstract connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 2
    .param p1, "hostConfig"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lorg/apache/sshd/common/AttributeRepository;

    invoke-interface {p0, p1, v0}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "hostConfig"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "hostConfig"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .param p2, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public abstract connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
