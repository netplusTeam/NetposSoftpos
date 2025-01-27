.class public Lorg/jpos/util/ThreadPool;
.super Ljava/lang/ThreadGroup;
.source "ThreadPool.java"

# interfaces
.implements Lorg/jpos/util/LogSource;
.implements Lorg/jpos/util/Loggeable;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/ThreadPoolMBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/util/ThreadPool$PooledThread;,
        Lorg/jpos/util/ThreadPool$Supervised;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_THREADS:I = 0x64

.field private static poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private active:I

.field private available:I

.field private jobs:I

.field private logger:Lorg/jpos/util/Logger;

.field private maxPoolSize:I

.field private final namePrefix:Ljava/lang/String;

.field private pool:Lorg/jpos/util/BlockingQueue;

.field private realm:Ljava/lang/String;

.field private running:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/jpos/util/ThreadPool;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lorg/jpos/util/ThreadPool;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 139
    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lorg/jpos/util/ThreadPool;-><init>(II)V

    .line 140
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "poolSize"    # I
    .param p2, "maxPoolSize"    # I

    .line 114
    const-string v0, "ThreadPool"

    invoke-direct {p0, p1, p2, v0}, Lorg/jpos/util/ThreadPool;-><init>(IILjava/lang/String;)V

    .line 115
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .param p1, "poolSize"    # I
    .param p2, "maxPoolSize"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/jpos/util/ThreadPool;->poolNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lorg/jpos/util/ThreadPool;->maxPoolSize:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/util/ThreadPool;->running:I

    .line 43
    iput v0, p0, Lorg/jpos/util/ThreadPool;->active:I

    .line 44
    new-instance v1, Lorg/jpos/util/BlockingQueue;

    invoke-direct {v1}, Lorg/jpos/util/BlockingQueue;-><init>()V

    iput-object v1, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    .line 47
    iput v0, p0, Lorg/jpos/util/ThreadPool;->jobs:I

    .line 123
    if-lez p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    iput v0, p0, Lorg/jpos/util/ThreadPool;->maxPoolSize:I

    .line 124
    iput v0, p0, Lorg/jpos/util/ThreadPool;->available:I

    .line 125
    iput-object p3, p0, Lorg/jpos/util/ThreadPool;->namePrefix:Ljava/lang/String;

    .line 126
    invoke-direct {p0, p1}, Lorg/jpos/util/ThreadPool;->init(I)V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/util/ThreadPool;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/ThreadPool;

    .line 37
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->namePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 37
    sget-object v0, Lorg/jpos/util/ThreadPool;->threadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jpos/util/ThreadPool;)Lorg/jpos/util/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/ThreadPool;

    .line 37
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$308(Lorg/jpos/util/ThreadPool;)I
    .locals 2
    .param p0, "x0"    # Lorg/jpos/util/ThreadPool;

    .line 37
    iget v0, p0, Lorg/jpos/util/ThreadPool;->active:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jpos/util/ThreadPool;->active:I

    return v0
.end method

.method static synthetic access$310(Lorg/jpos/util/ThreadPool;)I
    .locals 2
    .param p0, "x0"    # Lorg/jpos/util/ThreadPool;

    .line 37
    iget v0, p0, Lorg/jpos/util/ThreadPool;->active:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/jpos/util/ThreadPool;->active:I

    return v0
.end method

.method static synthetic access$408(Lorg/jpos/util/ThreadPool;)I
    .locals 2
    .param p0, "x0"    # Lorg/jpos/util/ThreadPool;

    .line 37
    iget v0, p0, Lorg/jpos/util/ThreadPool;->available:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jpos/util/ThreadPool;->available:I

    return v0
.end method

.method static synthetic access$500(Lorg/jpos/util/ThreadPool;)Lorg/jpos/util/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/ThreadPool;

    .line 37
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public static getThreadPool(Ljava/lang/String;)Lorg/jpos/util/ThreadPool;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread.pool."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/util/ThreadPool;

    return-object v0
.end method

