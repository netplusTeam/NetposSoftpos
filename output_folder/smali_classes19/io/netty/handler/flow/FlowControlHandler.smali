.class public Lio/netty/handler/flow/FlowControlHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "FlowControlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private config:Lio/netty/channel/ChannelConfig;

.field private queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

.field private final releaseMessages:Z

.field private shouldConsume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lio/netty/handler/flow/FlowControlHandler;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/flow/FlowControlHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/flow/FlowControlHandler;-><init>(Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "releaseMessages"    # Z

    .line 83
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 84
    iput-boolean p1, p0, Lio/netty/handler/flow/FlowControlHandler;->releaseMessages:Z

    .line 85
    return-void
.end method

.method private dequeue(Lio/netty/channel/ChannelHandlerContext;I)I
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "minConsume"    # I

    .line 180
    const/4 v0, 0x0

    .line 184
    .local v0, "consumed":I
    :goto_0
    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-eqz v1, :cond_2

    if-lt v0, p2, :cond_0

    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->config:Lio/netty/channel/ChannelConfig;

    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    :cond_0
    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v1}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 186
    .local v1, "msg":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 187
    goto :goto_1

    .line 190
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 191
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 192
    .end local v1    # "msg":Ljava/lang/Object;
    goto :goto_0

    .line 197
    :cond_2
    :goto_1
    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v1}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->recycle()V

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    .line 201
    if-lez v0, :cond_3

    .line 202
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 206
    :cond_3
    return v0
.end method

.method private destroy()V
    .locals 3

    .line 99
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lio/netty/handler/flow/FlowControlHandler;->logger:Lio/netty/util/internal/logging/InternalLogger;

    iget-object v1, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    const-string v2, "Non-empty queue: {}"

    invoke-interface {v0, v2, v1}, Lio/netty/util/internal/logging/InternalLogger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    iget-boolean v0, p0, Lio/netty/handler/flow/FlowControlHandler;->releaseMessages:Z

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v0}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "msg":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 107
    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    .end local v1    # "msg":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v0}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->recycle()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    .line 115
    :cond_1
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

    .line 124
    invoke-direct {p0}, Lio/netty/handler/flow/FlowControlHandler;->destroy()V

    .line 125
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;

    .line 126
    return-void
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-nez v0, :cond_0

    .line 142
    invoke-static {}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->newInstance()Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    .line 145
    :cond_0
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    invoke-virtual {v0, p2}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 150
    iget-boolean v0, p0, Lio/netty/handler/flow/FlowControlHandler;->shouldConsume:Z

    .line 151
    .local v0, "minConsume":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/handler/flow/FlowControlHandler;->shouldConsume:Z

    .line 153
    invoke-direct {p0, p1, v0}, Lio/netty/handler/flow/FlowControlHandler;->dequeue(Lio/netty/channel/ChannelHandlerContext;I)I

    .line 154
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lio/netty/handler/flow/FlowControlHandler;->isQueueEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 165
    :cond_0
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->config:Lio/netty/channel/ChannelConfig;

    .line 120
    return-void
.end method

.method isQueueEmpty()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lio/netty/handler/flow/FlowControlHandler;->queue:Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lio/netty/handler/flow/FlowControlHandler$RecyclableArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/flow/FlowControlHandler;->dequeue(Lio/netty/channel/ChannelHandlerContext;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iput-boolean v0, p0, Lio/netty/handler/flow/FlowControlHandler;->shouldConsume:Z

    .line 135
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 137
    :cond_0
    return-void
.end method
