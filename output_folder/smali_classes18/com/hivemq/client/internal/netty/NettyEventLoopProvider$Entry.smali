.class Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;
.super Ljava/lang/Object;
.source "NettyEventLoopProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/netty/NettyEventLoopProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

.field referenceCount:I


# direct methods
.method private constructor <init>(Lio/netty/channel/MultithreadEventLoopGroup;)V
    .locals 1
    .param p1, "eventLoopGroup"    # Lio/netty/channel/MultithreadEventLoopGroup;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->referenceCount:I

    .line 139
    iput-object p1, p0, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;->eventLoopGroup:Lio/netty/channel/MultithreadEventLoopGroup;

    .line 140
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/MultithreadEventLoopGroup;Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/channel/MultithreadEventLoopGroup;
    .param p2, "x1"    # Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$1;

    .line 133
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/netty/NettyEventLoopProvider$Entry;-><init>(Lio/netty/channel/MultithreadEventLoopGroup;)V

    return-void
.end method
