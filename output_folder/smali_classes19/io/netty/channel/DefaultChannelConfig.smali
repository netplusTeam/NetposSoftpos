.class public Lio/netty/channel/DefaultChannelConfig;
.super Ljava/lang/Object;
.source "DefaultChannelConfig.java"

# interfaces
.implements Lio/netty/channel/ChannelConfig;


# static fields
.field private static final AUTOREAD_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/netty/channel/DefaultChannelConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONNECT_TIMEOUT:I = 0x7530

.field private static final DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

.field private static final WATERMARK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/netty/channel/DefaultChannelConfig;",
            "Lio/netty/channel/WriteBufferWaterMark;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile allocator:Lio/netty/buffer/ByteBufAllocator;

.field private volatile autoClose:Z

.field private volatile autoRead:I

.field protected final channel:Lio/netty/channel/Channel;

.field private volatile connectTimeoutMillis:I

.field private volatile msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

.field private volatile pinEventExecutor:Z

.field private volatile rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

.field private volatile writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

.field private volatile writeSpinCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-class v0, Lio/netty/channel/DefaultChannelConfig;

    sget-object v1, Lio/netty/channel/DefaultMessageSizeEstimator;->DEFAULT:Lio/netty/channel/MessageSizeEstimator;

    sput-object v1, Lio/netty/channel/DefaultChannelConfig;->DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

    .line 51
    nop

    .line 52
    const-string v1, "autoRead"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lio/netty/channel/DefaultChannelConfig;->AUTOREAD_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 53
    const-class v1, Lio/netty/channel/WriteBufferWaterMark;

    .line 54
    const-string v2, "writeBufferWaterMark"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/netty/channel/DefaultChannelConfig;->WATERMARK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 53
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 72
    new-instance v0, Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    invoke-direct {v0}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V

    .line 73
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/RecvByteBufAllocator;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 61
    sget-object v0, Lio/netty/channel/DefaultChannelConfig;->DEFAULT_MSG_SIZE_ESTIMATOR:Lio/netty/channel/MessageSizeEstimator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    .line 63
    const/16 v0, 0x7530

    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    .line 64
    const/16 v0, 0x10

    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoRead:I

    .line 67
    iput-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    .line 68
    sget-object v1, Lio/netty/channel/WriteBufferWaterMark;->DEFAULT:Lio/netty/channel/WriteBufferWaterMark;

    iput-object v1, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    .line 69
    iput-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->pinEventExecutor:Z

    .line 76
    invoke-interface {p1}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;Lio/netty/channel/ChannelMetadata;)V

    .line 77
    iput-object p1, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    .line 78
    return-void
.end method

.method private getPinEventExecutorPerGroup()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->pinEventExecutor:Z

    return v0
.end method

.method private setPinEventExecutorPerGroup(Z)Lio/netty/channel/ChannelConfig;
    .locals 0
    .param p1, "pinEventExecutor"    # Z

    .line 409
    iput-boolean p1, p0, Lio/netty/channel/DefaultChannelConfig;->pinEventExecutor:Z

    .line 410
    return-object p0
.end method

.method private setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;Lio/netty/channel/ChannelMetadata;)V
    .locals 2
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;
    .param p2, "metadata"    # Lio/netty/channel/ChannelMetadata;

    .line 299
    instance-of v0, p1, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    if-eqz v0, :cond_0

    .line 300
    move-object v0, p1

    check-cast v0, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    invoke-virtual {p2}, Lio/netty/channel/ChannelMetadata;->defaultMaxMessagesPerRead()I

    move-result v1

    invoke-interface {v0, v1}, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;->maxMessagesPerRead(I)Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    goto :goto_0

    .line 301
    :cond_0
    if-eqz p1, :cond_1

    .line 304
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 305
    return-void

    .line 302
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "allocator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected autoReadCleared()V
    .locals 0

    .line 327
    return-void
.end method

.method public getAllocator()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 271
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public getConnectTimeoutMillis()I
    .locals 1

    .line 203
    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    return v0
.end method

.method public getMaxMessagesPerRead()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v0

    check-cast v0, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    .line 224
    .local v0, "allocator":Lio/netty/channel/MaxMessagesRecvByteBufAllocator;
    invoke-interface {v0}, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;->maxMessagesPerRead()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 225
    .end local v0    # "allocator":Lio/netty/channel/MaxMessagesRecvByteBufAllocator;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getRecvByteBufAllocator() must return an object of type MaxMessagesRecvByteBufAllocator"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;
    .locals 1

    .line 399
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    return-object v0
.end method

