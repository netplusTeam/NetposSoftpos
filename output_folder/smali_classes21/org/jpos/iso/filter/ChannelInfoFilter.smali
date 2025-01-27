.class public Lorg/jpos/iso/filter/ChannelInfoFilter;
.super Ljava/lang/Object;
.source "ChannelInfoFilter.java"

# interfaces
.implements Lorg/jpos/iso/ISOFilter;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field channelNameField:Ljava/lang/String;

.field socketInfoField:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 7
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;

    .line 60
    iget-object v0, p0, Lorg/jpos/iso/filter/ChannelInfoFilter;->channelNameField:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p1}, Lorg/jpos/iso/ISOChannel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/filter/ChannelInfoFilter;->socketInfoField:Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/jpos/iso/BaseChannel;

    if-eqz v0, :cond_2

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/BaseChannel;

    invoke-virtual {v0}, Lorg/jpos/iso/BaseChannel;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 64
    .local v0, "socket":Ljava/net/Socket;
    nop

    .line 65
    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 66
    .local v1, "remoteAddr":Ljava/net/InetSocketAddress;
    nop

    .line 67
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 69
    .local v2, "localAddr":Ljava/net/InetSocketAddress;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/jpos/iso/filter/ChannelInfoFilter;->socketInfoField:Ljava/lang/String;

    iget-object v5, p0, Lorg/jpos/iso/filter/ChannelInfoFilter;->channelNameField:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_1

    .line 71
    invoke-interface {p1}, Lorg/jpos/iso/ISOChannel;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v4, p0, Lorg/jpos/iso/filter/ChannelInfoFilter;->socketInfoField:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "socket":Ljava/net/Socket;
    .end local v1    # "remoteAddr":Ljava/net/InetSocketAddress;
    .end local v2    # "localAddr":Ljava/net/InetSocketAddress;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object p2
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 54
    const-string v0, "channel-name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/ChannelInfoFilter;->channelNameField:Ljava/lang/String;

    .line 55
    const-string v0, "socket-info"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/ChannelInfoFilter;->socketInfoField:Ljava/lang/String;

    .line 56
    return-void
.end method
