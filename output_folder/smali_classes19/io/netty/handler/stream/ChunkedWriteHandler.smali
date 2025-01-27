.class public Lio/netty/handler/stream/ChunkedWriteHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "ChunkedWriteHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private volatile ctx:Lio/netty/channel/ChannelHandlerContext;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lio/netty/handler/stream/ChunkedWriteHandler;

    .line 71
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxPendingWrites"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    .line 84
    if-lez p1, :cond_0

    .line 88
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxPendingWrites: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: > 0)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/stream/ChunkedWriteHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelHandlerContext;

    .line 68
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelFuture;
    .param p1, "x1"    # Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    .line 68
    invoke-static {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V
    .locals 0
    .param p0, "x0"    # Lio/netty/handler/stream/ChunkedWriteHandler;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    .param p3, "x3"    # Z

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    return-void
.end method

.method private static closeInput(Lio/netty/handler/stream/ChunkedInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/stream/ChunkedInput<",
            "*>;)V"
        }
    .end annotation

    .line 345
    .local p0, "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    :try_start_0
    invoke-interface {p0}, Lio/netty/handler/stream/ChunkedInput;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    .line 347
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    sget-object v1, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close a chunked input."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private discard(Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 152
    :goto_0
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    .line 154
    .local v0, "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    if-nez v0, :cond_0

    .line 155
    nop

    .line 190
    .end local v0    # "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    return-void

    .line 157
    .restart local v0    # "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    :cond_0
    iget-object v1, v0, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    .line 158
    .local v1, "message":Ljava/lang/Object;
    instance-of v2, v1, Lio/netty/handler/stream/ChunkedInput;

    if-eqz v2, :cond_4

    .line 159
    move-object v2, v1

    check-cast v2, Lio/netty/handler/stream/ChunkedInput;

    .line 163
    .local v2, "in":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    :try_start_0
    invoke-interface {v2}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v3

    .line 164
    .local v3, "endOfInput":Z
    invoke-interface {v2}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v4

    .line 165
    .local v4, "inputLength":J
    invoke-static {v2}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 175
    if-nez v3, :cond_2

    .line 176
    if-nez p1, :cond_1

    .line 177
    new-instance v6, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v6}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object p1, v6

    .line 179
    :cond_1
    invoke-virtual {v0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {v0, v4, v5}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->success(J)V

    .line 183
    .end local v2    # "in":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .end local v3    # "endOfInput":Z
    .end local v4    # "inputLength":J
    :goto_1
    goto :goto_2

    .line 166
    .restart local v2    # "in":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 168
    invoke-virtual {v0, v3}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    .line 169
    sget-object v4, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lio/netty/handler/stream/ChunkedInput;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :cond_3
    goto :goto_0

    .line 184
    .end local v2    # "in":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    if-nez p1, :cond_5

    .line 185
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    move-object p1, v2

    .line 187
    :cond_5
    invoke-virtual {v0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    .line 189
    .end local v0    # "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    .end local v1    # "message":Ljava/lang/Object;
    :goto_2
    goto :goto_0
.end method

.method private doFlush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 193
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    .line 194
    .local v0, "channel":Lio/netty/channel/Channel;
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lio/netty/handler/stream/ChunkedWriteHandler;->discard(Ljava/lang/Throwable;)V

    .line 196
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x1

    .line 200
    .local v1, "requiresFlush":Z
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    .line 201
    .local v2, "allocator":Lio/netty/buffer/ByteBufAllocator;
    :goto_0
    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 202
    iget-object v3, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    .line 204
    .local v3, "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    if-nez v3, :cond_1

    .line 205
    goto/16 :goto_5

    .line 208
    :cond_1
    iget-object v4, v3, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v4}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 218
    iget-object v4, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 219
    goto :goto_0

    .line 222
    :cond_2
    iget-object v4, v3, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    .line 224
    .local v4, "pendingMessage":Ljava/lang/Object;
    instance-of v5, v4, Lio/netty/handler/stream/ChunkedInput;

    if-eqz v5, :cond_b

    .line 225
    move-object v5, v4

    check-cast v5, Lio/netty/handler/stream/ChunkedInput;

    .line 228
    .local v5, "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    const/4 v6, 0x0

    .line 230
    .local v6, "message":Ljava/lang/Object;
    :try_start_0
    invoke-interface {v5, v2}, Lio/netty/handler/stream/ChunkedInput;->readChunk(Lio/netty/buffer/ByteBufAllocator;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    .line 231
    invoke-interface {v5}, Lio/netty/handler/stream/ChunkedInput;->isEndOfInput()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .local v7, "endOfInput":Z
    const/4 v8, 0x1

    if-nez v6, :cond_4

    .line 235
    if-nez v7, :cond_3

    move v9, v8

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .local v9, "suspend":Z
    :goto_1
    goto :goto_2

    .line 237
    .end local v9    # "suspend":Z
    :cond_4
    const/4 v9, 0x0

    .line 249
    .restart local v9    # "suspend":Z
    :goto_2
    nop

    .line 251
    if-eqz v9, :cond_5

    .line 255
    goto :goto_5

    .line 258
    :cond_5
    if-nez v6, :cond_6

    .line 261
    sget-object v6, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 265
    :cond_6
    invoke-interface {p1, v6}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v10

    .line 266
    .local v10, "f":Lio/netty/channel/ChannelFuture;
    if-eqz v7, :cond_8

    .line 267
    iget-object v8, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 269
    invoke-interface {v10}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 270
    invoke-static {v10, v3}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    goto :goto_3

    .line 277
    :cond_7
    new-instance v8, Lio/netty/handler/stream/ChunkedWriteHandler$2;

    invoke-direct {v8, p0, v3}, Lio/netty/handler/stream/ChunkedWriteHandler$2;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V

    invoke-interface {v10, v8}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    goto :goto_3

    .line 285
    :cond_8
    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v11

    xor-int/2addr v8, v11

    .line 286
    .local v8, "resume":Z
    invoke-interface {v10}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 287
    invoke-direct {p0, v10, v3, v8}, Lio/netty/handler/stream/ChunkedWriteHandler;->handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    goto :goto_3

    .line 289
    :cond_9
    new-instance v11, Lio/netty/handler/stream/ChunkedWriteHandler$3;

    invoke-direct {v11, p0, v3, v8}, Lio/netty/handler/stream/ChunkedWriteHandler$3;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V

    invoke-interface {v10, v11}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 297
    .end local v8    # "resume":Z
    :goto_3
    const/4 v1, 0x0

    .line 298
    .end local v5    # "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .end local v6    # "message":Ljava/lang/Object;
    .end local v7    # "endOfInput":Z
    .end local v9    # "suspend":Z
    .end local v10    # "f":Lio/netty/channel/ChannelFuture;
    goto :goto_4

    .line 239
    .restart local v5    # "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .restart local v6    # "message":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    .line 240
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v8, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v8}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 242
    if-eqz v6, :cond_a

    .line 243
    invoke-static {v6}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 246
    :cond_a
    invoke-static {v5}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 247
    invoke-virtual {v3, v7}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    .line 248
    goto :goto_5

    .line 299
    .end local v5    # "chunks":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    .end local v6    # "message":Ljava/lang/Object;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_b
    iget-object v5, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 300
    iget-object v5, v3, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v4, v5}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 301
    const/4 v1, 0x1

    .line 304
    :goto_4
    invoke-interface {v0}, Lio/netty/channel/Channel;->isActive()Z

    move-result v5

    if-nez v5, :cond_c

    .line 305
    new-instance v5, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v5}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    invoke-direct {p0, v5}, Lio/netty/handler/stream/ChunkedWriteHandler;->discard(Ljava/lang/Throwable;)V

    .line 306
    goto :goto_5

    .line 308
    .end local v3    # "currentWrite":Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    .end local v4    # "pendingMessage":Ljava/lang/Object;
    :cond_c
    goto/16 :goto_0

    .line 310
    :cond_d
    :goto_5
    if-eqz v1, :cond_e

    .line 311
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->flush()Lio/netty/channel/ChannelHandlerContext;

    .line 313
    :cond_e
    return-void
