.class public final Lio/netty/channel/socket/nio/NioChannelOption;
.super Lio/netty/channel/ChannelOption;
.source "NioChannelOption.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelOption<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final option:Ljava/net/SocketOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/net/SocketOption<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/net/SocketOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketOption<",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/netty/channel/socket/nio/NioChannelOption;, "Lio/netty/channel/socket/nio/NioChannelOption<TT;>;"
    .local p1, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    invoke-interface {p1}, Ljava/net/SocketOption;->name()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/ChannelOption;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lio/netty/channel/socket/nio/NioChannelOption;->option:Ljava/net/SocketOption;

    .line 42
    return-void
.end method

.method static getOption(Ljava/nio/channels/Channel;Lio/netty/channel/socket/nio/NioChannelOption;)Ljava/lang/Object;
    .locals 4
    .param p0, "jdkChannel"    # Ljava/nio/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/Channel;",
            "Lio/netty/channel/socket/nio/NioChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 79
    .local p1, "option":Lio/netty/channel/socket/nio/NioChannelOption;, "Lio/netty/channel/socket/nio/NioChannelOption<TT;>;"
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/NetworkChannel;

    .line 81
    .local v0, "channel":Ljava/nio/channels/NetworkChannel;
    invoke-interface {v0}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p1, Lio/netty/channel/socket/nio/NioChannelOption;->option:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 82
    return-object v2

    .line 84
    :cond_0
    instance-of v1, v0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lio/netty/channel/socket/nio/NioChannelOption;->option:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne v1, v3, :cond_1

    .line 87
    return-object v2

    .line 90
    :cond_1
    :try_start_0
    iget-object v1, p1, Lio/netty/channel/socket/nio/NioChannelOption;->option:Ljava/net/SocketOption;

    invoke-interface {v0, v1}, Ljava/nio/channels/NetworkChannel;->getOption(Ljava/net/SocketOption;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lio/netty/channel/ChannelException;

    invoke-direct {v2, v1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static getOptions(Ljava/nio/channels/Channel;)[Lio/netty/channel/ChannelOption;
    .locals 8
    .param p0, "jdkChannel"    # Ljava/nio/channels/Channel;

    .line 99
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/NetworkChannel;

    .line 100
    .local v0, "channel":Ljava/nio/channels/NetworkChannel;
    invoke-interface {v0}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v1

    .line 102
    .local v1, "supportedOpts":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/SocketOption<*>;>;"
    instance-of v2, v0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v2, :cond_2

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    .local v2, "extraOpts":Ljava/util/List;, "Ljava/util/List<Lio/netty/channel/ChannelOption<*>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/SocketOption;

    .line 105
    .local v4, "opt":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    sget-object v5, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne v4, v5, :cond_0

    .line 108
    goto :goto_0

    .line 110
    :cond_0
    new-instance v5, Lio/netty/channel/socket/nio/NioChannelOption;

    invoke-direct {v5, v4}, Lio/netty/channel/socket/nio/NioChannelOption;-><init>(Ljava/net/SocketOption;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v4    # "opt":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    goto :goto_0

    .line 112
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Lio/netty/channel/ChannelOption;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/netty/channel/ChannelOption;

    return-object v3

    .line 114
    .end local v2    # "extraOpts":Ljava/util/List;, "Ljava/util/List<Lio/netty/channel/ChannelOption<*>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lio/netty/channel/ChannelOption;

    .line 116
    .local v2, "extraOpts":[Lio/netty/channel/ChannelOption;, "[Lio/netty/channel/ChannelOption<*>;"
    const/4 v3, 0x0

    .line 117
    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/SocketOption;

    .line 118
    .local v5, "opt":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    new-instance v7, Lio/netty/channel/socket/nio/NioChannelOption;

    invoke-direct {v7, v5}, Lio/netty/channel/socket/nio/NioChannelOption;-><init>(Ljava/net/SocketOption;)V

    aput-object v7, v2, v3

    .line 119
    .end local v5    # "opt":Ljava/net/SocketOption;, "Ljava/net/SocketOption<*>;"
    move v3, v6

    goto :goto_1

    .line 120
    .end local v6    # "i":I
    .restart local v3    # "i":I
    :cond_3
    return-object v2
.end method

.method public static of(Ljava/net/SocketOption;)Lio/netty/channel/ChannelOption;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption<",
            "TT;>;)",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;"
        }
    .end annotation

    .line 48
    .local p0, "option":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    new-instance v0, Lio/netty/channel/socket/nio/NioChannelOption;

    invoke-direct {v0, p0}, Lio/netty/channel/socket/nio/NioChannelOption;-><init>(Ljava/net/SocketOption;)V

    return-object v0
.end method

.method static setOption(Ljava/nio/channels/Channel;Lio/netty/channel/socket/nio/NioChannelOption;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "jdkChannel"    # Ljava/nio/channels/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/channels/Channel;",
            "Lio/netty/channel/socket/nio/NioChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 60
    .local p1, "option":Lio/netty/channel/socket/nio/NioChannelOption;, "Lio/netty/channel/socket/nio/NioChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/NetworkChannel;

    .line 61
    .local v0, "channel":Ljava/nio/channels/NetworkChannel;
    invoke-interface {v0}, Ljava/nio/channels/NetworkChannel;->supportedOptions()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p1, Lio/netty/channel/socket/nio/NioChannelOption;->option:Ljava/net/SocketOption;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 62
    return v2

    .line 64
    :cond_0
    instance-of v1, v0, Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lio/netty/channel/socket/nio/NioChannelOption;->option:Ljava/net/SocketOption;

    sget-object v3, Ljava/net/StandardSocketOptions;->IP_TOS:Ljava/net/SocketOption;

    if-ne v1, v3, :cond_1

    .line 67
    return v2

    .line 70
    :cond_1
    :try_start_0
    iget-object v1, p1, Lio/netty/channel/socket/nio/NioChannelOption;->option:Ljava/net/SocketOption;

    invoke-interface {v0, v1, p2}, Ljava/nio/channels/NetworkChannel;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v1, 0x1

    return v1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lio/netty/channel/ChannelException;

    invoke-direct {v2, v1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
