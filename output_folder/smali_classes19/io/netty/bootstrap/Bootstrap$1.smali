.class Lio/netty/bootstrap/Bootstrap$1;
.super Ljava/lang/Object;
.source "Bootstrap.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/bootstrap/Bootstrap;->doResolveAndConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/bootstrap/Bootstrap;

.field final synthetic val$channel:Lio/netty/channel/Channel;

.field final synthetic val$localAddress:Ljava/net/SocketAddress;

.field final synthetic val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

.field final synthetic val$remoteAddress:Ljava/net/SocketAddress;


# direct methods
.method constructor <init>(Lio/netty/bootstrap/Bootstrap;Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/bootstrap/Bootstrap;

    .line 166
    iput-object p1, p0, Lio/netty/bootstrap/Bootstrap$1;->this$0:Lio/netty/bootstrap/Bootstrap;

    iput-object p2, p0, Lio/netty/bootstrap/Bootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    iput-object p3, p0, Lio/netty/bootstrap/Bootstrap$1;->val$channel:Lio/netty/channel/Channel;

    iput-object p4, p0, Lio/netty/bootstrap/Bootstrap$1;->val$remoteAddress:Ljava/net/SocketAddress;

    iput-object p5, p0, Lio/netty/bootstrap/Bootstrap$1;->val$localAddress:Ljava/net/SocketAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 6
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 172
    .local v0, "cause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-virtual {v1, v0}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 179
    :cond_0
    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-virtual {v1}, Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;->registered()V

    .line 180
    iget-object v1, p0, Lio/netty/bootstrap/Bootstrap$1;->this$0:Lio/netty/bootstrap/Bootstrap;

    iget-object v2, p0, Lio/netty/bootstrap/Bootstrap$1;->val$channel:Lio/netty/channel/Channel;

    iget-object v3, p0, Lio/netty/bootstrap/Bootstrap$1;->val$remoteAddress:Ljava/net/SocketAddress;

    iget-object v4, p0, Lio/netty/bootstrap/Bootstrap$1;->val$localAddress:Ljava/net/SocketAddress;

    iget-object v5, p0, Lio/netty/bootstrap/Bootstrap$1;->val$promise:Lio/netty/bootstrap/AbstractBootstrap$PendingRegistrationPromise;

    invoke-static {v1, v2, v3, v4, v5}, Lio/netty/bootstrap/Bootstrap;->access$000(Lio/netty/bootstrap/Bootstrap;Lio/netty/channel/Channel;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 182
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

    .line 166
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/bootstrap/Bootstrap$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
