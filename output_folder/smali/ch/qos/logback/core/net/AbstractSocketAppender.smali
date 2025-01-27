.class public abstract Lch/qos/logback/core/net/AbstractSocketAppender;
.super Lch/qos/logback/core/AppenderBase;
.source "AbstractSocketAppender.java"

# interfaces
.implements Lch/qos/logback/core/net/SocketConnector$ExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/AppenderBase<",
        "TE;>;",
        "Lch/qos/logback/core/net/SocketConnector$ExceptionHandler;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCEPT_CONNECTION_DELAY:I = 0x1388

.field private static final DEFAULT_EVENT_DELAY_TIMEOUT:I = 0x64

.field public static final DEFAULT_PORT:I = 0x11d0

.field public static final DEFAULT_QUEUE_SIZE:I = 0x80

.field public static final DEFAULT_RECONNECTION_DELAY:I = 0x7530


# instance fields
.field private acceptConnectionTimeout:I

.field private address:Ljava/net/InetAddress;

.field private connector:Lch/qos/logback/core/net/SocketConnector;

.field private deque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field private eventDelayLimit:Lch/qos/logback/core/util/Duration;

.field private final objectWriterFactory:Lch/qos/logback/core/net/ObjectWriterFactory;

.field private peerId:Ljava/lang/String;

.field private port:I

.field private final queueFactory:Lch/qos/logback/core/net/QueueFactory;

.field private queueSize:I

.field private reconnectionDelay:Lch/qos/logback/core/util/Duration;

.field private remoteHost:Ljava/lang/String;

.field private volatile socket:Ljava/net/Socket;

.field private task:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 96
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    new-instance v0, Lch/qos/logback/core/net/QueueFactory;

    invoke-direct {v0}, Lch/qos/logback/core/net/QueueFactory;-><init>()V

    new-instance v1, Lch/qos/logback/core/net/ObjectWriterFactory;

    invoke-direct {v1}, Lch/qos/logback/core/net/ObjectWriterFactory;-><init>()V

    invoke-direct {p0, v0, v1}, Lch/qos/logback/core/net/AbstractSocketAppender;-><init>(Lch/qos/logback/core/net/QueueFactory;Lch/qos/logback/core/net/ObjectWriterFactory;)V

    .line 97
    return-void
.end method

