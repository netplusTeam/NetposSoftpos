.class Lio/netty/channel/local/LocalChannel$3;
.super Ljava/lang/Object;
.source "LocalChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/local/LocalChannel;->doRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/local/LocalChannel;

.field final synthetic val$peer:Lio/netty/channel/local/LocalChannel;


# direct methods
.method constructor <init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/local/LocalChannel;

    .line 177
    iput-object p1, p0, Lio/netty/channel/local/LocalChannel$3;->this$0:Lio/netty/channel/local/LocalChannel;

    iput-object p2, p0, Lio/netty/channel/local/LocalChannel$3;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 180
    iget-object v0, p0, Lio/netty/channel/local/LocalChannel$3;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-static {v0}, Lio/netty/channel/local/LocalChannel;->access$200(Lio/netty/channel/local/LocalChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    .line 184
    .local v0, "promise":Lio/netty/channel/ChannelPromise;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/channel/ChannelPromise;->trySuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lio/netty/channel/local/LocalChannel$3;->val$peer:Lio/netty/channel/local/LocalChannel;

    invoke-virtual {v1}, Lio/netty/channel/local/LocalChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/ChannelPipeline;->fireChannelActive()Lio/netty/channel/ChannelPipeline;

    .line 187
    :cond_0
    return-void
.end method