.end method

.method private static handleEndOfInputFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;)V
    .locals 5
    .param p0, "future"    # Lio/netty/channel/ChannelFuture;
    .param p1, "currentWrite"    # Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    .line 316
    iget-object v0, p1, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    check-cast v0, Lio/netty/handler/stream/ChunkedInput;

    .line 317
    .local v0, "input":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 319
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v1

    .line 323
    .local v1, "inputProgress":J
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v3

    .line 324
    .local v3, "inputLength":J
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 325
    invoke-virtual {p1, v1, v2, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->progress(JJ)V

    .line 326
    invoke-virtual {p1, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->success(J)V

    .line 328
    .end local v1    # "inputProgress":J
    .end local v3    # "inputLength":J
    :goto_0
    return-void
.end method

.method private handleFuture(Lio/netty/channel/ChannelFuture;Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;Z)V
    .locals 5
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .param p2, "currentWrite"    # Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;
    .param p3, "resume"    # Z

    .line 331
    iget-object v0, p2, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->msg:Ljava/lang/Object;

    check-cast v0, Lio/netty/handler/stream/ChunkedInput;

    .line 332
    .local v0, "input":Lio/netty/handler/stream/ChunkedInput;, "Lio/netty/handler/stream/ChunkedInput<*>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    invoke-static {v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lio/netty/handler/stream/ChunkedInput;)V

    .line 334
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->fail(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->progress()J

    move-result-wide v1

    invoke-interface {v0}, Lio/netty/handler/stream/ChunkedInput;->length()J

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;->progress(JJ)V

    .line 337
    if-eqz p3, :cond_1

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    invoke-virtual {p0}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer()V

    .line 341
    :cond_1
    :goto_0
    return-void
.end method

.method private resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 119
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lio/netty/handler/stream/ChunkedWriteHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Unexpected exception while sending chunks."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 137
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 138
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 139
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 147
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;

    .line 148
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Lio/netty/handler/stream/ChunkedWriteHandler;->doFlush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 133
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 93
    return-void
.end method

.method public resumeTransfer()V
    .locals 3

    .line 99
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    .line 100
    .local v0, "ctx":Lio/netty/channel/ChannelHandlerContext;
    if-nez v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-direct {p0, v0}, Lio/netty/handler/stream/ChunkedWriteHandler;->resumeTransfer0(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    new-instance v2, Lio/netty/handler/stream/ChunkedWriteHandler$1;

    invoke-direct {v2, p0, v0}, Lio/netty/handler/stream/ChunkedWriteHandler$1;-><init>(Lio/netty/handler/stream/ChunkedWriteHandler;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 115
    :goto_0
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/netty/handler/stream/ChunkedWriteHandler;->queue:Ljava/util/Queue;

    new-instance v1, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;

    invoke-direct {v1, p2, p3}, Lio/netty/handler/stream/ChunkedWriteHandler$PendingWrite;-><init>(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method
