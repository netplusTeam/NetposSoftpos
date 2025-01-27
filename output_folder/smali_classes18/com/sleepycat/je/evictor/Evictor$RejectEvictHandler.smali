.class Lcom/sleepycat/je/evictor/Evictor$RejectEvictHandler;
.super Ljava/lang/Object;
.source "Evictor.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RejectEvictHandler"
.end annotation


# instance fields
.field private final threadUnavailableStat:Lcom/sleepycat/je/utilint/AtomicLongStat;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/AtomicLongStat;)V
    .locals 0
    .param p1, "threadUnavailableStat"    # Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 3308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3309
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$RejectEvictHandler;->threadUnavailableStat:Lcom/sleepycat/je/utilint/AtomicLongStat;

    .line 3310
    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3314
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$RejectEvictHandler;->threadUnavailableStat:Lcom/sleepycat/je/utilint/AtomicLongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/AtomicLongStat;->increment()V

    .line 3315
    return-void
.end method
