.class Lio/netty/channel/socket/nio/NioSocketChannel$3;
.super Ljava/lang/Object;
.source "NioSocketChannel.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/socket/nio/NioSocketChannel;->shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/socket/nio/NioSocketChannel;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/socket/nio/NioSocketChannel;

    .line 225
    iput-object p1, p0, Lio/netty/channel/socket/nio/NioSocketChannel$3;->this$0:Lio/netty/channel/socket/nio/NioSocketChannel;

    iput-object p2, p0, Lio/netty/channel/socket/nio/NioSocketChannel$3;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 2
    .param p1, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lio/netty/channel/socket/nio/NioSocketChannel$3;->this$0:Lio/netty/channel/socket/nio/NioSocketChannel;

    iget-object v1, p0, Lio/netty/channel/socket/nio/NioSocketChannel$3;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, p1, v1}, Lio/netty/channel/socket/nio/NioSocketChannel;->access$200(Lio/netty/channel/socket/nio/NioSocketChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    .line 229
    return-void
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/socket/nio/NioSocketChannel$3;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