.method constructor <init>(Lch/qos/logback/core/net/QueueFactory;Lch/qos/logback/core/net/ObjectWriterFactory;)V
    .locals 3
    .param p1, "queueFactory"    # Lch/qos/logback/core/net/QueueFactory;
    .param p2, "objectWriterFactory"    # Lch/qos/logback/core/net/ObjectWriterFactory;

    .line 102
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    .line 78
    const/16 v0, 0x11d0

    iput v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->port:I

    .line 80
    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide/16 v1, 0x7530

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    iput-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->reconnectionDelay:Lch/qos/logback/core/util/Duration;

    .line 81
    const/16 v0, 0x80

    iput v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->queueSize:I

    .line 82
    const/16 v0, 0x1388

    iput v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->acceptConnectionTimeout:I

    .line 83
    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    iput-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->eventDelayLimit:Lch/qos/logback/core/util/Duration;

    .line 103
    iput-object p2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->objectWriterFactory:Lch/qos/logback/core/net/ObjectWriterFactory;

    .line 104
    iput-object p1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->queueFactory:Lch/qos/logback/core/net/QueueFactory;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lch/qos/logback/core/net/AbstractSocketAppender;)V
    .locals 0
    .param p0, "x0"    # Lch/qos/logback/core/net/AbstractSocketAppender;

    .line 44
    invoke-direct {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->connectSocketAndDispatchEvents()V

    return-void
.end method

.method private connectSocketAndDispatchEvents()V
    .locals 5

    .line 189
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    const-string v0, "connection closed"

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->socketConnectionCouldBeEstablished()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 191
    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->createObjectWriterForSocket()Lch/qos/logback/core/net/ObjectWriter;

    move-result-object v2

    .line 192
    .local v2, "objectWriter":Lch/qos/logback/core/net/ObjectWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->peerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "connection established"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, v2}, Lch/qos/logback/core/net/AbstractSocketAppender;->dispatchEvents(Lch/qos/logback/core/net/ObjectWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    .end local v2    # "objectWriter":Lch/qos/logback/core/net/ObjectWriter;
    :try_start_2
    iget-object v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 198
    iput-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->peerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 200
    goto :goto_2

    .line 197
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "ex":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->peerId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "connection failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .end local v2    # "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    invoke-static {v2}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 198
    iput-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->peerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    goto :goto_0

    .line 197
    :goto_3
    iget-object v3, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    invoke-static {v3}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 198
    iput-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->peerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 204
    :cond_0
    goto :goto_4

    .line 202
    :catch_1
    move-exception v0

    .line 205
    :goto_4
    const-string/jumbo v0, "shutting down"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method private createConnector(Ljava/net/InetAddress;IIJ)Lch/qos/logback/core/net/SocketConnector;
    .locals 7
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "initialDelay"    # I
    .param p4, "retryDelay"    # J

    .line 220
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    int-to-long v3, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lch/qos/logback/core/net/AbstractSocketAppender;->newConnector(Ljava/net/InetAddress;IJJ)Lch/qos/logback/core/net/SocketConnector;

    move-result-object v0

    .line 221
    .local v0, "connector":Lch/qos/logback/core/net/SocketConnector;
    invoke-interface {v0, p0}, Lch/qos/logback/core/net/SocketConnector;->setExceptionHandler(Lch/qos/logback/core/net/SocketConnector$ExceptionHandler;)V

    .line 222
    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/qos/logback/core/net/SocketConnector;->setSocketFactory(Ljavax/net/SocketFactory;)V

    .line 223
    return-object v0
.end method

.method private createObjectWriterForSocket()Lch/qos/logback/core/net/ObjectWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    iget v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->acceptConnectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 214
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->objectWriterFactory:Lch/qos/logback/core/net/ObjectWriterFactory;

    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/net/ObjectWriterFactory;->newAutoFlushingObjectWriter(Ljava/io/OutputStream;)Lch/qos/logback/core/net/AutoFlushingObjectWriter;

    move-result-object v0

    .line 215
    .local v0, "objectWriter":Lch/qos/logback/core/net/ObjectWriter;
    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 216
    return-object v0
.end method

.method private dispatchEvents(Lch/qos/logback/core/net/ObjectWriter;)V
    .locals 3
    .param p1, "objectWriter"    # Lch/qos/logback/core/net/ObjectWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    :goto_0
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->deque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    .line 229
    .local v0, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->postProcessEvent(Ljava/lang/Object;)V

    .line 230
    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->getPST()Lch/qos/logback/core/spi/PreSerializationTransformer;

    move-result-object v1

    invoke-interface {v1, v0}, Lch/qos/logback/core/spi/PreSerializationTransformer;->transform(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object v1

    .line 232
    .local v1, "serializableEvent":Ljava/io/Serializable;
    :try_start_0
    invoke-interface {p1, v1}, Lch/qos/logback/core/net/ObjectWriter;->write(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    nop

    .line 237
    .end local v0    # "event":Ljava/lang/Object;, "TE;"
    .end local v1    # "serializableEvent":Ljava/io/Serializable;
    goto :goto_0

    .line 233
    .restart local v0    # "event":Ljava/lang/Object;, "TE;"
    .restart local v1    # "serializableEvent":Ljava/io/Serializable;
    :catch_0
    move-exception v2

    .line 234
    .local v2, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->tryReAddingEventToFrontOfQueue(Ljava/lang/Object;)V

    .line 235
    throw v2
.end method

.method private socketConnectionCouldBeEstablished()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 209
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->connector:Lch/qos/logback/core/net/SocketConnector;

    invoke-interface {v0}, Lch/qos/logback/core/net/SocketConnector;->call()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private tryReAddingEventToFrontOfQueue(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->deque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    .local v0, "wasInserted":Z
    if-nez v0, :cond_0

    .line 243
    const-string v1, "Dropping event due to socket connection error and maxed out deque capacity"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->deque:Ljava/util/concurrent/BlockingDeque;

    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->eventDelayLimit:Lch/qos/logback/core/util/Duration;

    invoke-virtual {v1}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, v1, v2, v3}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 179
    .local v0, "inserted":Z
    if-nez v0, :cond_1

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping event due to timeout limit of ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->eventDelayLimit:Lch/qos/logback/core/util/Duration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] being exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v0    # "inserted":Z
    :cond_1
    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "Interrupted while appending event to SocketAppender"

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void

    .line 175
    :cond_2
    :goto_1
    return-void
.end method

.method public connectionFailed(Lch/qos/logback/core/net/SocketConnector;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "connector"    # Lch/qos/logback/core/net/SocketConnector;
    .param p2, "ex"    # Ljava/lang/Exception;

    .line 251
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    instance-of v0, p2, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "connector interrupted"

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_0
    instance-of v0, p2, Ljava/net/ConnectException;

    if-eqz v0, :cond_1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->peerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "connection refused"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->peerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/net/AbstractSocketAppender;->addInfo(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void
.end method

.method public getEventDelayLimit()Lch/qos/logback/core/util/Duration;
    .locals 1

    .line 387
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->eventDelayLimit:Lch/qos/logback/core/util/Duration;

    return-object v0
.end method

.method protected abstract getPST()Lch/qos/logback/core/spi/PreSerializationTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/spi/PreSerializationTransformer<",
            "TE;>;"
        }
    .end annotation
.end method

.method public getPort()I
    .locals 1

    .line 327
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iget v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->port:I

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .line 369
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iget v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->queueSize:I

    return v0
.end method

.method public getReconnectionDelay()Lch/qos/logback/core/util/Duration;
    .locals 1

    .line 346
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->reconnectionDelay:Lch/qos/logback/core/util/Duration;

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .line 312
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->remoteHost:Ljava/lang/String;

    return-object v0
.end method

.method protected getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 283
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected newConnector(Ljava/net/InetAddress;IJJ)Lch/qos/logback/core/net/SocketConnector;
    .locals 8
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "initialDelay"    # J
    .param p5, "retryDelay"    # J

    .line 274
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    new-instance v7, Lch/qos/logback/core/net/DefaultSocketConnector;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lch/qos/logback/core/net/DefaultSocketConnector;-><init>(Ljava/net/InetAddress;IJJ)V

    return-object v7
.end method

.method protected abstract postProcessEvent(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method setAcceptConnectionTimeout(I)V
    .locals 0
    .param p1, "acceptConnectionTimeout"    # I

    .line 400
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->acceptConnectionTimeout:I

    .line 401
    return-void
.end method

.method public setEventDelayLimit(Lch/qos/logback/core/util/Duration;)V
    .locals 0
    .param p1, "eventDelayLimit"    # Lch/qos/logback/core/util/Duration;

    .line 380
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->eventDelayLimit:Lch/qos/logback/core/util/Duration;

    .line 381
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 320
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->port:I

    .line 321
    return-void
.end method

.method public setQueueSize(I)V
    .locals 0
    .param p1, "queueSize"    # I

    .line 362
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iput p1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->queueSize:I

    .line 363
    return-void
.end method

.method public setReconnectionDelay(Lch/qos/logback/core/util/Duration;)V
    .locals 0
    .param p1, "delay"    # Lch/qos/logback/core/util/Duration;

    .line 339
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->reconnectionDelay:Lch/qos/logback/core/util/Duration;

    .line 340
    return-void
.end method

.method public setRemoteHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 305
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->remoteHost:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public start()V
    .locals 8

    .line 111
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "errorCount":I
    iget v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->port:I

    if-gtz v1, :cond_1

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No port was configured for appender"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " For more information, please visit http://logback.qos.ch/codes.html#socket_no_port"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/AbstractSocketAppender;->addError(Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->remoteHost:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No remote host was configured for appender"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " For more information, please visit http://logback.qos.ch/codes.html#socket_no_host"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/AbstractSocketAppender;->addError(Ljava/lang/String;)V

    .line 125
    :cond_2
    iget v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->queueSize:I

    if-nez v1, :cond_3

    .line 126
    const-string v1, "Queue size of zero is deprecated, use a size of one to indicate synchronous processing"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/AbstractSocketAppender;->addWarn(Ljava/lang/String;)V

    .line 129
    :cond_3
    iget v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->queueSize:I

    if-gez v1, :cond_4

    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    const-string v1, "Queue size must be greater than zero"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/net/AbstractSocketAppender;->addError(Ljava/lang/String;)V

    .line 134
    :cond_4
    if-nez v0, :cond_5

    .line 136
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->remoteHost:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 138
    .local v1, "ex":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->remoteHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/net/AbstractSocketAppender;->addError(Ljava/lang/String;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    .line 143
    .end local v1    # "ex":Ljava/net/UnknownHostException;
    :cond_5
    :goto_0
    if-nez v0, :cond_6

    .line 144
    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->queueFactory:Lch/qos/logback/core/net/QueueFactory;

    iget v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->queueSize:I

    invoke-virtual {v1, v2}, Lch/qos/logback/core/net/QueueFactory;->newLinkedBlockingDeque(I)Ljava/util/concurrent/LinkedBlockingDeque;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->deque:Ljava/util/concurrent/BlockingDeque;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remote peer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->remoteHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->peerId:Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->address:Ljava/net/InetAddress;

    iget v4, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->port:I

    const/4 v5, 0x0

    iget-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->reconnectionDelay:Lch/qos/logback/core/util/Duration;

    invoke-virtual {v1}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lch/qos/logback/core/net/AbstractSocketAppender;->createConnector(Ljava/net/InetAddress;IIJ)Lch/qos/logback/core/net/SocketConnector;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->connector:Lch/qos/logback/core/net/SocketConnector;

    .line 147
    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-interface {v1}, Lch/qos/logback/core/Context;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lch/qos/logback/core/net/AbstractSocketAppender$1;

    invoke-direct {v2, p0}, Lch/qos/logback/core/net/AbstractSocketAppender$1;-><init>(Lch/qos/logback/core/net/AbstractSocketAppender;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->task:Ljava/util/concurrent/Future;

    .line 153
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->start()V

    .line 155
    :cond_6
    return-void
.end method

.method public stop()V
    .locals 2

    .line 162
    .local p0, "this":Lch/qos/logback/core/net/AbstractSocketAppender;, "Lch/qos/logback/core/net/AbstractSocketAppender<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/net/AbstractSocketAppender;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lch/qos/logback/core/util/CloseUtil;->closeQuietly(Ljava/net/Socket;)V

    .line 165
    iget-object v0, p0, Lch/qos/logback/core/net/AbstractSocketAppender;->task:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 166
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->stop()V

    .line 167
    return-void
.end method
