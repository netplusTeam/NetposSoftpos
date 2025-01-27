.class public final Lio/netty/channel/CoalescingBufferQueue;
.super Lio/netty/channel/AbstractCoalescingBufferQueue;
.source "CoalescingBufferQueue.java"


# instance fields
.field private final channel:Lio/netty/channel/Channel;


# direct methods
.method public constructor <init>(Lio/netty/channel/Channel;)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .line 39
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lio/netty/channel/CoalescingBufferQueue;-><init>(Lio/netty/channel/Channel;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;I)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "initSize"    # I

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/CoalescingBufferQueue;-><init>(Lio/netty/channel/Channel;IZ)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;IZ)V
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "initSize"    # I
    .param p3, "updateWritability"    # Z

    .line 47
    if-eqz p3, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2}, Lio/netty/channel/AbstractCoalescingBufferQueue;-><init>(Lio/netty/channel/Channel;I)V

    .line 48
    const-string v0, "channel"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/Channel;

    iput-object v0, p0, Lio/netty/channel/CoalescingBufferQueue;->channel:Lio/netty/channel/Channel;

    .line 49
    return-void
.end method


# virtual methods
.method protected compose(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "cumulation"    # Lio/netty/buffer/ByteBuf;
    .param p3, "next"    # Lio/netty/buffer/ByteBuf;

    .line 74
    instance-of v0, p2, Lio/netty/buffer/CompositeByteBuf;

    if-eqz v0, :cond_0

    .line 75
    move-object v0, p2

    check-cast v0, Lio/netty/buffer/CompositeByteBuf;

    .line 76
    .local v0, "composite":Lio/netty/buffer/CompositeByteBuf;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    .line 77
    return-object v0

    .line 79
    .end local v0    # "composite":Lio/netty/buffer/CompositeByteBuf;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/channel/CoalescingBufferQueue;->composeIntoComposite(Lio/netty/buffer/ByteBufAllocator;Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public releaseAndFailAll(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 69
    iget-object v0, p0, Lio/netty/channel/CoalescingBufferQueue;->channel:Lio/netty/channel/Channel;

    invoke-virtual {p0, v0, p1}, Lio/netty/channel/CoalescingBufferQueue;->releaseAndFailAll(Lio/netty/channel/ChannelOutboundInvoker;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public remove(ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "bytes"    # I
    .param p2, "aggregatePromise"    # Lio/netty/channel/ChannelPromise;

    .line 62
    iget-object v0, p0, Lio/netty/channel/CoalescingBufferQueue;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/channel/CoalescingBufferQueue;->remove(Lio/netty/buffer/ByteBufAllocator;ILio/netty/channel/ChannelPromise;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected removeEmptyValue()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 84
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method
