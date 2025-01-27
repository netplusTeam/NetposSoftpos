.class public Ljava9/util/concurrent/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/concurrent/ForkJoinWorkerThread$InnocuousForkJoinWorkerThread;
    }
.end annotation


# static fields
.field private static final NAME_PLACEHOLDER:Ljava/lang/String; = "aForkJoinWorkerThread"


# instance fields
.field final pool:Ljava9/util/concurrent/ForkJoinPool;

.field final workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor <init>(Ljava9/util/concurrent/ForkJoinPool;)V
    .locals 1
    .param p1, "pool"    # Ljava9/util/concurrent/ForkJoinPool;

    .line 62
    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    .line 64
    invoke-virtual {p1, p0}, Ljava9/util/concurrent/ForkJoinPool;->registerWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;)Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 65
    return-void
.end method

.method constructor <init>(Ljava9/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "pool"    # Ljava9/util/concurrent/ForkJoinPool;
    .param p2, "ccl"    # Ljava/lang/ClassLoader;

    .line 73
    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-static {p0, p2}, Ljava9/util/concurrent/TLRandom;->setContextClassLoader(Ljava/lang/Thread;Ljava/lang/ClassLoader;)V

    .line 75
    iput-object p1, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    .line 76
    invoke-virtual {p1, p0}, Ljava9/util/concurrent/ForkJoinPool;->registerWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;)Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 77
    return-void
.end method

.method constructor <init>(Ljava9/util/concurrent/ForkJoinPool;Ljava/lang/ClassLoader;Ljava/lang/ThreadGroup;Ljava/security/AccessControlContext;)V
    .locals 1
    .param p1, "pool"    # Ljava9/util/concurrent/ForkJoinPool;
    .param p2, "ccl"    # Ljava/lang/ClassLoader;
    .param p3, "threadGroup"    # Ljava/lang/ThreadGroup;
    .param p4, "acc"    # Ljava/security/AccessControlContext;

    .line 87
    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 89
    invoke-static {p0, p4}, Ljava9/util/concurrent/TLRandom;->setInheritedAccessControlContext(Ljava/lang/Thread;Ljava/security/AccessControlContext;)V

    .line 90
    invoke-static {p0}, Ljava9/util/concurrent/TLRandom;->eraseThreadLocals(Ljava/lang/Thread;)V

    .line 91
    iput-object p1, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    .line 92
    invoke-virtual {p1, p0}, Ljava9/util/concurrent/ForkJoinPool;->registerWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;)Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    .line 93
    return-void
.end method


# virtual methods
.method afterTopLevelExec()V
    .locals 0

    .line 172
    return-void
.end method

.method public getPool()Ljava9/util/concurrent/ForkJoinPool;
    .locals 1

    .line 101
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    return-object v0
.end method

.method public getPoolIndex()I
    .locals 1

    .line 115
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v0}, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->getPoolIndex()I

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .line 128
    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 139
    return-void
.end method

.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    iget-object v0, v0, Ljava9/util/concurrent/ForkJoinPool$WorkQueue;->array:[Ljava9/util/concurrent/ForkJoinTask;

    if-nez v0, :cond_1

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "exception":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Ljava9/util/concurrent/ForkJoinWorkerThread;->onStart()V

    .line 151
    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    iget-object v2, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->workQueue:Ljava9/util/concurrent/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, v2}, Ljava9/util/concurrent/ForkJoinPool;->runWorker(Ljava9/util/concurrent/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v1

    .line 158
    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 159
    move-object v0, v1

    goto :goto_0

    .line 152
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    .line 153
    .restart local v1    # "ex":Ljava/lang/Throwable;
    move-object v0, v1

    .line 156
    .end local v1    # "ex":Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {p0, v0}, Ljava9/util/concurrent/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 162
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava9/util/concurrent/ForkJoinWorkerThread;->pool:Ljava9/util/concurrent/ForkJoinPool;

    invoke-virtual {v1, p0, v0}, Ljava9/util/concurrent/ForkJoinPool;->deregisterWorker(Ljava9/util/concurrent/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 163
    goto :goto_1

    .line 157
    :catchall_2
    move-exception v1

    .line 158
    .restart local v1    # "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 166
    .end local v0    # "exception":Ljava/lang/Throwable;
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    return-void
.end method
