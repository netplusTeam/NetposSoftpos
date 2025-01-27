.class Lcom/sleepycat/utilint/LatencyStat$Values;
.super Ljava/lang/Object;
.source "LatencyStat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/utilint/LatencyStat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Values"
.end annotation


# instance fields
.field final histogram:Ljava/util/concurrent/atomic/AtomicIntegerArray;

.field volatile maxIncludingOverflow:I

.field volatile minIncludingOverflow:I

.field final numOps:Ljava/util/concurrent/atomic/AtomicInteger;

.field final numRequests:Ljava/util/concurrent/atomic/AtomicInteger;

.field final requestsOverflow:Ljava/util/concurrent/atomic/AtomicInteger;

.field final totalNanos:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "maxTrackedLatencyMillis"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>(I)V

    iput-object v0, p0, Lcom/sleepycat/utilint/LatencyStat$Values;->histogram:Ljava/util/concurrent/atomic/AtomicIntegerArray;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/utilint/LatencyStat$Values;->numOps:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/utilint/LatencyStat$Values;->numRequests:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/utilint/LatencyStat$Values;->requestsOverflow:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/utilint/LatencyStat$Values;->totalNanos:Ljava/util/concurrent/atomic/AtomicLong;

    .line 69
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sleepycat/utilint/LatencyStat$Values;->minIncludingOverflow:I

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/utilint/LatencyStat$Values;->maxIncludingOverflow:I

    .line 71
    return-void
.end method
