.class Lio/netty/channel/socket/oio/OioSocketChannel$2;
.super Ljava/lang/Object;
.source "OioSocketChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/socket/oio/OioSocketChannel;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/socket/oio/OioSocketChannel;

    .line 204
    iput-object p1, p0, Lio/netty/channel/socket/oio/OioSocketChannel$2;->this$0:Lio/netty/channel/socket/oio/OioSocketChannel;

    iput-object p2, p0, Lio/netty/channel/socket/oio/OioSocketChannel$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 207
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel$2;->this$0:Lio/netty/channel/socket/oio/OioSocketChannel;

    iget-object v1, p0, Lio/netty/channel/socket/oio/OioSocketChannel$2;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-static {v0, v1}, Lio/netty/channel/socket/oio/OioSocketChannel;->access$100(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelPromise;)V

    .line 208
    return-void
.end method