.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 120
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    const-string v0, "option"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getConnectTimeoutMillis()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getMaxMessagesPerRead()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 128
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteSpinCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 131
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 132
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0

    .line 134
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 135
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v0

    return-object v0

    .line 137
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 138
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->isAutoRead()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 140
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 141
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->isAutoClose()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 143
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 144
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferHighWaterMark()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 146
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 147
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferLowWaterMark()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 149
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 150
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getWriteBufferWaterMark()Lio/netty/channel/WriteBufferWaterMark;

    move-result-object v0

    return-object v0

    .line 152
    :cond_9
    sget-object v0, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    .line 153
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;

    move-result-object v0

    return-object v0

    .line 155
    :cond_a
    sget-object v0, Lio/netty/channel/ChannelOption;->SINGLE_EVENTEXECUTOR_PER_GROUP:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_b

    .line 156
    invoke-direct {p0}, Lio/netty/channel/DefaultChannelConfig;->getPinEventExecutorPerGroup()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 158
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 3
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

    .line 83
    const/16 v0, 0xc

    new-array v0, v0, [Lio/netty/channel/ChannelOption;

    sget-object v1, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_WATER_MARK:Lio/netty/channel/ChannelOption;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lio/netty/channel/ChannelOption;->SINGLE_EVENTEXECUTOR_PER_GROUP:Lio/netty/channel/ChannelOption;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/netty/channel/DefaultChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;[",
            "Lio/netty/channel/ChannelOption<",
            "*>;)",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 93
    .local p1, "result":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/ChannelOption<*>;Ljava/lang/Object;>;"
    .local p2, "options":[Lio/netty/channel/ChannelOption;, "[Lio/netty/channel/ChannelOption<*>;"
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    move-object p1, v0

    .line 96
    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 97
    .local v2, "o":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<*>;"
    invoke-virtual {p0, v2}, Lio/netty/channel/DefaultChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v2    # "o":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<*>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_1
    return-object p1
.end method

.method public getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lio/netty/channel/RecvByteBufAllocator;",
            ">()TT;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

    return-object v0
.end method

.method public getWriteBufferHighWaterMark()I
    .locals 1

    .line 342
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->high()I

    move-result v0

    return v0
.end method

.method public getWriteBufferLowWaterMark()I
    .locals 1

    .line 365
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->low()I

    move-result v0

    return v0
.end method

.method public getWriteBufferWaterMark()Lio/netty/channel/WriteBufferWaterMark;
    .locals 1

    .line 394
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    return-object v0
.end method

.method public getWriteSpinCount()I
    .locals 1

    .line 252
    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    return v0
.end method

.method public isAutoClose()Z
    .locals 1

    .line 331
    iget-boolean v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    return v0
.end method

.method public isAutoRead()Z
    .locals 2

    .line 309
    iget v0, p0, Lio/netty/channel/DefaultChannelConfig;->autoRead:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .line 276
    const-string v0, "allocator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBufAllocator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->allocator:Lio/netty/buffer/ByteBufAllocator;

    .line 277
    return-object p0
.end method

.method public setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 0
    .param p1, "autoClose"    # Z

    .line 336
    iput-boolean p1, p0, Lio/netty/channel/DefaultChannelConfig;->autoClose:Z

    .line 337
    return-object p0
.end method

.method public setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 2
    .param p1, "autoRead"    # Z

    .line 314
    sget-object v0, Lio/netty/channel/DefaultChannelConfig;->AUTOREAD_UPDATER:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 315
    .local v0, "oldAutoRead":Z
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 316
    iget-object v1, p0, Lio/netty/channel/DefaultChannelConfig;->channel:Lio/netty/channel/Channel;

    invoke-interface {v1}, Lio/netty/channel/Channel;->read()Lio/netty/channel/Channel;

    goto :goto_1

    .line 317
    :cond_1
    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->autoReadCleared()V

    .line 320
    :cond_2
    :goto_1
    return-object p0
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "connectTimeoutMillis"    # I

    .line 208
    const-string v0, "connectTimeoutMillis"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 209
    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->connectTimeoutMillis:I

    .line 210
    return-object p0
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 3
    .param p1, "maxMessagesPerRead"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v0

    check-cast v0, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;

    .line 242
    .local v0, "allocator":Lio/netty/channel/MaxMessagesRecvByteBufAllocator;
    invoke-interface {v0, p1}, Lio/netty/channel/MaxMessagesRecvByteBufAllocator;->maxMessagesPerRead(I)Lio/netty/channel/MaxMessagesRecvByteBufAllocator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    return-object p0

    .line 244
    .end local v0    # "allocator":Lio/netty/channel/MaxMessagesRecvByteBufAllocator;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getRecvByteBufAllocator() must return an object of type MaxMessagesRecvByteBufAllocator"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .line 404
    const-string v0, "estimator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/MessageSizeEstimator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->msgSizeEstimator:Lio/netty/channel/MessageSizeEstimator;

    .line 405
    return-object p0
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 164
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lio/netty/channel/ChannelOption;->CONNECT_TIMEOUT_MILLIS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 167
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    .line 168
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->MAX_MESSAGES_PER_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 169
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    .line 170
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_SPIN_COUNT:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 171
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    .line 172
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 173
    move-object v0, p2

    check-cast v0, Lio/netty/buffer/ByteBufAllocator;

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    goto/16 :goto_0

    .line 174
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->RCVBUF_ALLOCATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 175
    move-object v0, p2

    check-cast v0, Lio/netty/channel/RecvByteBufAllocator;

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 176
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_READ:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 177
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 178
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->AUTO_CLOSE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 179
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 180
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_HIGH_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 181
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 182
    :cond_7
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_LOW_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_8

    .line 183
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 184
    :cond_8
    sget-object v0, Lio/netty/channel/ChannelOption;->WRITE_BUFFER_WATER_MARK:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_9

    .line 185
    move-object v0, p2

    check-cast v0, Lio/netty/channel/WriteBufferWaterMark;

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 186
    :cond_9
    sget-object v0, Lio/netty/channel/ChannelOption;->MESSAGE_SIZE_ESTIMATOR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_a

    .line 187
    move-object v0, p2

    check-cast v0, Lio/netty/channel/MessageSizeEstimator;

    invoke-virtual {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;

    goto :goto_0

    .line 188
    :cond_a
    sget-object v0, Lio/netty/channel/ChannelOption;->SINGLE_EVENTEXECUTOR_PER_GROUP:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_b

    .line 189
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/channel/DefaultChannelConfig;->setPinEventExecutorPerGroup(Z)Lio/netty/channel/ChannelConfig;

    .line 194
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public setOptions(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/netty/channel/ChannelOption<",
            "*>;*>;)Z"
        }
    .end annotation

    .line 105
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Lio/netty/channel/ChannelOption<*>;*>;"
    const-string v0, "options"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, "setAllOptions":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 109
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/channel/ChannelOption;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lio/netty/channel/DefaultChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    const/4 v0, 0x0

    .line 112
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/netty/channel/ChannelOption<*>;*>;"
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    return v0
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .line 288
    const-string v0, "allocator"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/RecvByteBufAllocator;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->rcvBufAllocator:Lio/netty/channel/RecvByteBufAllocator;

    .line 289
    return-object p0
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 5
    .param p1, "writeBufferHighWaterMark"    # I

    .line 347
    const-string v0, "writeBufferHighWaterMark"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 349
    :goto_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    .line 350
    .local v0, "waterMark":Lio/netty/channel/WriteBufferWaterMark;
    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->low()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 356
    sget-object v1, Lio/netty/channel/DefaultChannelConfig;->WATERMARK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lio/netty/channel/WriteBufferWaterMark;

    .line 357
    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->low()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    .line 356
    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    return-object p0

    .line 360
    .end local v0    # "waterMark":Lio/netty/channel/WriteBufferWaterMark;
    :cond_0
    goto :goto_0

    .line 351
    .restart local v0    # "waterMark":Lio/netty/channel/WriteBufferWaterMark;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 353
    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->low()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 5
    .param p1, "writeBufferLowWaterMark"    # I

    .line 370
    const-string v0, "writeBufferLowWaterMark"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 372
    :goto_0
    iget-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    .line 373
    .local v0, "waterMark":Lio/netty/channel/WriteBufferWaterMark;
    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->high()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 379
    sget-object v1, Lio/netty/channel/DefaultChannelConfig;->WATERMARK_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lio/netty/channel/WriteBufferWaterMark;

    .line 380
    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->high()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    .line 379
    invoke-static {v1, p0, v0, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 381
    return-object p0

    .line 383
    .end local v0    # "waterMark":Lio/netty/channel/WriteBufferWaterMark;
    :cond_0
    goto :goto_0

    .line 374
    .restart local v0    # "waterMark":Lio/netty/channel/WriteBufferWaterMark;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 376
    invoke-virtual {v0}, Lio/netty/channel/WriteBufferWaterMark;->high()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWriteBufferWaterMark(Lio/netty/channel/WriteBufferWaterMark;)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "writeBufferWaterMark"    # Lio/netty/channel/WriteBufferWaterMark;

    .line 388
    const-string v0, "writeBufferWaterMark"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/WriteBufferWaterMark;

    iput-object v0, p0, Lio/netty/channel/DefaultChannelConfig;->writeBufferWaterMark:Lio/netty/channel/WriteBufferWaterMark;

    .line 389
    return-object p0
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "writeSpinCount"    # I

    .line 257
    const-string v0, "writeSpinCount"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 262
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 263
    add-int/lit8 p1, p1, -0x1

    .line 265
    :cond_0
    iput p1, p0, Lio/netty/channel/DefaultChannelConfig;->writeSpinCount:I

    .line 266
    return-object p0
.end method

.method protected validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 198
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "option"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelOption;

    invoke-virtual {v0, p2}, Lio/netty/channel/ChannelOption;->validate(Ljava/lang/Object;)V

    .line 199
    return-void
.end method
