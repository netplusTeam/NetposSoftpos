.class final Lio/netty/channel/DefaultChannelHandlerContext;
.super Lio/netty/channel/AbstractChannelHandlerContext;
.source "DefaultChannelHandlerContext.java"


# instance fields
.field private final handler:Lio/netty/channel/ChannelHandler;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)V
    .locals 1
    .param p1, "pipeline"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p2, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "handler"    # Lio/netty/channel/ChannelHandler;

    .line 26
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/channel/AbstractChannelHandlerContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    iput-object p4, p0, Lio/netty/channel/DefaultChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    .line 28
    return-void
.end method


# virtual methods
.method public handler()Lio/netty/channel/ChannelHandler;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/netty/channel/DefaultChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    return-object v0
.end method
