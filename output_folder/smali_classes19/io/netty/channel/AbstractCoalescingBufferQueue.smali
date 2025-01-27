.class public abstract Lio/netty/channel/AbstractCoalescingBufferQueue;
.super Ljava/lang/Object;
.source "AbstractCoalescingBufferQueue.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final bufAndListenerPairs:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private readableBytes:I

.field private final tracker:Lio/netty/channel/PendingBytesTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    nop

    .line 33
    const-class v0, Lio/netty/channel/AbstractCoalescingBufferQueue;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/AbstractCoalescingBufferQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;I)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "initSize"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p2}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    .line 47
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/netty/channel/PendingBytesTracker;->newTracker(Lio/netty/channel/Channel;)Lio/netty/channel/PendingBytesTracker;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    .line 48
    return-void
.end method

.method private addFirst(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFutureListener;)V
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "listener"    # Lio/netty/channel/ChannelFutureListener;

    .line 61
    if-eqz p2, :cond_0

    .line 62
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 64
    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->incrementReadableBytes(I)V

    .line 66
    return-void
.end method

.method private decrementReadableBytes(I)V
    .locals 3
    .param p1, "decrement"    # I

    .line 367
    iget v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    .line 368
    if-ltz v0, :cond_1

    .line 369
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    if-eqz v0, :cond_0

    .line 370
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/netty/channel/PendingBytesTracker;->decrementPendingOutboundBytes(J)V

    .line 372
    :cond_0
    return-void

    .line 368
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private incrementReadableBytes(I)V
    .locals 4
    .param p1, "increment"    # I

    .line 356
    iget v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    add-int v1, v0, p1

    .line 357
    .local v1, "nextReadableBytes":I
    if-lt v1, v0, :cond_1

    .line 360
    iput v1, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    .line 361
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->tracker:Lio/netty/channel/PendingBytesTracker;

    if-eqz v0, :cond_0

    .line 362
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lio/netty/channel/PendingBytesTracker;->incrementPendingOutboundBytes(J)V

    .line 364
    :cond_0
    return-void

    .line 358
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buffer queue length overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private releaseAndCompleteAll(Lio/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;

    .line 329
    iget v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->decrementReadableBytes(I)V

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "pending":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 333
    .local v1, "entry":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 334
    nop

    .line 350
    .end local v1    # "entry":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 353
    return-void

    .line 351
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 337
    .restart local v1    # "entry":Ljava/lang/Object;
    :cond_1
    :try_start_0
    instance-of v2, v1, Lio/netty/buffer/ByteBuf;

    if-eqz v2, :cond_2

    .line 338
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    goto :goto_1

    .line 340
    :cond_2
    move-object v2, v1

    check-cast v2, Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v2, p1}, Lio/netty/channel/ChannelFutureListener;->operationComplete(Lio/netty/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :goto_1
    goto :goto_2

    .line 342
    :catchall_0
    move-exception v2

    .line 343
    .local v2, "t":Ljava/lang/Throwable;
    if-nez v0, :cond_3

    .line 344
    move-object v0, v2

    goto :goto_2

    .line 346
    :cond_3
    sget-object v3, Lio/netty/channel/AbstractCoalescingBufferQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Throwable being suppressed because Throwable {} is already pending"

    invoke-interface {v3, v4, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    .end local v1    # "entry":Ljava/lang/Object;
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_0
.end method

.method private static toChannelFutureListener(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFutureListener;
    .locals 1
    .param p0, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 375
    invoke-interface {p0}, Lio/netty/channel/ChannelPromise;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/channel/DelegatingChannelPromiseNotifier;

    invoke-direct {v0, p0}, Lio/netty/channel/DelegatingChannelPromiseNotifier;-><init>(Lio/netty/channel/ChannelPromise;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final add(Lio/netty/buffer/ByteBuf;)V
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 72
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lio/netty/channel/ChannelFutureListener;

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFutureListener;)V

    .line 73
    return-void
.end method

.method public final add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFutureListener;)V
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "listener"    # Lio/netty/channel/ChannelFutureListener;

    .line 96
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 97
    if-eqz p2, :cond_0

    .line 98
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->incrementReadableBytes(I)V

    .line 101
    return-void
.end method

.method public final add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 84
    invoke-static {p2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->toChannelFutureListener(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFutureListener;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->add(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFutureListener;)V

    .line 85
    return-void
.end method

.method public final addFirst(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 57
    invoke-static {p2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->toChannelFutureListener(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFutureListener;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->addFirst(Lio/netty/buffer/ByteBuf;Lio/netty/channel/ChannelFutureListener;)V

    .line 58
    return-void
.end method

.method protected abstract compose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
.end method

.method protected composeFirst(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "first"    # Lio/netty/buffer/ByteBuf;

    .line 311
    return-object p2
.end method

.method protected final composeIntoComposite(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p3, "next"    # Lio/netty/buffer/ByteBuf;

    .line 273
    invoke-virtual {p0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    .line 275
    .local v0, "composite":Lio/netty/buffer/CompositeByteBuf;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 276
    invoke-virtual {v0, v1, p3}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v1

    .line 278
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf;->release()Z

    .line 279
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 280
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 282
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method protected final copyAndCompose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p3, "next"    # Lio/netty/buffer/ByteBuf;

    .line 293
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v1

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lio/netty/buffer/ByteBufAllocator;->ioBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 295
    .local v0, "newCumulation":Lio/netty/buffer/ByteBuf;
    :try_start_0
    invoke-virtual {v0, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    invoke-virtual {v1, p3}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    goto :goto_0

    .line 296
    :catchall_0
    move-exception v1

    .line 297
    .local v1, "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 298
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 299
    invoke-static {v1}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 301
    .end local v1    # "cause":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 302
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 303
    return-object v0
.end method

.method public final copyTo(Lio/netty/channel/AbstractCoalescingBufferQueue;)V
    .locals 2
    .param p1, "dest"    # Lio/netty/channel/AbstractCoalescingBufferQueue;

    .line 215
    iget-object v0, p1, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 216
    iget v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    invoke-direct {p1, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->incrementReadableBytes(I)V

    .line 217
    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    .line 200
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final readableBytes()I
    .locals 1

    .line 193
    iget v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    return v0
.end method

.method public final releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "invoker"    # Lio/netty/channel/ChannelOutboundInvoker;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 207
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelOutboundInvoker;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->releaseAndCompleteAll(Lio/netty/channel/ChannelFuture;)V

    .line 208
    return-void
.end method

.method public final remove(Lio/netty/buffer/ByteBufAllocator;ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "bytes"    # I
    .param p3, "aggregatePromise"    # Lio/netty/channel/ChannelPromise;

    .line 138
    const-string v0, "bytes"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 139
    const-string v0, "aggregatePromise"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->removeEmptyValue()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    iget v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "toReturn":Lio/netty/buffer/ByteBuf;
    const/4 v1, 0x0

    .line 149
    .local v1, "entryBuffer":Lio/netty/buffer/ByteBuf;
    move v2, p2

    .line 152
    .local v2, "originalBytes":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v3

    .line 153
    .local v3, "entry":Ljava/lang/Object;
    if-nez v3, :cond_1

    .line 154
    goto :goto_2

    .line 156
    :cond_1
    instance-of v4, v3, Lio/netty/channel/ChannelFutureListener;

    if-eqz v4, :cond_2

    .line 157
    move-object v4, v3

    check-cast v4, Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p3, v4}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 158
    goto :goto_0

    .line 160
    :cond_2
    move-object v4, v3

    check-cast v4, Lio/netty/buffer/ByteBuf;

    move-object v1, v4

    .line 161
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-le v4, p2, :cond_5

    .line 163
    iget-object v4, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 164
    if-lez p2, :cond_4

    .line 166
    invoke-virtual {v1, p2}, Lio/netty/buffer/ByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    move-object v1, v4

    .line 167
    if-nez v0, :cond_3

    invoke-virtual {p0, p1, v1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->composeFirst(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p0, p1, v0, v1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->compose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    :goto_1
    move-object v0, v4

    .line 169
    const/4 p2, 0x0

    .line 184
    .end local v3    # "entry":Ljava/lang/Object;
    :cond_4
    :goto_2
    goto :goto_4

    .line 173
    .restart local v3    # "entry":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int/2addr p2, v4

    .line 174
    if-nez v0, :cond_6

    invoke-virtual {p0, p1, v1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->composeFirst(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    goto :goto_3

    .line 175
    :cond_6
    invoke-virtual {p0, p1, v0, v1}, Lio/netty/channel/AbstractCoalescingBufferQueue;->compose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    move-object v0, v4

    .line 177
    const/4 v1, 0x0

    .line 178
    .end local v3    # "entry":Ljava/lang/Object;
    goto :goto_0

    .line 179
    :catchall_0
    move-exception v3

    .line 180
    .local v3, "cause":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 181
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 182
    invoke-interface {p3, v3}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 183
    invoke-static {v3}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 185
    .end local v3    # "cause":Ljava/lang/Throwable;
    :goto_4
    sub-int v3, v2, p2

    invoke-direct {p0, v3}, Lio/netty/channel/AbstractCoalescingBufferQueue;->decrementReadableBytes(I)V

    .line 186
    return-object v0
.end method

.method protected abstract removeEmptyValue()Lio/netty/buffer/ByteBuf;
.end method

.method public final removeFirst(Lio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "aggregatePromise"    # Lio/netty/channel/ChannelPromise;

    .line 109
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 110
    .local v0, "entry":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 111
    const/4 v1, 0x0

    return-object v1

    .line 113
    :cond_0
    instance-of v1, v0, Lio/netty/buffer/ByteBuf;

    if-eqz v1, :cond_2

    .line 114
    move-object v1, v0

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 116
    .local v1, "result":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    invoke-direct {p0, v2}, Lio/netty/channel/AbstractCoalescingBufferQueue;->decrementReadableBytes(I)V

    .line 118
    iget-object v2, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 119
    instance-of v2, v0, Lio/netty/channel/ChannelFutureListener;

    if-eqz v2, :cond_1

    .line 120
    move-object v2, v0

    check-cast v2, Lio/netty/channel/ChannelFutureListener;

    invoke-interface {p1, v2}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;

    .line 121
    iget-object v2, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 123
    :cond_1
    return-object v1

    .line 113
    .end local v1    # "result":Lio/netty/buffer/ByteBuf;
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method protected final size()I
    .locals 1

    .line 325
    iget-object v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method

.method public final writeAndRemoveAll(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 224
    iget v0, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->readableBytes:I

    invoke-direct {p0, v0}, Lio/netty/channel/AbstractCoalescingBufferQueue;->decrementReadableBytes(I)V

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "pending":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 228
    .local v1, "previousBuf":Lio/netty/buffer/ByteBuf;
    :goto_0
    iget-object v2, p0, Lio/netty/channel/AbstractCoalescingBufferQueue;->bufAndListenerPairs:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    .line 230
    .local v2, "entry":Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 231
    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    nop

    .line 257
    .end local v2    # "entry":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 260
    return-void

    .line 258
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 237
    .restart local v2    # "entry":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v3, v2, Lio/netty/buffer/ByteBuf;

    if-eqz v3, :cond_4

    .line 238
    if-eqz v1, :cond_3

    .line 239
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 241
    :cond_3
    move-object v3, v2

    check-cast v3, Lio/netty/buffer/ByteBuf;

    move-object v1, v3

    goto :goto_1

    .line 242
    :cond_4
    instance-of v3, v2, Lio/netty/channel/ChannelPromise;

    if-eqz v3, :cond_5

    .line 243
    move-object v3, v2

    check-cast v3, Lio/netty/channel/ChannelPromise;

    invoke-interface {p1, v1, v3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 244
    const/4 v1, 0x0

    goto :goto_1

    .line 246
    :cond_5
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Lio/netty/channel/ChannelFutureListener;

    invoke-interface {v3, v4}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    const/4 v1, 0x0

    .line 255
    :goto_1
    goto :goto_2

    .line 249
    :catchall_0
    move-exception v3

    .line 250
    .local v3, "t":Ljava/lang/Throwable;
    if-nez v0, :cond_6

    .line 251
    move-object v0, v3

    goto :goto_2

    .line 253
    :cond_6
    sget-object v4, Lio/netty/channel/AbstractCoalescingBufferQueue;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Throwable being suppressed because Throwable {} is already pending"

    invoke-interface {v4, v5, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    .end local v2    # "entry":Ljava/lang/Object;
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_2
    goto :goto_0
.end method
