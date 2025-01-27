.class Lio/netty/channel/group/DefaultChannelGroupFuture$1;
.super Ljava/lang/Object;
.source "DefaultChannelGroupFuture.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/group/DefaultChannelGroupFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lio/netty/channel/group/DefaultChannelGroupFuture;

    return-void
.end method

.method constructor <init>(Lio/netty/channel/group/DefaultChannelGroupFuture;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/channel/group/DefaultChannelGroupFuture;

    .line 48
    iput-object p1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 8
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v0

    .line 53
    .local v0, "success":Z
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    monitor-enter v1

    .line 54
    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v2}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$008(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    goto :goto_0

    .line 57
    :cond_0
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v2}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$108(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    .line 60
    :goto_0
    iget-object v2, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v2}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$000(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v2

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$100(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$200(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 61
    .local v2, "callSetDone":Z
    :goto_1
    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$000(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v3

    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$100(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$200(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-gt v3, v4, :cond_6

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-eqz v2, :cond_5

    .line 65
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$100(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v1

    if-lez v1, :cond_4

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    .line 67
    invoke-static {v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$100(Lio/netty/channel/group/DefaultChannelGroupFuture;)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    .local v1, "failed":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;>;"
    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v3}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$200(Lio/netty/channel/group/DefaultChannelGroupFuture;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/netty/channel/ChannelFuture;

    .line 69
    .local v4, "f":Lio/netty/channel/ChannelFuture;
    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v5

    if-nez v5, :cond_2

    .line 70
    new-instance v5, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;

    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->channel()Lio/netty/channel/Channel;

    move-result-object v6

    invoke-interface {v4}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lio/netty/channel/group/DefaultChannelGroupFuture$DefaultEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v4    # "f":Lio/netty/channel/ChannelFuture;
    :cond_2
    goto :goto_2

    .line 73
    :cond_3
    iget-object v3, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    new-instance v4, Lio/netty/channel/group/ChannelGroupException;

    invoke-direct {v4, v1}, Lio/netty/channel/group/ChannelGroupException;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v4}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$300(Lio/netty/channel/group/DefaultChannelGroupFuture;Lio/netty/channel/group/ChannelGroupException;)V

    .line 74
    .end local v1    # "failed":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lio/netty/channel/Channel;Ljava/lang/Throwable;>;>;"
    goto :goto_3

    .line 75
    :cond_4
    iget-object v1, p0, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->this$0:Lio/netty/channel/group/DefaultChannelGroupFuture;

    invoke-static {v1}, Lio/netty/channel/group/DefaultChannelGroupFuture;->access$400(Lio/netty/channel/group/DefaultChannelGroupFuture;)V

    .line 78
    :cond_5
    :goto_3
    return-void

    .line 61
    :cond_6
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "success":Z
    .end local p1    # "future":Lio/netty/channel/ChannelFuture;
    throw v3

    .line 62
    .end local v2    # "callSetDone":Z
    .restart local v0    # "success":Z
    .restart local p1    # "future":Lio/netty/channel/ChannelFuture;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/group/DefaultChannelGroupFuture$1;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
