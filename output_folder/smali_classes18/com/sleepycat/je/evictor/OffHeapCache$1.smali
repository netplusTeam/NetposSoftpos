.class Lcom/sleepycat/je/evictor/OffHeapCache$1;
.super Ljava/lang/Object;
.source "OffHeapCache.java"

# interfaces
.implements Ljava/util/concurrent/RejectedExecutionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/evictor/OffHeapCache;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
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

    .line 724
    iput-object p1, p0, Lcom/sleepycat/je/evictor/OffHeapCache$1;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .line 728
    iget-object v0, p0, Lcom/sleepycat/je/evictor/OffHeapCache$1;->this$0:Lcom/sleepycat/je/evictor/OffHeapCache;

    invoke-static {v0}, Lcom/sleepycat/je/evictor/OffHeapCache;->access$200(Lcom/sleepycat/je/evictor/OffHeapCache;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 729
    return-void
.end method
