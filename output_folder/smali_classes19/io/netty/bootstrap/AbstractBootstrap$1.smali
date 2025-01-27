.class Lio/netty/bootstrap/AbstractBootstrap$1;
.super Ljava/lang/Object;
.source "AbstractBootstrap.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/AbstractBootstrap;->doBind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/bootstrap/AbstractBootstrap;

.field final synthetic val$channel:Lio/netty/channel/Channel;

.field final synthetic val$localAddress:Ljava/net/SocketAddress;

.field final synthetic val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

.field final synthetic val$regFuture:Lio/netty/channel/ChannelFuture;


# direct methods
.method constructor <init>(Lio/netty/bootstrap/AbstractBootstrap;Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/bootstrap/AbstractBootstrap;

    .line 286
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrap$1;, "Lio/netty/bootstrap/AbstractBootstrap$1;"
    iput-object p1, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->this$0:Lio/netty/bootstrap/AbstractBootstrap;

    iput-object p2, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    iput-object p3, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$regFuture:Lio/netty/channel/ChannelFuture;

    iput-object p4, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$channel:Lio/netty/channel/Channel;

    iput-object p5, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$localAddress:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrap$1;, "Lio/netty/bootstrap/AbstractBootstrap$1;"
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 290
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-virtual {v1, v0}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 297
    :cond_0
    iget-object v1, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-virtual {v1}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;->registered()V

    .line 299
    iget-object v1, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$regFuture:Lio/netty/channel/ChannelFuture;

    iget-object v2, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$channel:Lio/netty/channel/Channel;

    iget-object v3, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v4, p0, Lio/netty/bootstrap/AbstractBootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-static {v1, v2, v3, v4}, Lio/netty/bootstrap/AbstractBootstrap;->access$000(Lio/netty/channel/ChannelFuture;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 301
    :goto_0
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    .local p0, "this":Lio/netty/bootstrap/AbstractBootstrap$1;, "Lio/netty/bootstrap/AbstractBootstrap$1;"
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/bootstrap/AbstractBootstrap$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
