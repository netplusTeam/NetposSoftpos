.class Lio/netty/handler/ssl/SslHandler$3;
.super Ljava/lang/Object;
.source "SslHandler.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/handler/ssl/SslHandler;->closeOutboundAndChannel(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Lio/netty/channel/Channel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/handler/ssl/SslHandler;

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/handler/ssl/SslHandler;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/handler/ssl/SslHandler;

    .line 1878
    iput-object p1, p0, Lio/netty/handler/ssl/SslHandler$3;->this$0:Lio/netty/handler/ssl/SslHandler;

    iput-object p2, p0, Lio/netty/handler/ssl/SslHandler$3;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Lio/netty/channel/Channel;",
            ">;)V"
        }
    .end annotation

    .line 1881
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Lio/netty/channel/Channel;>;"
    iget-object v0, p0, Lio/netty/handler/ssl/SslHandler$3;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 1882
    return-void
.end method
