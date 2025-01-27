.class public abstract Lio/netty/channel/oio/AbstractOioByteChannel;
.super Lio/netty/channel/oio/AbstractOioChannel;
.source "AbstractOioByteChannel.java"


# static fields
.field private static final EXPECTED_TYPES:Ljava/lang/String;

.field private static final METADATA:Lio/netty/channel/ChannelMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lio/netty/channel/ChannelMetadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/channel/ChannelMetadata;-><init>(Z)V

    sput-object v0, Lio/netty/channel/oio/AbstractOioByteChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/buffer/ByteBuf;

    .line 44
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lio/netty/channel/FileRegion;

    .line 45
    invoke-static {v1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/netty/channel/oio/AbstractOioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;)V
    .locals 0
    .param p1, "parent"    # Lio/netty/channel/Channel;

    .line 51
    invoke-direct {p0, p1}, Lio/netty/channel/oio/AbstractOioChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 52
    return-void
.end method

.method private closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    .locals 3
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;

    .line 72
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    sget-object v2, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    .line 75
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 79
    :goto_0
    sget-object v0, Lio/netty/channel/socket/ChannelInputShutdownReadComplete;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownReadComplete;

    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 81
    :cond_1
    return-void
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    .locals 1
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "close"    # Z
    .param p5, "allocHandle"    # Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 85
    if-eqz p2, :cond_1

    .line 86
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    .line 88
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 93
    :cond_1
    :goto_0
    invoke-interface {p5}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 94
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 95
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 96
    if-nez p4, :cond_2

    instance-of v0, p3, Ljava/io/IOException;

    if-eqz v0, :cond_3

    .line 97
    :cond_2
    invoke-direct {p0, p1}, Lio/netty/channel/oio/AbstractOioByteChannel;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V

    .line 99
    :cond_3
    return-void
.end method


# virtual methods
.method protected abstract available()I
.end method