.method private init(I)V
    .locals 4
    .param p1, "poolSize"    # I

    .line 130
    :goto_0
    iget v0, p0, Lorg/jpos/util/ThreadPool;->running:I

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, p1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    iget v3, p0, Lorg/jpos/util/ThreadPool;->maxPoolSize:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 131
    iget v0, p0, Lorg/jpos/util/ThreadPool;->running:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jpos/util/ThreadPool;->running:I

    .line 132
    new-instance v0, Lorg/jpos/util/ThreadPool$PooledThread;

    invoke-direct {v0, p0}, Lorg/jpos/util/ThreadPool$PooledThread;-><init>(Lorg/jpos/util/ThreadPool;)V

    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool$PooledThread;->start()V

    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v0}, Lorg/jpos/util/BlockingQueue;->close()V

    .line 143
    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<thread-pool name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v1}, Lorg/jpos/util/BlockingQueue;->ready()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<closed/>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<jobs>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool;->getJobCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</jobs>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<size>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool;->getPoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</size>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<max>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool;->getMaxPoolSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</max>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<idle>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool;->getIdleCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</idle>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<active>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool;->getActiveCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</active>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<pending>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool;->getPendingCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</pending>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</thread-pool>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/BlockingQueue$Closed;
        }
    .end annotation

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v0}, Lorg/jpos/util/BlockingQueue;->ready()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    iget v0, p0, Lorg/jpos/util/ThreadPool;->jobs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jpos/util/ThreadPool;->jobs:I

    iget v1, p0, Lorg/jpos/util/ThreadPool;->maxPoolSize:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v0}, Lorg/jpos/util/BlockingQueue;->consumerCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 149
    .end local p0    # "this":Lorg/jpos/util/ThreadPool;
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/util/ThreadPool;->supervise()V

    .line 151
    :cond_1
    iget v0, p0, Lorg/jpos/util/ThreadPool;->running:I

    iget v1, p0, Lorg/jpos/util/ThreadPool;->maxPoolSize:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v0}, Lorg/jpos/util/BlockingQueue;->consumerDeficit()I

    move-result v0

    if-ltz v0, :cond_2

    .line 152
    new-instance v0, Lorg/jpos/util/ThreadPool$PooledThread;

    invoke-direct {v0, p0}, Lorg/jpos/util/ThreadPool$PooledThread;-><init>(Lorg/jpos/util/ThreadPool;)V

    invoke-virtual {v0}, Lorg/jpos/util/ThreadPool$PooledThread;->start()V

    .line 153
    iget v0, p0, Lorg/jpos/util/ThreadPool;->running:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jpos/util/ThreadPool;->running:I

    .line 155
    :cond_2
    iget v0, p0, Lorg/jpos/util/ThreadPool;->available:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jpos/util/ThreadPool;->available:I

    .line 156
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v0, p1}, Lorg/jpos/util/BlockingQueue;->enqueue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 146
    :cond_3
    :try_start_1
    new-instance v0, Lorg/jpos/util/BlockingQueue$Closed;

    invoke-direct {v0}, Lorg/jpos/util/BlockingQueue$Closed;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local p1    # "action":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getActiveCount()I
    .locals 1

    .line 194
    iget v0, p0, Lorg/jpos/util/ThreadPool;->active:I

    return v0
.end method

.method public declared-synchronized getAvailableCount()I
    .locals 1

    monitor-enter p0

    .line 206
    :try_start_0
    iget v0, p0, Lorg/jpos/util/ThreadPool;->available:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 206
    .end local p0    # "this":Lorg/jpos/util/ThreadPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIdleCount()I
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v0}, Lorg/jpos/util/BlockingQueue;->consumerCount()I

    move-result v0

    return v0
.end method

.method public getJobCount()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/jpos/util/ThreadPool;->jobs:I

    return v0
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getMaxPoolSize()I
    .locals 1

    .line 188
    iget v0, p0, Lorg/jpos/util/ThreadPool;->maxPoolSize:I

    return v0
.end method

.method public getPendingCount()I
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->pool:Lorg/jpos/util/BlockingQueue;

    invoke-virtual {v0}, Lorg/jpos/util/BlockingQueue;->pending()I

    move-result v0

    return v0
.end method

.method public getPoolSize()I
    .locals 1

    .line 182
    iget v0, p0, Lorg/jpos/util/ThreadPool;->running:I

    return v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/jpos/util/ThreadPool;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 240
    const-string v0, "max-size"

    const/16 v1, 0x64

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jpos/util/ThreadPool;->maxPoolSize:I

    .line 241
    const-string v0, "initial-size"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jpos/util/ThreadPool;->init(I)V

    .line 242
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 225
    iput-object p1, p0, Lorg/jpos/util/ThreadPool;->logger:Lorg/jpos/util/Logger;

    .line 226
    iput-object p2, p0, Lorg/jpos/util/ThreadPool;->realm:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public supervise()V
    .locals 4

    .line 217
    iget v0, p0, Lorg/jpos/util/ThreadPool;->maxPoolSize:I

    new-array v0, v0, [Ljava/lang/Thread;

    .line 218
    .local v0, "t":[Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lorg/jpos/util/ThreadPool;->enumerate([Ljava/lang/Thread;)I

    move-result v1

    .line 219
    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 220
    aget-object v3, v0, v2

    instance-of v3, v3, Lorg/jpos/util/ThreadPool$PooledThread;

    if-eqz v3, :cond_0

    .line 221
    aget-object v3, v0, v2

    check-cast v3, Lorg/jpos/util/ThreadPool$PooledThread;

    invoke-virtual {v3}, Lorg/jpos/util/ThreadPool$PooledThread;->supervise()V

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
