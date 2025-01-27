.class final Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
.super Ljava/lang/ref/WeakReference;
.source "ForkJoinTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExceptionNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Ljava9/util/concurrent/ForkJoinTask<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final ex:Ljava/lang/Throwable;

.field final hashCode:I

.field next:Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

.field final thrower:J


# direct methods
.method constructor <init>(Ljava9/util/concurrent/ForkJoinTask;Ljava/lang/Throwable;Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .param p2, "ex"    # Ljava/lang/Throwable;
    .param p3, "next"    # Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;",
            "Ljava/lang/Throwable;",
            "Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava9/util/concurrent/ForkJoinTask<",
            "*>;>;)V"
        }
    .end annotation

    .line 423
    .local p1, "task":Ljava9/util/concurrent/ForkJoinTask;, "Ljava9/util/concurrent/ForkJoinTask<*>;"
    .local p4, "exceptionTableRefQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<Ljava9/util/concurrent/ForkJoinTask<*>;>;"
    invoke-direct {p0, p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 424
    iput-object p2, p0, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .line 425
    iput-object p3, p0, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->next:Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;

    .line 426
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->thrower:J

    .line 427
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava9/util/concurrent/ForkJoinTask$ExceptionNode;->hashCode:I

    .line 428
    return-void
.end method
