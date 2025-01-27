.class public abstract Lio/netty/channel/ChannelInitializer;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "ChannelInitializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lio/netty/channel/Channel;",
        ">",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;"
    }
.end annotation

.annotation runtime Lio/netty/channel/ChannelHandler$Sharable;
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final initMap:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/netty/channel/ChannelHandlerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lio/netty/channel/ChannelInitializer;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/ChannelInitializer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    .local p0, "this":Lio/netty/channel/ChannelInitializer;, "Lio/netty/channel/ChannelInitializer<TC;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/ChannelInitializer;->initMap:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/ChannelInitializer;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/ChannelInitializer;

    .line 54
    iget-object v0, p0, Lio/netty/channel/ChannelInitializer;->initMap:Ljava/util/Set;

    return-object v0
.end method

.method private initChannel(Lio/netty/channel/ChannelHandlerContext;)Z
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 127
    .local p0, "this":Lio/netty/channel/ChannelInitializer;, "Lio/netty/channel/ChannelInitializer<TC;>;"
    iget-object v0, p0, Lio/netty/channel/ChannelInitializer;->initMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    :try_start_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/ChannelInitializer;->initChannel(Lio/netty/channel/Channel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 136
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    :goto_0
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 139
    .end local v0    # "pipeline":Lio/netty/channel/ChannelPipeline;
    :cond_0
    goto :goto_1

    .line 130
    :catchall_0
    move-exception v0

    .line 133
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lio/netty/channel/ChannelInitializer;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    .line 136
    .local v0, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    goto :goto_0

    .line 140
    .end local v0    # "pipeline":Lio/netty/channel/ChannelPipeline;
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 135
    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v1

    .line 136
    .local v1, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->context(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelHandlerContext;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 137
    invoke-interface {v1, p0}, Lio/netty/channel/ChannelPipeline;->remove(Lio/netty/channel/ChannelHandler;)Lio/netty/channel/ChannelPipeline;

    .line 139
    .end local v1    # "pipeline":Lio/netty/channel/ChannelPipeline;
    :cond_1
    throw v0

    .line 142
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private removeState(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;

    .line 147
    .local p0, "this":Lio/netty/channel/ChannelInitializer;, "Lio/netty/channel/ChannelInitializer<TC;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lio/netty/channel/ChannelInitializer;->initMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    new-instance v1, Lio/netty/channel/ChannelInitializer$1;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/ChannelInitializer$1;-><init>(Lio/netty/channel/ChannelInitializer;Lio/netty/channel/ChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    .line 159
    :goto_0
    return-void
.end method


# virtual methods
.method public final channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/netty/channel/ChannelInitializer;, "Lio/netty/channel/ChannelInitializer<TC;>;"
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelInitializer;->initChannel(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelPipeline;->fireChannelRegistered()Lio/netty/channel/ChannelPipeline;

    .line 84
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelInitializer;->removeState(Lio/netty/channel/ChannelHandlerContext;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;

    .line 89
    :goto_0
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 96
    .local p0, "this":Lio/netty/channel/ChannelInitializer;, "Lio/netty/channel/ChannelInitializer<TC;>;"
    sget-object v0, Lio/netty/channel/ChannelInitializer;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to initialize a channel. Closing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->close()Lio/netty/channel/ChannelFuture;

    .line 100
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/netty/channel/ChannelInitializer;, "Lio/netty/channel/ChannelInitializer<TC;>;"
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelInitializer;->initChannel(Lio/netty/channel/ChannelHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0, p1}, Lio/netty/channel/ChannelInitializer;->removeState(Lio/netty/channel/ChannelHandlerContext;)V

    .line 118
    :cond_0
    return-void
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    .local p0, "this":Lio/netty/channel/ChannelInitializer;, "Lio/netty/channel/ChannelInitializer<TC;>;"
    iget-object v0, p0, Lio/netty/channel/ChannelInitializer;->initMap:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method protected abstract initChannel(Lio/netty/channel/Channel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
