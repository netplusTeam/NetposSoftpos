.class final Lio/netty/bootstrap/FailedChannel$FailedChannelUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "FailedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/bootstrap/FailedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FailedChannelUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/bootstrap/FailedChannel;


# direct methods
.method private constructor <init>(Lio/netty/bootstrap/FailedChannel;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lio/netty/bootstrap/FailedChannel$FailedChannelUnsafe;->this$0:Lio/netty/bootstrap/FailedChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/bootstrap/FailedChannel;Lio/netty/bootstrap/FailedChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/bootstrap/FailedChannel;
    .param p2, "x1"    # Lio/netty/bootstrap/FailedChannel$1;

    .line 101
    invoke-direct {p0, p1}, Lio/netty/bootstrap/FailedChannel$FailedChannelUnsafe;-><init>(Lio/netty/bootstrap/FailedChannel;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    invoke-interface {p3, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 105
    return-void
.end method
