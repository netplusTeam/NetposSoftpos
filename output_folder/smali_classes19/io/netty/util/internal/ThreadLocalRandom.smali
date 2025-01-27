.class public final Lio/netty/util/internal/ThreadLocalRandom;
.super Ljava/util/Random;
.source "ThreadLocalRandom.java"


# static fields
.field private static final addend:J = 0xbL

.field private static volatile initialSeedUniquifier:J = 0x0L

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final mask:J = 0xffffffffffffL

.field private static final multiplier:J = 0x5deece66dL

.field private static volatile seedGeneratorEndTime:J = 0x0L

.field private static final seedGeneratorStartTime:J

.field private static final seedGeneratorThread:Ljava/lang/Thread;

.field private static final seedQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final serialVersionUID:J = -0x5135b0e98579898dL


# instance fields
.field initialized:Z

.field private pad0:J

.field private pad1:J

.field private pad2:J

.field private pad3:J

.field private pad4:J

.field private pad5:J

.field private pad6:J

.field private pad7:J

.field private rnd:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 63
    const-class v0, Lio/netty/util/internal/ThreadLocalRandom;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lio/netty/util/internal/ThreadLocalRandom;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 75
    const-string v0, "io.netty.initialSeedUniquifier"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 76
    sget-wide v3, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    cmp-long v0, v3, v1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 77
    const/4 v0, 0x0

    const-string v4, "java.util.secureRandomSeed"

    invoke-static {v4, v0}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 78
    .local v0, "secureRandom":Z
    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v1, Lio/netty/util/internal/ThreadLocalRandom;->seedQueue:Ljava/util/concurrent/BlockingQueue;

    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sput-wide v1, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorStartTime:J

    .line 84
    new-instance v1, Lio/netty/util/internal/ThreadLocalRandom$1;

    const-string v2, "initialSeedUniquifierGenerator"

    invoke-direct {v1, v2}, Lio/netty/util/internal/ThreadLocalRandom$1;-><init>(Ljava/lang/String;)V

    sput-object v1, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorThread:Ljava/lang/Thread;

    .line 101
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 102
    new-instance v2, Lio/netty/util/internal/ThreadLocalRandom$2;

    invoke-direct {v2}, Lio/netty/util/internal/ThreadLocalRandom$2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 108
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lio/netty/util/internal/ThreadLocalRandom;->mix64(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lio/netty/util/internal/ThreadLocalRandom;->mix64(J)J

    move-result-wide v6

    xor-long/2addr v4, v6

    sput-wide v4, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 111
    sput-object v3, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorThread:Ljava/lang/Thread;

    .line 112
    sput-object v3, Lio/netty/util/internal/ThreadLocalRandom;->seedQueue:Ljava/util/concurrent/BlockingQueue;

    .line 113
    sput-wide v1, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorStartTime:J

    .line 115
    .end local v0    # "secureRandom":Z
    :goto_0
    goto :goto_1

    .line 116
    :cond_1
    sput-object v3, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorThread:Ljava/lang/Thread;

    .line 117
    sput-object v3, Lio/netty/util/internal/ThreadLocalRandom;->seedQueue:Ljava/util/concurrent/BlockingQueue;

    .line 118
    sput-wide v1, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorStartTime:J

    .line 120
    :goto_1
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 255
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->newSeed()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->initialized:Z

    .line 257
    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .line 61
    sput-wide p0, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorEndTime:J

    return-wide p0
.end method

.method static synthetic access$100()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .line 61
    sget-object v0, Lio/netty/util/internal/ThreadLocalRandom;->seedQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$200()Lio/netty/util/internal/logging/InternalLogger;
    .locals 1

    .line 61
    sget-object v0, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    return-object v0
.end method

.method public static current()Lio/netty/util/internal/ThreadLocalRandom;
    .locals 1

    .line 265
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/util/internal/InternalThreadLocalMap;->random()Lio/netty/util/internal/ThreadLocalRandom;

    move-result-object v0

    return-object v0
.end method

.method public static getInitialSeedUniquifier()J
    .locals 16

    .line 128
    sget-wide v0, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 129
    .local v0, "initialSeedUniquifier":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 130
    return-wide v0

    .line 133
    :cond_0
    const-class v4, Lio/netty/util/internal/ThreadLocalRandom;

    monitor-enter v4

    .line 134
    :try_start_0
    sget-wide v5, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    move-wide v0, v5

    .line 135
    cmp-long v5, v0, v2

    if-eqz v5, :cond_1

    .line 136
    monitor-exit v4

    return-wide v0

    .line 140
    :cond_1
    const-wide/16 v5, 0x3

    .line 141
    .local v5, "timeoutSeconds":J
    sget-wide v7, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorStartTime:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x3

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    add-long/2addr v7, v12

    .line 142
    .local v7, "deadLine":J
    const/4 v9, 0x0

    .line 144
    .local v9, "interrupted":Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v12, v7, v12

    .line 147
    .local v12, "waitTime":J
    cmp-long v14, v12, v2

    if-gtz v14, :cond_2

    .line 148
    :try_start_1
    sget-object v14, Lio/netty/util/internal/ThreadLocalRandom;->seedQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v14}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .local v14, "seed":Ljava/lang/Long;
    goto :goto_1

    .line 150
    .end local v14    # "seed":Ljava/lang/Long;
    :cond_2
    sget-object v14, Lio/netty/util/internal/ThreadLocalRandom;->seedQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v15, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v14, v12, v13, v15}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 153
    .restart local v14    # "seed":Ljava/lang/Long;
    :goto_1
    if-eqz v14, :cond_3

    .line 154
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v0, v10

    .line 155
    goto :goto_2

    .line 161
    .end local v14    # "seed":Ljava/lang/Long;
    :cond_3
    nop

    .line 163
    cmp-long v14, v12, v2

    if-gtz v14, :cond_4

    .line 164
    :try_start_2
    sget-object v14, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorThread:Ljava/lang/Thread;

    invoke-virtual {v14}, Ljava/lang/Thread;->interrupt()V

    .line 165
    sget-object v14, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v15, "Failed to generate a seed from SecureRandom within {} seconds. Not enough entropy?"

    .line 167
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 165
    invoke-interface {v14, v15, v10}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    goto :goto_2

    .line 171
    .end local v12    # "waitTime":J
    :cond_4
    goto :goto_0

    .line 157
    .restart local v12    # "waitTime":J
    :catch_0
    move-exception v10

    .line 158
    .local v10, "e":Ljava/lang/InterruptedException;
    const/4 v9, 0x1

    .line 159
    sget-object v11, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v14, "Failed to generate a seed from SecureRandom due to an InterruptedException."

    invoke-interface {v11, v14}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 160
    nop

    .line 174
    .end local v10    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "waitTime":J
    :goto_2
    const-wide v10, 0x3255ecdc33bae119L    # 3.253008663204319E-66

    xor-long/2addr v0, v10

    .line 175
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v10

    xor-long/2addr v0, v10

    .line 177
    sput-wide v0, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 179
    if-eqz v9, :cond_5

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 185
    sget-object v10, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->interrupt()V

    .line 188
    :cond_5
    sget-wide v10, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorEndTime:J

    cmp-long v2, v10, v2

    if-nez v2, :cond_6

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sput-wide v2, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorEndTime:J

    .line 192
    :cond_6
    monitor-exit v4

    return-wide v0

    .line 193
    .end local v5    # "timeoutSeconds":J
    .end local v7    # "deadLine":J
    .end local v9    # "interrupted":Z
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private static mix64(J)J
    .locals 5
    .param p0, "z"    # J

    .line 223
    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr v1, p0

    const-wide v3, -0xae502812aa7333L

    mul-long/2addr v1, v3

    .line 224
    .end local p0    # "z":J
    .local v1, "z":J
    ushr-long p0, v1, v0

    xor-long/2addr p0, v1

    const-wide v3, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v3

    .line 225
    .end local v1    # "z":J
    .restart local p0    # "z":J
    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static newSeed()J
    .locals 14

    .line 198
    :goto_0
    sget-object v0, Lio/netty/util/internal/ThreadLocalRandom;->seedUniquifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 199
    .local v1, "current":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    move-wide v5, v1

    goto :goto_1

    :cond_0
    invoke-static {}, Lio/netty/util/internal/ThreadLocalRandom;->getInitialSeedUniquifier()J

    move-result-wide v5

    .line 202
    .local v5, "actualCurrent":J
    :goto_1
    const-wide v7, 0x285d320ad33fdb5L

    mul-long/2addr v7, v5

    .line 204
    .local v7, "next":J
    invoke-virtual {v0, v1, v2, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    sget-object v0, Lio/netty/util/internal/ThreadLocalRandom;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 206
    sget-wide v9, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorEndTime:J

    cmp-long v3, v9, v3

    const/4 v4, 0x0

    const/4 v9, 0x1

    if-eqz v3, :cond_1

    .line 207
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 209
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v3, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v10, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorEndTime:J

    sget-wide v12, Lio/netty/util/internal/ThreadLocalRandom;->seedGeneratorStartTime:J

    sub-long/2addr v10, v12

    .line 210
    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    .line 207
    const-string v4, "-Dio.netty.initialSeedUniquifier: 0x%016x (took %d ms)"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 212
    :cond_1
    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v4

    const-string v4, "-Dio.netty.initialSeedUniquifier: 0x%016x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 215
    :cond_2
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    xor-long/2addr v3, v7

    return-wide v3

    .line 217
    .end local v1    # "current":J
    .end local v5    # "actualCurrent":J
    .end local v7    # "next":J
    :cond_3
    goto :goto_0
.end method

.method public static setInitialSeedUniquifier(J)V
    .locals 0
    .param p0, "initialSeedUniquifier"    # J

    .line 123
    sput-wide p0, Lio/netty/util/internal/ThreadLocalRandom;->initialSeedUniquifier:J

    .line 124
    return-void
.end method


# virtual methods
.method protected next(I)I
    .locals 4
    .param p1, "bits"    # I

    .line 284
    iget-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    const-wide v2, 0x5deece66dL

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xb

    add-long/2addr v0, v2

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    .line 285
    rsub-int/lit8 v2, p1, 0x30

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public nextDouble(D)D
    .locals 2
    .param p1, "n"    # D

    .line 364
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lio/netty/util/internal/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    mul-double/2addr v0, p1

    return-wide v0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble(DD)D
    .locals 4
    .param p1, "least"    # D
    .param p3, "bound"    # D

    .line 381
    cmpl-double v0, p1, p3

    if-gez v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lio/netty/util/internal/ThreadLocalRandom;->nextDouble()D

    move-result-wide v0

    sub-double v2, p3, p1

    mul-double/2addr v0, v2

    add-double/2addr v0, p1

    return-wide v0

    .line 382
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public nextInt(II)I
    .locals 1
    .param p1, "least"    # I
    .param p2, "bound"    # I

    .line 299
    if-ge p1, p2, :cond_0

    .line 302
    sub-int v0, p2, p1

    invoke-virtual {p0, v0}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public nextLong(J)J
    .locals 9
    .param p1, "n"    # J

    .line 315
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    .line 324
    const-wide/16 v0, 0x0

    .line 325
    .local v0, "offset":J
    :goto_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    .line 326
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lio/netty/util/internal/ThreadLocalRandom;->next(I)I

    move-result v2

    .line 327
    .local v2, "bits":I
    const/4 v3, 0x1

    ushr-long v3, p1, v3

    .line 328
    .local v3, "half":J
    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_0

    move-wide v5, v3

    goto :goto_1

    :cond_0
    sub-long v5, p1, v3

    .line 329
    .local v5, "nextn":J
    :goto_1
    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_1

    .line 330
    sub-long v7, p1, v5

    add-long/2addr v0, v7

    .line 332
    :cond_1
    move-wide p1, v5

    .line 333
    .end local v2    # "bits":I
    .end local v3    # "half":J
    .end local v5    # "nextn":J
    goto :goto_0

    .line 334
    :cond_2
    long-to-int v2, p1

    invoke-virtual {p0, v2}, Lio/netty/util/internal/ThreadLocalRandom;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2

    .line 316
    .end local v0    # "offset":J
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong(JJ)J
    .locals 2
    .param p1, "least"    # J
    .param p3, "bound"    # J

    .line 348
    cmp-long v0, p1, p3

    if-gez v0, :cond_0

    .line 351
    sub-long v0, p3, p1

    invoke-virtual {p0, v0, v1}, Lio/netty/util/internal/ThreadLocalRandom;->nextLong(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0

    .line 349
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSeed(J)V
    .locals 4
    .param p1, "seed"    # J

    .line 276
    iget-boolean v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->initialized:Z

    if-nez v0, :cond_0

    .line 279
    const-wide v0, 0x5deece66dL

    xor-long/2addr v0, p1

    const-wide v2, 0xffffffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lio/netty/util/internal/ThreadLocalRandom;->rnd:J

    .line 280
    return-void

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
