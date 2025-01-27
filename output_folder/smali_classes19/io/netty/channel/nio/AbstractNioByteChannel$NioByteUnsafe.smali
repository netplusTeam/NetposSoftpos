.class public Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;
.super Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.source "AbstractNioByteChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NioByteUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/nio/AbstractNioByteChannel;


# direct methods
.method protected constructor <init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/nio/AbstractNioByteChannel;

    .line 97
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    return-void
.end method

.method private closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    .locals 2
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;

    .line 100
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->isInputShutdown0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-static {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->access$000(Lio/netty/channel/ChannelConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    .line 103
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->access$102(Lio/netty/channel/nio/AbstractNioByteChannel;Z)Z

    .line 109
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 111
    :goto_0
    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 2
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "close"    # Z
    .param p5, "allocHandle"    # Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 115
    if-eqz p2, :cond_1

    .line 116
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/netty/channel/nio/AbstractNioByteChannel;->readPending:Z

    .line 118
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 123
    :cond_1
    :goto_0
    invoke-interface {p5}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 124
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 125
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 126
    if-nez p4, :cond_2

    instance-of v0, p3, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 127
    :cond_2
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V

    .line 129
    :cond_3
    return-void
.end method


# virtual methods
.method public final read()V
    .locals 12

    .line 133
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    .line 134
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1, v0}, Lio/netty/channel/nio/AbstractNioByteChannel;->shouldBreakReadReady(Lio/netty/channel/ChannelConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->clearReadPending()V

    .line 136
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 139
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v8

    .line 140
    .local v8, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v9

    .line 141
    .local v9, "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    invoke-interface {v9, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 143
    const/4 v2, 0x0

    .line 144
    .local v2, "byteBuf":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x0

    .line 147
    .local v3, "close":Z
    :cond_1
    :try_start_0
    invoke-interface {v9, v8}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    move-object v2, v4

    .line 148
    iget-object v4, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v4, v2}, Lio/netty/channel/nio/AbstractNioByteChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v4

    invoke-interface {v9, v4}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    .line 149
    invoke-interface {v9}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v4, :cond_3

    .line 151
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 152
    const/4 v2, 0x0

    .line 153
    invoke-interface {v9}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    move v3, v5

    .line 154
    if-eqz v3, :cond_4

    .line 156
    iget-object v4, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iput-boolean v6, v4, Lio/netty/channel/nio/AbstractNioByteChannel;->readPending:Z

    goto :goto_1

    .line 161
    :cond_3
    invoke-interface {v9, v5}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 162
    iget-object v4, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iput-boolean v6, v4, Lio/netty/channel/nio/AbstractNioByteChannel;->readPending:Z

    .line 163
    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 164
    const/4 v2, 0x0

    .line 165
    invoke-interface {v9}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    :cond_4
    :goto_1
    invoke-interface {v9}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 168
    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 170
    if-eqz v3, :cond_5

    .line 171
    invoke-direct {p0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_5
    iget-object v4, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v4, v4, Lio/netty/channel/nio/AbstractNioByteChannel;->readPending:Z

    if-nez v4, :cond_7

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v4

    if-nez v4, :cond_7

    .line 183
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    goto :goto_2

    .line 173
    :catchall_0
    move-exception v4

    move-object v10, v2

    move v11, v3

    move-object v5, v4

    .line 174
    .end local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "close":Z
    .local v5, "t":Ljava/lang/Throwable;
    .local v10, "byteBuf":Lio/netty/buffer/ByteBuf;
    .local v11, "close":Z
    move-object v2, p0

    move-object v3, v1

    move-object v4, v10

    move v6, v11

    move-object v7, v9

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    .end local v5    # "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v2, v2, Lio/netty/channel/nio/AbstractNioByteChannel;->readPending:Z

    if-nez v2, :cond_6

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v2

    if-nez v2, :cond_6

    .line 183
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    .line 186
    :cond_6
    move-object v2, v10

    move v3, v11

    .end local v10    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v11    # "close":Z
    .restart local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v3    # "close":Z
    :cond_7
    :goto_2
    return-void

    .line 182
    .end local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "close":Z
    .restart local v10    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v11    # "close":Z
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget-boolean v3, v3, Lio/netty/channel/nio/AbstractNioByteChannel;->readPending:Z

    if-nez v3, :cond_8

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v3

    if-nez v3, :cond_8

    .line 183
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    .line 185
    :cond_8
    throw v2
.end method
