.class Lcom/sleepycat/je/evictor/OffHeapCache$2;
.super Ljava/lang/Object;
.source "OffHeapCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/evictor/OffHeapCache;->wakeUpEvictionThreads()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/evictor/OffHeapCache;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/evictor/OffHeapCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/evictor/OffHeapCache;

    .line 2871
    iput-object p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$2;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2874
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$2;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$400(Lcom/sleepycat/je/evictor/OffHeapCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2876
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$2;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    sget-object v1, Lcom/sleepycat/je/evictor/Evictor$EvictionSource;->EVICTORTHREAD:Lcom/sleepycat/je/evictor/Evictor$EvictionSource;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$500(Lcom/sleepycat/je/evictor/OffHeapCache;Lcom/sleepycat/je/evictor/Evictor$EvictionSource;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2879
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$2;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$400(Lcom/sleepycat/je/evictor/OffHeapCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2880
    nop

    .line 2881
    return-void

    .line 2879
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$2;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v1}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$400(Lcom/sleepycat/je/evictor/OffHeapCache;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method
