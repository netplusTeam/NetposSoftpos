.class public Lcom/sleepycat/je/utilint/TaskCoordinator;
.super Ljava/lang/Object;
.source "TaskCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;,
        Lcom/sleepycat/je/utilint/TaskCoordinator$Task;,
        Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;,
        Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;,
        Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;,
        Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    }
.end annotation


# static fields
.field public static final DEFAULT_LEASE_CHECK_PERIOD_MS:I = 0x3e8

.field private static final INACTIVE_REAL_PERMITS:I = 0x3fffffff


# instance fields
.field private volatile appPermitPercent:I

.field private final close:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final deficitLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/RateLimitingLogger<",
            "Lcom/sleepycat/je/utilint/TaskCoordinator$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final deficitPermits:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile leaseCheckingTask:Ljava/util/TimerTask;

.field protected final logger:Ljava/util/logging/Logger;

.field private final maxRealPermits:I

.field private final outstandingPermits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;",
            ">;"
        }
    .end annotation
.end field

.field private final outstandingRealPermits:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final permitSemaphore:Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

.field private final tasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/utilint/TaskCoordinator$Task;",
            ">;"
        }
    .end annotation
.end field

.field protected final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Ljava/util/logging/Logger;Ljava/util/Set;)V
    .locals 1
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Logger;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/utilint/TaskCoordinator$Task;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p2, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/utilint/TaskCoordinator$Task;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;-><init>(Ljava/util/logging/Logger;Ljava/util/Set;Z)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;Ljava/util/Set;Z)V
    .locals 5
    .param p1, "logger"    # Ljava/util/logging/Logger;
    .param p3, "active"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/Logger;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/je/utilint/TaskCoordinator$Task;",
            ">;Z)V"
        }
    .end annotation

    .line 165
    .local p2, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/je/utilint/TaskCoordinator$Task;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    nop

    .line 67
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->outstandingPermits:Ljava/util/Set;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->outstandingRealPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->deficitPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    iput v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->appPermitPercent:I

    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->close:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 129
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->timer:Ljava/util/Timer;

    .line 167
    const-string v0, "logger argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    const-string v0, "tasks argument must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 170
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->logger:Ljava/util/logging/Logger;

    .line 171
    new-instance v0, Lcom/sleepycat/je/utilint/RateLimitingLogger;

    .line 172
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    const v3, 0xea60

    invoke-direct {v0, v3, v2, p1}, Lcom/sleepycat/je/utilint/RateLimitingLogger;-><init>(IILjava/util/logging/Logger;)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->deficitLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;

    .line 173
    iput-object p2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->tasks:Ljava/util/Set;

    .line 174
    if-eqz p3, :cond_0

    .line 175
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/sleepycat/je/utilint/TaskCoordinator$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/sleepycat/je/utilint/TaskCoordinator$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    :goto_0
    iput v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->maxRealPermits:I

    .line 178
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Coordinating tasks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 180
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/sleepycat/je/utilint/TaskCoordinator$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/sleepycat/je/utilint/TaskCoordinator$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 181
    const-string v4, ", "

    invoke-static {v4}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Max real permits:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {p1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 184
    :cond_1
    new-instance v2, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    invoke-direct {v2, v0}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;-><init>(I)V

    iput-object v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->permitSemaphore:Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    .line 185
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->setLeaseCheckingPeriod(I)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/sleepycat/je/utilint/TaskCoordinator;->setAppPermitPercent(I)Z

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->outstandingPermits:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->outstandingRealPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sleepycat/je/utilint/TaskCoordinator;)Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->permitSemaphore:Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sleepycat/je/utilint/TaskCoordinator;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/utilint/TaskCoordinator;

    .line 55
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->deficitPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public acquirePermit(Lcom/sleepycat/je/utilint/TaskCoordinator$Task;JJLjava/util/concurrent/TimeUnit;)Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;
    .locals 7
    .param p1, "task"    # Lcom/sleepycat/je/utilint/TaskCoordinator$Task;
    .param p2, "timeout"    # J
    .param p4, "leaseInterval"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 345
    const-string v0, "task argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 346
    const-string v0, "unit argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->tasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 353
    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 355
    .local v0, "leaseIntervalMs":J
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->close:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    new-instance v2, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;-><init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V

    return-object v2

    .line 360
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p4, v2

    const-string v5, " "

    if-lez v4, :cond_2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 361
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-zero lease interval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 362
    invoke-virtual {p6}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be >= 1 ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->permitSemaphore:Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, p3, p6}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 368
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->close:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 369
    new-instance v2, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;-><init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V

    return-object v2

    .line 371
    :cond_3
    new-instance v2, Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$RealPermit;-><init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 377
    :cond_4
    nop

    .line 379
    iget-object v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->deficitLogger:Lcom/sleepycat/je/utilint/RateLimitingLogger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Granted deficit permit to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " after waiting for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 382
    invoke-virtual {p6}, Ljava/util/concurrent/TimeUnit;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Current app permit %: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->appPermitPercent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    invoke-virtual {v2, p1, v3, v4}, Lcom/sleepycat/je/utilint/RateLimitingLogger;->log(Ljava/lang/Object;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 385
    new-instance v2, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$DeficitPermit;-><init>(Lcom/sleepycat/je/utilint/TaskCoordinator;Lcom/sleepycat/je/utilint/TaskCoordinator$Task;J)V

    return-object v2

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "iae":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permit acquisition for task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was interrupted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 376
    throw v2

    .line 349
    .end local v0    # "leaseIntervalMs":J
    .end local v2    # "iae":Ljava/lang/InterruptedException;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->close:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->logger:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task Coordinator closed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->permitSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->permitSemaphore:Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    const v1, 0x3fffffff    # 1.9999999f

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->release(I)V

    .line 482
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 483
    return-void
.end method

.method public getAppPermitPercent()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->appPermitPercent:I

    return v0
.end method

.method public getAppPermits()I
    .locals 2

    .line 264
    iget v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->maxRealPermits:I

    iget v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->appPermitPercent:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public getAvailableRealPermits()I
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->permitSemaphore:Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->availablePermits()I

    move-result v0

    return v0
.end method

.method public getMaxPermits()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->maxRealPermits:I

    return v0
.end method

.method public getOutstandingDeficitPermits()I
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->deficitPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getOutstandingRealPermits()I
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->outstandingRealPermits:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 4
    .param p1, "statsConfig"    # Lcom/sleepycat/je/StatsConfig;

    .line 493
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "TaskCoordinator"

    const-string v2, "Task coordination ensures that the execution of background  housekeeping tasks is coordinated, so they do not all execute  at once."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .local v0, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->REAL_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 497
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->getOutstandingRealPermits()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 498
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->DEFICIT_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 499
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->getOutstandingDeficitPermits()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 500
    new-instance v1, Lcom/sleepycat/je/utilint/IntStat;

    sget-object v2, Lcom/sleepycat/je/utilint/TaskCoordinator$StatDefs;->APPLICATION_PERMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->getAppPermits()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/sleepycat/je/utilint/IntStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;I)V

    .line 502
    return-object v0
