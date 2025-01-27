.class Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;
.super Ljava/lang/Object;
.source "Evictor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/evictor/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BackgroundEvictTask"
.end annotation


# instance fields
.field private final backgroundIO:Z

.field private final evictor:Lcom/sleepycat/je/evictor/Evictor;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/evictor/Evictor;)V
    .locals 1
    .param p1, "evictor"    # Lcom/sleepycat/je/evictor/Evictor;

    .line 3289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3290
    iput-object p1, p0, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    .line 3291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;->backgroundIO:Z

    .line 3292
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 3295
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/Evictor;->access$300(Lcom/sleepycat/je/evictor/Evictor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3297
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    iget-boolean v2, p0, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;->backgroundIO:Z

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/evictor/Evictor;->doEvict(Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3299
    iget-object v0, p0, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/Evictor;->access$300(Lcom/sleepycat/je/evictor/Evictor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 3300
    nop

    .line 3301
    return-void

    .line 3299
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/Evictor$BackgroundEvictTask;->evictor:Lcom/sleepycat/je/evictor/Evictor;

    invoke-static {v1}, Lcom/sleepycat/je/evictor/Evictor;->access$300(Lcom/sleepycat/je/evictor/Evictor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method
