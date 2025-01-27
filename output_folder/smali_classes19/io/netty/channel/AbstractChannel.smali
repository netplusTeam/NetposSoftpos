.class public abstract Lio/netty/channel/AbstractChannel;
.super Lio/netty/util/DefaultAttributeMap;
.source "AbstractChannel.java"

# interfaces
.implements Lio/netty/channel/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/AbstractChannel$AnnotatedSocketException;,
        Lio/netty/channel/AbstractChannel$AnnotatedNoRouteToHostException;,
        Lio/netty/channel/AbstractChannel$AnnotatedConnectException;,
        Lio/netty/channel/AbstractChannel$CloseFuture;,
        Lio/netty/channel/AbstractChannel$AbstractUnsafe;
    }
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final closeFuture:Lio/netty/channel/AbstractChannel$CloseFuture;

.field private closeInitiated:Z

.field private volatile eventLoop:Lio/netty/channel/EventLoop;

.field private final id:Lio/netty/channel/ChannelId;

.field private initialCloseCause:Ljava/lang/Throwable;

.field private volatile localAddress:Ljava/net/SocketAddress;

.field private final parent:Lio/netty/channel/Channel;

.field private final pipeline:Lio/netty/channel/DefaultChannelPipeline;

.field private volatile registered:Z

.field private volatile remoteAddress:Ljava/net/SocketAddress;

.field private strVal:Ljava/lang/String;

.field private strValActive:Z

.field private final unsafe:Lio/netty/channel/Channel$Unsafe;

