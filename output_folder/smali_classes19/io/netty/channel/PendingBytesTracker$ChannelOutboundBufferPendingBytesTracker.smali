.class final Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;
.super Lio/netty/channel/PendingBytesTracker;
.source "PendingBytesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/PendingBytesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChannelOutboundBufferPendingBytesTracker"
.end annotation


# instance fields
.field private final buffer:Lio/netty/channel/ChannelOutboundBuffer;


# direct methods
.method constructor <init>(Lio/netty/channel/ChannelOutboundBuffer;Lio/netty/channel/MessageSizeEstimator$Handle;)V
    .locals 1
    .param p1, "buffer"    # Lio/netty/channel/ChannelOutboundBuffer;
    .param p2, "estimatorHandle"    # Lio/netty/channel/MessageSizeEstimator$Handle;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lio/netty/channel/PendingBytesTracker;-><init>(Lio/netty/channel/MessageSizeEstimator$Handle;Lio/netty/channel/PendingBytesTracker$1;)V

    .line 74
    iput-object p1, p0, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    .line 75
    return-void
.end method


# virtual methods
.method public decrementPendingOutboundBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 84
    iget-object v0, p0, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->decrementPendingOutboundBytes(J)V

    .line 85
    return-void
.end method

.method public incrementPendingOutboundBytes(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 79
    iget-object v0, p0, Lio/netty/channel/PendingBytesTracker$ChannelOutboundBufferPendingBytesTracker;->buffer:Lio/netty/channel/ChannelOutboundBuffer;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(J)V

    .line 80
    return-void
.end method
