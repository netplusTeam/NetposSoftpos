.class final Lio/netty/channel/pool/ChannelHealthChecker$1;
.super Ljava/lang/Object;
.source "ChannelHealthChecker.java"

# interfaces
.implements Lio/netty/channel/pool/ChannelHealthChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/pool/ChannelHealthChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHealthy(Lio/netty/channel/Channel;)Lio/netty/util/concurrent/Future;
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/Channel;",
            ")",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 36
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {p1}, Lio/netty/channel/Channel;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->newSucceededFuture(Ljava/lang/Object;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    return-object v1
.end method
