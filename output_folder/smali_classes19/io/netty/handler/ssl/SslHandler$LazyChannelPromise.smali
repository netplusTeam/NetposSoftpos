.class final Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;
.super Lio/netty/util/concurrent/DefaultPromise;
.source "SslHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LazyChannelPromise"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/DefaultPromise<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;


# direct methods
.method private constructor <init>(Lio/netty/handler/ssl/SslHandler;)V
    .locals 0

    .line 2235
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/handler/ssl/SslHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/ssl/SslHandler;
    .param p2, "x1"    # Lio/netty/handler/ssl/SslHandler$1;

    .line 2235
    invoke-direct {p0, p1}, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;-><init>(Lio/netty/handler/ssl/SslHandler;)V

    return-void
.end method


# virtual methods
.method protected checkDeadLock()V
    .locals 1

    .line 2247
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2254
    return-void

    .line 2256
    :cond_0
    invoke-super {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 2257
    return-void
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .line 2239
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2242
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$LazyChannelPromise;->this$0:Lio/netty/handler/ssl/SslHandler;

    invoke-static {v0}, Lio/netty/handler/ssl/SslHandler;->access$700(Lio/netty/handler/ssl/SslHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0

    .line 2240
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