.end method

.method protected permitSummary()Ljava/lang/String;
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->tasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/je/utilint/TaskCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sleepycat/je/utilint/TaskCoordinator$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 510
    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 511
    .local v0, "taskSummary":Ljava/lang/String;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->appPermitPercent:I

    .line 513
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 514
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->getAppPermits()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 515
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->getOutstandingRealPermits()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 516
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->getOutstandingDeficitPermits()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 511
    const-string v2, "App permits:%d%% (%d permits); Outstanding permits: %d real, %d deficit. %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public releasePermit(Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;)V
    .locals 3
    .param p1, "permit"    # Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;

    .line 402
    const-string v0, "permit argument must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->tasks:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->getTask()Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->releasePermit()V

    .line 410
    return-void

    .line 405
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown task:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 406
    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/TaskCoordinator$Permit;->getTask()Lcom/sleepycat/je/utilint/TaskCoordinator$Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/TaskCoordinator$Task;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setAppPermitPercent(I)Z
    .locals 4
    .param p1, "newAppPermitPercent"    # I

    monitor-enter p0

    .line 431
    :try_start_0
    iget v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->appPermitPercent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 432
    monitor-exit p0

    return v1

    .line 435
    :cond_0
    if-ltz p1, :cond_3

    const/16 v0, 0x64

    if-gt p1, v0, :cond_3

    .line 440
    :try_start_1
    iget v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->maxRealPermits:I

    mul-int/2addr v2, p1

    div-int/2addr v2, v0

    move v0, v2

    .line 441
    .local v0, "reqAppPermits":I
    invoke-virtual {p0}, Lcom/sleepycat/je/utilint/TaskCoordinator;->getAppPermits()I

    move-result v2

    sub-int v2, v0, v2

    .line 443
    .local v2, "delta":I
    if-nez v2, :cond_1

    .line 445
    iput p1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->appPermitPercent:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    monitor-exit p0

    return v1

    .line 449
    .end local p0    # "this":Lcom/sleepycat/je/utilint/TaskCoordinator;
    :cond_1
    if-lez v2, :cond_2

    .line 451
    :try_start_2
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->permitSemaphore:Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->revoke(I)V

    goto :goto_0

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->permitSemaphore:Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;

    neg-int v3, v2

    invoke-virtual {v1, v3}, Lcom/sleepycat/je/utilint/TaskCoordinator$CoordinatorSemaphore;->release(I)V

    .line 457
    :goto_0
    iput p1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->appPermitPercent:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 436
    .end local v0    # "reqAppPermits":I
    .end local v2    # "delta":I
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parameter must be a percentage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 430
    .end local p1    # "newAppPermitPercent":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLeaseCheckingPeriod(I)V
    .locals 7
    .param p1, "periodMs"    # I

    .line 209
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->leaseCheckingTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->leaseCheckingTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->leaseCheckingTask:Ljava/util/TimerTask;

    .line 214
    :cond_0
    if-nez p1, :cond_1

    .line 216
    return-void

    .line 219
    :cond_1
    new-instance v0, Lcom/sleepycat/je/utilint/TaskCoordinator$1;

    invoke-direct {v0, p0}, Lcom/sleepycat/je/utilint/TaskCoordinator$1;-><init>(Lcom/sleepycat/je/utilint/TaskCoordinator;)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->leaseCheckingTask:Ljava/util/TimerTask;

    .line 244
    iget-object v1, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/TaskCoordinator;->leaseCheckingTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    int-to-long v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 245
    return-void
.end method
