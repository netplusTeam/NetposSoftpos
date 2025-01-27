.class public Lio/netty/channel/oio/OioEventLoopGroup;
.super Lio/netty/channel/ThreadPerChannelEventLoopGroup;
.source "OioEventLoopGroup.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/oio/OioEventLoopGroup;-><init>(I)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxChannels"    # I

    .line 55
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/ThreadFactory;

    invoke-direct {p0, p1, v0}, Lio/netty/channel/oio/OioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 56
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "maxChannels"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 70
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(ILjava/util/concurrent/Executor;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "maxChannels"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 85
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/ThreadPerChannelEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 86
    return-void
.end method
