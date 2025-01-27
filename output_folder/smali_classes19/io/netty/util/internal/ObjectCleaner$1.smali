.class final Lio/netty/util/internal/ObjectCleaner$1;
.super Ljava/lang/Object;
.source "ObjectCleaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/internal/ObjectCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 47
    const/4 v0, 0x0

    .line 51
    .local v0, "interrupted":Z
    :cond_0
    :goto_0
    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$000()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$200()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$100()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v1, "reference":Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;
    nop

    .line 60
    if-eqz v1, :cond_1

    .line 62
    :try_start_1
    invoke-virtual {v1}, Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;->cleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v2

    .line 67
    :goto_1
    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$000()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    .end local v1    # "reference":Lio/netty/util/internal/ObjectCleaner$AutomaticCleanerReference;
    :cond_1
    goto :goto_0

    .line 55
    :catch_0
    move-exception v1

    .line 57
    .local v1, "ex":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 58
    goto :goto_0

    .line 70
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :cond_2
    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$000()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lio/netty/util/internal/ObjectCleaner;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    :cond_3
    if-eqz v0, :cond_4

    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 84
    :cond_4
    return-void
.end method
