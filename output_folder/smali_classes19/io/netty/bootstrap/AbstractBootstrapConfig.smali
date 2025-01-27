.class public abstract Lio/netty/bootstrap/AbstractBootstrapConfig;
.super Ljava/lang/Object;
.source "AbstractBootstrapConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lio/netty/bootstrap/AbstractBootstrap<",
        "TB;TC;>;C::",
        "Lio/netty/channel/Channel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final bootstrap:Lio/netty/bootstrap/AbstractBootstrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/netty/bootstrap/AbstractBootstrap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrapConfig;, "Lio/netty/bootstrap/AbstractBootstrapConfig<TB;TC;>;"
    .local p1, "bootstrap":Lio/netty/bootstrap/AbstractBootstrap;, "TB;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "bootstrap"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/AbstractBootstrap;

    iput-object v0, p0, Lio/netty/bootstrap/AbstractBootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    .line 38
    return-void
.end method


# virtual methods
.method public final attrs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/netty/util/AttributeKey<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrapConfig;, "Lio/netty/bootstrap/AbstractBootstrapConfig<TB;TC;>;"
    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrap;->attrs()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final channelFactory()Lio/netty/bootstrap/ChannelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/bootstrap/ChannelFactory<",
            "+TC;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrapConfig;, "Lio/netty/bootstrap/AbstractBootstrapConfig<TB;TC;>;"
    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrap;->channelFactory()Lio/netty/bootstrap/ChannelFactory;

    move-result-object v0

    return-object v0
.end method

.method public final group()Lio/netty/channel/EventLoopGroup;
    .locals 1

    .line 81
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrapConfig;, "Lio/netty/bootstrap/AbstractBootstrapConfig<TB;TC;>;"
    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrap;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v0

    return-object v0
.end method

.method public final handler()Lio/netty/channel/ChannelHandler;
    .locals 1

    .line 59
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrapConfig;, "Lio/netty/bootstrap/AbstractBootstrapConfig<TB;TC;>;"
    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrap;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v0

    return-object v0
.end method

.method public final localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 44
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrapConfig;, "Lio/netty/bootstrap/AbstractBootstrapConfig<TB;TC;>;"
    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrap;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final options()Ljava/util/Map;
    .locals 1
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

    .line 66
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrapConfig;, "Lio/netty/bootstrap/AbstractBootstrapConfig<TB;TC;>;"
    iget-object v0, p0, Lio/netty/bootstrap/AbstractBootstrapConfig;->bootstrap:Lio/netty/bootstrap/AbstractBootstrap;

    invoke-virtual {v0}, Lio/netty/bootstrap/AbstractBootstrap;->options()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 86
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrapConfig;, "Lio/netty/bootstrap/AbstractBootstrapConfig<TB;TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 89
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->group()Lio/netty/channel/EventLoopGroup;

    move-result-object v2

    .line 90
    .local v2, "group":Lio/netty/channel/EventLoopGroup;
    const-string v3, ", "

    if-eqz v2, :cond_0

    .line 91
    const-string v4, "group: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 92
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->channelFactory()Lio/netty/bootstrap/ChannelFactory;

    move-result-object v4

    .line 97
    .local v4, "factory":Lio/netty/bootstrap/ChannelFactory;, "Lio/netty/bootstrap/ChannelFactory<+TC;>;"
    if-eqz v4, :cond_1

    .line 98
    const-string v5, "channelFactory: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 100
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_1
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->localAddress()Ljava/net/SocketAddress;

    move-result-object v5

    .line 103
    .local v5, "localAddress":Ljava/net/SocketAddress;
    if-eqz v5, :cond_2

    .line 104
    const-string v6, "localAddress: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 105
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 106
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_2
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->options()Ljava/util/Map;

    move-result-object v6

    .line 110
    .local v6, "options":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 111
    const-string v7, "options: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 112
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 113
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_3
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->attrs()Ljava/util/Map;

    move-result-object v7

    .line 116
    .local v7, "attrs":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/util/AttributeKey<*>;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 117
    const-string v8, "attrs: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 118
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 119
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    :cond_4
    invoke-virtual {p0}, Lio/netty/bootstrap/AbstractBootstrapConfig;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v8

    .line 122
    .local v8, "handler":Lio/netty/channel/ChannelHandler;
    if-eqz v8, :cond_5

    .line 123
    const-string v9, "handler: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 124
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 125
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v9, 0x29

    if-ne v3, v1, :cond_6

    .line 128
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1, v9}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 133
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
