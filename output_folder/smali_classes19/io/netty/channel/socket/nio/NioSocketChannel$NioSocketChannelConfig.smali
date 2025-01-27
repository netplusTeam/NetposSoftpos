.class final Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;
.super Lio/netty/channel/socket/DefaultSocketChannelConfig;
.source "NioSocketChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/socket/nio/NioSocketChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NioSocketChannelConfig"
.end annotation


# instance fields
.field private volatile maxBytesPerGatheringWrite:I

.field final synthetic this$0:Lio/netty/channel/socket/nio/NioSocketChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/socket/nio/NioSocketChannel;Ljava/net/Socket;)V
    .locals 0
    .param p2, "channel"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .param p3, "javaSocket"    # Ljava/net/Socket;

    .line 469
    iput-object p1, p0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->this$0:Lio/netty/channel/socket/nio/NioSocketChannel;

    .line 470
    invoke-direct {p0, p2, p3}, Lio/netty/channel/socket/DefaultSocketChannelConfig;-><init>(Lio/netty/channel/socket/SocketChannel;Ljava/net/Socket;)V

    .line 468
    const p1, 0x7fffffff

    iput p1, p0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->maxBytesPerGatheringWrite:I

    .line 471
    invoke-direct {p0}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->calculateMaxBytesPerGatheringWrite()V

    .line 472
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/socket/nio/NioSocketChannel;Ljava/net/Socket;Lio/netty/channel/socket/nio/NioSocketChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .param p2, "x1"    # Lio/netty/channel/socket/nio/NioSocketChannel;
    .param p3, "x2"    # Ljava/net/Socket;
    .param p4, "x3"    # Lio/netty/channel/socket/nio/NioSocketChannel$1;

    .line 467
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;-><init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/socket/nio/NioSocketChannel;Ljava/net/Socket;)V

    return-void
.end method

.method private calculateMaxBytesPerGatheringWrite()V
    .locals 1

    .line 520
    invoke-virtual {p0}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->getSendBufferSize()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 521
    .local v0, "newSendBufferSize":I
    if-lez v0, :cond_0

    .line 522
    invoke-virtual {p0, v0}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->setMaxBytesPerGatheringWrite(I)V

    .line 524
    :cond_0
    return-void
.end method

.method private jdkChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 527
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->channel:Lio/netty/channel/Channel;

    check-cast v0, Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-virtual {v0}, Lio/netty/channel/socket/nio/NioSocketChannel;->javaChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected autoReadCleared()V
    .locals 1

    .line 476
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->this$0:Lio/netty/channel/socket/nio/NioSocketChannel;

    invoke-static {v0}, Lio/netty/channel/socket/nio/NioSocketChannel;->access$600(Lio/netty/channel/socket/nio/NioSocketChannel;)V

    .line 477
    return-void
.end method

.method getMaxBytesPerGatheringWrite()I
    .locals 1

    .line 515
    iget v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->maxBytesPerGatheringWrite:I

    return v0
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

    .line 496
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lio/netty/channel/socket/nio/NioChannelOption;

    if-eqz v0, :cond_0

    .line 497
    invoke-direct {p0}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->jdkChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lio/netty/channel/socket/nio/NioChannelOption;

    invoke-static {v0, v1}, Lio/netty/channel/socket/nio/NioChannelOption;->getOption(Ljava/nio/channels/Channel;Lio/netty/channel/socket/nio/NioChannelOption;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 499
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

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

    .line 504
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 505
    invoke-super {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->jdkChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    invoke-static {v1}, Lio/netty/channel/socket/nio/NioChannelOption;->getOptions(Ljava/nio/channels/Channel;)[Lio/netty/channel/ChannelOption;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 507
    :cond_0
    invoke-super {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method setMaxBytesPerGatheringWrite(I)V
    .locals 0
    .param p1, "maxBytesPerGatheringWrite"    # I

    .line 511
    iput p1, p0, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->maxBytesPerGatheringWrite:I

    .line 512
    return-void
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

    .line 488
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Lio/netty/channel/socket/nio/NioChannelOption;

    if-eqz v0, :cond_0

    .line 489
    invoke-direct {p0}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->jdkChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lio/netty/channel/socket/nio/NioChannelOption;

    invoke-static {v0, v1, p2}, Lio/netty/channel/socket/nio/NioChannelOption;->setOption(Ljava/nio/channels/Channel;Lio/netty/channel/socket/nio/NioChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 491
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setSendBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0

    .line 467
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->setSendBufferSize(I)Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;

    move-result-object p1

    return-object p1
.end method

.method public setSendBufferSize(I)Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;
    .locals 0
    .param p1, "sendBufferSize"    # I

    .line 481
    invoke-super {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setSendBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 482
    invoke-direct {p0}, Lio/netty/channel/socket/nio/NioSocketChannel$NioSocketChannelConfig;->calculateMaxBytesPerGatheringWrite()V

    .line 483
    return-object p0
.end method
