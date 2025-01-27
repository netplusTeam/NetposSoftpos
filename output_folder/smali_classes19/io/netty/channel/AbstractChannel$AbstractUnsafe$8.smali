.class Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;
.super Ljava/lang/Object;
.source "AbstractChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/channel/AbstractChannel$AbstractUnsafe;->deregister(Lio/netty/channel/ChannelPromise;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

.field final synthetic val$fireChannelInactive:Z

.field final synthetic val$promise:Lio/netty/channel/ChannelPromise;


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannel$AbstractUnsafe;ZLio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "this$1"    # Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    .line 809
    iput-object p1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iput-boolean p2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->val$fireChannelInactive:Z

    iput-object p3, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 813
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v1}, Lio/netty/channel/AbstractChannel;->doDeregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    iget-boolean v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->val$fireChannelInactive:Z

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelInactive()Lio/netty/channel/ChannelPipeline;

    .line 824
    :cond_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$000(Lio/netty/channel/AbstractChannel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    :goto_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1, v0}, Lio/netty/channel/AbstractChannel;->access$002(Lio/netty/channel/AbstractChannel;Z)Z

    .line 826
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelUnregistered()Lio/netty/channel/ChannelPipeline;

    .line 828
    :cond_1
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {v0, v1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 829
    goto :goto_1

    .line 814
    :catchall_0
    move-exception v1

    .line 815
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {}, Lio/netty/channel/AbstractChannel;->access$300()Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    const-string v3, "Unexpected exception occurred while deregistering a channel."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 817
    .end local v1    # "t":Ljava/lang/Throwable;
    iget-boolean v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->val$fireChannelInactive:Z

    if-eqz v1, :cond_2

    .line 818
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelInactive()Lio/netty/channel/ChannelPipeline;

    .line 824
    :cond_2
    iget-object v1, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v1, v1, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v1}, Lio/netty/channel/AbstractChannel;->access$000(Lio/netty/channel/AbstractChannel;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    goto :goto_0

    .line 830
    :goto_1
    return-void

    .line 817
    :catchall_1
    move-exception v1

    iget-boolean v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->val$fireChannelInactive:Z

    if-eqz v2, :cond_3

    .line 818
    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v2, v2, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v2}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelInactive()Lio/netty/channel/ChannelPipeline;

    .line 824
    :cond_3
    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v2, v2, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v2}, Lio/netty/channel/AbstractChannel;->access$000(Lio/netty/channel/AbstractChannel;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 825
    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v2, v2, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v2, v0}, Lio/netty/channel/AbstractChannel;->access$002(Lio/netty/channel/AbstractChannel;Z)Z

    .line 826
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v0, v0, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->this$0:Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/channel/AbstractChannel;->access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->fireChannelUnregistered()Lio/netty/channel/ChannelPipeline;

    .line 828
    :cond_4
    iget-object v0, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->this$1:Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    iget-object v2, p0, Lio/netty/channel/AbstractChannel$AbstractUnsafe$8;->val$promise:Lio/netty/channel/ChannelPromise;

    invoke-virtual {v0, v2}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 829
    throw v1
.end method