.method protected doRead()V
    .locals 13

    .line 103
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    .line 104
    .local v0, "config":Lio/netty/channel/ChannelConfig;
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isInputShutdown()Z

    move-result v1

    if-nez v1, :cond_13

    iget-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 111
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    .line 113
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v8

    .line 114
    .local v8, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v9

    .line 115
    .local v9, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel$Unsafe;->recvBufAllocHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v10

    .line 116
    .local v10, "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    invoke-interface {v10, v0}, Lio/netty/channel/RecvByteBufAllocator$Handle;->reset(Lio/netty/channel/ChannelConfig;)V

    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, "byteBuf":Lio/netty/buffer/ByteBuf;
    const/4 v3, 0x0

    .line 120
    .local v3, "close":Z
    const/4 v4, 0x0

    .line 122
    .local v4, "readData":Z
    :try_start_0
    invoke-interface {v10, v9}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    move-object v2, v5

    .line 124
    :cond_1
    invoke-virtual {p0, v2}, Lio/netty/channel/oio/AbstractOioByteChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v5

    invoke-interface {v10, v5}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead(I)V

    .line 125
    invoke-interface {v10}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v5

    const/4 v6, 0x1

    if-gtz v5, :cond_3

    .line 126
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v5

    if-nez v5, :cond_8

    .line 127
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 128
    const/4 v2, 0x0

    .line 129
    invoke-interface {v10}, Lio/netty/channel/RecvByteBufAllocator$Handle;->lastBytesRead()I

    move-result v5

    if-gez v5, :cond_2

    goto :goto_0

    :cond_2
    move v6, v1

    :goto_0
    move v3, v6

    .line 130
    if-eqz v3, :cond_8

    .line 132
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    goto :goto_2

    .line 137
    :cond_3
    const/4 v4, 0x1

    .line 140
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->available()I

    move-result v5

    .line 141
    .local v5, "available":I
    if-gtz v5, :cond_4

    .line 142
    goto :goto_2

    .line 146
    :cond_4
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->isWritable()Z

    move-result v7

    if-nez v7, :cond_7

    .line 147
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v7

    .line 148
    .local v7, "capacity":I
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->maxCapacity()I

    move-result v11

    .line 149
    .local v11, "maxCapacity":I
    if-ne v7, v11, :cond_5

    .line 150
    invoke-interface {v10, v6}, Lio/netty/channel/RecvByteBufAllocator$Handle;->incMessagesRead(I)V

    .line 151
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    .line 152
    invoke-interface {v8, v2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 153
    invoke-interface {v10, v9}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    move-object v2, v6

    goto :goto_1

    .line 155
    :cond_5
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v6

    .line 156
    .local v6, "writerIndex":I
    add-int v12, v6, v5

    if-le v12, v11, :cond_6

    .line 157
    invoke-virtual {v2, v11}, Lio/netty/buffer/ByteBuf;->capacity(I)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 159
    :cond_6
    invoke-virtual {v2, v5}, Lio/netty/buffer/ByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 163
    .end local v5    # "available":I
    .end local v6    # "writerIndex":I
    .end local v7    # "capacity":I
    .end local v11    # "maxCapacity":I
    :cond_7
    :goto_1
    invoke-interface {v10}, Lio/netty/channel/RecvByteBufAllocator$Handle;->continueReading()Z

    move-result v5

    if-nez v5, :cond_1

    .line 165
    :cond_8
    :goto_2
    if-eqz v2, :cond_a

    .line 168
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 169
    iput-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    .line 170
    invoke-interface {v8, v2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    goto :goto_3

    .line 172
    :cond_9
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 174
    :goto_3
    const/4 v1, 0x0

    move-object v2, v1

    .line 177
    :cond_a
    if-eqz v4, :cond_b

    .line 178
    invoke-interface {v10}, Lio/netty/channel/RecvByteBufAllocator$Handle;->readComplete()V

    .line 179
    invoke-interface {v8}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 182
    :cond_b
    if-eqz v3, :cond_c

    .line 183
    invoke-direct {p0, v8}, Lio/netty/channel/oio/AbstractOioByteChannel;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :cond_c
    iget-boolean v1, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    if-nez v1, :cond_d

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v1

    if-nez v1, :cond_d

    if-nez v4, :cond_10

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 191
    :cond_d
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->read()Lio/netty/channel/Channel;

    goto :goto_4

    .line 185
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    move v11, v3

    move v12, v4

    .line 186
    .end local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "close":Z
    .end local v4    # "readData":Z
    .local v1, "byteBuf":Lio/netty/buffer/ByteBuf;
    .local v5, "t":Ljava/lang/Throwable;
    .local v11, "close":Z
    .local v12, "readData":Z
    move-object v2, p0

    move-object v3, v8

    move-object v4, v1

    move v6, v11

    move-object v7, v10

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lio/netty/channel/oio/AbstractOioByteChannel;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;ZLio/netty/channel/RecvByteBufAllocator$Handle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    .end local v5    # "t":Ljava/lang/Throwable;
    iget-boolean v2, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    if-nez v2, :cond_e

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v2

    if-nez v2, :cond_e

    if-nez v12, :cond_f

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isActive()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 191
    :cond_e
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->read()Lio/netty/channel/Channel;

    .line 194
    :cond_f
    move-object v2, v1

    move v3, v11

    move v4, v12

    .end local v1    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v11    # "close":Z
    .end local v12    # "readData":Z
    .restart local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v3    # "close":Z
    .restart local v4    # "readData":Z
    :cond_10
    :goto_4
    return-void

    .line 188
    .end local v2    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "close":Z
    .end local v4    # "readData":Z
    .restart local v1    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .restart local v11    # "close":Z
    .restart local v12    # "readData":Z
    :catchall_1
    move-exception v2

    iget-boolean v3, p0, Lio/netty/channel/oio/AbstractOioByteChannel;->readPending:Z

    if-nez v3, :cond_11

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v3

    if-nez v3, :cond_11

    if-nez v12, :cond_12

    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->isActive()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 191
    :cond_11
    invoke-virtual {p0}, Lio/netty/channel/oio/AbstractOioByteChannel;->read()Lio/netty/channel/Channel;

    .line 193
    :cond_12
    throw v2

    .line 107
    .end local v1    # "byteBuf":Lio/netty/buffer/ByteBuf;
    .end local v8    # "pipeline":Lio/netty/channel/ChannelPipeline;
    .end local v9    # "allocator":Lio/netty/buffer/ByteBufAllocator;
    .end local v10    # "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    .end local v11    # "close":Z
    .end local v12    # "readData":Z
    :cond_13
    :goto_5
    return-void
.end method

.method protected abstract doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .locals 6
    .param p1, "in"    # Lio/netty/channel/ChannelOutboundBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    :goto_0
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->current()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "msg":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 202
    nop

    .line 225
    .end local v0    # "msg":Ljava/lang/Object;
    return-void

    .line 204
    .restart local v0    # "msg":Ljava/lang/Object;
    :cond_0
    instance-of v1, v0, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_2

    .line 205
    move-object v1, v0

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 206
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 207
    .local v2, "readableBytes":I
    :goto_1
    if-lez v2, :cond_1

    .line 208
    invoke-virtual {p0, v1}, Lio/netty/channel/oio/AbstractOioByteChannel;->doWriteBytes(Lio/netty/buffer/ByteBuf;)V

    .line 209
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    .line 210
    .local v3, "newReadableBytes":I
    sub-int v4, v2, v3

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 211
    move v2, v3

    .line 212
    .end local v3    # "newReadableBytes":I
    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 214
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v2    # "readableBytes":I
    goto :goto_2

    :cond_2
    instance-of v1, v0, Lio/netty/channel/FileRegion;

    if-eqz v1, :cond_3

    .line 215
    move-object v1, v0

    check-cast v1, Lio/netty/channel/FileRegion;

    .line 216
    .local v1, "region":Lio/netty/channel/FileRegion;
    invoke-interface {v1}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v2

    .line 217
    .local v2, "transferred":J
    invoke-virtual {p0, v1}, Lio/netty/channel/oio/AbstractOioByteChannel;->doWriteFileRegion(Lio/netty/channel/FileRegion;)V

    .line 218
    invoke-interface {v1}, Lio/netty/channel/FileRegion;->transferred()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1, v4, v5}, Lio/netty/channel/ChannelOutboundBuffer;->progress(J)V

    .line 219
    invoke-virtual {p1}, Lio/netty/channel/ChannelOutboundBuffer;->remove()Z

    .line 220
    .end local v1    # "region":Lio/netty/channel/FileRegion;
    .end local v2    # "transferred":J
    goto :goto_2

    .line 221
    :cond_3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 222
    invoke-static {v0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1, v1}, Lio/netty/channel/ChannelOutboundBuffer;->remove(Ljava/lang/Throwable;)Z

    .line 224
    .end local v0    # "msg":Ljava/lang/Object;
    :goto_2
    goto :goto_0
.end method

.method protected abstract doWriteBytes(Lio/netty/buffer/ByteBuf;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doWriteFileRegion(Lio/netty/channel/FileRegion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    instance-of v0, p1, Lio/netty/buffer/ByteBuf;

    if-nez v0, :cond_1

    instance-of v0, p1, Lio/netty/channel/FileRegion;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    invoke-static {p1}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/netty/channel/oio/AbstractOioByteChannel;->EXPECTED_TYPES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_1
    :goto_0
    return-object p1
.end method

.method protected abstract isInputShutdown()Z
.end method

.method public metadata()Lio/netty/channel/ChannelMetadata;
    .locals 1

    .line 56
    sget-object v0, Lio/netty/channel/oio/AbstractOioByteChannel;->METADATA:Lio/netty/channel/ChannelMetadata;

    return-object v0
.end method

.method protected abstract shutdownInput()Lio/netty/channel/ChannelFuture;
.end method
