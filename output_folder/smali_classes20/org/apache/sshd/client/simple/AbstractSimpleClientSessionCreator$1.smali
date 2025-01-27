.class final Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;
.super Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;
.source "AbstractSimpleClientSessionCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;->wrap(Lorg/apache/sshd/client/session/ClientSessionCreator;Ljava/nio/channels/Channel;)Lorg/apache/sshd/client/simple/SimpleClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$channel:Ljava/nio/channels/Channel;

.field final synthetic val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;


# direct methods
.method constructor <init>(Lorg/apache/sshd/client/session/ClientSessionCreator;Ljava/nio/channels/Channel;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    iput-object p2, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$channel:Ljava/nio/channels/Channel;

    invoke-direct {p0}, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$channel:Ljava/nio/channels/Channel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->close()V

    .line 223
    return-void
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/lang/String;I)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;ILjava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/lang/String;ILjava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 6
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p5, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/lang/String;ILorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

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

    .line 164
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

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

    .line 206
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "targetAddress"    # Ljava/net/SocketAddress;
    .param p3, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p4, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Ljava/lang/String;Ljava/net/SocketAddress;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "hostConfig"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;)Lorg/apache/sshd/client/future/ConnectFuture;

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

    .line 174
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

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

    .line 200
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;
    .locals 1
    .param p1, "hostConfig"    # Lorg/apache/sshd/client/config/hosts/HostConfigEntry;
    .param p2, "context"    # Lorg/apache/sshd/common/AttributeRepository;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$creator:Lorg/apache/sshd/client/session/ClientSessionCreator;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/sshd/client/session/ClientSessionCreator;->connect(Lorg/apache/sshd/client/config/hosts/HostConfigEntry;Lorg/apache/sshd/common/AttributeRepository;Ljava/net/SocketAddress;)Lorg/apache/sshd/client/future/ConnectFuture;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$channel:Ljava/nio/channels/Channel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/sshd/client/simple/SimpleClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/client/simple/AbstractSimpleClientSessionCreator$1;->val$channel:Ljava/nio/channels/Channel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
