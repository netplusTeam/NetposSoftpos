.class final Lio/netty/util/concurrent/FastThreadLocalRunnable;
.super Ljava/lang/Object;
.source "FastThreadLocalRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "runnable"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lio/netty/util/concurrent/FastThreadLocalRunnable;->runnable:Ljava/lang/Runnable;

    .line 25
    return-void
.end method

.method static wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 37
    instance-of v0, p0, Lio/netty/util/concurrent/FastThreadLocalRunnable;

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/util/concurrent/FastThreadLocalRunnable;

    invoke-direct {v0, p0}, Lio/netty/util/concurrent/FastThreadLocalRunnable;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 30
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/FastThreadLocalRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 33
    nop

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/netty/util/concurrent/FastThreadLocal;->removeAll()V

    .line 33
    throw v0
.end method
