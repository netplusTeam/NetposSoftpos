.class final Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;
.super Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;
.source "AdaptiveRecvByteBufAllocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AdaptiveRecvByteBufAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HandleImpl"
.end annotation


# instance fields
.field private decreaseNow:Z

.field private index:I

.field private final maxIndex:I

.field private final minIndex:I

.field private nextReceiveBufferSize:I

.field final synthetic this$0:Lio/netty/channel/AdaptiveRecvByteBufAllocator;


# direct methods
.method constructor <init>(Lio/netty/channel/AdaptiveRecvByteBufAllocator;III)V
    .locals 1
    .param p2, "minIndex"    # I
    .param p3, "maxIndex"    # I
    .param p4, "initial"    # I

    .line 99
    iput-object p1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->this$0:Lio/netty/channel/AdaptiveRecvByteBufAllocator;

    invoke-direct {p0, p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;-><init>(Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator;)V

    .line 100
    iput p2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->minIndex:I

    .line 101
    iput p3, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->maxIndex:I

    .line 103
    invoke-static {p4}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->access$000(I)I

    move-result p1

    iput p1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    .line 104
    invoke-static {}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->access$100()[I

    move-result-object p1

    iget v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    aget p1, p1, v0

    iput p1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->nextReceiveBufferSize:I

    .line 105
    return-void
.end method

.method private record(I)V
    .locals 4
    .param p1, "actualReadBytes"    # I

    .line 125
    invoke-static {}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->access$100()[I

    move-result-object v0

    iget v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aget v0, v0, v1

    if-gt p1, v0, :cond_1

    .line 126
    iget-boolean v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->decreaseNow:Z

    if-eqz v0, :cond_0

    .line 127
    iget v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    sub-int/2addr v0, v2

    iget v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->minIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    .line 128
    invoke-static {}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->access$100()[I

    move-result-object v0

    iget v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    aget v0, v0, v1

    iput v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->nextReceiveBufferSize:I

    .line 129
    iput-boolean v3, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->decreaseNow:Z

    goto :goto_0

    .line 131
    :cond_0
    iput-boolean v2, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->decreaseNow:Z

    goto :goto_0

    .line 133
    :cond_1
    iget v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->nextReceiveBufferSize:I

    if-lt p1, v0, :cond_2

    .line 134
    iget v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->maxIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    .line 135
    invoke-static {}, Lio/netty/channel/AdaptiveRecvByteBufAllocator;->access$100()[I

    move-result-object v0

    iget v1, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->index:I

    aget v0, v0, v1

    iput v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->nextReceiveBufferSize:I

    .line 136
    iput-boolean v3, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->decreaseNow:Z

    .line 138
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public guess()I
    .locals 1

    .line 121
    iget v0, p0, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->nextReceiveBufferSize:I

    return v0
.end method

.method public lastBytesRead(I)V
    .locals 1
    .param p1, "bytes"    # I

    .line 113
    invoke-virtual {p0}, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->attemptedBytesRead()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->record(I)V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Lio/netty/channel/DefaultMaxMessagesRecvByteBufAllocator$MaxMessageHandle;->lastBytesRead(I)V

    .line 117
    return-void
.end method

.method public readComplete()V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->totalBytesRead()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/channel/AdaptiveRecvByteBufAllocator$HandleImpl;->record(I)V

    .line 143
    return-void
.end method
