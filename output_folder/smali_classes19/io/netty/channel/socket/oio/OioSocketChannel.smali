.class public Lio/netty/channel/socket/oio/OioSocketChannel;
.super Lio/netty/channel/oio/OioByteStreamChannel;
.source "OioSocketChannel.java"

# interfaces
.implements Lio/netty/channel/socket/SocketChannel;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final config:Lio/netty/channel/socket/oio/OioSocketChannelConfig;

.field private final socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lio/netty/channel/socket/oio/OioSocketChannel;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/socket/oio/OioSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    invoke-direct {p0, v0}, Lio/netty/channel/socket/oio/OioSocketChannel;-><init>(Ljava/net/Socket;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lio/netty/channel/Channel;Ljava/net/Socket;)V
    .locals 5
    .param p1, "parent"    # Lio/netty/channel/Channel;
    .param p2, "socket"    # Ljava/net/Socket;

    .line 77
    const-string v0, "Failed to close a socket."

    invoke-direct {p0, p1}, Lio/netty/channel/oio/OioByteStreamChannel;-><init>(Lio/netty/channel/Channel;)V

    .line 78
    iput-object p2, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    .line 79
    new-instance v1, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;

    invoke-direct {v1, p0, p2}, Lio/netty/channel/socket/oio/DefaultOioSocketChannelConfig;-><init>(Lio/netty/channel/socket/oio/OioSocketChannel;Ljava/net/Socket;)V

    iput-object v1, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->config:Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/channel/socket/oio/OioSocketChannel;->activate(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 86
    :cond_0
    const/16 v2, 0x3e8

    invoke-virtual {p2, v2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v1, 0x1

    .line 91
    if-nez v1, :cond_1

    .line 93
    :try_start_1
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :goto_0
    goto :goto_1

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lio/netty/channel/socket/oio/OioSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3, v0, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 99
    :cond_1
    :goto_1
    return-void

    .line 91
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 88
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lio/netty/channel/ChannelException;

    const-string v4, "failed to initialize a socket"

    invoke-direct {v3, v4, v2}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "success":Z
    .end local p1    # "parent":Lio/netty/channel/Channel;
    .end local p2    # "socket":Ljava/net/Socket;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "success":Z
    .restart local p1    # "parent":Lio/netty/channel/Channel;
    .restart local p2    # "socket":Ljava/net/Socket;
    :goto_2
    if-nez v1, :cond_2

    .line 93
    :try_start_3
    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 96
    goto :goto_3

    .line 94
    :catch_2
    move-exception v3

    .line 95
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lio/netty/channel/socket/oio/OioSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v4, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v2
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel;-><init>(Lio/netty/channel/Channel;Ljava/net/Socket;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/socket/oio/OioSocketChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 46
    invoke-direct {p0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownOutput0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/socket/oio/OioSocketChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelPromise;

    .line 46
    invoke-direct {p0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownInput0(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$200(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/socket/oio/OioSocketChannel;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 46
    invoke-direct {p0, p1, p2}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$300(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/channel/ChannelFuture;
    .param p1, "x1"    # Lio/netty/channel/ChannelFuture;
    .param p2, "x2"    # Lio/netty/channel/ChannelPromise;

    .line 46
    invoke-static {p0, p1, p2}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method private static shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 4
    .param p0, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p1, "shutdownInputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 256
    invoke-interface {p0}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 257
    .local v0, "shutdownOutputCause":Ljava/lang/Throwable;
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v1

    .line 258
    .local v1, "shutdownInputCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 259
    if-eqz v1, :cond_0

    .line 260
    sget-object v2, Lio/netty/channel/socket/oio/OioSocketChannel;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v3, "Exception suppressed because a previous exception occurred."

    invoke-interface {v2, v3, v1}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 263
    :cond_0
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 264
    :cond_1
    if-eqz v1, :cond_2

    .line 265
    invoke-interface {p2, v1}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    goto :goto_0

    .line 267
    :cond_2
    invoke-interface {p2}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 269
    :goto_0
    return-void
.end method

.method private shutdownInput0(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 216
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V

    .line 217
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    .line 219
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 221
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private shutdownOutput0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V

    .line 196
    return-void
.end method

.method private shutdownOutput0(Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 187
    :try_start_0
    invoke-direct {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownOutput0()V

    .line 188
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    .local v0, "t":Ljava/lang/Throwable;
    invoke-interface {p1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 192
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "shutdownOutputFuture"    # Lio/netty/channel/ChannelFuture;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 240
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownInput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 241
    .local v0, "shutdownInputFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-static {p1, v0, p2}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 244
    :cond_0
    new-instance v1, Lio/netty/channel/socket/oio/OioSocketChannel$4;

    invoke-direct {v1, p0, p1, p2}, Lio/netty/channel/socket/oio/OioSocketChannel$4;-><init>(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 251
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkInputShutdown()Z
    .locals 2

    .line 330
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->config()Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/socket/oio/OioSocketChannelConfig;->getSoTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    goto :goto_0

    .line 333
    :catchall_0
    move-exception v0

    .line 336
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 338
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final clearReadPending0()V
    .locals 0

    .line 348
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->clearReadPending()V

    .line 349
    return-void
.end method

.method public bridge synthetic config()Lio/netty/channel/ChannelConfig;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->config()Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic config()Lio/netty/channel/socket/SocketChannelConfig;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->config()Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public config()Lio/netty/channel/socket/oio/OioSocketChannelConfig;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->config:Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    return-object v0
.end method

.method protected doBind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-static {v0, p1}, Lio/netty/util/internal/SocketUtils;->bind(Ljava/net/Socket;Ljava/net/SocketAddress;)V

    .line 294
    return-void
.end method

.method protected doClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 327
    return-void
.end method

.method protected doConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    if-eqz p2, :cond_0

    .line 300
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-static {v0, p2}, Lio/netty/util/internal/SocketUtils;->bind(Ljava/net/Socket;Ljava/net/SocketAddress;)V

    .line 303
    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, "success":Z
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->config()Lio/netty/channel/socket/oio/OioSocketChannelConfig;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/socket/oio/OioSocketChannelConfig;->getConnectTimeoutMillis()I

    move-result v2

    invoke-static {v1, p1, v2}, Lio/netty/util/internal/SocketUtils;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V

    .line 306
    iget-object v1, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lio/netty/channel/socket/oio/OioSocketChannel;->activate(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    const/4 v0, 0x1

    .line 313
    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->doClose()V

    .line 317
    :cond_1
    return-void

    .line 313
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/net/SocketTimeoutException;
    :try_start_1
    new-instance v2, Lio/netty/channel/ConnectTimeoutException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection timed out: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/netty/channel/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    .line 310
    .local v2, "cause":Lio/netty/channel/ConnectTimeoutException;
    invoke-virtual {v1}, Ljava/net/SocketTimeoutException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/channel/ConnectTimeoutException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 311
    nop

    .end local v0    # "success":Z
    .end local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .end local p2    # "localAddress":Ljava/net/SocketAddress;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    .end local v2    # "cause":Lio/netty/channel/ConnectTimeoutException;
    .restart local v0    # "success":Z
    .restart local p1    # "remoteAddress":Ljava/net/SocketAddress;
    .restart local p2    # "localAddress":Ljava/net/SocketAddress;
    :goto_0
    if-nez v0, :cond_2

    .line 314
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->doClose()V

    .line 316
    :cond_2
    throw v1
.end method

.method protected doDisconnect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->doClose()V

    .line 322
    return-void
.end method

.method protected doReadBytes(Lio/netty/buffer/ByteBuf;)I
    .locals 2
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, -0x1

    return v0

    .line 163
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lio/netty/channel/oio/OioByteStreamChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ignored":Ljava/net/SocketTimeoutException;
    const/4 v1, 0x0

    return v1
.end method

.method protected final doShutdownOutput()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownOutput0()V

    .line 140
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShutdown()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public localAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 273
    invoke-super {p0}, Lio/netty/channel/oio/OioByteStreamChannel;->localAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic localAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->localAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected localAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 283
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parent()Lio/netty/channel/Channel;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->parent()Lio/netty/channel/socket/ServerSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public parent()Lio/netty/channel/socket/ServerSocketChannel;
    .locals 1

    .line 103
    invoke-super {p0}, Lio/netty/channel/oio/OioByteStreamChannel;->parent()Lio/netty/channel/Channel;

    move-result-object v0

    check-cast v0, Lio/netty/channel/socket/ServerSocketChannel;

    return-object v0
.end method

.method public remoteAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .line 278
    invoke-super {p0}, Lio/netty/channel/oio/OioByteStreamChannel;->remoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public bridge synthetic remoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected remoteAddress0()Ljava/net/SocketAddress;
    .locals 1

    .line 288
    iget-object v0, p0, Lio/netty/channel/socket/oio/OioSocketChannel;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method protected setReadPending(Z)V
    .locals 0
    .param p1, "readPending"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    invoke-super {p0, p1}, Lio/netty/channel/oio/OioByteStreamChannel;->setReadPending(Z)V

    .line 345
    return-void
.end method

.method public shutdown()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 154
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdown(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 225
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownOutput()Lio/netty/channel/ChannelFuture;

    move-result-object v0

    .line 226
    .local v0, "shutdownOutputFuture":Lio/netty/channel/ChannelFuture;
    invoke-interface {v0}, Lio/netty/channel/ChannelFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-direct {p0, v0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownOutputDone(Lio/netty/channel/ChannelFuture;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 229
    :cond_0
    new-instance v1, Lio/netty/channel/socket/oio/OioSocketChannel$3;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel$3;-><init>(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 236
    :goto_0
    return-object p1
.end method

.method public shutdownInput()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownInput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 200
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 201
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    invoke-direct {p0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownInput0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 204
    :cond_0
    new-instance v1, Lio/netty/channel/socket/oio/OioSocketChannel$2;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel$2;-><init>(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 211
    :goto_0
    return-object p1
.end method

.method public shutdownOutput()Lio/netty/channel/ChannelFuture;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdownOutput(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .line 171
    invoke-virtual {p0}, Lio/netty/channel/socket/oio/OioSocketChannel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 172
    .local v0, "loop":Lio/netty/channel/EventLoop;
    invoke-interface {v0}, Lio/netty/channel/EventLoop;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel;->shutdownOutput0(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance v1, Lio/netty/channel/socket/oio/OioSocketChannel$1;

    invoke-direct {v1, p0, p1}, Lio/netty/channel/socket/oio/OioSocketChannel$1;-><init>(Lio/netty/channel/socket/oio/OioSocketChannel;Lio/netty/channel/ChannelPromise;)V

    invoke-interface {v0, v1}, Lio/netty/channel/EventLoop;->execute(Ljava/lang/Runnable;)V

    .line 182
    :goto_0
    return-object p1
.end method
