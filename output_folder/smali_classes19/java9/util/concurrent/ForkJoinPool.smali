.class public Ljava9/util/concurrent/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/concurrent/ForkJoinPool$MemBar;,
        Ljava9/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;,
        Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;,
        Ljava9/util/concurrent/ForkJoinPool$WorkQueue;,
        Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ACTCLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final ADD_WORKER:J = 0x800000000000L

.field private static final ASHIFT:I

.field private static final COMMON_MAX_SPARES:I

.field static final COMMON_PARALLELISM:I

.field private static final CTL:J

.field private static final DEFAULT_COMMON_MAX_SPARES:I = 0x100

.field private static final DEFAULT_KEEPALIVE:J = 0xea60L

.field static final DORMANT:I = -0x40000000

.field static final FIFO:I = 0x10000

.field static final MAX_CAP:I = 0x7fff

.field private static final MODE:J

.field static final OWNED:I = 0x1

.field static final POLL_LIMIT:I = 0x400

.field static final QLOCK:I = 0x1

.field static final QUIET:I = 0x40000000

.field private static final RC_MASK:J = -0x1000000000000L

.field private static final RC_SHIFT:I = 0x30

.field private static final RC_UNIT:J = 0x1000000000000L

.field private static final SEED_INCREMENT:I = -0x61c88647

.field static final SHUTDOWN:I = 0x40000

.field static final SMASK:I = 0xffff

.field private static final SP_MASK:J = 0xffffffffL

.field static final SQMASK:I = 0x7e

.field static final SS_SEQ:I = 0x10000

.field static final STOP:I = -0x80000000

.field static final SWIDTH:I = 0x10

.field private static final TC_MASK:J = 0xffff00000000L

.field private static final TC_SHIFT:I = 0x20

.field private static final TC_UNIT:J = 0x100000000L

.field static final TERMINATED:I = 0x80000

.field private static final TIMEOUT_SLOP:J = 0x14L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UC_MASK:J = -0x100000000L

.field static final UNSIGNALLED:I = -0x80000000

.field static final common:Ljava9/util/concurrent/ForkJoinPool;

.field public static final defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I


# instance fields
.field final bounds:I

.field volatile ctl:J

.field final factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field indexSeed:I

.field final keepAlive:J

.field volatile mode:I

.field volatile pad00:J

.field volatile pad01:J

.field volatile pad02:J

.field volatile pad03:J

.field volatile pad04:J

.field volatile pad05:J

.field volatile pad06:J

.field volatile pad07:J

.field volatile pad08:J

.field volatile pad09:J

.field volatile pad0a:J

.field volatile pad0b:J

.field volatile pad0c:J

.field volatile pad0d:J

.field volatile pad0e:J

.field volatile pad0f:J

.field volatile pad10:J

.field volatile pad11:J

.field volatile pad12:J

.field volatile pad13:J

.field volatile pad14:J

.field volatile pad15:J

.field volatile pad16:J

.field volatile pad17:J

.field volatile pad18:J

.field volatile pad19:J

.field volatile pad1a:J

.field volatile pad1b:J

.field volatile pad1c:J

.field volatile pad1d:J

.field volatile pad1e:J

.field final saturate:Ljava9/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Predicate<",
            "-",
            "Ljava9/util/concurrent/ForkJoinPool;",
            ">;"
        }
    .end annotation
