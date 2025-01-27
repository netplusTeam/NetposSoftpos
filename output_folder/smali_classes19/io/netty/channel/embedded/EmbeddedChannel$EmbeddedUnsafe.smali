.class final Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "EmbeddedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/embedded/EmbeddedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EmbeddedUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/embedded/EmbeddedChannel;

.field final wrapped:Lio/netty/channel/Channel$Unsafe;


# direct methods
.method private constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    .line 773
    new-instance p1, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;

    invoke-direct {p1, p0}, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe$1;-><init>(Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;)V

    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->wrapped:Lio/netty/channel/Channel$Unsafe;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/embedded/EmbeddedChannel;
    .param p2, "x1"    # Lio/netty/channel/embedded/EmbeddedChannel$1;

    .line 769
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 862
    invoke-virtual {p0, p3}, Lio/netty/channel/embedded/EmbeddedChannel$EmbeddedUnsafe;->safeSetSuccess(Lio/netty/channel/ChannelPromise;)V

    .line 863
    return-void
.end method
