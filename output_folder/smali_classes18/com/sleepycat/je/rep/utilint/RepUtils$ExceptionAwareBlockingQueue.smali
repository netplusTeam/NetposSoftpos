.class public Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "RepUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/RepUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionAwareBlockingQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/LinkedBlockingQueue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final dummyValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final terminatingException:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/sleepycat/je/DatabaseException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Object;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/dbi/EnvironmentImpl;",
            "TT;)V"
        }
    .end annotation

    .line 339
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<TT;>;"
    .local p2, "dummyValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 334
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->terminatingException:Ljava/util/concurrent/atomic/AtomicReference;

    .line 340
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 341
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->dummyValue:Ljava/lang/Object;

    .line 342
    return-void
.end method


# virtual methods
.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<TT;>;"
    nop

    .line 372
    const-string v0, "Use pollOrException() instead of poll()"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public pollOrException(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<TT;>;"
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 355
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 356
    return-object v0

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->terminatingException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/DatabaseException;

    .line 359
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    if-nez v1, :cond_1

    .line 362
    return-object v0

    .line 360
    :cond_1
    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->access$300(Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v2

    throw v2
.end method

.method public releasePoll(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 345
    .local p0, "this":Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;, "Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->terminatingException:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 346
    invoke-static {p1, v1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->access$200(Ljava/lang/Exception;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v1

    .line 345
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 347
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->dummyValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method
