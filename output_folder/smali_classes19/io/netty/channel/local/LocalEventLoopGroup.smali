.class public Lio/netty/channel/local/LocalEventLoopGroup;
.super Lio/netty/channel/DefaultEventLoopGroup;
.source "LocalEventLoopGroup.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lio/netty/channel/DefaultEventLoopGroup;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "nThreads"    # I

    .line 39
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultEventLoopGroup;-><init>(I)V

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 0
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 58
    invoke-direct {p0, p1, p2}, Lio/netty/channel/DefaultEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/DefaultEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 49
    return-void
.end method
