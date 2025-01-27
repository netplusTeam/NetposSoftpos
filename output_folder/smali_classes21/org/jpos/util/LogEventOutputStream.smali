.class public Lorg/jpos/util/LogEventOutputStream;
.super Ljava/io/OutputStream;
.source "LogEventOutputStream.java"

# interfaces
.implements Lorg/jpos/util/LogSource;
.implements Ljava/lang/Runnable;


# instance fields
.field private baos:Ljava/io/ByteArrayOutputStream;

.field private delay:J

.field private volatile evt:Lorg/jpos/util/LogEvent;

.field private lock:Ljava/util/concurrent/Semaphore;

.field private logService:Ljava/util/concurrent/ScheduledExecutorService;

.field private logger:Lorg/jpos/util/Logger;

.field private realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    .line 34
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    .line 41
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->logService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/jpos/util/Logger;Ljava/lang/String;J)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .line 45
    invoke-direct {p0}, Lorg/jpos/util/LogEventOutputStream;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/jpos/util/LogEventOutputStream;->logger:Lorg/jpos/util/Logger;

    .line 47
    iput-object p2, p0, Lorg/jpos/util/LogEventOutputStream;->realm:Ljava/lang/String;

    .line 48
    iput-wide p3, p0, Lorg/jpos/util/LogEventOutputStream;->delay:J

    .line 49
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 109
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->logService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 113
    throw v0

    .line 110
    :catch_0
    move-exception v0

    .line 112
    :goto_0
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 113
    nop

    .line 114
    return-void
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 3

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "event":Lorg/jpos/util/LogEvent;
    iget-object v1, p0, Lorg/jpos/util/LogEventOutputStream;->evt:Lorg/jpos/util/LogEvent;

    if-eqz v1, :cond_0

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 93
    iget-object v1, p0, Lorg/jpos/util/LogEventOutputStream;->evt:Lorg/jpos/util/LogEvent;

    move-object v0, v1

    .line 94
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jpos/util/LogEventOutputStream;->evt:Lorg/jpos/util/LogEvent;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 98
    throw v1

    .line 95
    :catch_0
    move-exception v1

    .line 97
    :goto_0
    iget-object v1, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 98
    nop

    .line 99
    if-eqz v0, :cond_0

    .line 100
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 102
    :cond_0
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lorg/jpos/util/LogEventOutputStream;->logger:Lorg/jpos/util/Logger;

    .line 74
    iput-object p2, p0, Lorg/jpos/util/LogEventOutputStream;->realm:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 55
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 56
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->evt:Lorg/jpos/util/LogEvent;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->evt:Lorg/jpos/util/LogEvent;

    .line 58
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->logService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v1, p0, Lorg/jpos/util/LogEventOutputStream;->delay:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->evt:Lorg/jpos/util/LogEvent;

    iget-object v1, p0, Lorg/jpos/util/LogEventOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->baos:Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 65
    throw v0

    .line 62
    :catch_0
    move-exception v0

    .line 64
    :goto_0
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->lock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 65
    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lorg/jpos/util/LogEventOutputStream;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    :goto_1
    return-void
.end method
