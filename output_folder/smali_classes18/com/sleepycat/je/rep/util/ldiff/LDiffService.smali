.class public Lcom/sleepycat/je/rep/util/ldiff/LDiffService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;
.source "LDiffService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "LDiff"


# instance fields
.field private final busy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

.field private final repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Lcom/sleepycat/je/rep/impl/RepImpl;)V
    .locals 2
    .param p1, "dispatcher"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p2, "repImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 60
    const-string v0, "LDiff"

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ExecutingService;-><init>(Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    iput-object p2, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 62
    iput-object p1, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 63
    invoke-virtual {p1, p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->register(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;)Lcom/sleepycat/je/rep/impl/RepImpl;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->repImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/util/ldiff/LDiffService;

    .line 46
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public getRunnable(Lcom/sleepycat/je/rep/net/DataChannel;)Ljava/lang/Runnable;
    .locals 3
    .param p1, "dataChannel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/je/rep/util/ldiff/LDiffService$LDiffServiceRunnable;-><init>(Lcom/sleepycat/je/rep/util/ldiff/LDiffService;Lcom/sleepycat/je/rep/net/DataChannel;)V

    return-object v0

    .line 81
    :cond_0
    nop

    .line 82
    const-string v0, "Service is already busy"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public isBusy()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->busy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/rep/util/ldiff/LDiffService;->dispatcher:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    const-string v1, "LDiff"

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->cancel(Ljava/lang/String;)V

    .line 68
    return-void
.end method
