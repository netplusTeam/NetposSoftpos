.class public interface abstract Lorg/apache/sshd/client/simple/SimpleSessionClient;
.super Ljava/lang/Object;
.source "SimpleSessionClient.java"

# interfaces
.implements Lorg/apache/sshd/client/simple/SimpleClientConfigurator;
.implements Ljava/nio/channels/Channel;


# virtual methods
.method public sessionLogin(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    const-string v0, "No host"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {p0, v0, p2, p3, p4}, Lorg/apache/sshd/client/simple/SimpleSessionClient;->sessionLogin(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/lang/String;ILjava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "identity"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const-string v0, "No host"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-interface {p0, v0, p2, p3, p4}, Lorg/apache/sshd/client/simple/SimpleSessionClient;->sessionLogin(Ljava/net/InetAddress;ILjava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/16 v0, 0x16

    invoke-interface {p0, p1, v0, p2, p3}, Lorg/apache/sshd/client/simple/SimpleSessionClient;->sessionLogin(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/lang/String;Ljava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/16 v0, 0x16

    invoke-interface {p0, p1, v0, p2, p3}, Lorg/apache/sshd/client/simple/SimpleSessionClient;->sessionLogin(Ljava/lang/String;ILjava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "No host address"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-direct {v0, v1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {p0, v0, p3, p4}, Lorg/apache/sshd/client/simple/SimpleSessionClient;->sessionLogin(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/net/InetAddress;ILjava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 2
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "identity"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "No host address"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-direct {v0, v1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-interface {p0, v0, p3, p4}, Lorg/apache/sshd/client/simple/SimpleSessionClient;->sessionLogin(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/net/InetAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    const/16 v0, 0x16

    invoke-interface {p0, p1, v0, p2, p3}, Lorg/apache/sshd/client/simple/SimpleSessionClient;->sessionLogin(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/net/InetAddress;Ljava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const/16 v0, 0x16

    invoke-interface {p0, p1, v0, p2, p3}, Lorg/apache/sshd/client/simple/SimpleSessionClient;->sessionLogin(Ljava/net/InetAddress;ILjava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public abstract sessionLogin(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sessionLogin(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
