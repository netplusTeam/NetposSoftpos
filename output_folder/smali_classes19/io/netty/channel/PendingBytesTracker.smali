.class abstract Lio/netty/channel/PendingBytesTracker;
.super Ljava/lang/Object;
.source "PendingBytesTracker.java"

# interfaces
.implements Lio/netty/channel/MessageSizeEstimator$Handle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/PendingBytesTracker$NoopPendingBytesTracker;,
        Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;,
        Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;
    }
.end annotation


# instance fields
.field private final estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;


# direct methods
.method private constructor <init>(Lio/netty/channel/MessageSizeEstimator$Handle;)V
    .locals 1
    .param p1, "estimatorHandle"    # Lio/netty/channel/MessageSizeEstimator$Handle;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "estimatorHandle"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/MessageSizeEstimator$Handle;

    iput-object v0, p0, Lio/netty/channel/PendingBytesTracker;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/MessageSizeEstimator$Handle;Lio/netty/channel/PendingBytesTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/MessageSizeEstimator$Handle;
    .param p2, "x1"    # Lio/netty/channel/PendingBytesTracker$1;

    .line 20
    invoke-direct {p0, p1}, Lio/netty/channel/PendingBytesTracker;-><init>(Lio/netty/channel/MessageSizeEstimator$Handle;)V

    return-void
.end method

.method static newTracker(Lio/netty/channel/Channel;)Lio/netty/channel/PendingBytesTracker;
    .locals 3
    .param p0, "channel"    # Lio/netty/channel/Channel;

    .line 36
    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    instance-of v0, v0, Lio/netty/channel/DefaultChannelPipeline;

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;

    invoke-interface {p0}, Lio/netty/channel/Channel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    check-cast v1, Lio/netty/channel/DefaultChannelPipeline;

    invoke-direct {v0, v1}, Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;-><init>(Lio/netty/channel/DefaultChannelPipeline;)V

    return-object v0

    .line 39
    :cond_0
    invoke-interface {p0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 40
    .local v0, "buffer":Lio/netty/channel/ChannelOutboundBuffer;
    invoke-interface {p0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->getMessageSizeEstimator()Lio/netty/channel/MessageSizeEstimator;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/MessageSizeEstimator;->newHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v1

    .line 44
    .local v1, "handle":Lio/netty/channel/MessageSizeEstimator$Handle;
    if-nez v0, :cond_1

    new-instance v2, Lio/netty/channel/PendingBytesTracker$NoopPendingBytesTracker;

    invoke-direct {v2, v1}, Lio/netty/channel/PendingBytesTracker$NoopPendingBytesTracker;-><init>(Lio/netty/channel/MessageSizeEstimator$Handle;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;

    invoke-direct {v2, v0, v1}, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;-><init>(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/MessageSizeEstimator$Handle;)V

    :goto_0
    return-object v2
.end method


# virtual methods
.method public abstract decrementPendingOutboundBytes(J)V
.end method

.method public abstract incrementPendingOutboundBytes(J)V
.end method

.method public final size(Ljava/lang/Object;)I
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lio/netty/channel/PendingBytesTracker;->estimatorHandle:Lio/netty/channel/MessageSizeEstimator$Handle;

    invoke-interface {v0, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
