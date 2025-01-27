.class Lio/netty/channel/socket/nio/NioDatagramChannelConfig;
.super Lio/netty/channel/socket/DefaultDatagramChannelConfig;
.source "NioDatagramChannelConfig.java"


# static fields
.field private static final GET_OPTION:Ljava/lang/reflect/Method;

.field private static final IP_MULTICAST_IF:Ljava/lang/Object;

.field private static final IP_MULTICAST_LOOP:Ljava/lang/Object;

.field private static final IP_MULTICAST_TTL:Ljava/lang/Object;

.field private static final SET_OPTION:Ljava/lang/reflect/Method;


# instance fields
.field private final javaChannel:Ljava/nio/channels/DatagramChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 45
    const-class v0, Ljava/nio/channels/DatagramChannel;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 46
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    const/4 v1, 0x0

    .line 48
    .local v1, "socketOptionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "java.net.SocketOption"

    invoke-static {v3, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v3

    .line 52
    :goto_0
    const/4 v3, 0x0

    .line 54
    .local v3, "stdSocketOptionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "java.net.StandardSocketOptions"

    invoke-static {v4, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 57
    goto :goto_1

    .line 55
    :catch_1
    move-exception v4

    .line 59
    :goto_1
    const/4 v4, 0x0

    .line 60
    .local v4, "ipMulticastTtl":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 61
    .local v5, "ipMulticastIf":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 62
    .local v6, "ipMulticastLoop":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 63
    .local v7, "getOption":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .line 64
    .local v8, "setOption":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 66
    :try_start_2
    const-string v9, "IP_MULTICAST_TTL"

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object v4, v9

    .line 69
    nop

    .line 72
    :try_start_3
    const-string v9, "IP_MULTICAST_IF"

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v5, v9

    .line 75
    nop

    .line 78
    :try_start_4
    const-string v9, "IP_MULTICAST_LOOP"

    invoke-virtual {v3, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v9

    .line 81
    nop

    .line 83
    const/4 v9, 0x0

    .line 85
    .local v9, "networkChannelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_5
    const-string v10, "java.nio.channels.NetworkChannel"

    invoke-static {v10, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v9, v10

    .line 88
    goto :goto_2

    .line 86
    :catchall_0
    move-exception v10

    .line 90
    :goto_2
    if-nez v9, :cond_0

    .line 91
    const/4 v7, 0x0

    .line 92
    const/4 v8, 0x0

    goto :goto_3

    .line 95
    :cond_0
    :try_start_6
    const-string v10, "getOption"

    new-array v11, v2, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v7, v10

    .line 98
    nop

    .line 101
    :try_start_7
    const-string v10, "setOption"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    aput-object v1, v11, v12

    const-class v12, Ljava/lang/Object;

    aput-object v12, v11, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-object v8, v2

    .line 104
    goto :goto_3

    .line 102
    :catch_2
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/Error;

    const-string v11, "cannot locate the setOption() method"

    invoke-direct {v10, v11, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 97
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/Error;

    const-string v11, "cannot locate the getOption() method"

    invoke-direct {v10, v11, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 79
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v9    # "networkChannelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_4
    move-exception v2

    .line 80
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/Error;

    const-string v10, "cannot locate the IP_MULTICAST_LOOP field"

    invoke-direct {v9, v10, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 74
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/Error;

    const-string v10, "cannot locate the IP_MULTICAST_IF field"

    invoke-direct {v9, v10, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 68
    .restart local v2    # "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/Error;

    const-string v10, "cannot locate the IP_MULTICAST_TTL field"

    invoke-direct {v9, v10, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    sput-object v4, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_TTL:Ljava/lang/Object;

    .line 108
    sput-object v5, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_IF:Ljava/lang/Object;

    .line 109
    sput-object v6, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_LOOP:Ljava/lang/Object;

    .line 110
    sput-object v7, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->GET_OPTION:Ljava/lang/reflect/Method;

    .line 111
    sput-object v8, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->SET_OPTION:Ljava/lang/reflect/Method;

    .line 112
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "socketOptionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "stdSocketOptionType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "ipMulticastTtl":Ljava/lang/Object;
    .end local v5    # "ipMulticastIf":Ljava/lang/Object;
    .end local v6    # "ipMulticastLoop":Ljava/lang/Object;
    .end local v7    # "getOption":Ljava/lang/reflect/Method;
    .end local v8    # "setOption":Ljava/lang/reflect/Method;
    return-void
.end method

.method constructor <init>(Lio/netty/channel/socket/nio/NioDatagramChannel;Ljava/nio/channels/DatagramChannel;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/socket/nio/NioDatagramChannel;
    .param p2, "javaChannel"    # Ljava/nio/channels/DatagramChannel;

    .line 117
    invoke-virtual {p2}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;-><init>(Lio/netty/channel/socket/DatagramChannel;Ljava/net/DatagramSocket;)V

    .line 118
    iput-object p2, p0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->javaChannel:Ljava/nio/channels/DatagramChannel;

    .line 119
    return-void
.end method

.method private getOption0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "option"    # Ljava/lang/Object;

    .line 188
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->GET_OPTION:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->javaChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private setOption0(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p1, "option"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 200
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->SET_OPTION:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->javaChannel:Ljava/nio/channels/DatagramChannel;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    nop

    .line 209
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method protected autoReadCleared()V
    .locals 1

    .line 184
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/socket/nio/NioDatagramChannel;

    invoke-virtual {v0}, Lio/netty/channel/socket/nio/NioDatagramChannel;->clearReadPending0()V

    .line 185
    return-void
.end method

.method public getInterface()Ljava/net/InetAddress;
    .locals 3

    .line 134
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object v0

    .line 135
    .local v0, "inf":Ljava/net/NetworkInterface;
    if-eqz v0, :cond_0

    .line 136
    invoke-static {v0}, Lio/netty/util/internal/SocketUtils;->addressesFromNetworkInterface(Ljava/net/NetworkInterface;)Ljava/util/Enumeration;

    move-result-object v1

    .line 137
    .local v1, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    return-object v2

    .line 141
    .end local v1    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNetworkInterface()Ljava/net/NetworkInterface;
    .locals 1

    .line 156
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_IF:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->getOption0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    return-object v0
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 221
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lio/netty/channel/socket/nio/NioChannelOption;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->javaChannel:Ljava/nio/channels/DatagramChannel;

    move-object v1, p1

    check-cast v1, Lio/netty/channel/socket/nio/NioChannelOption;

    invoke-static {v0, v1}, Lio/netty/channel/socket/nio/NioChannelOption;->getOption(Ljava/nio/channels/Channel;Lio/netty/channel/socket/nio/NioChannelOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 231
    invoke-super {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->javaChannel:Ljava/nio/channels/DatagramChannel;

    invoke-static {v1}, Lio/netty/channel/socket/nio/NioChannelOption;->getOptions(Ljava/nio/channels/Channel;)[Lio/netty/channel/ChannelOption;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    invoke-super {p0}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToLive()I
    .locals 1

    .line 123
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_TTL:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->getOption0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isLoopbackModeDisabled()Z
    .locals 1

    .line 167
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_LOOP:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->getOption0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .line 178
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/DatagramChannelConfig;

    .line 179
    return-object p0
.end method

.method public setInterface(Ljava/net/InetAddress;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "interfaceAddress"    # Ljava/net/InetAddress;

    .line 147
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 151
    return-object p0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLoopbackModeDisabled(Z)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "loopbackModeDisabled"    # Z

    .line 172
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_LOOP:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->setOption0(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    return-object p0
.end method

.method public setNetworkInterface(Ljava/net/NetworkInterface;)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 1
    .param p1, "networkInterface"    # Ljava/net/NetworkInterface;

    .line 161
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_IF:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->setOption0(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 162
    return-object p0
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 213
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lio/netty/channel/socket/nio/NioChannelOption;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->javaChannel:Ljava/nio/channels/DatagramChannel;

    move-object v1, p1

    check-cast v1, Lio/netty/channel/socket/nio/NioChannelOption;

    invoke-static {v0, v1, p2}, Lio/netty/channel/socket/nio/NioChannelOption;->setOption(Ljava/nio/channels/Channel;Lio/netty/channel/socket/nio/NioChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/socket/DefaultDatagramChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setTimeToLive(I)Lio/netty/channel/socket/DatagramChannelConfig;
    .locals 2
    .param p1, "ttl"    # I

    .line 128
    sget-object v0, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->IP_MULTICAST_TTL:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/netty/channel/socket/nio/NioDatagramChannelConfig;->setOption0(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    return-object p0
.end method
