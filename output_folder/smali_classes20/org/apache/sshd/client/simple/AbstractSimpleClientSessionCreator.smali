.class public abstract Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;
.super Lorg/apache/sshd/client/simple/AbstractSimpleClient;
.source "AbstractSimpleClientSessionCreator.java"

# interfaces
.implements Lorg/apache/sshd/client/session/ClientSessionCreator;


# instance fields
.field private authenticateTimeout:J

.field private connectTimeout:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 45
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;-><init>(JJ)V

    .line 46
    return-void
.end method

.method protected constructor <init>(JJ)V
    .locals 0
    .param p1, "connTimeout"    # J
    .param p3, "authTimeout"    # J

    .line 48
    invoke-direct {p0}, Lorg/apache/sshd/client/simple/AbstractSimpleClient;-><init>()V

    .line 49
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->setConnectTimeout(J)V

    .line 50
    invoke-virtual {p0, p3, p4}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->setAuthenticationTimeout(J)V

    .line 51
    return-void
.end method

.method public static wrap(Lorg/apache/sshd/client/session/ClientSessionCreator;Ljava/nio/channels/Channel;)Lorg/apache/sshd/client/simple/SimpleClient;
    .locals 1
    .param p0, "creator"    # Lorg/apache/sshd/client/session/ClientSessionCreator;
    .param p1, "channel"    # Ljava/nio/channels/Channel;

    .line 142
    const-string v0, "No sessions creator"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 143
    const-string v0, "No channel"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 144
    new-instance v0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;-><init>(Lorg/apache/sshd/client/session/ClientSessionCreator;Ljava/nio/channels/Channel;)V

    return-object v0
.end method


# virtual methods
.method protected authSession(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 2
    .param p1, "future"    # Lorg/apache/sshd/client/future/ConnectFuture;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Lorg/apache/sshd/client/future/ConnectFuture;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSession;

    .line 95
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    invoke-interface {v0, p2}, Lorg/apache/sshd/client/session/ClientSession;->addPasswordIdentity(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->authSession(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v1

    return-object v1
.end method

.method protected authSession(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 2
    .param p1, "future"    # Lorg/apache/sshd/client/future/ConnectFuture;
    .param p2, "identity"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-interface {p1}, Lorg/apache/sshd/client/future/ConnectFuture;->getSession()Lorg/apache/sshd/common/session/Session;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSession;

    .line 101
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    invoke-interface {v0, p2}, Lorg/apache/sshd/client/session/ClientSession;->addPublicKeyIdentity(Ljava/security/KeyPair;)V

    .line 102
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->authSession(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v1

    return-object v1
.end method

.method protected authSession(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 5
    .param p1, "clientSession"    # Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    move-object v0, p1

    .line 107
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    const/4 v1, 0x0

    .line 109
    .local v1, "err":Ljava/io/IOException;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/sshd/client/session/ClientSession;->auth()Lorg/apache/sshd/client/future/AuthFuture;

    move-result-object v2

    .line 110
    .local v2, "auth":Lorg/apache/sshd/client/future/AuthFuture;
    invoke-virtual {p0}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->getAuthenticationTimeout()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/apache/sshd/client/future/AuthFuture;->verify(J)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    const/4 v0, 0x0

    .line 115
    .end local v2    # "auth":Lorg/apache/sshd/client/future/AuthFuture;
    if-eqz v0, :cond_0

    .line 117
    :try_start_1
    invoke-interface {v0}, Lorg/apache/sshd/client/session/ClientSession;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/io/IOException;

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 112
    :catch_1
    move-exception v2

    .line 113
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1, v2}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/io/IOException;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    .line 115
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 117
    :try_start_3
    invoke-interface {v0}, Lorg/apache/sshd/client/session/ClientSession;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 124
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 128
    return-object p1

    .line 125
    :cond_1
    throw v1

    .line 115
    :goto_2
    if-eqz v0, :cond_2

    .line 117
    :try_start_4
    invoke-interface {v0}, Lorg/apache/sshd/client/session/ClientSession;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 120
    goto :goto_3

    .line 118
    :catch_2
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v3}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/io/IOException;

    .line 122
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v2
.end method

.method public getAuthenticationTimeout()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->authenticateTimeout:J

    return-wide v0
.end method

.method public getConnectTimeout()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->connectTimeout:J

    return-wide v0
.end method

.method protected loginSession(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 2
    .param p1, "future"    # Lorg/apache/sshd/client/future/ConnectFuture;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->getConnectTimeout()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/client/future/ConnectFuture;->verify(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/future/ConnectFuture;

    invoke-virtual {p0, v0, p2}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->authSession(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method protected loginSession(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 2
    .param p1, "future"    # Lorg/apache/sshd/client/future/ConnectFuture;
    .param p2, "identity"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->getConnectTimeout()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lorg/apache/sshd/client/future/ConnectFuture;->verify(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/future/ConnectFuture;

    invoke-virtual {p0, v0, p2}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->authSession(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 1
    .param p1, "target"    # Ljava/net/SocketAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->loginSession(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/lang/String;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public sessionLogin(Ljava/net/SocketAddress;Ljava/lang/String;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;
    .locals 1
    .param p1, "target"    # Ljava/net/SocketAddress;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p2, p1}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->loginSession(Lorg/apache/sshd/client/future/ConnectFuture;Ljava/security/KeyPair;)Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public setAuthenticationTimeout(J)V
    .locals 2
    .param p1, "timeout"    # J

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Non-positive authentication timeout: %d"

    invoke-static {v0, v1, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 72
    iput-wide p1, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->authenticateTimeout:J

    .line 73
    return-void
.end method

.method public setConnectTimeout(J)V
    .locals 2
    .param p1, "timeout"    # J

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Non-positive connect timeout: %d"

    invoke-static {v0, v1, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 61
    iput-wide p1, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->connectTimeout:J

    .line 62
    return-void
.end method
