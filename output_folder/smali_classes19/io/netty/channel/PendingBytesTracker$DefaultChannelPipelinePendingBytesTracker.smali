.class final Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;
.super Lio/netty/channel/PendingBytesTracker;
.source "PendingBytesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/PendingBytesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultChannelPipelinePendingBytesTracker"
.end annotation


# instance fields
.field private final pipeline:Lio/netty/channel/DefaultChannelPipeline;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;)V
    .locals 2
    .param p1, "pipeline"    # Lio/netty/channel/DefaultChannelPipeline;

    .line 53
    invoke-virtual {p1}, Lio/netty/channel/DefaultChannelPipeline;->estimatorHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/netty/channel/PendingBytesTracker;-><init>(Lio/netty/channel/MessageSizeEstimator$Handle;Lio/netty/channel/PendingBytesTracker$1;)V

    .line 54
    iput-object p1, p0, Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    .line 55
    return-void
.end method


# virtual methods
.method public decrementPendingOutboundBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 64
    iget-object v0, p0, Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->decrementPendingOutboundBytes(J)V

    .line 65
    return-void
.end method

.method public incrementPendingOutboundBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 59
    iget-object v0, p0, Lio/netty/channel/PendingBytesTracker$DefaultChannelPipelinePendingBytesTracker;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->incrementPendingOutboundBytes(J)V

    .line 60
    return-void
.end method