.end field

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 3306
    const-class v0, Ljava9/util/concurrent/ForkJoinPool;

    sget-object v1, Ljava9/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v1, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3315
    :try_start_0
    const-string v2, "ctl"

    .line 3316
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    .line 3317
    const-string v2, "mode"

    .line 3318
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Ljava9/util/concurrent/ForkJoinPool;->MODE:J

    .line 3319
    const-class v0, [Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    sput v0, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    .line 3320
    const-class v0, [Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 3321
    .local v0, "scale":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    .line 3323
    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    sput v1, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3326
    .end local v0    # "scale":I
    nop

    .line 3331
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 3333
    .local v0, "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0x100

    .line 3335
    .local v1, "commonMaxSpares":I
    :try_start_1
    const-string v2, "java.util.concurrent.ForkJoinPool.common.maximumSpares"

    .line 3336
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3337
    .local v2, "p":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3338
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    goto :goto_0

    .line 3339
    .end local v2    # "p":Ljava/lang/String;
    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    nop

    .line 3340
    sput v1, Ljava9/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    .line 3342
    new-instance v2, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava9/util/concurrent/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>(Ljava9/util/concurrent/ForkJoinPool$1;)V

    sput-object v2, Ljava9/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3344
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v3, "modifyThread"

    invoke-direct {v2, v3}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v2, Ljava9/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 3346
    new-instance v2, Ljava9/util/concurrent/ForkJoinPool$1;

    invoke-direct {v2}, Ljava9/util/concurrent/ForkJoinPool$1;-><init>()V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava9/util/concurrent/ForkJoinPool;

    sput-object v2, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    .line 3350
    iget v2, v2, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sput v2, Ljava9/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    .line 3353
    const/4 v2, 0x0

    .line 3355
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-string v3, "java9.util.concurrent.CompletableFuture$AsynchronousCompletionTask"

    .line 3356
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    goto :goto_1

    .line 3360
    :catchall_0
    move-exception v3

    sput-object v2, Ljava9/util/concurrent/ForkJoinPool;->ACTCLASS:Ljava/lang/Class;

    throw v3

    .line 3357
    :catch_1
    move-exception v3

    .line 3360
    :goto_1
    sput-object v2, Ljava9/util/concurrent/ForkJoinPool;->ACTCLASS:Ljava/lang/Class;

    .line 3361
    nop

    .line 3363
    .end local v0    # "ensureLoaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "commonMaxSpares":I
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void

    .line 3322
    .local v0, "scale":I
    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    const-string v2, "array index scale not a power of two"

    invoke-direct {v1, v2}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 3324
    .end local v0    # "scale":I
    :catch_2
    move-exception v0

    .line 3325
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 14

    .line 2256
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/16 v1, 0x7fff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Ljava9/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7fff

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/32 v11, 0xea60

    move-object v2, p0

    invoke-direct/range {v2 .. v13}, Ljava9/util/concurrent/ForkJoinPool;-><init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava9/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    .line 2259
    return-void
.end method

.method private constructor <init>(B)V
    .locals 11
    .param p1, "forCommonPoolOnly"    # B

    .line 2447
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2448
    const/4 v0, -0x1

    .line 2449
    .local v0, "parallelism":I
    const/4 v1, 0x0

    .line 2450
    .local v1, "fac":Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v2, 0x0

    .line 2452
    .local v2, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_0
    const-string v3, "java.util.concurrent.ForkJoinPool.common.parallelism"

    .line 2453
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2454
    .local v3, "pp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 2455
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 2456
    :cond_0
    const-string v4, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    invoke-static {v4}, Ljava9/util/concurrent/ForkJoinPool;->newInstanceFromSystemProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v1, v4

    .line 2458
    const-string v4, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    invoke-static {v4}, Ljava9/util/concurrent/ForkJoinPool;->newInstanceFromSystemProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 2461
    .end local v3    # "pp":Ljava/lang/String;
    goto :goto_0

    .line 2460
    :catch_0
    move-exception v3

    .line 2463
    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 2464
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2465
    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    goto :goto_1

    .line 2468
    :cond_1
    new-instance v4, Ljava9/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;

    invoke-direct {v4, v3}, Ljava9/util/concurrent/ForkJoinPool$InnocuousForkJoinWorkerThreadFactory;-><init>(Ljava9/util/concurrent/ForkJoinPool$1;)V

    move-object v1, v4

    .line 2471
    :cond_2
    :goto_1
    const/4 v4, 0x1

    if-gez v0, :cond_3

    .line 2472
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v5

    sub-int/2addr v5, v4

    move v0, v5

    if-gtz v5, :cond_3

    .line 2473
    const/4 v0, 0x1

    .line 2474
    :cond_3
    const/16 v5, 0x7fff

    if-le v0, v5, :cond_4

    .line 2475
    const/16 v0, 0x7fff

    .line 2477
    :cond_4
    neg-int v5, v0

    int-to-long v5, v5

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    const-wide v7, 0xffff00000000L

    and-long/2addr v5, v7

    neg-int v7, v0

    int-to-long v7, v7

    const/16 v9, 0x30

    shl-long/2addr v7, v9

    const-wide/high16 v9, -0x1000000000000L

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    .line 2479
    .local v5, "c":J
    rsub-int/lit8 v7, v0, 0x1

    const v8, 0xffff

    and-int/2addr v7, v8

    sget v8, Ljava9/util/concurrent/ForkJoinPool;->COMMON_MAX_SPARES:I

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    .line 2480
    .local v7, "b":I
    if-le v0, v4, :cond_5

    add-int/lit8 v8, v0, -0x1

    goto :goto_2

    :cond_5
    move v8, v4

    .line 2481
    .local v8, "n":I
    :goto_2
    ushr-int/lit8 v9, v8, 0x1

    or-int/2addr v8, v9

    ushr-int/lit8 v9, v8, 0x2

    or-int/2addr v8, v9

    ushr-int/lit8 v9, v8, 0x4

    or-int/2addr v8, v9

    ushr-int/lit8 v9, v8, 0x8

    or-int/2addr v8, v9

    ushr-int/lit8 v9, v8, 0x10

    or-int/2addr v8, v9

    .line 2482
    add-int/lit8 v9, v8, 0x1

    shl-int/lit8 v4, v9, 0x1

    .line 2484
    .end local v8    # "n":I
    .local v4, "n":I
    const-string v8, "ForkJoinPool.commonPool-worker-"

    iput-object v8, p0, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2485
    new-array v8, v4, [Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    iput-object v8, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2486
    iput-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2487
    iput-object v2, p0, Ljava9/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2488
    iput-object v3, p0, Ljava9/util/concurrent/ForkJoinPool;->saturate:Ljava9/util/function/Predicate;

    .line 2489
    const-wide/32 v8, 0xea60

    iput-wide v8, p0, Ljava9/util/concurrent/ForkJoinPool;->keepAlive:J

    .line 2490
    iput v7, p0, Ljava9/util/concurrent/ForkJoinPool;->bounds:I

    .line 2491
    iput v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    .line 2492
    iput-wide v5, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    .line 2493
    return-void
.end method

.method synthetic constructor <init>(BLjava9/util/concurrent/ForkJoinPool$1;)V
    .locals 0
    .param p1, "x0"    # B
    .param p2, "x1"    # Ljava9/util/concurrent/ForkJoinPool$1;

    .line 157
    invoke-direct {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;-><init>(B)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 12
    .param p1, "parallelism"    # I

    .line 2277
    sget-object v2, Ljava9/util/concurrent/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/32 v9, 0xea60

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v11}, Ljava9/util/concurrent/ForkJoinPool;-><init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava9/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    .line 2279
    return-void
.end method

.method public constructor <init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 12
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    .line 2312
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v5, 0x0

    const/16 v6, 0x7fff

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/32 v9, 0xea60

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    invoke-direct/range {v0 .. v11}, Ljava9/util/concurrent/ForkJoinPool;-><init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava9/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V

    .line 2314
    return-void
.end method

.method public constructor <init>(ILjava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;ZIIILjava9/util/function/Predicate;JLjava/util/concurrent/TimeUnit;)V
    .locals 18
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z
    .param p5, "corePoolSize"    # I
    .param p6, "maximumPoolSize"    # I
    .param p7, "minimumRunnable"    # I
    .param p9, "keepAliveTime"    # J
    .param p11, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            "ZIII",
            "Ljava9/util/function/Predicate<",
            "-",
            "Ljava9/util/concurrent/ForkJoinPool;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 2403
    .local p8, "saturate":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-Ljava9/util/concurrent/ForkJoinPool;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p6

    move-wide/from16 v3, p9

    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2405
    if-lez v1, :cond_2

    const/16 v5, 0x7fff

    if-gt v1, v5, :cond_2

    if-lt v2, v1, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    .line 2408
    invoke-static/range {p2 .. p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    move-object/from16 v6, p11

    invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const-wide/16 v9, 0x14

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 2411
    .local v7, "ms":J
    move/from16 v9, p5

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2412
    .local v10, "corep":I
    neg-int v11, v10

    int-to-long v11, v11

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    const-wide v13, 0xffff00000000L

    and-long/2addr v11, v13

    neg-int v13, v1

    int-to-long v13, v13

    const/16 v15, 0x30

    shl-long/2addr v13, v15

    const-wide/high16 v15, -0x1000000000000L

    and-long/2addr v13, v15

    or-long/2addr v11, v13

    .line 2414
    .local v11, "c":J
    const/4 v13, 0x0

    if-eqz p4, :cond_0

    const/high16 v14, 0x10000

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    or-int/2addr v14, v1

    .line 2415
    .local v14, "m":I
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int/2addr v15, v1

    .line 2416
    .local v15, "maxSpares":I
    move/from16 v2, p7

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2417
    .local v5, "minAvail":I
    sub-int v13, v5, v1

    const v16, 0xffff

    and-int v13, v13, v16

    shl-int/lit8 v16, v15, 0x10

    or-int v13, v13, v16

    .line 2418
    .local v13, "b":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    add-int/lit8 v16, v1, -0x1

    goto :goto_1

    :cond_1
    move/from16 v16, v2

    .line 2419
    .local v16, "n":I
    :goto_1
    ushr-int/lit8 v17, v16, 0x1

    or-int v16, v16, v17

    ushr-int/lit8 v17, v16, 0x2

    or-int v16, v16, v17

    ushr-int/lit8 v17, v16, 0x4

    or-int v16, v16, v17

    ushr-int/lit8 v17, v16, 0x8

    or-int v16, v16, v17

    ushr-int/lit8 v17, v16, 0x10

    or-int v16, v16, v17

    .line 2420
    add-int/lit8 v17, v16, 0x1

    shl-int/lit8 v2, v17, 0x1

    .line 2422
    .end local v16    # "n":I
    .local v2, "n":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ForkJoinPool-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->nextPoolId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "-worker-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2423
    new-array v1, v2, [Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    iput-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2424
    move-object/from16 v1, p2

    iput-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2425
    move-object/from16 v3, p3

    iput-object v3, v0, Ljava9/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2426
    move-object/from16 v4, p8

    iput-object v4, v0, Ljava9/util/concurrent/ForkJoinPool;->saturate:Ljava9/util/function/Predicate;

    .line 2427
    iput-wide v7, v0, Ljava9/util/concurrent/ForkJoinPool;->keepAlive:J

    .line 2428
    iput v13, v0, Ljava9/util/concurrent/ForkJoinPool;->bounds:I

    .line 2429
    iput v14, v0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    .line 2430
    iput-wide v11, v0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    .line 2431
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2432
    return-void

    .line 2405
    .end local v2    # "n":I
    .end local v5    # "minAvail":I
    .end local v7    # "ms":J
    .end local v10    # "corep":I
    .end local v11    # "c":J
    .end local v13    # "b":I
    .end local v14    # "m":I
    .end local v15    # "maxSpares":I
    :cond_2
    move-object/from16 v1, p2

    move-object/from16 v3, p3

    move/from16 v9, p5

    move-object/from16 v4, p8

    move-object/from16 v6, p11

    .line 2407
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method private static checkPermission()V
    .locals 2

    .line 603
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 604
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 605
    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 606
    :cond_0
    return-void
.end method

.method public static commonPool()Ljava9/util/concurrent/ForkJoinPool;
    .locals 1

    .line 2510
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method static commonSubmitterQueue()Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 5

    .line 2041
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    .line 2042
    .local v0, "p":Ljava9/util/concurrent/ForkJoinPool;
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v1

    .line 2044
    .local v1, "r":I
    if-eqz v0, :cond_0

    iget-object v2, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .local v3, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    array-length v2, v3

    move v4, v2

    .local v4, "n":I
    if-lez v2, :cond_0

    add-int/lit8 v2, v4, -0x1

    and-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x7e

    aget-object v2, v3, v2

    goto :goto_0

    .end local v3    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "n":I
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method static varargs contextWithPermissions([Ljava/security/Permission;)Ljava/security/AccessControlContext;
    .locals 6
    .param p0, "perms"    # [Ljava/security/Permission;

    .line 636
    new-instance v0, Ljava/security/Permissions;

    invoke-direct {v0}, Ljava/security/Permissions;-><init>()V

    .line 637
    .local v0, "permissions":Ljava/security/Permissions;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 638
    .local v4, "perm":Ljava/security/Permission;
    invoke-virtual {v0, v4}, Ljava/security/Permissions;->add(Ljava/security/Permission;)V

    .line 637
    .end local v4    # "perm":Ljava/security/Permission;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 639
    :cond_0
    new-instance v1, Ljava/security/AccessControlContext;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/security/ProtectionDomain;

    new-instance v4, Ljava/security/ProtectionDomain;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Ljava/security/ProtectionDomain;-><init>(Ljava/security/CodeSource;Ljava/security/PermissionCollection;)V

    aput-object v4, v3, v2

    invoke-direct {v1, v3}, Ljava/security/AccessControlContext;-><init>([Ljava/security/ProtectionDomain;)V

    return-object v1
.end method

.method private createWorker()Z
    .locals 4

    .line 1385
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 1386
    .local v0, "fac":Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    const/4 v1, 0x0

    .line 1387
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 1389
    .local v2, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Ljava9/util/concurrent/ForkJoinPool;)Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 1390
    invoke-virtual {v2}, Ljava9/util/concurrent/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1391
    const/4 v3, 0x1

    return v3

    .line 1393
    :catchall_0
    move-exception v3

    .line 1394
    .local v3, "rex":Ljava/lang/Throwable;
    move-object v1, v3

    goto :goto_0

    .line 1395
    .end local v3    # "rex":Ljava/lang/Throwable;
    :cond_0
    nop

    .line 1396
    :goto_0
    invoke-virtual {p0, v2, v1}, Ljava9/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 1397
    const/4 v3, 0x0

    return v3
.end method

.method private externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2027
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2028
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v0

    .local v2, "w":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    if-ne v0, p0, :cond_0

    iget-object v0, v2, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v0

    .local v3, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_0

    .line 2031
    invoke-virtual {v3, p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->push(Ljava9/util/concurrent/ForkJoinTask;)V

    goto :goto_0

    .line 2033
    .end local v2    # "w":Ljava9/util/concurrent/ForkJoinWorkerThread;
    .end local v3    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalPush(Ljava9/util/concurrent/ForkJoinTask;)V

    .line 2034
    :goto_0
    return-object p1
.end method

.method static getAndAddLong(Ljava/lang/Object;JJ)J
    .locals 10
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "delta"    # J

    .line 1330
    :goto_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v8

    .line 1331
    .local v8, "v":J
    add-long v6, v8, p3

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, v8

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    return-wide v8

    .line 1331
    :cond_0
    goto :goto_0
.end method

.method static getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "newValue"    # Ljava/lang/Object;

    .line 1349
    :goto_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 1350
    .local v6, "v":Ljava/lang/Object;
    move-object v1, p0

    move-wide v2, p1

    move-object v4, v6

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    return-object v6

    .line 1350
    :cond_0
    goto :goto_0
.end method

.method public static getCommonPoolParallelism()I
    .locals 1

    .line 2673
    sget v0, Ljava9/util/concurrent/ForkJoinPool;->COMMON_PARALLELISM:I

    return v0
.end method

.method static getSurplusQueuedTaskCount()I
    .locals 9

    .line 2131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    move-object v1, v0

    .local v1, "t":Ljava/lang/Thread;
    instance-of v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v3, v0

    .local v3, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    move-object v4, v0

    .local v4, "pool":Ljava9/util/concurrent/ForkJoinPool;
    if-eqz v0, :cond_4

    iget-object v0, v3, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v5, v0

    .local v5, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_4

    .line 2134
    iget v0, v4, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v6, 0xffff

    and-int/2addr v0, v6

    .line 2135
    .local v0, "p":I
    iget-wide v6, v4, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v8, 0x30

    shr-long/2addr v6, v8

    long-to-int v6, v6

    add-int/2addr v6, v0

    .line 2136
    .local v6, "a":I
    iget v7, v5, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    iget v8, v5, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v7, v8

    .line 2137
    .local v7, "n":I
    ushr-int/lit8 v8, v0, 0x1

    move v0, v8

    if-le v6, v8, :cond_0

    goto :goto_0

    :cond_0
    ushr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-le v6, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    ushr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-le v6, v2, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    ushr-int/lit8 v2, v0, 0x1

    move v0, v2

    if-le v6, v2, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :cond_3
    const/16 v2, 0x8

    :goto_0
    sub-int v2, v7, v2

    return v2

    .line 2143
    .end local v0    # "p":I
    .end local v3    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    .end local v4    # "pool":Ljava9/util/concurrent/ForkJoinPool;
    .end local v5    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "a":I
    .end local v7    # "n":I
    :cond_4
    return v2
.end method

.method static helpAsyncBlocker(Ljava/util/concurrent/Executor;Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 20
    .param p0, "e"    # Ljava/util/concurrent/Executor;
    .param p1, "blocker"    # Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;

    .line 3241
    move-object/from16 v0, p0

    if-eqz p1, :cond_8

    instance-of v1, v0, Ljava9/util/concurrent/ForkJoinPool;

    if-eqz v1, :cond_8

    .line 3243
    move-object v1, v0

    check-cast v1, Ljava9/util/concurrent/ForkJoinPool;

    .line 3244
    .local v1, "p":Ljava9/util/concurrent/ForkJoinPool;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 3245
    .local v2, "thread":Ljava/lang/Thread;
    instance-of v3, v2, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v4, v3

    .local v4, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v3, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    if-ne v3, v1, :cond_0

    .line 3247
    iget-object v3, v4, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .local v3, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 3248
    .end local v3    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v4    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v3

    move v4, v3

    .local v4, "r":I
    if-eqz v3, :cond_1

    iget-object v3, v1, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v5, v3

    .local v5, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    array-length v3, v5

    move v6, v3

    .local v6, "n":I
    if-lez v3, :cond_1

    .line 3250
    add-int/lit8 v3, v6, -0x1

    and-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x7e

    aget-object v3, v5, v3

    .restart local v3    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 3252
    .end local v3    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v6    # "n":I
    :cond_1
    const/4 v3, 0x0

    .line 3253
    .end local v4    # "r":I
    .restart local v3    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    if-eqz v3, :cond_8

    .line 3255
    :goto_1
    iget v4, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v4, "b":I
    iget v5, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 3256
    .local v5, "s":I
    iget-object v6, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v13, v6

    .local v13, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v6, :cond_8

    sub-int v6, v4, v5

    move v14, v6

    .local v14, "d":I
    if-gez v6, :cond_8

    array-length v6, v13

    move v15, v6

    .local v15, "al":I
    if-lez v6, :cond_8

    .line 3258
    add-int/lit8 v6, v15, -0x1

    and-int/2addr v6, v4

    .line 3259
    .local v6, "index":I
    int-to-long v7, v6

    sget v9, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v7, v9

    sget v9, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    int-to-long v9, v9

    add-long v11, v7, v9

    .line 3260
    .local v11, "offset":J
    sget-object v7, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3261
    invoke-virtual {v7, v13, v11, v12}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Ljava9/util/concurrent/ForkJoinTask;

    .line 3262
    .local v16, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    invoke-interface/range {p1 .. p1}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3263
    goto :goto_3

    .line 3264
    :cond_2
    add-int/lit8 v9, v4, 0x1

    .end local v4    # "b":I
    .local v9, "b":I
    iget v8, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v4, v8, :cond_6

    .line 3265
    if-nez v16, :cond_3

    .line 3266
    const/4 v4, -0x1

    if-ne v14, v4, :cond_7

    .line 3267
    goto :goto_3

    .line 3269
    :cond_3
    invoke-static/range {v16 .. v16}, Ljava9/util/concurrent/ForkJoinPool;->isInstanceOfAsynCompTask(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3270
    goto :goto_3

    .line 3271
    :cond_4
    const/4 v4, 0x0

    move-object v8, v13

    move/from16 v17, v9

    .end local v9    # "b":I
    .local v17, "b":I
    move-wide v9, v11

    move-wide/from16 v18, v11

    .end local v11    # "offset":J
    .local v18, "offset":J
    move-object/from16 v11, v16

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3273
    move/from16 v4, v17

    .end local v17    # "b":I
    .restart local v4    # "b":I
    iput v4, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 3274
    invoke-virtual/range {v16 .. v16}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_2

    .line 3271
    .end local v4    # "b":I
    .restart local v17    # "b":I
    :cond_5
    move/from16 v4, v17

    .end local v17    # "b":I
    .restart local v4    # "b":I
    goto :goto_2

    .line 3264
    .end local v4    # "b":I
    .end local v18    # "offset":J
    .restart local v9    # "b":I
    .restart local v11    # "offset":J
    :cond_6
    move v4, v9

    move-wide/from16 v18, v11

    .line 3280
    .end local v5    # "s":I
    .end local v6    # "index":I
    .end local v9    # "b":I
    .end local v11    # "offset":J
    .end local v13    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v14    # "d":I
    .end local v15    # "al":I
    .end local v16    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_7
    :goto_2
    goto :goto_1

    .line 3283
    .end local v1    # "p":Ljava9/util/concurrent/ForkJoinPool;
    .end local v2    # "thread":Ljava/lang/Thread;
    .end local v3    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    :goto_3
    return-void
.end method

.method static isInstanceOfAsynCompTask(Ljava9/util/concurrent/ForkJoinTask;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 3287
    .local p0, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->ACTCLASS:Ljava/lang/Class;

    move-object v1, v0

    .local v1, "asynCompTaskClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 3288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0

    .line 3290
    .end local v1    # "asynCompTaskClz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static managedBlock(Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    .locals 12
    .param p0, "blocker"    # Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3212
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 3213
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Ljava9/util/concurrent/ForkJoinWorkerThread;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v2, v1

    .local v2, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v1, v1, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    move-object v3, v1

    .local v3, "p":Ljava9/util/concurrent/ForkJoinPool;
    if-eqz v1, :cond_6

    iget-object v1, v2, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v1

    .local v4, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_6

    .line 3217
    :cond_0
    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 3218
    invoke-direct {v3, v4}, Ljava9/util/concurrent/ForkJoinPool;->tryCompensate(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)I

    move-result v1

    move v5, v1

    .local v5, "block":I
    if-eqz v1, :cond_0

    .line 3220
    :cond_1
    const-wide/high16 v6, 0x1000000000000L

    const-wide/16 v8, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3221
    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 3223
    :cond_2
    sget-wide v10, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    if-lez v5, :cond_3

    goto :goto_0

    :cond_3
    move-wide v6, v8

    :goto_0
    invoke-static {v3, v10, v11, v6, v7}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 3224
    nop

    .line 3225
    goto :goto_2

    .line 3223
    :catchall_0
    move-exception v1

    sget-wide v10, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    if-lez v5, :cond_4

    goto :goto_1

    :cond_4
    move-wide v6, v8

    :goto_1
    invoke-static {v3, v10, v11, v6, v7}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    throw v1

    .line 3228
    .end local v5    # "block":I
    :cond_5
    :goto_2
    goto :goto_3

    .line 3230
    .end local v2    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    .end local v3    # "p":Ljava9/util/concurrent/ForkJoinPool;
    .end local v4    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->isReleasable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3231
    invoke-interface {p0}, Ljava9/util/concurrent/ForkJoinPool$ManagedBlocker;->block()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3233
    :cond_7
    :goto_3
    return-void
.end method

.method private static newInstanceFromSystemProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2436
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2437
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2439
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2440
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    const-class v0, Ljava9/util/concurrent/ForkJoinPool;

    monitor-enter v0

    .line 1222
    :try_start_0
    sget v1, Ljava9/util/concurrent/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljava9/util/concurrent/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1222
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private pollScan(Z)Ljava9/util/concurrent/ForkJoinTask;
    .locals 25
    .param p1, "submissionsOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1888
    :goto_0
    iget v1, v0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-nez v1, :cond_c

    iget-object v1, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_b

    array-length v1, v2

    move v3, v1

    .local v3, "n":I
    if-lez v1, :cond_a

    .line 1890
    add-int/lit8 v1, v3, -0x1

    .line 1891
    .local v1, "m":I
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSecondarySeed()I

    move-result v4

    .line 1892
    .local v4, "r":I
    ushr-int/lit8 v5, v4, 0x10

    .line 1894
    .local v5, "h":I
    if-eqz p1, :cond_0

    .line 1895
    and-int/lit8 v6, v4, -0x2

    and-int/2addr v6, v1

    .line 1896
    .local v6, "origin":I
    and-int/lit8 v7, v5, -0x2

    or-int/lit8 v7, v7, 0x2

    .local v7, "step":I
    goto :goto_1

    .line 1899
    .end local v6    # "origin":I
    .end local v7    # "step":I
    :cond_0
    and-int v6, v4, v1

    .line 1900
    .restart local v6    # "origin":I
    or-int/lit8 v7, v5, 0x1

    .line 1902
    .restart local v7    # "step":I
    :goto_1
    move v8, v6

    .local v8, "k":I
    const/4 v9, 0x0

    .local v9, "oldSum":I
    const/4 v10, 0x0

    .line 1904
    .local v10, "checkSum":I
    :goto_2
    aget-object v11, v2, v8

    move-object v12, v11

    .local v12, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v11, :cond_7

    .line 1905
    iget v11, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v13, v11

    .local v13, "b":I
    add-int/2addr v10, v11

    .line 1906
    iget v11, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v11, v13, v11

    if-gez v11, :cond_6

    iget-object v11, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v15, v11

    .local v15, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v11, :cond_5

    array-length v11, v15

    move/from16 v20, v11

    .local v20, "al":I
    if-lez v11, :cond_4

    .line 1908
    add-int/lit8 v11, v20, -0x1

    and-int/2addr v11, v13

    .line 1909
    .local v11, "index":I
    move-object/from16 v21, v2

    move/from16 v22, v3

    .end local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "n":I
    .local v21, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v22, "n":I
    int-to-long v2, v11

    sget v14, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v2, v14

    sget v14, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    move/from16 v23, v4

    move/from16 v24, v5

    .end local v4    # "r":I
    .end local v5    # "h":I
    .local v23, "r":I
    .local v24, "h":I
    int-to-long v4, v14

    add-long/2addr v2, v4

    .line 1910
    .local v2, "offset":J
    sget-object v14, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 1911
    invoke-virtual {v14, v15, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava9/util/concurrent/ForkJoinTask;

    .line 1912
    .local v4, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_2

    add-int/lit8 v5, v13, 0x1

    .end local v13    # "b":I
    .local v5, "b":I
    iget v0, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v13, v0, :cond_1

    const/16 v19, 0x0

    .line 1913
    move-object v0, v15

    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v0, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-wide/from16 v16, v2

    move-object/from16 v18, v4

    invoke-static/range {v14 .. v19}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1914
    iput v5, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1915
    return-object v4

    .line 1912
    .end local v0    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    move-object v0, v15

    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v0    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    goto :goto_3

    .end local v0    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v5    # "b":I
    .restart local v13    # "b":I
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_2
    move-object v0, v15

    .line 1927
    .end local v1    # "m":I
    .end local v2    # "offset":J
    .end local v4    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v6    # "origin":I
    .end local v7    # "step":I
    .end local v8    # "k":I
    .end local v9    # "oldSum":I
    .end local v10    # "checkSum":I
    .end local v11    # "index":I
    .end local v12    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "b":I
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v20    # "al":I
    .end local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "n":I
    .end local v23    # "r":I
    .end local v24    # "h":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    goto :goto_0

    .line 1906
    .restart local v1    # "m":I
    .local v2, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "n":I
    .local v4, "r":I
    .local v5, "h":I
    .restart local v6    # "origin":I
    .restart local v7    # "step":I
    .restart local v8    # "k":I
    .restart local v9    # "oldSum":I
    .restart local v10    # "checkSum":I
    .restart local v12    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v13    # "b":I
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v20    # "al":I
    :cond_4
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move-object v0, v15

    .end local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "n":I
    .end local v4    # "r":I
    .end local v5    # "h":I
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v0    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v22    # "n":I
    .restart local v23    # "r":I
    .restart local v24    # "h":I
    goto :goto_4

    .end local v0    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v20    # "al":I
    .end local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "n":I
    .end local v23    # "r":I
    .end local v24    # "h":I
    .restart local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "n":I
    .restart local v4    # "r":I
    .restart local v5    # "h":I
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_5
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move-object v0, v15

    .end local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "n":I
    .end local v4    # "r":I
    .end local v5    # "h":I
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v0    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v22    # "n":I
    .restart local v23    # "r":I
    .restart local v24    # "h":I
    goto :goto_4

    .end local v0    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "n":I
    .end local v23    # "r":I
    .end local v24    # "h":I
    .restart local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "n":I
    .restart local v4    # "r":I
    .restart local v5    # "h":I
    :cond_6
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    .end local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "n":I
    .end local v4    # "r":I
    .end local v5    # "h":I
    .restart local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v22    # "n":I
    .restart local v23    # "r":I
    .restart local v24    # "h":I
    goto :goto_4

    .line 1904
    .end local v13    # "b":I
    .end local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "n":I
    .end local v23    # "r":I
    .end local v24    # "h":I
    .restart local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "n":I
    .restart local v4    # "r":I
    .restart local v5    # "h":I
    :cond_7
    move-object/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    .line 1921
    .end local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "n":I
    .end local v4    # "r":I
    .end local v5    # "h":I
    .restart local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v22    # "n":I
    .restart local v23    # "r":I
    .restart local v24    # "h":I
    :goto_4
    add-int v0, v8, v7

    and-int/2addr v0, v1

    move v8, v0

    if-ne v0, v6, :cond_9

    .line 1922
    move v0, v10

    .end local v9    # "oldSum":I
    .local v0, "oldSum":I
    if-ne v9, v10, :cond_8

    .line 1923
    goto :goto_5

    .line 1924
    :cond_8
    const/4 v2, 0x0

    move v9, v0

    move v10, v2

    .line 1926
    .end local v0    # "oldSum":I
    .end local v12    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v9    # "oldSum":I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v24

    goto/16 :goto_2

    .line 1888
    .end local v1    # "m":I
    .end local v6    # "origin":I
    .end local v7    # "step":I
    .end local v8    # "k":I
    .end local v9    # "oldSum":I
    .end local v10    # "checkSum":I
    .end local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "n":I
    .end local v23    # "r":I
    .end local v24    # "h":I
    .restart local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "n":I
    :cond_a
    move-object/from16 v21, v2

    move/from16 v22, v3

    .end local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v3    # "n":I
    .restart local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v22    # "n":I
    goto :goto_5

    .end local v21    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v22    # "n":I
    .restart local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_b
    move-object/from16 v21, v2

    .line 1928
    .end local v2    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_c
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method static quiesceCommonPool()V
    .locals 4

    .line 3104
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3, v1}, Ljava9/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3105
    return-void
.end method

.method private tryAddWorker(J)V
    .locals 10
    .param p1, "c"    # J

    .line 1410
    :cond_0
    const-wide/high16 v0, -0x1000000000000L

    const-wide/high16 v2, 0x1000000000000L

    add-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide v2, 0xffff00000000L

    const-wide v4, 0x100000000L

    add-long/2addr v4, p1

    and-long/2addr v2, v4

    or-long v8, v0, v2

    .line 1412
    .local v8, "nc":J
    iget-wide v0, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, v8

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1413
    invoke-direct {p0}, Ljava9/util/concurrent/ForkJoinPool;->createWorker()Z

    .line 1414
    goto :goto_0

    .line 1416
    .end local v8    # "nc":J
    :cond_1
    iget-wide v0, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    move-wide p1, v0

    const-wide v2, 0x800000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    long-to-int v0, p1

    if-eqz v0, :cond_0

    .line 1417
    :cond_2
    :goto_0
    return-void
.end method

.method private tryCompensate(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)I
    .locals 26
    .param p1, "w"    # Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1580
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-wide v10, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    .line 1581
    .local v10, "c":J
    iget-object v12, v8, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1582
    .local v12, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    const/16 v0, 0x20

    ushr-long v0, v10, v0

    long-to-int v0, v0

    int-to-short v0, v0

    move v13, v0

    .local v13, "t":I
    if-ltz v0, :cond_15

    .line 1583
    if-eqz v12, :cond_14

    array-length v0, v12

    move v6, v0

    .local v6, "n":I
    if-lez v0, :cond_13

    if-nez v9, :cond_0

    move-object/from16 v20, v12

    const/4 v9, 0x0

    goto/16 :goto_7

    .line 1585
    :cond_0
    long-to-int v0, v10

    move v7, v0

    .local v7, "sp":I
    const-wide/high16 v1, 0x1000000000000L

    const/16 v16, -0x1

    if-eqz v0, :cond_7

    .line 1586
    add-int/lit8 v0, v6, -0x1

    and-int/2addr v0, v7

    aget-object v4, v12, v0

    .line 1587
    .local v4, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    iget v5, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1588
    .local v5, "wp":I
    const-wide v17, -0x100000000L

    if-gez v5, :cond_1

    add-long/2addr v1, v10

    goto :goto_0

    :cond_1
    move-wide v1, v10

    :goto_0
    and-long v17, v1, v17

    .line 1589
    .local v17, "uc":J
    const v0, 0x7fffffff

    and-int v2, v7, v0

    .line 1590
    .local v2, "np":I
    if-eqz v4, :cond_5

    .line 1591
    iget v3, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1592
    .local v3, "vp":I
    iget-object v1, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 1593
    .local v1, "vt":Ljava/lang/Thread;
    iget v0, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v14, v0

    const-wide v20, 0xffffffffL

    and-long v14, v14, v20

    or-long v14, v14, v17

    .line 1594
    .local v14, "nc":J
    if-ne v3, v7, :cond_4

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v20, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v22, v1

    .end local v1    # "vt":Ljava/lang/Thread;
    .local v22, "vt":Ljava/lang/Thread;
    move-object/from16 v1, p0

    move v9, v2

    move/from16 v23, v3

    .end local v2    # "np":I
    .end local v3    # "vp":I
    .local v9, "np":I
    .local v23, "vp":I
    move-wide/from16 v2, v20

    move/from16 v21, v5

    move-object/from16 v20, v12

    move-object v12, v4

    .end local v4    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "wp":I
    .local v12, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v20, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v21, "wp":I
    move-wide v4, v10

    move/from16 v24, v6

    move/from16 v25, v7

    .end local v6    # "n":I
    .end local v7    # "sp":I
    .local v24, "n":I
    .local v25, "sp":I
    move-wide v6, v14

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1595
    iput v9, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1596
    iget v0, v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-gez v0, :cond_2

    .line 1597
    invoke-static/range {v22 .. v22}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1598
    :cond_2
    if-gez v21, :cond_3

    goto :goto_1

    :cond_3
    const/16 v16, 0x1

    :goto_1
    return v16

    .line 1594
    .end local v9    # "np":I
    .end local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v21    # "wp":I
    .end local v22    # "vt":Ljava/lang/Thread;
    .end local v23    # "vp":I
    .end local v24    # "n":I
    .end local v25    # "sp":I
    .restart local v1    # "vt":Ljava/lang/Thread;
    .restart local v2    # "np":I
    .restart local v3    # "vp":I
    .restart local v4    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v5    # "wp":I
    .restart local v6    # "n":I
    .restart local v7    # "sp":I
    .local v12, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_4
    move-object/from16 v22, v1

    move v9, v2

    move/from16 v23, v3

    move/from16 v21, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v20, v12

    move-object v12, v4

    .end local v1    # "vt":Ljava/lang/Thread;
    .end local v2    # "np":I
    .end local v3    # "vp":I
    .end local v4    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "wp":I
    .end local v6    # "n":I
    .end local v7    # "sp":I
    .restart local v9    # "np":I
    .local v12, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v21    # "wp":I
    .restart local v22    # "vt":Ljava/lang/Thread;
    .restart local v23    # "vp":I
    .restart local v24    # "n":I
    .restart local v25    # "sp":I
    goto :goto_2

    .line 1590
    .end local v9    # "np":I
    .end local v14    # "nc":J
    .end local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v21    # "wp":I
    .end local v22    # "vt":Ljava/lang/Thread;
    .end local v23    # "vp":I
    .end local v24    # "n":I
    .end local v25    # "sp":I
    .restart local v2    # "np":I
    .restart local v4    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v5    # "wp":I
    .restart local v6    # "n":I
    .restart local v7    # "sp":I
    .local v12, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    move v9, v2

    move/from16 v21, v5

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v20, v12

    move-object v12, v4

    .line 1601
    .end local v2    # "np":I
    .end local v4    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "wp":I
    .end local v6    # "n":I
    .end local v7    # "sp":I
    .restart local v9    # "np":I
    .local v12, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v21    # "wp":I
    .restart local v24    # "n":I
    .restart local v25    # "sp":I
    :cond_6
    :goto_2
    const/4 v0, 0x0

    return v0

    .line 1603
    .end local v9    # "np":I
    .end local v17    # "uc":J
    .end local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v21    # "wp":I
    .end local v24    # "n":I
    .end local v25    # "sp":I
    .restart local v6    # "n":I
    .restart local v7    # "sp":I
    .local v12, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v20, v12

    .end local v6    # "n":I
    .end local v7    # "sp":I
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v24    # "n":I
    .restart local v25    # "sp":I
    const/16 v0, 0x30

    shr-long v3, v10, v0

    long-to-int v0, v3

    iget v3, v8, Ljava9/util/concurrent/ForkJoinPool;->bounds:I

    const v4, 0xffff

    and-int/2addr v3, v4

    int-to-short v3, v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_8

    .line 1605
    const-wide/high16 v3, -0x1000000000000L

    sub-long v0, v10, v1

    and-long/2addr v0, v3

    const-wide v2, 0xffffffffffffL

    and-long/2addr v2, v10

    or-long v14, v0, v2

    .line 1606
    .restart local v14    # "nc":J
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v10

    move-wide v6, v14

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0

    .line 1609
    .end local v14    # "nc":J
    :cond_8
    iget v0, v8, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    .local v0, "md":I
    and-int v1, v0, v4

    .local v1, "pc":I
    add-int v2, v1, v13

    .local v2, "tc":I
    const/4 v3, 0x0

    .line 1610
    .local v3, "bc":I
    const/4 v4, 0x0

    .line 1611
    .local v4, "unstable":Z
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_3
    move/from16 v6, v24

    .end local v24    # "n":I
    .restart local v6    # "n":I
    if-ge v5, v6, :cond_c

    .line 1613
    aget-object v7, v20, v5

    move-object v9, v7

    .local v9, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v7, :cond_b

    .line 1614
    iget v7, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-nez v7, :cond_9

    .line 1615
    const/4 v4, 0x1

    .line 1616
    goto :goto_4

    .line 1619
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 1620
    iget-object v7, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v12, v7

    .local v12, "wt":Ljava/lang/Thread;
    if-eqz v7, :cond_b

    .line 1621
    invoke-virtual {v12}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    move-object v14, v7

    .local v14, "ts":Ljava/lang/Thread$State;
    sget-object v15, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v7, v15, :cond_a

    sget-object v7, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v14, v7, :cond_b

    .line 1623
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 1611
    .end local v9    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v12    # "wt":Ljava/lang/Thread;
    .end local v14    # "ts":Ljava/lang/Thread$State;
    :cond_b
    add-int/lit8 v5, v5, 0x2

    move/from16 v24, v6

    goto :goto_3

    .line 1627
    .end local v5    # "i":I
    :cond_c
    :goto_4
    if-nez v4, :cond_12

    if-nez v2, :cond_12

    iget-wide v14, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v5, v14, v10

    if-eqz v5, :cond_d

    const/4 v9, 0x0

    goto :goto_6

    .line 1629
    :cond_d
    add-int v5, v13, v1

    const/16 v7, 0x7fff

    if-ge v5, v7, :cond_f

    iget v5, v8, Ljava9/util/concurrent/ForkJoinPool;->bounds:I

    ushr-int/lit8 v5, v5, 0x10

    if-lt v13, v5, :cond_e

    goto :goto_5

    :cond_e
    const/4 v9, 0x0

    goto :goto_8

    .line 1631
    :cond_f
    :goto_5
    iget-object v5, v8, Ljava9/util/concurrent/ForkJoinPool;->saturate:Ljava9/util/function/Predicate;

    move-object v7, v5

    .local v7, "sat":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-Ljava9/util/concurrent/ForkJoinPool;>;"
    if-eqz v5, :cond_10

    invoke-interface {v7, v8}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1632
    return v16

    .line 1633
    :cond_10
    if-ge v3, v1, :cond_11

    .line 1634
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 1635
    const/4 v9, 0x0

    return v9

    .line 1638
    :cond_11
    new-instance v5, Ljava/util/concurrent/RejectedExecutionException;

    const-string v9, "Thread limit exceeded replacing blocked worker"

    invoke-direct {v5, v9}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1627
    .end local v7    # "sat":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-Ljava9/util/concurrent/ForkJoinPool;>;"
    :cond_12
    const/4 v9, 0x0

    .line 1628
    :goto_6
    return v9

    .line 1583
    .end local v0    # "md":I
    .end local v1    # "pc":I
    .end local v2    # "tc":I
    .end local v3    # "bc":I
    .end local v4    # "unstable":Z
    .end local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v25    # "sp":I
    .local v12, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_13
    move-object/from16 v20, v12

    const/4 v9, 0x0

    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_7

    .end local v6    # "n":I
    .end local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_14
    move-object/from16 v20, v12

    const/4 v9, 0x0

    .line 1584
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_7
    return v9

    .line 1582
    .end local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_15
    move-object/from16 v20, v12

    const/4 v9, 0x0

    .line 1644
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v20    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_8
    const-wide v0, 0x100000000L

    add-long/2addr v0, v10

    const-wide v2, 0xffff00000000L

    and-long/2addr v0, v2

    const-wide v2, -0xffff00000001L

    and-long/2addr v2, v10

    or-long v14, v0, v2

    .line 1645
    .local v14, "nc":J
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v10

    move-wide v6, v14

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->createWorker()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v19, 0x1

    goto :goto_9

    :cond_16
    move/from16 v19, v9

    :goto_9
    return v19
.end method

.method private tryTerminate(ZZ)Z
    .locals 22
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    move-object/from16 v7, p0

    .line 2159
    :goto_0
    iget v0, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    move v8, v0

    .local v8, "md":I
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v9, 0x0

    if-nez v0, :cond_2

    .line 2160
    if-eqz p2, :cond_1

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    if-ne v7, v0, :cond_0

    goto :goto_1

    .line 2163
    :cond_0
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->MODE:J

    or-int v6, v8, v1

    move-object v1, v0

    move-object/from16 v2, p0

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    goto :goto_0

    .line 2161
    :cond_1
    :goto_1
    return v9

    .line 2166
    :cond_2
    :goto_2
    iget v0, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    move v1, v0

    .end local v8    # "md":I
    .local v1, "md":I
    const/high16 v2, -0x80000000

    and-int/2addr v0, v2

    const v8, 0xffff

    const/4 v11, 0x1

    if-nez v0, :cond_10

    .line 2167
    if-nez p1, :cond_e

    .line 2168
    const-wide/16 v3, 0x0

    .line 2169
    .local v3, "oldSum":J
    :goto_3
    const/4 v0, 0x0

    .line 2170
    .local v0, "running":Z
    iget-wide v5, v7, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    .line 2171
    .local v5, "checkSum":J
    iget-object v12, v7, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 2172
    .local v12, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    and-int v13, v1, v8

    const/16 v14, 0x30

    shr-long v8, v5, v14

    long-to-int v8, v8

    add-int/2addr v13, v8

    if-lez v13, :cond_3

    .line 2173
    const/4 v0, 0x1

    move/from16 v19, v1

    move-object/from16 v18, v12

    goto/16 :goto_7

    .line 2174
    :cond_3
    if-eqz v12, :cond_9

    .line 2176
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    array-length v9, v12

    if-ge v8, v9, :cond_8

    .line 2177
    aget-object v9, v12, v8

    move-object v13, v9

    .local v13, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v9, :cond_7

    .line 2178
    iget v9, v13, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .local v9, "s":I
    iget v15, v13, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 2179
    .local v15, "p":I
    iget v2, v13, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    .local v2, "d":I
    iget v10, v13, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 2180
    .local v10, "b":I
    iget v14, v13, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    if-ne v10, v14, :cond_6

    and-int/lit8 v14, v2, 0x1

    if-ne v14, v11, :cond_5

    if-gez v9, :cond_4

    if-ltz v15, :cond_5

    :cond_4
    move/from16 v20, v0

    move/from16 v19, v1

    move-object/from16 v18, v12

    goto :goto_5

    .line 2185
    :cond_5
    move-object/from16 v18, v12

    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v18, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    int-to-long v11, v9

    const/16 v17, 0x30

    shl-long v11, v11, v17

    move/from16 v20, v0

    move/from16 v19, v1

    .end local v0    # "running":Z
    .end local v1    # "md":I
    .local v19, "md":I
    .local v20, "running":Z
    int-to-long v0, v15

    const/16 v16, 0x20

    shl-long v0, v0, v16

    add-long/2addr v11, v0

    int-to-long v0, v10

    const/16 v21, 0x10

    shl-long v0, v0, v21

    add-long/2addr v11, v0

    int-to-long v0, v2

    add-long/2addr v11, v0

    add-long/2addr v5, v11

    goto :goto_6

    .line 2180
    .end local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "md":I
    .end local v20    # "running":Z
    .restart local v0    # "running":Z
    .restart local v1    # "md":I
    .restart local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_6
    move/from16 v20, v0

    move/from16 v19, v1

    move-object/from16 v18, v12

    .line 2182
    .end local v0    # "running":Z
    .end local v1    # "md":I
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "md":I
    .restart local v20    # "running":Z
    :goto_5
    const/4 v0, 0x1

    .line 2183
    .end local v20    # "running":Z
    .restart local v0    # "running":Z
    goto :goto_7

    .line 2177
    .end local v2    # "d":I
    .end local v9    # "s":I
    .end local v10    # "b":I
    .end local v15    # "p":I
    .end local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "md":I
    .restart local v1    # "md":I
    .restart local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_7
    move/from16 v20, v0

    move/from16 v19, v1

    move-object/from16 v18, v12

    move/from16 v17, v14

    .line 2176
    .end local v0    # "running":Z
    .end local v1    # "md":I
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "md":I
    .restart local v20    # "running":Z
    :goto_6
    nop

    .end local v13    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v8, v8, 0x1

    move/from16 v14, v17

    move-object/from16 v12, v18

    move/from16 v1, v19

    move/from16 v0, v20

    const/high16 v2, -0x80000000

    const/4 v11, 0x1

    goto :goto_4

    .end local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "md":I
    .end local v20    # "running":Z
    .restart local v0    # "running":Z
    .restart local v1    # "md":I
    .restart local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    move/from16 v20, v0

    move/from16 v19, v1

    move-object/from16 v18, v12

    .end local v0    # "running":Z
    .end local v1    # "md":I
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "md":I
    .restart local v20    # "running":Z
    goto :goto_7

    .line 2174
    .end local v8    # "i":I
    .end local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v19    # "md":I
    .end local v20    # "running":Z
    .restart local v0    # "running":Z
    .restart local v1    # "md":I
    .restart local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    move/from16 v20, v0

    move/from16 v19, v1

    move-object/from16 v18, v12

    .line 2190
    .end local v1    # "md":I
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v19    # "md":I
    :goto_7
    iget v1, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    move v2, v1

    const/high16 v8, -0x80000000

    .end local v19    # "md":I
    .local v2, "md":I
    and-int/2addr v1, v8

    if-eqz v1, :cond_a

    .line 2191
    const/4 v8, 0x0

    goto :goto_8

    .line 2192
    :cond_a
    if-eqz v0, :cond_b

    .line 2193
    const/4 v8, 0x0

    return v8

    .line 2194
    :cond_b
    const/4 v8, 0x0

    iget-object v1, v7, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object/from16 v9, v18

    .end local v18    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v9, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-ne v1, v9, :cond_d

    move-wide v10, v5

    .end local v3    # "oldSum":J
    .local v10, "oldSum":J
    cmp-long v1, v3, v5

    if-nez v1, :cond_c

    .line 2195
    nop

    .line 2198
    .end local v0    # "running":Z
    .end local v5    # "checkSum":J
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "oldSum":J
    :goto_8
    move v0, v2

    goto :goto_9

    .line 2194
    .restart local v0    # "running":Z
    .restart local v5    # "checkSum":J
    .restart local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v10    # "oldSum":J
    :cond_c
    move-wide v3, v10

    .line 2196
    .end local v0    # "running":Z
    .end local v5    # "checkSum":J
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "oldSum":J
    .restart local v3    # "oldSum":J
    :cond_d
    move v1, v2

    move v9, v8

    const/high16 v2, -0x80000000

    const v8, 0xffff

    const/4 v11, 0x1

    goto/16 :goto_3

    .line 2167
    .end local v2    # "md":I
    .end local v3    # "oldSum":J
    .restart local v1    # "md":I
    :cond_e
    move v8, v9

    move v0, v1

    .line 2198
    .end local v1    # "md":I
    .local v0, "md":I
    :goto_9
    const/high16 v1, -0x80000000

    and-int v2, v0, v1

    if-nez v2, :cond_f

    .line 2199
    sget-object v2, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->MODE:J

    or-int v6, v0, v1

    move-object v1, v2

    move-object/from16 v2, p0

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    .line 2166
    :cond_f
    move v9, v8

    move v8, v0

    goto/16 :goto_2

    .line 2202
    .end local v0    # "md":I
    .restart local v1    # "md":I
    :cond_10
    :goto_a
    iget v0, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    move v1, v0

    const/high16 v2, 0x80000

    and-int/2addr v0, v2

    if-nez v0, :cond_1b

    .line 2203
    const-wide/16 v3, 0x0

    .line 2205
    .restart local v3    # "oldSum":J
    :goto_b
    iget-wide v5, v7, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    .line 2206
    .restart local v5    # "checkSum":J
    iget-object v0, v7, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v8, v0

    .local v8, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_14

    .line 2207
    const/4 v0, 0x0

    move-wide v9, v5

    move v5, v0

    .local v5, "i":I
    .local v9, "checkSum":J
    :goto_c
    array-length v0, v8

    if-ge v5, v0, :cond_13

    .line 2208
    aget-object v0, v8, v5

    move-object v6, v0

    .local v6, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_12

    .line 2209
    iget-object v11, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 2210
    .local v11, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    invoke-virtual {v6}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 2211
    if-eqz v11, :cond_11

    .line 2213
    :try_start_0
    invoke-virtual {v11}, Ljava9/util/concurrent/ForkJoinWorkerThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    goto :goto_d

    .line 2214
    :catchall_0
    move-exception v0

    .line 2217
    :cond_11
    :goto_d
    iget v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    int-to-long v12, v0

    const/16 v15, 0x20

    shl-long/2addr v12, v15

    iget v0, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    int-to-long v14, v0

    add-long/2addr v12, v14

    add-long/2addr v9, v12

    .line 2207
    .end local v11    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    :cond_12
    nop

    .end local v6    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_13
    move-wide v5, v9

    .line 2221
    .end local v9    # "checkSum":J
    .local v5, "checkSum":J
    :cond_14
    iget v0, v7, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    move v9, v0

    .end local v1    # "md":I
    .local v9, "md":I
    and-int/2addr v0, v2

    if-nez v0, :cond_17

    iget-object v0, v7, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    if-ne v0, v8, :cond_16

    move-wide v0, v5

    .end local v3    # "oldSum":J
    .local v0, "oldSum":J
    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 2223
    goto :goto_e

    .line 2221
    :cond_15
    move-wide v3, v0

    .line 2224
    .end local v0    # "oldSum":J
    .end local v5    # "checkSum":J
    .end local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "oldSum":J
    :cond_16
    move v1, v9

    goto :goto_b

    .line 2225
    .end local v3    # "oldSum":J
    :cond_17
    :goto_e
    and-int v0, v9, v2

    if-eqz v0, :cond_18

    .line 2226
    goto :goto_f

    .line 2227
    :cond_18
    const v8, 0xffff

    and-int v0, v9, v8

    iget-wide v3, v7, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v10, 0x20

    ushr-long/2addr v3, v10

    long-to-int v1, v3

    int-to-short v1, v1

    add-int/2addr v0, v1

    if-lez v0, :cond_19

    .line 2228
    goto :goto_f

    .line 2229
    :cond_19
    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->MODE:J

    or-int v6, v9, v2

    move-object/from16 v2, p0

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2230
    monitor-enter p0

    .line 2231
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 2232
    monitor-exit p0

    .line 2233
    nop

    .line 2236
    :goto_f
    move v1, v9

    goto :goto_10

    .line 2232
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2229
    :cond_1a
    move v1, v9

    goto :goto_a

    .line 2236
    .end local v9    # "md":I
    .restart local v1    # "md":I
    :cond_1b
    :goto_10
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method final awaitJoin(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;Ljava9/util/concurrent/ForkJoinTask;J)I
    .locals 31
    .param p1, "w"    # Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "deadline"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;J)I"
        }
    .end annotation

    .line 1760
    .local p2, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 1761
    .local v3, "s":I
    if-eqz v1, :cond_12

    if-eqz v2, :cond_12

    instance-of v4, v2, Ljava9/util/concurrent/CountedCompleter;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Ljava9/util/concurrent/CountedCompleter;

    const/4 v5, 0x0

    .line 1763
    invoke-virtual {v1, v4, v5}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localHelpCC(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result v4

    move v3, v4

    if-ltz v4, :cond_12

    .line 1764
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Ljava9/util/concurrent/ForkJoinTask;)V

    .line 1765
    iget v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .local v4, "src":I
    iget v5, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    .line 1766
    .local v5, "id":I
    iget v3, v2, Ljava9/util/concurrent/ForkJoinTask;->status:I

    .line 1767
    :goto_0
    if-ltz v3, :cond_11

    .line 1769
    const/4 v6, 0x0

    .line 1770
    .local v6, "nonempty":Z
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSecondarySeed()I

    move-result v7

    or-int/lit8 v7, v7, 0x1

    .line 1771
    .local v7, "r":I
    iget-object v8, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v9, v8

    .local v9, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_9

    .line 1772
    array-length v8, v9

    .local v8, "n":I
    add-int/lit8 v10, v8, -0x1

    .local v10, "m":I
    neg-int v11, v8

    .local v11, "j":I
    :goto_1
    if-ge v11, v8, :cond_8

    .line 1774
    add-int v12, v7, v11

    and-int/2addr v12, v10

    move v13, v12

    .local v13, "i":I
    if-ltz v12, :cond_7

    if-ge v13, v8, :cond_7

    aget-object v12, v9, v13

    move-object v14, v12

    .local v14, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v12, :cond_6

    iget v12, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-ne v12, v5, :cond_6

    iget v12, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v15, v12

    move/from16 v16, v3

    .end local v3    # "s":I
    .local v15, "b":I
    .local v16, "s":I
    iget v3, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v12, v3

    if-gez v12, :cond_5

    iget-object v3, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v12, v3

    .local v12, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_4

    array-length v3, v12

    move/from16 v23, v3

    .local v23, "al":I
    if-lez v3, :cond_3

    .line 1778
    iget v3, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    .line 1779
    .local v3, "qid":I
    add-int/lit8 v17, v23, -0x1

    move/from16 v24, v6

    .end local v6    # "nonempty":Z
    .local v24, "nonempty":Z
    and-int v6, v17, v15

    .line 1780
    .local v6, "index":I
    move/from16 v25, v7

    move/from16 v26, v8

    .end local v7    # "r":I
    .end local v8    # "n":I
    .local v25, "r":I
    .local v26, "n":I
    int-to-long v7, v6

    sget v17, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long v7, v7, v17

    move/from16 v27, v6

    .end local v6    # "index":I
    .local v27, "index":I
    sget v6, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    move-object/from16 v28, v9

    move/from16 v29, v10

    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "m":I
    .local v28, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v29, "m":I
    int-to-long v9, v6

    add-long/2addr v7, v9

    .line 1781
    .local v7, "offset":J
    sget-object v6, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 1782
    invoke-virtual {v6, v12, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava9/util/concurrent/ForkJoinTask;

    .line 1783
    .local v9, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v9, :cond_2

    add-int/lit8 v10, v15, 0x1

    move/from16 v30, v13

    .end local v13    # "i":I
    .end local v15    # "b":I
    .local v10, "b":I
    .local v30, "i":I
    iget v13, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v15, v13, :cond_1

    iget v13, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-ne v5, v13, :cond_1

    const/16 v22, 0x0

    .line 1784
    move-object/from16 v17, v6

    move-object/from16 v18, v12

    move-wide/from16 v19, v7

    move-object/from16 v21, v9

    invoke-static/range {v17 .. v22}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1785
    iput v10, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1786
    iput v3, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1787
    invoke-virtual {v9}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    .line 1788
    iput v4, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1790
    :cond_1
    move v15, v10

    goto :goto_2

    .line 1783
    .end local v10    # "b":I
    .end local v30    # "i":I
    .restart local v13    # "i":I
    .restart local v15    # "b":I
    :cond_2
    move/from16 v30, v13

    .line 1790
    .end local v13    # "i":I
    .restart local v30    # "i":I
    :goto_2
    const/4 v6, 0x1

    .line 1791
    .end local v24    # "nonempty":Z
    .local v6, "nonempty":Z
    goto/16 :goto_5

    .line 1774
    .end local v3    # "qid":I
    .end local v25    # "r":I
    .end local v26    # "n":I
    .end local v27    # "index":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v29    # "m":I
    .end local v30    # "i":I
    .local v7, "r":I
    .restart local v8    # "n":I
    .local v9, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v10, "m":I
    .restart local v13    # "i":I
    :cond_3
    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    .end local v6    # "nonempty":Z
    .end local v7    # "r":I
    .end local v8    # "n":I
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "m":I
    .end local v13    # "i":I
    .restart local v24    # "nonempty":Z
    .restart local v25    # "r":I
    .restart local v26    # "n":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v29    # "m":I
    .restart local v30    # "i":I
    goto :goto_3

    .end local v23    # "al":I
    .end local v24    # "nonempty":Z
    .end local v25    # "r":I
    .end local v26    # "n":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v29    # "m":I
    .end local v30    # "i":I
    .restart local v6    # "nonempty":Z
    .restart local v7    # "r":I
    .restart local v8    # "n":I
    .restart local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v10    # "m":I
    .restart local v13    # "i":I
    :cond_4
    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    .end local v6    # "nonempty":Z
    .end local v7    # "r":I
    .end local v8    # "n":I
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "m":I
    .end local v13    # "i":I
    .restart local v24    # "nonempty":Z
    .restart local v25    # "r":I
    .restart local v26    # "n":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v29    # "m":I
    .restart local v30    # "i":I
    goto :goto_3

    .end local v12    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v24    # "nonempty":Z
    .end local v25    # "r":I
    .end local v26    # "n":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v29    # "m":I
    .end local v30    # "i":I
    .restart local v6    # "nonempty":Z
    .restart local v7    # "r":I
    .restart local v8    # "n":I
    .restart local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v10    # "m":I
    .restart local v13    # "i":I
    :cond_5
    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    .end local v6    # "nonempty":Z
    .end local v7    # "r":I
    .end local v8    # "n":I
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "m":I
    .end local v13    # "i":I
    .restart local v24    # "nonempty":Z
    .restart local v25    # "r":I
    .restart local v26    # "n":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v29    # "m":I
    .restart local v30    # "i":I
    goto :goto_3

    .end local v15    # "b":I
    .end local v16    # "s":I
    .end local v24    # "nonempty":Z
    .end local v25    # "r":I
    .end local v26    # "n":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v29    # "m":I
    .end local v30    # "i":I
    .local v3, "s":I
    .restart local v6    # "nonempty":Z
    .restart local v7    # "r":I
    .restart local v8    # "n":I
    .restart local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v10    # "m":I
    .restart local v13    # "i":I
    :cond_6
    move/from16 v16, v3

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    .end local v3    # "s":I
    .end local v6    # "nonempty":Z
    .end local v7    # "r":I
    .end local v8    # "n":I
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "m":I
    .end local v13    # "i":I
    .restart local v16    # "s":I
    .restart local v24    # "nonempty":Z
    .restart local v25    # "r":I
    .restart local v26    # "n":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v29    # "m":I
    .restart local v30    # "i":I
    goto :goto_3

    .end local v14    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v16    # "s":I
    .end local v24    # "nonempty":Z
    .end local v25    # "r":I
    .end local v26    # "n":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v29    # "m":I
    .end local v30    # "i":I
    .restart local v3    # "s":I
    .restart local v6    # "nonempty":Z
    .restart local v7    # "r":I
    .restart local v8    # "n":I
    .restart local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v10    # "m":I
    .restart local v13    # "i":I
    :cond_7
    move/from16 v16, v3

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v30, v13

    .line 1772
    .end local v3    # "s":I
    .end local v6    # "nonempty":Z
    .end local v7    # "r":I
    .end local v8    # "n":I
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "m":I
    .end local v13    # "i":I
    .restart local v16    # "s":I
    .restart local v24    # "nonempty":Z
    .restart local v25    # "r":I
    .restart local v26    # "n":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v29    # "m":I
    :goto_3
    add-int/lit8 v11, v11, 0x2

    move/from16 v3, v16

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move-object/from16 v9, v28

    move/from16 v10, v29

    goto/16 :goto_1

    .end local v16    # "s":I
    .end local v24    # "nonempty":Z
    .end local v25    # "r":I
    .end local v26    # "n":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v29    # "m":I
    .restart local v3    # "s":I
    .restart local v6    # "nonempty":Z
    .restart local v7    # "r":I
    .restart local v8    # "n":I
    .restart local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v10    # "m":I
    :cond_8
    move/from16 v16, v3

    move/from16 v24, v6

    move/from16 v25, v7

    move/from16 v26, v8

    move-object/from16 v28, v9

    move/from16 v29, v10

    .end local v3    # "s":I
    .end local v6    # "nonempty":Z
    .end local v7    # "r":I
    .end local v8    # "n":I
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v10    # "m":I
    .restart local v16    # "s":I
    .restart local v24    # "nonempty":Z
    .restart local v25    # "r":I
    .restart local v26    # "n":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v29    # "m":I
    goto :goto_4

    .line 1771
    .end local v11    # "j":I
    .end local v16    # "s":I
    .end local v24    # "nonempty":Z
    .end local v25    # "r":I
    .end local v26    # "n":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v29    # "m":I
    .restart local v3    # "s":I
    .restart local v6    # "nonempty":Z
    .restart local v7    # "r":I
    .restart local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    move/from16 v16, v3

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v9

    .line 1795
    .end local v3    # "s":I
    .end local v6    # "nonempty":Z
    .end local v7    # "r":I
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v16    # "s":I
    .restart local v24    # "nonempty":Z
    .restart local v25    # "r":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_4
    move/from16 v6, v24

    .end local v24    # "nonempty":Z
    .restart local v6    # "nonempty":Z
    :goto_5
    iget v3, v2, Ljava9/util/concurrent/ForkJoinTask;->status:I

    move v7, v3

    .end local v16    # "s":I
    .local v7, "s":I
    if-gez v3, :cond_a

    .line 1796
    goto :goto_6

    .line 1797
    :cond_a
    if-nez v6, :cond_10

    .line 1799
    const-wide/16 v8, 0x0

    cmp-long v3, p3, v8

    if-nez v3, :cond_b

    .line 1800
    const-wide/16 v10, 0x0

    .local v10, "ms":J
    goto :goto_7

    .line 1801
    .end local v10    # "ms":J
    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v10, p3, v10

    move-wide v12, v10

    .local v12, "ns":J
    cmp-long v3, v10, v8

    if-gtz v3, :cond_c

    .line 1802
    nop

    .line 1813
    .end local v4    # "src":I
    .end local v5    # "id":I
    .end local v6    # "nonempty":Z
    .end local v12    # "ns":J
    .end local v25    # "r":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_6
    move v3, v7

    goto :goto_9

    .line 1803
    .restart local v4    # "src":I
    .restart local v5    # "id":I
    .restart local v6    # "nonempty":Z
    .restart local v12    # "ns":J
    .restart local v25    # "r":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_c
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    move-wide v14, v10

    .local v14, "ms":J
    cmp-long v3, v10, v8

    if-gtz v3, :cond_d

    .line 1804
    const-wide/16 v10, 0x1

    .end local v14    # "ms":J
    .restart local v10    # "ms":J
    goto :goto_7

    .line 1803
    .end local v10    # "ms":J
    .restart local v14    # "ms":J
    :cond_d
    move-wide v10, v14

    .line 1805
    .end local v12    # "ns":J
    .end local v14    # "ms":J
    .restart local v10    # "ms":J
    :goto_7
    invoke-direct/range {p0 .. p1}, Ljava9/util/concurrent/ForkJoinPool;->tryCompensate(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)I

    move-result v3

    move v12, v3

    .local v12, "block":I
    if-eqz v3, :cond_f

    .line 1806
    invoke-virtual {v2, v10, v11}, Ljava9/util/concurrent/ForkJoinTask;->internalWait(J)V

    .line 1807
    sget-wide v13, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    if-lez v12, :cond_e

    const-wide/high16 v8, 0x1000000000000L

    :cond_e
    invoke-static {v0, v13, v14, v8, v9}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 1809
    :cond_f
    iget v3, v2, Ljava9/util/concurrent/ForkJoinTask;->status:I

    .end local v7    # "s":I
    .restart local v3    # "s":I
    goto :goto_8

    .line 1797
    .end local v3    # "s":I
    .end local v10    # "ms":J
    .end local v12    # "block":I
    .restart local v7    # "s":I
    :cond_10
    move v3, v7

    .line 1811
    .end local v6    # "nonempty":Z
    .end local v7    # "s":I
    .end local v25    # "r":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v3    # "s":I
    :goto_8
    goto/16 :goto_0

    .line 1767
    :cond_11
    move/from16 v16, v3

    .line 1813
    .end local v4    # "src":I
    .end local v5    # "id":I
    :cond_12
    :goto_9
    return v3
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 3076
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 3078
    .local v0, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 3079
    .local v2, "thread":Ljava/lang/Thread;
    instance-of v3, v2, Ljava9/util/concurrent/ForkJoinWorkerThread;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava9/util/concurrent/ForkJoinWorkerThread;

    move-object v5, v3

    .local v5, "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget-object v3, v3, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    if-ne v3, p0, :cond_0

    .line 3081
    iget-object v3, v5, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {p0, v3}, Ljava9/util/concurrent/ForkJoinPool;->helpQuiescePool(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)V

    .line 3082
    return v4

    .line 3085
    .end local v5    # "wt":Ljava9/util/concurrent/ForkJoinWorkerThread;
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 3087
    .local v5, "startTime":J
    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ljava9/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v7

    move-object v8, v7

    .local v8, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v7, :cond_1

    .line 3088
    invoke-virtual {v8}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    goto :goto_1

    .line 3089
    :cond_1
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinPool;->isQuiescent()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3090
    return v4

    .line 3091
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    cmp-long v7, v9, v0

    if-lez v7, :cond_3

    .line 3092
    return v3

    .line 3094
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3095
    .end local v8    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :goto_1
    goto :goto_0
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3039
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3041
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->common:Ljava9/util/concurrent/ForkJoinPool;

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 3042
    invoke-virtual/range {p0 .. p3}, Ljava9/util/concurrent/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3043
    return v2

    .line 3045
    :cond_0
    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    invoke-virtual {v5, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 3046
    .local v6, "nanos":J
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v0

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    .line 3047
    return v8

    .line 3048
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-gtz v0, :cond_2

    .line 3049
    return v2

    .line 3050
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    add-long/2addr v11, v6

    .line 3051
    .local v11, "deadline":J
    monitor-enter p0

    .line 3053
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3054
    monitor-exit p0

    return v8

    .line 3055
    :cond_3
    cmp-long v0, v6, v9

    if-gtz v0, :cond_4

    .line 3056
    monitor-exit p0

    return v2

    .line 3057
    :cond_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    .line 3058
    .local v13, "millis":J
    cmp-long v0, v13, v9

    if-lez v0, :cond_5

    move-wide v2, v13

    goto :goto_1

    :cond_5
    const-wide/16 v15, 0x1

    move-wide v2, v15

    :goto_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 3059
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v6, v11, v2

    .line 3060
    .end local v13    # "millis":J
    move-wide/from16 v3, p1

    const/4 v2, 0x0

    goto :goto_0

    .line 3061
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3040
    .end local v6    # "nanos":J
    .end local v11    # "deadline":J
    :cond_6
    move-object/from16 v5, p3

    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
.end method

.method final deregisterWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 20
    .param p1, "wt"    # Ljava9/util/concurrent/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 1492
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v0, 0x0

    .line 1493
    .local v0, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v1, 0x0

    .line 1494
    .local v1, "phase":I
    const-wide v11, 0xffffffffL

    if-eqz v10, :cond_3

    iget-object v2, v10, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .end local v0    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v3, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_2

    .line 1495
    iget-object v2, v9, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 1496
    .local v2, "lock":Ljava/lang/Object;
    iget v0, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v4, v0

    and-long/2addr v4, v11

    .line 1497
    .local v4, "ns":J
    iget v0, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const v6, 0xffff

    and-int/2addr v6, v0

    .line 1498
    .local v6, "idx":I
    if-eqz v2, :cond_1

    .line 1500
    monitor-enter v2

    .line 1501
    const/4 v7, 0x0

    :try_start_0
    iget-object v0, v9, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    .local v8, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_0

    :try_start_1
    array-length v0, v8

    if-le v0, v6, :cond_0

    aget-object v0, v8, v6

    if-ne v0, v3, :cond_0

    .line 1503
    aput-object v7, v8, v6

    .line 1504
    :cond_0
    iget-wide v13, v9, Ljava9/util/concurrent/ForkJoinPool;->stealCount:J

    add-long/2addr v13, v4

    iput-wide v13, v9, Ljava9/util/concurrent/ForkJoinPool;->stealCount:J

    .line 1505
    monitor-exit v2

    goto :goto_1

    .end local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v0

    move-object v8, v7

    .restart local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    .line 1507
    .end local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1
    :goto_1
    iget v1, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    move v13, v1

    move-object v0, v3

    goto :goto_2

    .line 1494
    .end local v2    # "lock":Ljava/lang/Object;
    .end local v4    # "ns":J
    .end local v6    # "idx":I
    :cond_2
    move v13, v1

    move-object v0, v3

    goto :goto_2

    .end local v3    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v0    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_3
    move v13, v1

    .line 1509
    .end local v1    # "phase":I
    .local v13, "phase":I
    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    if-eq v13, v1, :cond_5

    .line 1511
    :cond_4
    sget-object v1, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    iget-wide v5, v9, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v14, v5

    .local v14, "c":J
    const-wide/high16 v7, -0x1000000000000L

    const-wide/high16 v16, 0x1000000000000L

    sub-long v16, v14, v16

    and-long v7, v16, v7

    const-wide v16, 0xffff00000000L

    const-wide v18, 0x100000000L

    sub-long v18, v14, v18

    and-long v16, v18, v16

    or-long v7, v7, v16

    and-long v16, v14, v11

    or-long v7, v7, v16

    .line 1512
    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v8}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1516
    .end local v14    # "c":J
    :cond_5
    if-eqz v0, :cond_6

    .line 1517
    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1519
    :cond_6
    const/4 v1, 0x0

    invoke-direct {v9, v1, v1}, Ljava9/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v1, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v1, :cond_7

    .line 1521
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->signalWork()V

    .line 1523
    :cond_7
    if-nez p2, :cond_8

    .line 1524
    invoke-static {}, Ljava9/util/concurrent/ForkJoinTask;->helpExpungeStaleExceptions()V

    goto :goto_3

    .line 1526
    :cond_8
    invoke-static/range {p2 .. p2}, Ljava9/util/concurrent/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 1527
    :goto_3
    return-void
.end method

.method protected drainTasksTo(Ljava/util/Collection;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;>;)I"
        }
    .end annotation

    .line 2878
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-Ljava9/util/concurrent/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 2880
    .local v0, "count":I
    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1

    .line 2881
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2882
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2883
    :goto_1
    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v3

    move-object v5, v3

    .local v5, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_0

    .line 2884
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2885
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2881
    .end local v5    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    nop

    .end local v4    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2890
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 2557
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2559
    instance-of v0, p1, Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    .line 2560
    move-object v0, p1

    check-cast v0, Ljava9/util/concurrent/ForkJoinTask;

    .local v0, "job":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    goto :goto_0

    .line 2562
    .end local v0    # "job":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_0
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/ForkJoinTask$RunnableExecuteAction;-><init>(Ljava/lang/Runnable;)V

    .line 2563
    .restart local v0    # "job":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :goto_0
    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    .line 2564
    return-void
.end method

.method public execute(Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 2546
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    .line 2547
    return-void
.end method

.method final externalHelpComplete(Ljava9/util/concurrent/CountedCompleter;I)I
    .locals 5
    .param p2, "maxTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    .line 2065
    .local p1, "task":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v0

    .line 2067
    .local v0, "r":I
    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    array-length v1, v2

    move v3, v1

    .local v3, "n":I
    if-lez v1, :cond_0

    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, 0x7e

    aget-object v1, v2, v1

    move-object v4, v1

    .local v4, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    .line 2069
    invoke-virtual {v4, p1, p2}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->sharedHelpCC(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result v1

    goto :goto_0

    .end local v3    # "n":I
    .end local v4    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final externalPush(Ljava9/util/concurrent/ForkJoinTask;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)V"
        }
    .end annotation

    .line 1955
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object/from16 v1, p0

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v0

    move v2, v0

    .local v2, "r":I
    if-nez v0, :cond_0

    .line 1956
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->localInit()V

    .line 1957
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v2

    .line 1960
    :cond_0
    :goto_0
    iget v3, v1, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    .line 1961
    .local v3, "md":I
    iget-object v4, v1, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1962
    .local v4, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    const/high16 v0, 0x40000

    and-int/2addr v0, v3

    if-nez v0, :cond_a

    if-eqz v4, :cond_a

    array-length v0, v4

    move v5, v0

    .local v5, "n":I
    if-lez v0, :cond_a

    .line 1966
    const/4 v6, 0x0

    .local v6, "push":Z
    const/4 v7, 0x0

    .line 1967
    .local v7, "grow":Z
    add-int/lit8 v0, v5, -0x1

    and-int/2addr v0, v2

    and-int/lit8 v0, v0, 0x7e

    aget-object v0, v4, v0

    move-object v8, v0

    .local v8, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v9, 0x0

    if-nez v0, :cond_3

    .line 1968
    iget-object v10, v1, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 1969
    .local v10, "lock":Ljava/lang/Object;
    const/high16 v0, 0x40000000    # 2.0f

    or-int v11, v2, v0

    const v12, -0x10002

    and-int/2addr v11, v12

    .line 1970
    .local v11, "qid":I
    new-instance v12, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava9/util/concurrent/ForkJoinPool;Ljava9/util/concurrent/ForkJoinWorkerThread;)V

    move-object v8, v12

    .line 1971
    iput v11, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    .line 1972
    iput v0, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1973
    const/4 v0, 0x1

    iput v0, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1974
    if-eqz v10, :cond_2

    .line 1975
    monitor-enter v10

    .line 1977
    :try_start_0
    iget-object v12, v1, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v4, v12

    if-eqz v12, :cond_1

    array-length v12, v4

    move v5, v12

    if-lez v12, :cond_1

    add-int/lit8 v12, v5, -0x1

    and-int/2addr v12, v11

    and-int/lit8 v12, v12, 0x7e

    move v13, v12

    .local v13, "i":I
    aget-object v12, v4, v12

    if-nez v12, :cond_1

    .line 1980
    aput-object v8, v4, v13

    .line 1981
    move v7, v0

    move v6, v0

    .line 1983
    .end local v13    # "i":I
    :cond_1
    monitor-exit v10

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1985
    .end local v10    # "lock":Ljava/lang/Object;
    .end local v11    # "qid":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 1986
    :cond_3
    invoke-virtual {v8}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->tryLockSharedQueue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1987
    iget v0, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .local v0, "b":I
    iget v10, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1988
    .local v10, "s":I
    iget-object v11, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v12, v11

    .local v12, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v11, :cond_4

    array-length v11, v12

    move v13, v11

    .local v13, "al":I
    if-lez v11, :cond_4

    add-int/lit8 v11, v13, -0x1

    sub-int v14, v0, v10

    move v15, v14

    .local v15, "d":I
    add-int/2addr v11, v14

    if-lez v11, :cond_4

    .line 1990
    add-int/lit8 v11, v13, -0x1

    and-int/2addr v11, v10

    aput-object p1, v12, v11

    .line 1991
    add-int/lit8 v11, v10, 0x1

    iput v11, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 1992
    iput v9, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1993
    if-gez v15, :cond_5

    iget v11, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v11, v10

    const/4 v14, -0x1

    if-ge v11, v14, :cond_5

    .line 1994
    goto :goto_4

    .line 1997
    .end local v13    # "al":I
    .end local v15    # "d":I
    :cond_4
    const/4 v7, 0x1

    .line 1998
    :cond_5
    const/4 v6, 0x1

    .line 2000
    .end local v0    # "b":I
    .end local v10    # "s":I
    .end local v12    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    :goto_2
    if-eqz v6, :cond_9

    .line 2001
    if-eqz v7, :cond_8

    .line 2003
    :try_start_1
    invoke-virtual {v8}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava9/util/concurrent/ForkJoinTask;

    .line 2004
    iget v0, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    .line 2005
    .local v0, "s":I
    iget-object v10, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v11, v10

    .local v11, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v10, :cond_7

    array-length v10, v11

    move v12, v10

    .local v12, "al":I
    if-lez v10, :cond_7

    .line 2006
    add-int/lit8 v10, v12, -0x1

    and-int/2addr v10, v0

    aput-object p1, v11, v10

    .line 2007
    add-int/lit8 v10, v0, 0x1

    iput v10, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2010
    .end local v0    # "s":I
    .end local v11    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v12    # "al":I
    :cond_7
    iput v9, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 2011
    goto :goto_3

    .line 2010
    :catchall_1
    move-exception v0

    iput v9, v8, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    throw v0

    .line 2013
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->signalWork()V

    .line 2014
    nop

    .line 2020
    .end local v3    # "md":I
    .end local v4    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "n":I
    .end local v6    # "push":Z
    .end local v7    # "grow":Z
    .end local v8    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_4
    return-void

    .line 2017
    .restart local v3    # "md":I
    .restart local v4    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v5    # "n":I
    .restart local v6    # "push":Z
    .restart local v7    # "grow":Z
    .restart local v8    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_9
    invoke-static {v2}, Ljava9/util/concurrent/TLRandom;->advanceProbe(I)I

    move-result v2

    .line 2019
    .end local v3    # "md":I
    .end local v4    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v5    # "n":I
    .end local v6    # "push":Z
    .end local v7    # "grow":Z
    .end local v8    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto/16 :goto_0

    .line 1963
    .restart local v3    # "md":I
    .restart local v4    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_a
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0
.end method

.method public getActiveThreadCount()I
    .locals 4

    .line 2726
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 2727
    .local v0, "r":I
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public getAsyncMode()Z
    .locals 2

    .line 2695
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFactory()Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .locals 1

    .line 2643
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->factory:Ljava9/util/concurrent/ForkJoinPool$ForkJoinWorkerThreadFactory;

    return-object v0
.end method

.method public getParallelism()I
    .locals 2

    .line 2662
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 2663
    .local v0, "par":I
    if-lez v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public getPoolSize()I
    .locals 4

    .line 2685
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const v1, 0xffff

    and-int/2addr v0, v1

    iget-wide v1, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    int-to-short v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQueuedSubmissionCount()I
    .locals 5

    .line 2821
    const/4 v0, 0x0

    .line 2823
    .local v0, "count":I
    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1

    .line 2824
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2825
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    .line 2826
    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 2824
    :cond_0
    nop

    .end local v4    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2829
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getQueuedTaskCount()J
    .locals 8

    .line 2802
    const-wide/16 v0, 0x0

    .line 2804
    .local v0, "count":J
    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .local v3, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1

    .line 2805
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 2806
    aget-object v4, v3, v2

    move-object v5, v4

    .local v5, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_0

    .line 2807
    invoke-virtual {v5}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v4

    int-to-long v6, v4

    add-long/2addr v0, v6

    .line 2805
    :cond_0
    nop

    .end local v5    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2810
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public getRunningThreadCount()I
    .locals 5

    .line 2707
    const/4 v0, 0x0

    .line 2709
    .local v0, "rc":I
    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_1

    .line 2710
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2711
    aget-object v3, v2, v1

    move-object v4, v3

    .local v4, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2712
    add-int/lit8 v0, v0, 0x1

    .line 2710
    :cond_0
    nop

    .end local v4    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 2715
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getStealCount()J
    .locals 10

    .line 2780
    iget-wide v0, p0, Ljava9/util/concurrent/ForkJoinPool;->stealCount:J

    .line 2782
    .local v0, "count":J
    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v3, v2

    .local v3, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1

    .line 2783
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 2784
    aget-object v4, v3, v2

    move-object v5, v4

    .local v5, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_0

    .line 2785
    iget v4, v5, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v6, v4

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 2783
    :cond_0
    nop

    .end local v5    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 2788
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method public getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .line 2653
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public hasQueuedSubmissions()Z
    .locals 4

    .line 2840
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v1, v0

    .local v1, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v0, :cond_1

    .line 2841
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2842
    aget-object v2, v1, v0

    move-object v3, v2

    .local v3, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2843
    const/4 v2, 0x1

    return v2

    .line 2841
    :cond_0
    nop

    .end local v3    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2846
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method final helpComplete(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;Ljava9/util/concurrent/CountedCompleter;I)I
    .locals 1
    .param p1, "w"    # Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .param p3, "maxTasks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinPool$WorkQueue;",
            "Ljava9/util/concurrent/CountedCompleter<",
            "*>;I)I"
        }
    .end annotation

    .line 2084
    .local p2, "task":Ljava9/util/concurrent/CountedCompleter;, "Ljava9/util/concurrent/CountedCompleter<*>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localHelpCC(Ljava9/util/concurrent/CountedCompleter;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method final helpQuiescePool(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 35
    .param p1, "w"    # Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1822
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .local v2, "prevSrc":I
    iget v3, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v4, 0x10000

    and-int/2addr v3, v4

    .line 1823
    .local v3, "fifo":I
    move v4, v2

    .local v4, "source":I
    const/4 v5, -0x1

    .line 1825
    .local v5, "released":I
    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_0

    .line 1826
    invoke-virtual {v1, v6}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localPollAndExec(I)V

    goto :goto_1

    .line 1828
    :cond_0
    invoke-virtual {v1, v6}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localPopAndExec(I)V

    .line 1829
    :goto_1
    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    iget v7, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-ltz v7, :cond_1

    .line 1830
    const/4 v5, 0x1

    .line 1831
    :cond_1
    const/4 v7, 0x1

    .local v7, "quiet":Z
    const/4 v8, 0x1

    .line 1832
    .local v8, "empty":Z
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSecondarySeed()I

    move-result v9

    .line 1833
    .local v9, "r":I
    iget-object v10, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v11, v10

    .local v11, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_d

    .line 1834
    array-length v10, v11

    .local v10, "n":I
    move v15, v10

    .local v15, "j":I
    add-int/lit8 v16, v10, -0x1

    .local v16, "m":I
    :goto_2
    if-lez v15, :cond_c

    .line 1836
    sub-int v17, v9, v15

    and-int v17, v17, v16

    move/from16 v18, v17

    .local v18, "i":I
    if-ltz v17, :cond_a

    move/from16 v14, v18

    .end local v18    # "i":I
    .local v14, "i":I
    if-ge v14, v10, :cond_9

    aget-object v18, v11, v14

    move-object/from16 v19, v18

    .local v19, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_8

    .line 1837
    move-object/from16 v6, v19

    .end local v19    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v6, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    iget v12, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v13, v12

    move/from16 v20, v3

    .end local v3    # "fifo":I
    .local v13, "b":I
    .local v20, "fifo":I
    iget v3, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v12, v3

    if-gez v12, :cond_7

    iget-object v3, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v12, v3

    .local v12, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v3, :cond_6

    array-length v3, v12

    move/from16 v27, v3

    .local v27, "al":I
    if-lez v3, :cond_5

    .line 1839
    iget v3, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    .line 1840
    .local v3, "qid":I
    if-nez v5, :cond_2

    .line 1841
    const/4 v5, 0x1

    .line 1842
    move/from16 v29, v3

    move/from16 v28, v4

    .end local v3    # "qid":I
    .end local v4    # "source":I
    .local v28, "source":I
    .local v29, "qid":I
    sget-wide v3, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move/from16 v31, v7

    move/from16 v30, v8

    const-wide/high16 v7, 0x1000000000000L

    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .local v30, "empty":Z
    .local v31, "quiet":Z
    invoke-static {v0, v3, v4, v7, v8}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    goto :goto_3

    .line 1840
    .end local v28    # "source":I
    .end local v29    # "qid":I
    .end local v30    # "empty":Z
    .end local v31    # "quiet":Z
    .restart local v3    # "qid":I
    .restart local v4    # "source":I
    .restart local v7    # "quiet":Z
    .restart local v8    # "empty":Z
    :cond_2
    move/from16 v29, v3

    move/from16 v28, v4

    move/from16 v31, v7

    move/from16 v30, v8

    .line 1844
    .end local v3    # "qid":I
    .end local v4    # "source":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .restart local v28    # "source":I
    .restart local v29    # "qid":I
    .restart local v30    # "empty":Z
    .restart local v31    # "quiet":Z
    :goto_3
    add-int/lit8 v3, v27, -0x1

    and-int/2addr v3, v13

    .line 1845
    .local v3, "index":I
    int-to-long v7, v3

    sget v4, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long/2addr v7, v4

    sget v4, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    move/from16 v32, v3

    .end local v3    # "index":I
    .local v32, "index":I
    int-to-long v3, v4

    add-long/2addr v7, v3

    .line 1846
    .local v7, "offset":J
    sget-object v3, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 1847
    invoke-virtual {v3, v12, v7, v8}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava9/util/concurrent/ForkJoinTask;

    .line 1848
    .local v4, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v4, :cond_4

    move/from16 v33, v5

    .end local v5    # "released":I
    .local v33, "released":I
    add-int/lit8 v5, v13, 0x1

    move/from16 v34, v9

    .end local v9    # "r":I
    .end local v13    # "b":I
    .local v5, "b":I
    .local v34, "r":I
    iget v9, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v13, v9, :cond_3

    const/16 v26, 0x0

    .line 1849
    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-wide/from16 v23, v7

    move-object/from16 v25, v4

    invoke-static/range {v21 .. v26}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1850
    iput v5, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    .line 1851
    iget v3, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    move v9, v3

    .end local v28    # "source":I
    .local v9, "source":I
    iput v3, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1852
    invoke-virtual {v4}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    .line 1853
    move v3, v2

    .end local v9    # "source":I
    .local v3, "source":I
    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    move/from16 v28, v3

    move v13, v5

    goto :goto_4

    .line 1855
    .end local v3    # "source":I
    .restart local v28    # "source":I
    :cond_3
    move v13, v5

    goto :goto_4

    .line 1848
    .end local v33    # "released":I
    .end local v34    # "r":I
    .local v5, "released":I
    .local v9, "r":I
    .restart local v13    # "b":I
    :cond_4
    move/from16 v33, v5

    move/from16 v34, v9

    .line 1855
    .end local v5    # "released":I
    .end local v9    # "r":I
    .restart local v33    # "released":I
    .restart local v34    # "r":I
    :goto_4
    const/4 v3, 0x0

    move v5, v3

    .line 1856
    .end local v30    # "empty":Z
    .end local v31    # "quiet":Z
    .local v3, "quiet":Z
    .local v5, "empty":Z
    move v7, v3

    move v8, v5

    move/from16 v4, v28

    move/from16 v5, v33

    goto/16 :goto_8

    .line 1837
    .end local v3    # "quiet":Z
    .end local v28    # "source":I
    .end local v29    # "qid":I
    .end local v32    # "index":I
    .end local v33    # "released":I
    .end local v34    # "r":I
    .local v4, "source":I
    .local v5, "released":I
    .local v7, "quiet":Z
    .restart local v8    # "empty":Z
    .restart local v9    # "r":I
    :cond_5
    move/from16 v28, v4

    move/from16 v31, v7

    move/from16 v30, v8

    move/from16 v34, v9

    const/4 v3, 0x0

    .end local v4    # "source":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v9    # "r":I
    .restart local v28    # "source":I
    .restart local v30    # "empty":Z
    .restart local v31    # "quiet":Z
    .restart local v34    # "r":I
    goto :goto_5

    .end local v27    # "al":I
    .end local v28    # "source":I
    .end local v30    # "empty":Z
    .end local v31    # "quiet":Z
    .end local v34    # "r":I
    .restart local v4    # "source":I
    .restart local v7    # "quiet":Z
    .restart local v8    # "empty":Z
    .restart local v9    # "r":I
    :cond_6
    move/from16 v28, v4

    move/from16 v31, v7

    move/from16 v30, v8

    move/from16 v34, v9

    const/4 v3, 0x0

    .end local v4    # "source":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v9    # "r":I
    .restart local v28    # "source":I
    .restart local v30    # "empty":Z
    .restart local v31    # "quiet":Z
    .restart local v34    # "r":I
    goto :goto_5

    .end local v12    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v28    # "source":I
    .end local v30    # "empty":Z
    .end local v31    # "quiet":Z
    .end local v34    # "r":I
    .restart local v4    # "source":I
    .restart local v7    # "quiet":Z
    .restart local v8    # "empty":Z
    .restart local v9    # "r":I
    :cond_7
    move/from16 v28, v4

    move/from16 v31, v7

    move/from16 v30, v8

    move/from16 v34, v9

    const/4 v3, 0x0

    .line 1858
    .end local v4    # "source":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v9    # "r":I
    .restart local v28    # "source":I
    .restart local v30    # "empty":Z
    .restart local v31    # "quiet":Z
    .restart local v34    # "r":I
    :goto_5
    iget v4, v6, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v4, v7

    if-nez v4, :cond_b

    .line 1859
    const/4 v4, 0x0

    move v7, v4

    .end local v31    # "quiet":Z
    .local v4, "quiet":Z
    goto :goto_7

    .line 1836
    .end local v6    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "b":I
    .end local v20    # "fifo":I
    .end local v28    # "source":I
    .end local v30    # "empty":Z
    .end local v34    # "r":I
    .local v3, "fifo":I
    .local v4, "source":I
    .restart local v7    # "quiet":Z
    .restart local v8    # "empty":Z
    .restart local v9    # "r":I
    .restart local v19    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_8
    move/from16 v20, v3

    move/from16 v28, v4

    move v3, v6

    move/from16 v31, v7

    move/from16 v30, v8

    move/from16 v34, v9

    move-object/from16 v6, v19

    .end local v3    # "fifo":I
    .end local v4    # "source":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v9    # "r":I
    .end local v19    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v6    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v20    # "fifo":I
    .restart local v28    # "source":I
    .restart local v30    # "empty":Z
    .restart local v31    # "quiet":Z
    .restart local v34    # "r":I
    goto :goto_6

    .end local v6    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v20    # "fifo":I
    .end local v28    # "source":I
    .end local v30    # "empty":Z
    .end local v31    # "quiet":Z
    .end local v34    # "r":I
    .restart local v3    # "fifo":I
    .restart local v4    # "source":I
    .restart local v7    # "quiet":Z
    .restart local v8    # "empty":Z
    .restart local v9    # "r":I
    :cond_9
    move/from16 v20, v3

    move/from16 v28, v4

    move v3, v6

    move/from16 v31, v7

    move/from16 v30, v8

    move/from16 v34, v9

    .end local v3    # "fifo":I
    .end local v4    # "source":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v9    # "r":I
    .restart local v20    # "fifo":I
    .restart local v28    # "source":I
    .restart local v30    # "empty":Z
    .restart local v31    # "quiet":Z
    .restart local v34    # "r":I
    goto :goto_6

    .end local v14    # "i":I
    .end local v20    # "fifo":I
    .end local v28    # "source":I
    .end local v30    # "empty":Z
    .end local v31    # "quiet":Z
    .end local v34    # "r":I
    .restart local v3    # "fifo":I
    .restart local v4    # "source":I
    .restart local v7    # "quiet":Z
    .restart local v8    # "empty":Z
    .restart local v9    # "r":I
    .restart local v18    # "i":I
    :cond_a
    move/from16 v20, v3

    move/from16 v28, v4

    move v3, v6

    move/from16 v31, v7

    move/from16 v30, v8

    move/from16 v34, v9

    move/from16 v14, v18

    .line 1834
    .end local v3    # "fifo":I
    .end local v4    # "source":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v9    # "r":I
    .end local v18    # "i":I
    .restart local v20    # "fifo":I
    .restart local v28    # "source":I
    .restart local v30    # "empty":Z
    .restart local v31    # "quiet":Z
    .restart local v34    # "r":I
    :cond_b
    :goto_6
    move/from16 v7, v31

    .end local v31    # "quiet":Z
    .restart local v7    # "quiet":Z
    :goto_7
    add-int/lit8 v15, v15, -0x1

    move v6, v3

    move/from16 v3, v20

    move/from16 v4, v28

    move/from16 v8, v30

    move/from16 v9, v34

    goto/16 :goto_2

    .end local v20    # "fifo":I
    .end local v28    # "source":I
    .end local v30    # "empty":Z
    .end local v34    # "r":I
    .restart local v3    # "fifo":I
    .restart local v4    # "source":I
    .restart local v8    # "empty":Z
    .restart local v9    # "r":I
    :cond_c
    move/from16 v20, v3

    move/from16 v28, v4

    move/from16 v31, v7

    move/from16 v30, v8

    move/from16 v34, v9

    .end local v3    # "fifo":I
    .end local v4    # "source":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v9    # "r":I
    .restart local v20    # "fifo":I
    .restart local v28    # "source":I
    .restart local v30    # "empty":Z
    .restart local v31    # "quiet":Z
    .restart local v34    # "r":I
    goto :goto_8

    .line 1833
    .end local v10    # "n":I
    .end local v15    # "j":I
    .end local v16    # "m":I
    .end local v20    # "fifo":I
    .end local v28    # "source":I
    .end local v30    # "empty":Z
    .end local v31    # "quiet":Z
    .end local v34    # "r":I
    .restart local v3    # "fifo":I
    .restart local v4    # "source":I
    .restart local v7    # "quiet":Z
    .restart local v8    # "empty":Z
    .restart local v9    # "r":I
    :cond_d
    move/from16 v20, v3

    move/from16 v28, v4

    move/from16 v30, v8

    move/from16 v34, v9

    .line 1863
    .end local v3    # "fifo":I
    .end local v9    # "r":I
    .restart local v20    # "fifo":I
    .restart local v34    # "r":I
    :goto_8
    if-eqz v7, :cond_f

    .line 1864
    if-nez v5, :cond_e

    .line 1865
    sget-wide v9, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v12, 0x1000000000000L

    invoke-static {v0, v9, v10, v12, v13}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    .line 1866
    :cond_e
    iput v2, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1867
    nop

    .line 1878
    .end local v4    # "source":I
    .end local v5    # "released":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v11    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v34    # "r":I
    return-void

    .line 1869
    .restart local v4    # "source":I
    .restart local v5    # "released":I
    .restart local v7    # "quiet":Z
    .restart local v8    # "empty":Z
    .restart local v11    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v34    # "r":I
    :cond_f
    if-eqz v8, :cond_11

    .line 1870
    const/high16 v3, 0x40000000    # 2.0f

    if-eq v4, v3, :cond_10

    .line 1871
    move v4, v3

    iput v3, v1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1872
    :cond_10
    const/4 v3, 0x1

    if-ne v5, v3, :cond_11

    .line 1873
    const/4 v3, 0x0

    .line 1874
    .end local v5    # "released":I
    .local v3, "released":I
    sget-wide v5, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    const-wide/high16 v9, -0x1000000000000L

    invoke-static {v0, v5, v6, v9, v10}, Ljava9/util/concurrent/ForkJoinPool;->getAndAddLong(Ljava/lang/Object;JJ)J

    move v5, v3

    .line 1877
    .end local v3    # "released":I
    .end local v7    # "quiet":Z
    .end local v8    # "empty":Z
    .end local v11    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v34    # "r":I
    .restart local v5    # "released":I
    :cond_11
    move/from16 v3, v20

    goto/16 :goto_0
.end method

.method public invoke(Ljava9/util/concurrent/ForkJoinTask;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2533
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/concurrent/ForkJoinTask;

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    .line 2534
    invoke-virtual {p1}, Ljava9/util/concurrent/ForkJoinTask;->join()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .line 2619
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2622
    .local v0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    .line 2623
    .local v2, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v3, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v3, v2}, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2624
    .local v3, "f":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TT;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    invoke-direct {p0, v3}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    .line 2626
    nop

    .end local v2    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v3    # "f":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TT;>;"
    goto :goto_0

    .line 2627
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 2628
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava9/util/concurrent/ForkJoinTask;

    invoke-virtual {v3}, Ljava9/util/concurrent/ForkJoinTask;->quietlyJoin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2627
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2629
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    return-object v0

    .line 2630
    :catchall_0
    move-exception v1

    .line 2631
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "size":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 2632
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2631
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2633
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    throw v1
.end method

.method public isQuiescent()Z
    .locals 13

    .line 2743
    :goto_0
    iget-wide v0, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    .line 2744
    .local v0, "c":J
    iget v2, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    .local v2, "md":I
    const v3, 0xffff

    and-int/2addr v3, v2

    .line 2745
    .local v3, "pc":I
    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    int-to-short v4, v4

    add-int/2addr v4, v3

    .line 2746
    .local v4, "tc":I
    const/16 v5, 0x30

    shr-long v5, v0, v5

    long-to-int v5, v5

    add-int/2addr v5, v3

    .line 2747
    .local v5, "rc":I
    const/high16 v6, -0x7ff80000

    and-int/2addr v6, v2

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 2748
    return v7

    .line 2749
    :cond_0
    const/4 v6, 0x0

    if-lez v5, :cond_1

    .line 2750
    return v6

    .line 2753
    :cond_1
    iget-object v8, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v9, v8

    .local v9, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_4

    .line 2754
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_1
    array-length v10, v9

    if-ge v8, v10, :cond_4

    .line 2755
    aget-object v10, v9, v8

    move-object v11, v10

    .local v11, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_3

    .line 2756
    iget v10, v11, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    const/high16 v12, 0x40000000    # 2.0f

    and-int/2addr v10, v12

    if-nez v10, :cond_2

    .line 2757
    return v6

    .line 2758
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 2754
    :cond_3
    nop

    .end local v11    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 2762
    .end local v8    # "i":I
    :cond_4
    if-nez v4, :cond_5

    iget-wide v10, p0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v6, v10, v0

    if-nez v6, :cond_5

    .line 2763
    return v7

    .line 2765
    .end local v0    # "c":J
    .end local v2    # "md":I
    .end local v3    # "pc":I
    .end local v4    # "tc":I
    .end local v5    # "rc":I
    .end local v9    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 2

    .line 3020
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminated()Z
    .locals 2

    .line 2993
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTerminating()Z
    .locals 2

    .line 3010
    iget v0, p0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    .line 3011
    .local v0, "md":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3298
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 3302
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final nextTaskFor(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 2
    .param p1, "w"    # Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinPool$WorkQueue;",
            ")",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 1938
    if-eqz p1, :cond_1

    iget v0, p1, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1939
    invoke-virtual {p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->poll()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->pop()Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .local v1, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v0, :cond_1

    .line 1940
    return-object v1

    .line 1942
    .end local v1    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method protected pollSubmission()Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2857
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->pollScan(Z)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method final registerWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;)Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .locals 19
    .param p1, "wt"    # Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 1428
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava9/util/concurrent/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 1429
    iget-object v3, v1, Ljava9/util/concurrent/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v4, v3

    .local v4, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v3, :cond_0

    .line 1430
    invoke-virtual {v2, v4}, Ljava9/util/concurrent/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1431
    :cond_0
    new-instance v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-direct {v3, v1, v2}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;-><init>(Ljava9/util/concurrent/ForkJoinPool;Ljava9/util/concurrent/ForkJoinWorkerThread;)V

    .line 1432
    .local v3, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    const/4 v5, 0x0

    .line 1433
    .local v5, "tid":I
    iget v6, v1, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    const/high16 v7, 0x10000

    and-int/2addr v6, v7

    .line 1434
    .local v6, "fifo":I
    iget-object v7, v1, Ljava9/util/concurrent/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 1435
    .local v7, "prefix":Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 1436
    monitor-enter v7

    .line 1437
    :try_start_0
    iget-object v8, v1, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1438
    .local v8, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    iget v9, v1, Ljava9/util/concurrent/ForkJoinPool;->indexSeed:I

    const v10, -0x61c88647

    add-int/2addr v9, v10

    iput v9, v1, Ljava9/util/concurrent/ForkJoinPool;->indexSeed:I

    .line 1439
    .local v9, "s":I
    if-eqz v8, :cond_9

    array-length v10, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v11, v10

    .local v11, "n":I
    if-le v10, v0, :cond_8

    .line 1440
    add-int/lit8 v10, v11, -0x1

    .line 1441
    .local v10, "m":I
    and-int v5, v9, v10

    .line 1442
    shl-int/lit8 v12, v9, 0x1

    or-int/2addr v0, v12

    and-int/2addr v0, v10

    .line 1443
    .local v0, "i":I
    ushr-int/lit8 v12, v11, 0x1

    .line 1445
    .local v12, "probes":I
    :goto_0
    :try_start_1
    aget-object v13, v8, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v14, v13

    .local v14, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v13, :cond_3

    :try_start_2
    iget v13, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v13, v15, :cond_1

    .line 1446
    goto :goto_1

    .line 1447
    :cond_1
    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_2

    .line 1448
    or-int/lit8 v0, v11, 0x1

    .line 1449
    goto :goto_1

    .line 1452
    :cond_2
    add-int/lit8 v13, v0, 0x2

    and-int v0, v13, v10

    .line 1453
    .end local v14    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1476
    .end local v0    # "i":I
    .end local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "s":I
    .end local v10    # "m":I
    .end local v11    # "n":I
    .end local v12    # "probes":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    goto/16 :goto_7

    .line 1455
    .restart local v0    # "i":I
    .restart local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v9    # "s":I
    .restart local v10    # "m":I
    .restart local v11    # "n":I
    :cond_3
    :goto_1
    or-int v12, v0, v6

    const/high16 v13, 0x3ffe0000    # 1.984375f

    and-int/2addr v13, v9

    or-int/2addr v12, v13

    .line 1456
    .local v12, "id":I
    :try_start_3
    iput v12, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    iput v12, v3, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1458
    if-ge v0, v11, :cond_4

    .line 1459
    :try_start_4
    aput-object v3, v8, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v16, v4

    move/from16 v18, v5

    goto :goto_5

    .line 1461
    :cond_4
    shl-int/lit8 v13, v11, 0x1

    .line 1462
    .local v13, "an":I
    :try_start_5
    new-array v14, v13, [Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1463
    .local v14, "as":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    aput-object v3, v14, v0

    .line 1464
    add-int/lit8 v15, v13, -0x1

    .line 1465
    .local v15, "am":I
    const/16 v16, 0x0

    move/from16 v17, v0

    move/from16 v0, v16

    .local v0, "j":I
    .local v17, "i":I
    :goto_2
    if-ge v0, v11, :cond_7

    .line 1467
    aget-object v16, v8, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v18, v16

    .local v18, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v16, :cond_5

    .line 1468
    move-object/from16 v16, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    .end local v5    # "tid":I
    .local v4, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v16, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .local v18, "tid":I
    :try_start_6
    iget v5, v4, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    and-int/2addr v5, v15

    and-int/lit8 v5, v5, 0x7e

    aput-object v4, v14, v5

    goto :goto_3

    .line 1467
    .end local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .local v4, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v5    # "tid":I
    .local v18, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_5
    move-object/from16 v16, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    .line 1469
    .end local v5    # "tid":I
    .local v4, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .local v18, "tid":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v11, :cond_6

    .line 1470
    goto :goto_4

    .line 1471
    :cond_6
    aget-object v5, v8, v0

    aput-object v5, v14, v0

    .line 1465
    .end local v4    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v16

    move/from16 v5, v18

    goto :goto_2

    .end local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v18    # "tid":I
    .local v4, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v5    # "tid":I
    :cond_7
    move-object/from16 v16, v4

    move/from16 v18, v5

    .line 1473
    .end local v0    # "j":I
    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v5    # "tid":I
    .restart local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v18    # "tid":I
    :goto_4
    iput-object v14, v1, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1476
    .end local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "s":I
    .end local v10    # "m":I
    .end local v11    # "n":I
    .end local v12    # "id":I
    .end local v13    # "an":I
    .end local v14    # "as":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "am":I
    .end local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v17    # "i":I
    .end local v18    # "tid":I
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v5    # "tid":I
    :goto_5
    move/from16 v5, v18

    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v5    # "tid":I
    .restart local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v18    # "tid":I
    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v5, v18

    goto :goto_7

    .end local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v18    # "tid":I
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v5    # "tid":I
    :catchall_2
    move-exception v0

    move-object/from16 v16, v4

    move/from16 v18, v5

    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v5    # "tid":I
    .restart local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v18    # "tid":I
    goto :goto_7

    .line 1439
    .end local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v18    # "tid":I
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v5    # "tid":I
    .restart local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v9    # "s":I
    .restart local v11    # "n":I
    :cond_8
    move-object/from16 v16, v4

    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    goto :goto_6

    .end local v11    # "n":I
    .end local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_9
    move-object/from16 v16, v4

    .line 1476
    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .end local v8    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v9    # "s":I
    .restart local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :goto_6
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1477
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava9/util/concurrent/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    goto :goto_8

    .line 1476
    .end local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catchall_3
    move-exception v0

    move-object/from16 v16, v4

    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :goto_7
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_7

    .line 1435
    .end local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_a
    move-object/from16 v16, v4

    .line 1479
    .end local v4    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    .restart local v16    # "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :goto_8
    return-object v3
.end method

.method final runWorker(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)V
    .locals 31
    .param p1, "w"    # Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 1654
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->growArray()[Ljava9/util/concurrent/ForkJoinTask;

    .line 1655
    iget v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    invoke-static {}, Ljava9/util/concurrent/TLRandom;->nextSecondarySeed()I

    move-result v1

    xor-int/2addr v0, v1

    .line 1656
    .local v0, "r":I
    if-nez v0, :cond_0

    .line 1657
    const/4 v0, 0x1

    .line 1658
    :cond_0
    const/4 v1, 0x0

    .line 1659
    .local v1, "lastSignalId":I
    :goto_0
    iget-object v2, v8, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v10, v2

    .local v10, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_1b

    .line 1660
    const/4 v2, 0x0

    .line 1661
    .local v2, "nonempty":Z
    array-length v3, v10

    .local v3, "n":I
    move v4, v3

    .local v4, "j":I
    add-int/lit8 v5, v3, -0x1

    move v12, v0

    move v11, v2

    .end local v0    # "r":I
    .end local v2    # "nonempty":Z
    .local v5, "m":I
    .local v11, "nonempty":Z
    .local v12, "r":I
    :goto_1
    if-lez v4, :cond_e

    .line 1663
    and-int v2, v12, v5

    move v6, v2

    .local v6, "i":I
    if-ltz v2, :cond_c

    if-ge v6, v3, :cond_c

    aget-object v2, v10, v6

    move-object v7, v2

    .local v7, "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v2, :cond_b

    iget v2, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    move v14, v2

    .local v14, "b":I
    iget v15, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v2, v15

    if-gez v2, :cond_a

    iget-object v2, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    move-object v15, v2

    .local v15, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v2, :cond_9

    array-length v2, v15

    move/from16 v21, v2

    .local v21, "al":I
    if-lez v2, :cond_8

    .line 1666
    iget v2, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    .line 1667
    .local v2, "qid":I
    add-int/lit8 v16, v21, -0x1

    and-int v13, v16, v14

    .line 1668
    .local v13, "index":I
    move/from16 v23, v1

    .end local v1    # "lastSignalId":I
    .local v23, "lastSignalId":I
    int-to-long v0, v13

    sget v16, Ljava9/util/concurrent/ForkJoinPool;->ASHIFT:I

    shl-long v0, v0, v16

    move/from16 v25, v3

    .end local v3    # "n":I
    .local v25, "n":I
    sget v3, Ljava9/util/concurrent/ForkJoinPool;->ABASE:I

    move/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "m":I
    .end local v6    # "i":I
    .local v26, "m":I
    .local v27, "i":I
    int-to-long v5, v3

    add-long/2addr v0, v5

    .line 1669
    .local v0, "offset":J
    sget-object v3, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 1670
    invoke-virtual {v3, v15, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava9/util/concurrent/ForkJoinTask;

    .line 1671
    .local v5, "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    if-eqz v5, :cond_7

    add-int/lit8 v6, v14, 0x1

    move-object/from16 v28, v10

    .end local v10    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v14    # "b":I
    .local v6, "b":I
    .local v28, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    iget v10, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    if-ne v14, v10, :cond_5

    const/16 v20, 0x0

    .line 1672
    move-object v10, v15

    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v10, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    move-object v15, v3

    move-object/from16 v16, v10

    move-wide/from16 v17, v0

    move-object/from16 v19, v5

    invoke-static/range {v15 .. v20}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1673
    iput v6, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->base:I

    iget v3, v7, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->top:I

    sub-int v3, v6, v3

    if-gez v3, :cond_1

    move/from16 v3, v23

    .end local v23    # "lastSignalId":I
    .local v3, "lastSignalId":I
    if-eq v2, v3, :cond_2

    .line 1674
    invoke-virtual/range {p0 .. p0}, Ljava9/util/concurrent/ForkJoinPool;->signalWork()V

    goto :goto_2

    .line 1673
    .end local v3    # "lastSignalId":I
    .restart local v23    # "lastSignalId":I
    :cond_1
    move/from16 v3, v23

    .line 1675
    .end local v23    # "lastSignalId":I
    .restart local v3    # "lastSignalId":I
    :cond_2
    :goto_2
    move v3, v2

    iput v2, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1676
    invoke-virtual {v5}, Ljava9/util/concurrent/ForkJoinTask;->doExec()I

    .line 1677
    iget v14, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->id:I

    const/high16 v15, 0x10000

    and-int/2addr v14, v15

    const/16 v15, 0x400

    if-eqz v14, :cond_3

    .line 1678
    invoke-virtual {v9, v15}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localPollAndExec(I)V

    goto :goto_3

    .line 1680
    :cond_3
    invoke-virtual {v9, v15}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->localPopAndExec(I)V

    .line 1681
    :goto_3
    iget-object v14, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 1682
    .local v14, "thread":Ljava9/util/concurrent/ForkJoinWorkerThread;
    iget v15, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1683
    const/4 v15, 0x0

    iput v15, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1684
    if-eqz v14, :cond_6

    .line 1685
    invoke-virtual {v14}, Ljava9/util/concurrent/ForkJoinWorkerThread;->afterTopLevelExec()V

    goto :goto_4

    .line 1672
    .end local v3    # "lastSignalId":I
    .end local v14    # "thread":Ljava9/util/concurrent/ForkJoinWorkerThread;
    .restart local v23    # "lastSignalId":I
    :cond_4
    move/from16 v3, v23

    .end local v23    # "lastSignalId":I
    .restart local v3    # "lastSignalId":I
    goto :goto_4

    .line 1671
    .end local v3    # "lastSignalId":I
    .end local v10    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v23    # "lastSignalId":I
    :cond_5
    move-object v10, v15

    move/from16 v3, v23

    .line 1687
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v23    # "lastSignalId":I
    .restart local v3    # "lastSignalId":I
    .restart local v10    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_6
    :goto_4
    move v14, v6

    goto :goto_5

    .line 1671
    .end local v3    # "lastSignalId":I
    .end local v6    # "b":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v10, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v14, "b":I
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v23    # "lastSignalId":I
    :cond_7
    move-object/from16 v28, v10

    move-object v10, v15

    move/from16 v3, v23

    .line 1687
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v23    # "lastSignalId":I
    .restart local v3    # "lastSignalId":I
    .local v10, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_5
    const/4 v0, 0x1

    .line 1688
    .end local v2    # "qid":I
    .end local v5    # "t":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .end local v11    # "nonempty":Z
    .end local v13    # "index":I
    .local v0, "nonempty":Z
    move v11, v0

    move v1, v3

    goto :goto_7

    .line 1663
    .end local v0    # "nonempty":Z
    .end local v25    # "n":I
    .end local v26    # "m":I
    .end local v27    # "i":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "lastSignalId":I
    .local v3, "n":I
    .local v5, "m":I
    .local v6, "i":I
    .local v10, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v11    # "nonempty":Z
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_8
    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v10

    move-object v10, v15

    move v3, v1

    .end local v1    # "lastSignalId":I
    .end local v5    # "m":I
    .end local v6    # "i":I
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v3, "lastSignalId":I
    .local v10, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v25    # "n":I
    .restart local v26    # "m":I
    .restart local v27    # "i":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_6

    .end local v21    # "al":I
    .end local v25    # "n":I
    .end local v26    # "m":I
    .end local v27    # "i":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "lastSignalId":I
    .local v3, "n":I
    .restart local v5    # "m":I
    .restart local v6    # "i":I
    .local v10, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    :cond_9
    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v10

    move-object v10, v15

    move v3, v1

    .end local v1    # "lastSignalId":I
    .end local v5    # "m":I
    .end local v6    # "i":I
    .end local v15    # "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local v3, "lastSignalId":I
    .local v10, "a":[Ljava9/util/concurrent/ForkJoinTask;, "[Ljava9/util/concurrent/ForkJoinTask<*>;"
    .restart local v25    # "n":I
    .restart local v26    # "m":I
    .restart local v27    # "i":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_6

    .end local v25    # "n":I
    .end local v26    # "m":I
    .end local v27    # "i":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "lastSignalId":I
    .local v3, "n":I
    .restart local v5    # "m":I
    .restart local v6    # "i":I
    .local v10, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_a
    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v10

    move v3, v1

    .end local v1    # "lastSignalId":I
    .end local v5    # "m":I
    .end local v6    # "i":I
    .end local v10    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v3, "lastSignalId":I
    .restart local v25    # "n":I
    .restart local v26    # "m":I
    .restart local v27    # "i":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_6

    .end local v14    # "b":I
    .end local v25    # "n":I
    .end local v26    # "m":I
    .end local v27    # "i":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "lastSignalId":I
    .local v3, "n":I
    .restart local v5    # "m":I
    .restart local v6    # "i":I
    .restart local v10    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_b
    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v10

    move v3, v1

    .end local v1    # "lastSignalId":I
    .end local v5    # "m":I
    .end local v6    # "i":I
    .end local v10    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v3, "lastSignalId":I
    .restart local v25    # "n":I
    .restart local v26    # "m":I
    .restart local v27    # "i":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    goto :goto_6

    .end local v7    # "q":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v25    # "n":I
    .end local v26    # "m":I
    .end local v27    # "i":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v1    # "lastSignalId":I
    .local v3, "n":I
    .restart local v5    # "m":I
    .restart local v6    # "i":I
    .restart local v10    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_c
    move/from16 v25, v3

    move/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v10

    move v3, v1

    .line 1689
    .end local v1    # "lastSignalId":I
    .end local v5    # "m":I
    .end local v6    # "i":I
    .end local v10    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v3, "lastSignalId":I
    .restart local v25    # "n":I
    .restart local v26    # "m":I
    .restart local v27    # "i":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_6
    if-eqz v11, :cond_d

    .line 1690
    goto :goto_8

    .line 1692
    :cond_d
    add-int/lit8 v12, v12, 0x1

    move v1, v3

    .line 1661
    .end local v3    # "lastSignalId":I
    .end local v27    # "i":I
    .restart local v1    # "lastSignalId":I
    :goto_7
    add-int/lit8 v4, v4, -0x1

    move/from16 v3, v25

    move/from16 v5, v26

    move-object/from16 v10, v28

    goto/16 :goto_1

    .end local v25    # "n":I
    .end local v26    # "m":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v3, "n":I
    .restart local v5    # "m":I
    .restart local v10    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_e
    move/from16 v25, v3

    move/from16 v26, v5

    move-object/from16 v28, v10

    move v3, v1

    .line 1695
    .end local v1    # "lastSignalId":I
    .end local v4    # "j":I
    .end local v5    # "m":I
    .end local v10    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v3, "lastSignalId":I
    .restart local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :goto_8
    if-eqz v11, :cond_f

    .line 1696
    shl-int/lit8 v0, v12, 0xd

    xor-int/2addr v0, v12

    .end local v12    # "r":I
    .local v0, "r":I
    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    move v1, v3

    goto :goto_c

    .line 1700
    .end local v0    # "r":I
    .restart local v12    # "r":I
    :cond_f
    const/4 v10, 0x0

    .line 1701
    .end local v3    # "lastSignalId":I
    .local v10, "lastSignalId":I
    iget v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    move v13, v0

    .local v13, "phase":I
    const-wide v14, 0xffffffffL

    const-wide v16, -0x100000000L

    if-ltz v0, :cond_11

    .line 1702
    const/high16 v0, 0x10000

    add-int/2addr v0, v13

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    move v6, v0

    .line 1705
    .local v6, "np":I
    :goto_9
    iget-wide v0, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    .local v18, "c":J
    long-to-int v0, v0

    iput v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    .line 1706
    const-wide/high16 v0, 0x1000000000000L

    sub-long v0, v18, v0

    and-long v0, v0, v16

    int-to-long v2, v6

    and-long/2addr v2, v14

    or-long v20, v0, v2

    .line 1707
    .local v20, "nc":J
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide/from16 v4, v18

    move/from16 v23, v6

    .end local v6    # "np":I
    .local v23, "np":I
    move-wide/from16 v6, v20

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1708
    .end local v18    # "c":J
    .end local v20    # "nc":J
    .end local v23    # "np":I
    goto :goto_b

    .line 1707
    .restart local v18    # "c":J
    .restart local v20    # "nc":J
    .restart local v23    # "np":I
    :cond_10
    move/from16 v6, v23

    goto :goto_9

    .line 1710
    .end local v18    # "c":J
    .end local v20    # "nc":J
    .end local v23    # "np":I
    :cond_11
    iget v6, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    .line 1711
    .local v6, "pred":I
    const/high16 v0, -0x40000000    # -2.0f

    iput v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1712
    const/4 v0, 0x0

    .line 1714
    .local v0, "steps":I
    :goto_a
    iget v1, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    if-ltz v1, :cond_12

    .line 1715
    const/4 v1, 0x0

    iput v1, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    .line 1716
    nop

    .line 1745
    .end local v0    # "steps":I
    .end local v6    # "pred":I
    .end local v11    # "nonempty":Z
    .end local v13    # "phase":I
    :goto_b
    move v1, v10

    move v0, v12

    .end local v10    # "lastSignalId":I
    .end local v12    # "r":I
    .local v0, "r":I
    .restart local v1    # "lastSignalId":I
    :goto_c
    goto/16 :goto_0

    .line 1718
    .end local v1    # "lastSignalId":I
    .local v0, "steps":I
    .restart local v6    # "pred":I
    .restart local v10    # "lastSignalId":I
    .restart local v11    # "nonempty":Z
    .restart local v12    # "r":I
    .restart local v13    # "phase":I
    :cond_12
    iget v1, v8, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    move/from16 v18, v1

    .local v18, "md":I
    if-gez v1, :cond_13

    .line 1719
    return-void

    .line 1720
    :cond_13
    const v1, 0xffff

    and-int v1, v18, v1

    iget-wide v2, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v4, v2

    .local v4, "c":J
    const/16 v7, 0x30

    shr-long/2addr v2, v7

    long-to-int v2, v2

    add-int/2addr v1, v2

    move/from16 v19, v1

    .local v19, "rc":I
    if-gtz v1, :cond_14

    const/high16 v1, 0x40000

    and-int v1, v18, v1

    if-eqz v1, :cond_14

    .line 1723
    const/4 v7, 0x0

    invoke-direct {v8, v7, v7}, Ljava9/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1724
    return-void

    .line 1720
    :cond_14
    const/4 v7, 0x0

    .line 1725
    :cond_15
    add-int/lit8 v20, v0, 0x1

    .end local v0    # "steps":I
    .local v20, "steps":I
    and-int/lit8 v0, v20, 0x1

    if-nez v0, :cond_16

    .line 1726
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move v8, v6

    move/from16 v21, v7

    goto/16 :goto_e

    .line 1727
    :cond_16
    if-gtz v19, :cond_1a

    if-eqz v6, :cond_1a

    long-to-int v0, v4

    if-ne v13, v0, :cond_1a

    .line 1728
    iget-wide v0, v8, Ljava9/util/concurrent/ForkJoinPool;->keepAlive:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 1729
    .local v2, "d":J
    invoke-static {v8, v2, v3}, Ljava/util/concurrent/locks/LockSupport;->parkUntil(Ljava/lang/Object;J)V

    .line 1730
    iget-wide v0, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_18

    .line 1731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v21, 0x14

    cmp-long v0, v0, v21

    if-gtz v0, :cond_17

    .line 1732
    const-wide v0, 0x100000000L

    sub-long v0, v4, v0

    and-long v0, v0, v16

    int-to-long v7, v6

    and-long/2addr v7, v14

    or-long v23, v0, v7

    .line 1734
    .local v23, "nc":J
    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide/from16 v25, v2

    .end local v2    # "d":J
    .local v25, "d":J
    move-wide v2, v7

    move-wide/from16 v29, v4

    .end local v4    # "c":J
    .local v29, "c":J
    move v8, v6

    const/16 v21, 0x0

    .end local v6    # "pred":I
    .local v8, "pred":I
    move-wide/from16 v6, v23

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1735
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v9, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1736
    return-void

    .line 1731
    .end local v8    # "pred":I
    .end local v23    # "nc":J
    .end local v25    # "d":J
    .end local v29    # "c":J
    .restart local v2    # "d":J
    .restart local v4    # "c":J
    .restart local v6    # "pred":I
    :cond_17
    move-wide/from16 v25, v2

    move-wide/from16 v29, v4

    move v8, v6

    move/from16 v21, v7

    .end local v2    # "d":J
    .end local v4    # "c":J
    .end local v6    # "pred":I
    .restart local v8    # "pred":I
    .restart local v25    # "d":J
    .restart local v29    # "c":J
    goto :goto_d

    .line 1730
    .end local v8    # "pred":I
    .end local v25    # "d":J
    .end local v29    # "c":J
    .restart local v2    # "d":J
    .restart local v4    # "c":J
    .restart local v6    # "pred":I
    :cond_18
    move-wide/from16 v25, v2

    move-wide/from16 v29, v4

    move v8, v6

    move/from16 v21, v7

    .line 1739
    .end local v2    # "d":J
    .end local v4    # "c":J
    .end local v6    # "pred":I
    .restart local v8    # "pred":I
    .restart local v29    # "c":J
    :cond_19
    :goto_d
    goto :goto_e

    .line 1727
    .end local v8    # "pred":I
    .end local v29    # "c":J
    .restart local v4    # "c":J
    .restart local v6    # "pred":I
    :cond_1a
    move-wide/from16 v29, v4

    move v8, v6

    move/from16 v21, v7

    .line 1741
    .end local v4    # "c":J
    .end local v6    # "pred":I
    .restart local v8    # "pred":I
    .restart local v29    # "c":J
    invoke-static/range {p0 .. p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 1742
    .end local v18    # "md":I
    .end local v19    # "rc":I
    .end local v29    # "c":J
    :goto_e
    move v6, v8

    move/from16 v0, v20

    move-object/from16 v8, p0

    goto/16 :goto_a

    .line 1746
    .end local v8    # "pred":I
    .end local v11    # "nonempty":Z
    .end local v12    # "r":I
    .end local v13    # "phase":I
    .end local v20    # "steps":I
    .end local v28    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .local v0, "r":I
    .restart local v1    # "lastSignalId":I
    .local v10, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_1b
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 2959
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2960
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava9/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 2961
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .line 2982
    invoke-static {}, Ljava9/util/concurrent/ForkJoinPool;->checkPermission()V

    .line 2983
    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Ljava9/util/concurrent/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 2984
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork()V
    .locals 20

    move-object/from16 v8, p0

    .line 1535
    :goto_0
    iget-wide v0, v8, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    move-wide v9, v0

    .local v9, "c":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1536
    goto/16 :goto_1

    .line 1537
    :cond_0
    long-to-int v0, v9

    move v11, v0

    .local v11, "sp":I
    if-nez v0, :cond_1

    .line 1538
    const-wide v0, 0x800000000000L

    and-long/2addr v0, v9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 1539
    invoke-direct {v8, v9, v10}, Ljava9/util/concurrent/ForkJoinPool;->tryAddWorker(J)V

    goto :goto_1

    .line 1542
    :cond_1
    iget-object v0, v8, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v12, v0

    .local v12, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v0, :cond_2

    .line 1543
    goto :goto_1

    .line 1544
    :cond_2
    array-length v0, v12

    const v1, 0xffff

    and-int/2addr v1, v11

    move v13, v1

    .local v13, "i":I
    if-gt v0, v1, :cond_3

    .line 1545
    goto :goto_1

    .line 1546
    :cond_3
    aget-object v0, v12, v13

    move-object v14, v0

    .local v14, "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-nez v0, :cond_4

    .line 1547
    goto :goto_1

    .line 1549
    :cond_4
    const v0, 0x7fffffff

    and-int v15, v11, v0

    .line 1550
    .local v15, "np":I
    iget v6, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1551
    .local v6, "vp":I
    iget v0, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->stackPred:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, -0x100000000L

    const-wide/high16 v4, 0x1000000000000L

    add-long/2addr v4, v9

    and-long/2addr v2, v4

    or-long v16, v0, v2

    .line 1552
    .local v16, "nc":J
    iget-object v7, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->owner:Ljava9/util/concurrent/ForkJoinWorkerThread;

    .line 1553
    .local v7, "vt":Ljava/lang/Thread;
    if-ne v11, v6, :cond_6

    sget-object v0, Ljava9/util/concurrent/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava9/util/concurrent/ForkJoinPool;->CTL:J

    move-object/from16 v1, p0

    move-wide v4, v9

    move/from16 v18, v6

    move-object/from16 v19, v7

    .end local v6    # "vp":I
    .end local v7    # "vt":Ljava/lang/Thread;
    .local v18, "vp":I
    .local v19, "vt":Ljava/lang/Thread;
    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1554
    iput v15, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->phase:I

    .line 1555
    iget v0, v14, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->source:I

    if-gez v0, :cond_5

    .line 1556
    invoke-static/range {v19 .. v19}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 1561
    .end local v9    # "c":J
    .end local v11    # "sp":I
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "i":I
    .end local v14    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "np":I
    .end local v16    # "nc":J
    .end local v18    # "vp":I
    .end local v19    # "vt":Ljava/lang/Thread;
    :cond_5
    :goto_1
    return-void

    .line 1553
    .restart local v6    # "vp":I
    .restart local v7    # "vt":Ljava/lang/Thread;
    .restart local v9    # "c":J
    .restart local v11    # "sp":I
    .restart local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v13    # "i":I
    .restart local v14    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .restart local v15    # "np":I
    .restart local v16    # "nc":J
    :cond_6
    move/from16 v18, v6

    move-object/from16 v19, v7

    .line 1560
    .end local v6    # "vp":I
    .end local v7    # "vt":Ljava/lang/Thread;
    .end local v9    # "c":J
    .end local v11    # "sp":I
    .end local v12    # "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v13    # "i":I
    .end local v14    # "v":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    .end local v15    # "np":I
    .end local v16    # "nc":J
    :cond_7
    goto :goto_0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 0

    .line 157
    invoke-virtual {p0, p1, p2}, Ljava9/util/concurrent/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 0

    .line 157
    invoke-virtual {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object p1

    return-object p1
.end method

.method public submit(Ljava/lang/Runnable;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;"
        }
    .end annotation

    .line 2605
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    instance-of v0, p1, Ljava9/util/concurrent/ForkJoinTask;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava9/util/concurrent/ForkJoinTask;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2595
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Ljava9/util/concurrent/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2586
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Ljava9/util/concurrent/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-direct {p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;)",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "TT;>;"
        }
    .end annotation

    .line 2577
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<TT;>;"
    invoke-direct {p0, p1}, Ljava9/util/concurrent/ForkJoinPool;->externalSubmit(Ljava9/util/concurrent/ForkJoinTask;)Ljava9/util/concurrent/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 2902
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .local v1, "qt":J
    const-wide/16 v3, 0x0

    .local v3, "qs":J
    const/4 v5, 0x0

    .line 2903
    .local v5, "rc":I
    iget-wide v6, v0, Ljava9/util/concurrent/ForkJoinPool;->stealCount:J

    .line 2905
    .local v6, "st":J
    iget-object v8, v0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v9, v8

    .local v9, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v8, :cond_2

    .line 2906
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v10, v9

    if-ge v8, v10, :cond_2

    .line 2907
    aget-object v10, v9, v8

    move-object v11, v10

    .local v11, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_1

    .line 2908
    invoke-virtual {v11}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v10

    .line 2909
    .local v10, "size":I
    and-int/lit8 v12, v8, 0x1

    if-nez v12, :cond_0

    .line 2910
    int-to-long v12, v10

    add-long/2addr v3, v12

    goto :goto_1

    .line 2912
    :cond_0
    int-to-long v12, v10

    add-long/2addr v1, v12

    .line 2913
    iget v12, v11, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v6, v12

    .line 2914
    invoke-virtual {v11}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2915
    add-int/lit8 v5, v5, 0x1

    .line 2906
    .end local v10    # "size":I
    :cond_1
    :goto_1
    nop

    .end local v11    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2921
    .end local v8    # "i":I
    :cond_2
    iget v8, v0, Ljava9/util/concurrent/ForkJoinPool;->mode:I

    .line 2922
    .local v8, "md":I
    const v10, 0xffff

    and-int/2addr v10, v8

    .line 2923
    .local v10, "pc":I
    iget-wide v11, v0, Ljava9/util/concurrent/ForkJoinPool;->ctl:J

    .line 2924
    .local v11, "c":J
    const/16 v13, 0x20

    ushr-long v13, v11, v13

    long-to-int v13, v13

    int-to-short v13, v13

    add-int/2addr v13, v10

    .line 2925
    .local v13, "tc":I
    const/16 v14, 0x30

    shr-long v14, v11, v14

    long-to-int v14, v14

    add-int/2addr v14, v10

    .line 2926
    .local v14, "ac":I
    if-gez v14, :cond_3

    .line 2927
    const/4 v14, 0x0

    .line 2928
    :cond_3
    const/high16 v15, 0x80000

    and-int/2addr v15, v8

    if-eqz v15, :cond_4

    const-string v15, "Terminated"

    goto :goto_2

    :cond_4
    const/high16 v15, -0x80000000

    and-int/2addr v15, v8

    if-eqz v15, :cond_5

    const-string v15, "Terminating"

    goto :goto_2

    :cond_5
    const/high16 v15, 0x40000

    and-int/2addr v15, v8

    if-eqz v15, :cond_6

    const-string v15, "Shutting down"

    goto :goto_2

    :cond_6
    const-string v15, "Running"

    .line 2932
    .local v15, "level":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v8

    .end local v8    # "md":I
    .local v16, "md":I
    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", parallelism = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", size = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", active = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", running = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", steals = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", tasks = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", submissions = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final tryExternalUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;)Z"
        }
    .end annotation

    .line 2053
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    invoke-static {}, Ljava9/util/concurrent/TLRandom;->getProbe()I

    move-result v0

    .line 2055
    .local v0, "r":I
    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinPool;->workQueues:[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-object v2, v1

    .local v2, "ws":[Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    array-length v1, v2

    move v3, v1

    .local v3, "n":I
    if-lez v1, :cond_0

    add-int/lit8 v1, v3, -0x1

    and-int/2addr v1, v0

    and-int/lit8 v1, v1, 0x7e

    aget-object v1, v2, v1

    move-object v4, v1

    .local v4, "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    if-eqz v1, :cond_0

    .line 2058
    invoke-virtual {v4, p1}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->trySharedUnpush(Ljava9/util/concurrent/ForkJoinTask;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v3    # "n":I
    .end local v4    # "w":Ljava9/util/concurrent/ForkJoinPool$WorkQueue;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
