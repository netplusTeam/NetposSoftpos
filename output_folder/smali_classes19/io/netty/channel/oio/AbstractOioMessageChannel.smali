.class public abstract Lio/netty/channel/oio/AbstractOioMessageChannel;
.super Lio/netty/channel/oio/AbstractOioChannel;
.source "AbstractOioMessageChannel.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final readBuf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1
    .param p1, "parent"    # Lio/netty/channel/Channel;

    .line 38
    invoke-direct {p0, p1}, Lio/netty/channel/oio/AbstractOioChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readBuf:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method protected doRead()V
    .locals 10

    .line 43
    iget-boolean v0, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readPending:Z

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readPending:Z

    .line 52
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    .line 53
    .local v1, "config":Lio/netty/channel/ChannelConfig;
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v2

    .line 54
    .local v2, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v3

    .line 55
    .local v3, "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    invoke-interface {v3, v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 57
    const/4 v4, 0x0

    .line 58
    .local v4, "closed":Z
    const/4 v5, 0x0

    .line 62
    .local v5, "exception":Ljava/lang/Throwable;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readBuf:Ljava/util/List;

    invoke-virtual {p0, v6}, Lio/netty/channel/oio/AbstractOioMessageChannel;->doReadMessages(Ljava/util/List;)I

    move-result v6

    .line 63
    .local v6, "localRead":I
    if-nez v6, :cond_2

    .line 64
    goto :goto_0

    .line 66
    :cond_2
    if-gez v6, :cond_3

    .line 67
    const/4 v4, 0x1

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v3, v6}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 72
    .end local v6    # "localRead":I
    invoke-interface {v3}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 75
    :goto_0
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v6

    .line 74
    .local v6, "t":Ljava/lang/Throwable;
    move-object v5, v6

    .line 77
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_1
    const/4 v6, 0x0

    .line 78
    .local v6, "readData":Z
    iget-object v7, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readBuf:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 79
    .local v7, "size":I
    if-lez v7, :cond_5

    .line 80
    const/4 v6, 0x1

    .line 81
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_4

    .line 82
    iput-boolean v0, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readPending:Z

    .line 83
    iget-object v9, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readBuf:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 81
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 85
    .end local v8    # "i":I
    :cond_4
    iget-object v0, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readBuf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    invoke-interface {v3}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 87
    invoke-interface {v2}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 90
    :cond_5
    if-eqz v5, :cond_7

    .line 91
    instance-of v0, v5, Ljava/io/IOException;

    if-eqz v0, :cond_6

    .line 92
    const/4 v0, 0x1

    move v4, v0

    .line 95
    :cond_6
    invoke-interface {v2, v5}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 98
    :cond_7
    if-eqz v4, :cond_8

    .line 99
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v8

    invoke-interface {v8}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v8

    invoke-interface {v0, v8}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_3

    .line 102
    :cond_8
    iget-boolean v0, p0, Lio/netty/channel/oio/AbstractOioMessageChannel;->readPending:Z

    if-nez v0, :cond_9

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez v6, :cond_a

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->isActive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 105
    :cond_9
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioMessageChannel;->read()Lio/netty/channel/Channel;

    .line 107
    :cond_a
    :goto_3
    return-void
.end method

.method protected abstract doReadMessages(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
