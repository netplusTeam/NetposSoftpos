.class public abstract Lio/netty/channel/SimpleUserEventChannelHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "SimpleUserEventChannelHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;"
    }
.end annotation


# instance fields
.field private final autoRelease:Z

.field private final matcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 51
    .local p0, "this":Lio/netty/channel/SimpleUserEventChannelHandler;, "Lio/netty/channel/SimpleUserEventChannelHandler<TI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/channel/SimpleUserEventChannelHandler;-><init>(Z)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TI;>;)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Lio/netty/channel/SimpleUserEventChannelHandler;, "Lio/netty/channel/SimpleUserEventChannelHandler<TI;>;"
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/channel/SimpleUserEventChannelHandler;-><init>(Ljava/lang/Class;Z)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .param p2, "autoRelease"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TI;>;Z)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/netty/channel/SimpleUserEventChannelHandler;, "Lio/netty/channel/SimpleUserEventChannelHandler<TI;>;"
    .local p1, "eventType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 80
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/SimpleUserEventChannelHandler;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 81
    iput-boolean p2, p0, Lio/netty/channel/SimpleUserEventChannelHandler;->autoRelease:Z

    .line 82
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2
    .param p1, "autoRelease"    # Z

    .line 60
    .local p0, "this":Lio/netty/channel/SimpleUserEventChannelHandler;, "Lio/netty/channel/SimpleUserEventChannelHandler<TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 61
    const-class v0, Lio/netty/channel/SimpleUserEventChannelHandler;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/SimpleUserEventChannelHandler;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 62
    iput-boolean p1, p0, Lio/netty/channel/SimpleUserEventChannelHandler;->autoRelease:Z

    .line 63
    return-void
.end method


# virtual methods
.method protected acceptEvent(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    .local p0, "this":Lio/netty/channel/SimpleUserEventChannelHandler;, "Lio/netty/channel/SimpleUserEventChannelHandler<TI;>;"
    iget-object v0, p0, Lio/netty/channel/SimpleUserEventChannelHandler;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract eventReceived(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/netty/channel/SimpleUserEventChannelHandler;, "Lio/netty/channel/SimpleUserEventChannelHandler<TI;>;"
    const/4 v0, 0x1

    .line 96
    .local v0, "release":Z
    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/channel/SimpleUserEventChannelHandler;->acceptEvent(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    move-object v1, p2

    .line 99
    .local v1, "ievt":Ljava/lang/Object;, "TI;"
    invoke-virtual {p0, p1, v1}, Lio/netty/channel/SimpleUserEventChannelHandler;->eventReceived(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 100
    .end local v1    # "ievt":Ljava/lang/Object;, "TI;"
    goto :goto_0

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 102
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    iget-boolean v1, p0, Lio/netty/channel/SimpleUserEventChannelHandler;->autoRelease:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 106
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 109
    :cond_1
    return-void

    .line 105
    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lio/netty/channel/SimpleUserEventChannelHandler;->autoRelease:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 106
    invoke-static {p2}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 108
    :cond_2
    throw v1
.end method