.field private final unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lio/netty/channel/AbstractChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/AbstractChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/channel/Channel;

    .line 71
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap;-><init>()V

    .line 51
    new-instance v0, Lio/netty/channel/VoidChannelPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/VoidChannelPromise;-><init>(Lio/netty/channel/Channel;Z)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

    .line 52
    new-instance v0, Lio/netty/channel/AbstractChannel$CloseFuture;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannel$CloseFuture;-><init>(Lio/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->closeFuture:Lio/netty/channel/AbstractChannel$CloseFuture;

    .line 72
    iput-object p1, p0, Lio/netty/channel/AbstractChannel;->parent:Lio/netty/channel/Channel;

    .line 73
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->newId()Lio/netty/channel/ChannelId;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->id:Lio/netty/channel/ChannelId;

    .line 74
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafe:Lio/netty/channel/Channel$Unsafe;

    .line 75
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->newChannelPipeline()Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    .line 76
    return-void
.end method

.method protected constructor <init>(Lio/netty/channel/Channel;Lio/netty/channel/ChannelId;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "id"    # Lio/netty/channel/ChannelId;

    .line 84
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap;-><init>()V

    .line 51
    new-instance v0, Lio/netty/channel/VoidChannelPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/VoidChannelPromise;-><init>(Lio/netty/channel/Channel;Z)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

    .line 52
    new-instance v0, Lio/netty/channel/AbstractChannel$CloseFuture;

    invoke-direct {v0, p0}, Lio/netty/channel/AbstractChannel$CloseFuture;-><init>(Lio/netty/channel/AbstractChannel;)V

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->closeFuture:Lio/netty/channel/AbstractChannel$CloseFuture;

    .line 85
    iput-object p1, p0, Lio/netty/channel/AbstractChannel;->parent:Lio/netty/channel/Channel;

    .line 86
    iput-object p2, p0, Lio/netty/channel/AbstractChannel;->id:Lio/netty/channel/ChannelId;

    .line 87
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafe:Lio/netty/channel/Channel$Unsafe;

    .line 88
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->newChannelPipeline()Lio/netty/channel/DefaultChannelPipeline;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/AbstractChannel;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;

    .line 43
    iget-boolean v0, p0, Lio/netty/channel/AbstractChannel;->registered:Z

    return v0
.end method

.method static synthetic access$002(Lio/netty/channel/AbstractChannel;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lio/netty/channel/AbstractChannel;->registered:Z

    return p1
.end method

.method static synthetic access$100(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/EventLoop;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;

    .line 43
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->eventLoop:Lio/netty/channel/EventLoop;

    return-object v0
.end method

.method static synthetic access$102(Lio/netty/channel/AbstractChannel;Lio/netty/channel/EventLoop;)Lio/netty/channel/EventLoop;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;
    .param p1, "x1"    # Lio/netty/channel/EventLoop;

    .line 43
    iput-object p1, p0, Lio/netty/channel/AbstractChannel;->eventLoop:Lio/netty/channel/EventLoop;

    return-object p1
.end method

.method static synthetic access$1300(Lio/netty/channel/AbstractChannel;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;

    .line 43
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->initialCloseCause:Ljava/lang/Throwable;

    return-object v0
.end method

.method static synthetic access$1302(Lio/netty/channel/AbstractChannel;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;
    .param p1, "x1"    # Ljava/lang/Throwable;

    .line 43
    iput-object p1, p0, Lio/netty/channel/AbstractChannel;->initialCloseCause:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic access$1400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/VoidChannelPromise;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;

    .line 43
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafeVoidPromise:Lio/netty/channel/VoidChannelPromise;

    return-object v0
.end method

.method static synthetic access$300()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 43
    sget-object v0, Lio/netty/channel/AbstractChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method static synthetic access$400(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/AbstractChannel$CloseFuture;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;

    .line 43
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->closeFuture:Lio/netty/channel/AbstractChannel$CloseFuture;

    return-object v0
.end method

.method static synthetic access$500(Lio/netty/channel/AbstractChannel;)Lio/netty/channel/DefaultChannelPipeline;
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;

    .line 43
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method static synthetic access$602(Lio/netty/channel/AbstractChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;
    .param p1, "x1"    # Ljava/net/SocketAddress;

    .line 43
    iput-object p1, p0, Lio/netty/channel/AbstractChannel;->remoteAddress:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic access$702(Lio/netty/channel/AbstractChannel;Ljava/net/SocketAddress;)Ljava/net/SocketAddress;
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;
    .param p1, "x1"    # Ljava/net/SocketAddress;

    .line 43
    iput-object p1, p0, Lio/netty/channel/AbstractChannel;->localAddress:Ljava/net/SocketAddress;

    return-object p1
.end method

.method static synthetic access$900(Lio/netty/channel/AbstractChannel;)Z
    .locals 1
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;

    .line 43
    iget-boolean v0, p0, Lio/netty/channel/AbstractChannel;->closeInitiated:Z

    return v0
.end method

.method static synthetic access$902(Lio/netty/channel/AbstractChannel;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/AbstractChannel;
    .param p1, "x1"    # Z

    .line 43
    iput-boolean p1, p0, Lio/netty/channel/AbstractChannel;->closeInitiated:Z

    return p1
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .line 212
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 248
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public bytesBeforeUnwritable()J
    .locals 3

    .line 119
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 122
    .local v0, "buf":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer;->bytesBeforeUnwritable()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method

.method public bytesBeforeWritable()J
    .locals 3

    .line 127
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 130
    .local v0, "buf":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer;->bytesBeforeWritable()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    return-wide v1
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 232
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->close()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 268
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public closeFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 324
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->closeFuture:Lio/netty/channel/AbstractChannel$CloseFuture;

    return-object v0
.end method

.method public final compareTo(Lio/netty/channel/Channel;)I
    .locals 2
    .param p1, "o"    # Lio/netty/channel/Channel;

    .line 356
    if-ne p0, p1, :cond_0

    .line 357
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->id()Lio/netty/channel/ChannelId;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/channel/Channel;->id()Lio/netty/channel/ChannelId;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelId;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lio/netty/channel/Channel;

    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel;->compareTo(Lio/netty/channel/Channel;)I

    move-result p1

    return p1
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .line 217
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 253
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .line 222
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 258
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/channel/DefaultChannelPipeline;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 237
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->deregister()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 273
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 227
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->disconnect()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 263
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doBeginRead()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doBind(Ljava/net/SocketAddress;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract doClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doDeregister()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1107
    return-void
.end method

.method protected abstract doDisconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected doRegister()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1074
    return-void
.end method

.method protected doShutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1097
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->doClose()V

    .line 1098
    return-void
.end method

.method protected abstract doWrite(Lio/netty/channel/ChannelOutboundBuffer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 351
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public eventLoop()Lio/netty/channel/EventLoop;
    .locals 3

    .line 150
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->eventLoop:Lio/netty/channel/EventLoop;

    .line 151
    .local v0, "eventLoop":Lio/netty/channel/EventLoop;
    if-eqz v0, :cond_0

    .line 154
    return-object v0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "channel not registered to an event loop"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected filterOutboundMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1124
    return-object p1
.end method

.method public flush()Lio/netty/channel/Channel;
    .locals 1

    .line 242
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->flush()Lio/netty/channel/ChannelPipeline;

    .line 243
    return-object p0
.end method

.method public bridge synthetic flush()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->flush()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 342
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->id:Lio/netty/channel/ChannelId;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final id()Lio/netty/channel/ChannelId;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->id:Lio/netty/channel/ChannelId;

    return-object v0
.end method

.method protected invalidateLocalAddress()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->localAddress:Ljava/net/SocketAddress;

    .line 179
    return-void
.end method

.method protected invalidateRemoteAddress()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/AbstractChannel;->remoteAddress:Ljava/net/SocketAddress;

    .line 203
    return-void
.end method

.method protected abstract isCompatible(Lio/netty/channel/EventLoop;)Z
.end method

.method public isRegistered()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lio/netty/channel/AbstractChannel;->registered:Z

    return v0
.end method

.method public isWritable()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafe:Lio/netty/channel/Channel$Unsafe;

    invoke-interface {v0}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 114
    .local v0, "buf":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/channel/ChannelOutboundBuffer;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public localAddress()Ljava/net/SocketAddress;
    .locals 3

    .line 159
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->localAddress:Ljava/net/SocketAddress;

    .line 160
    .local v0, "localAddress":Ljava/net/SocketAddress;
    if-nez v0, :cond_0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->localAddress()Ljava/net/SocketAddress;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/channel/AbstractChannel;->localAddress:Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    goto :goto_0

    .line 165
    :catchall_0
    move-exception v1

    .line 167
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    return-object v2

    .line 163
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Error;
    throw v1

    .line 170
    .end local v1    # "e":Ljava/lang/Error;
    :cond_0
    :goto_0
    return-object v0
.end method

.method protected abstract localAddress0()Ljava/net/SocketAddress;
.end method

.method protected newChannelPipeline()Lio/netty/channel/DefaultChannelPipeline;
    .locals 1

    .line 108
    new-instance v0, Lio/netty/channel/DefaultChannelPipeline;

    invoke-direct {v0, p0}, Lio/netty/channel/DefaultChannelPipeline;-><init>(Lio/netty/channel/Channel;)V

    return-object v0
.end method

.method public newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 319
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected newId()Lio/netty/channel/ChannelId;
    .locals 1

    .line 101
    invoke-static {}, Lio/netty/channel/DefaultChannelId;->newInstance()Lio/netty/channel/DefaultChannelId;

    move-result-object v0

    return-object v0
.end method

.method public newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 1

    .line 309
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;

    move-result-object v0

    return-object v0
.end method

.method public newPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 304
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 314
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->newSucceededFuture()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newUnsafe()Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.end method

.method public parent()Lio/netty/channel/Channel;
    .locals 1

    .line 135
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->parent:Lio/netty/channel/Channel;

    return-object v0
.end method

.method public pipeline()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .line 140
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method public read()Lio/netty/channel/Channel;
    .locals 1

    .line 278
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->read()Lio/netty/channel/ChannelPipeline;

    .line 279
    return-object p0
.end method

.method public bridge synthetic read()Lio/netty/channel/ChannelOutboundInvoker;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->read()Lio/netty/channel/Channel;

    move-result-object v0

    return-object v0
.end method

.method public remoteAddress()Ljava/net/SocketAddress;
    .locals 3

    .line 183
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->remoteAddress:Ljava/net/SocketAddress;

    .line 184
    .local v0, "remoteAddress":Ljava/net/SocketAddress;
    if-nez v0, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v1

    invoke-interface {v1}, Lio/netty/channel/Channel$Unsafe;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lio/netty/channel/AbstractChannel;->remoteAddress:Ljava/net/SocketAddress;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    .line 191
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    return-object v2

    .line 187
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Error;
    throw v1

    .line 194
    .end local v1    # "e":Ljava/lang/Error;
    :cond_0
    :goto_0
    return-object v0
.end method

.method protected abstract remoteAddress0()Ljava/net/SocketAddress;
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 371
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->isActive()Z

    move-result v0

    .line 372
    .local v0, "active":Z
    iget-boolean v1, p0, Lio/netty/channel/AbstractChannel;->strValActive:Z

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lio/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 373
    return-object v1

    .line 376
    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 377
    .local v1, "remoteAddr":Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 378
    .local v2, "localAddr":Ljava/net/SocketAddress;
    const-string v3, ", L:"

    const/16 v4, 0x5d

    const-string v5, "[id: 0x"

    if-eqz v1, :cond_2

    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x60

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/netty/channel/AbstractChannel;->id:Lio/netty/channel/ChannelId;

    .line 381
    invoke-interface {v6}, Lio/netty/channel/ChannelId;->asShortText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 382
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v5, " - "

    goto :goto_0

    :cond_1
    const-string v5, " ! "

    .line 384
    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 385
    const-string v5, "R:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 386
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 387
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 388
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    .line 389
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 390
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 391
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lio/netty/channel/AbstractChannel;->id:Lio/netty/channel/ChannelId;

    .line 392
    invoke-interface {v6}, Lio/netty/channel/ChannelId;->asShortText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 393
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 394
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 395
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 396
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    .line 397
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 398
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lio/netty/channel/AbstractChannel;->id:Lio/netty/channel/ChannelId;

    .line 400
    invoke-interface {v5}, Lio/netty/channel/ChannelId;->asShortText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 401
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 402
    .restart local v3    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lio/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    .line 405
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :goto_1
    iput-boolean v0, p0, Lio/netty/channel/AbstractChannel;->strValActive:Z

    .line 406
    iget-object v3, p0, Lio/netty/channel/AbstractChannel;->strVal:Ljava/lang/String;

    return-object v3
.end method

.method public unsafe()Lio/netty/channel/Channel$Unsafe;
    .locals 1

    .line 329
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->unsafe:Lio/netty/channel/Channel$Unsafe;

    return-object v0
.end method

.method protected validateFileRegion(Lio/netty/channel/DefaultFileRegion;J)V
    .locals 0
    .param p1, "region"    # Lio/netty/channel/DefaultFileRegion;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    invoke-static {p1, p2, p3}, Lio/netty/channel/DefaultFileRegion;->validate(Lio/netty/channel/DefaultFileRegion;J)V

    .line 1129
    return-void
.end method

.method public final voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .line 411
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0}, Lio/netty/channel/DefaultChannelPipeline;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 289
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .line 294
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1}, Lio/netty/channel/DefaultChannelPipeline;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 299
    iget-object v0, p0, Lio/netty/channel/AbstractChannel;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v0, p1, p2}, Lio/netty/channel/DefaultChannelPipeline;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
