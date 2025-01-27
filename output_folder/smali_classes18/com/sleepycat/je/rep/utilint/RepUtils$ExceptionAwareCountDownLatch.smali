.class public Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;
.super Ljava/util/concurrent/CountDownLatch;
.source "RepUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/RepUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionAwareCountDownLatch"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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
.method static constructor <clinit>()V
    .locals 1

    .line 250
    const-class v0, Lcom/sleepycat/je/rep/utilint/RepUtils;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;I)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "count"    # I

    .line 260
    invoke-direct {p0, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->terminatingException:Ljava/util/concurrent/atomic/AtomicReference;

    .line 261
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 262
    return-void
.end method


# virtual methods
.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    nop

    .line 316
    const-string v0, "Use awaitOrException() instead of await"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public awaitOrException()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 305
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v1, 0x7fffffff

    invoke-virtual {p0, v1, v2, v0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->awaitOrException(JLjava/util/concurrent/TimeUnit;)Z

    .line 306
    return-void
.end method

.method public awaitOrException(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 291
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 292
    .local v0, "done":Z
    if-nez v0, :cond_0

    .line 293
    return v0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->terminatingException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/DatabaseException;

    .line 296
    .local v1, "e":Lcom/sleepycat/je/DatabaseException;
    if-nez v1, :cond_1

    .line 299
    return v0

    .line 297
    :cond_1
    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->access$300(Lcom/sleepycat/je/DatabaseException;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v2

    throw v2
.end method

.method public releaseAwait(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .line 272
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->terminatingException:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 273
    invoke-static {p1, v1}, Lcom/sleepycat/je/rep/utilint/RepUtils;->access$200(Ljava/lang/Exception;Lcom/sleepycat/je/dbi/EnvironmentImpl;)Lcom/sleepycat/je/DatabaseException;

    move-result-object v1

    .line 272
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->getCount()J

    move-result-wide v0

    .local v0, "count":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->countDown()V

    .line 274
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    .line 277
    .end local v0    # "count":J
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/RepUtils$ExceptionAwareCountDownLatch;->getCount()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 278
    return-void

    .line 277
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
