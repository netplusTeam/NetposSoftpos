.class abstract Lcom/google/common/util/concurrent/InterruptibleTask;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "InterruptibleTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;,
        Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final DONE:Ljava/lang/Runnable;

.field private static final MAX_BUSY_WAIT_SPINS:I = 0x3e8

.field private static final PARKED:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 50
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    .line 51
    new-instance v0, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask$DoNothingRunnable;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    sput-object v0, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 35
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method

.method private waitForInterrupt(Ljava/lang/Thread;)V
    .locals 5
    .param p1, "currentThread"    # Ljava/lang/Thread;

    .line 104
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, "restoreInterruptedBit":Z
    const/4 v1, 0x0

    .line 115
    .local v1, "spinCount":I
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 116
    .local v2, "state":Ljava/lang/Runnable;
    const/4 v3, 0x0

    .line 117
    .local v3, "blocker":Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;
    :goto_0
    instance-of v4, v2, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    if-nez v4, :cond_2

    sget-object v4, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v2, v4, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 158
    :cond_1
    return-void

    .line 118
    :cond_2
    :goto_1
    instance-of v4, v2, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    if-eqz v4, :cond_3

    .line 119
    move-object v3, v2

    check-cast v3, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    .line 121
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 122
    const/16 v4, 0x3e8

    if-le v1, v4, :cond_7

    .line 130
    sget-object v4, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-eq v2, v4, :cond_4

    invoke-virtual {p0, v2, v4}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 142
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v4, 0x1

    :goto_3
    move v0, v4

    .line 143
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_4

    .line 146
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 148
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method abstract afterRanInterruptiblyFailure(Ljava/lang/Throwable;)V
.end method

.method abstract afterRanInterruptiblySuccess(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method final interruptTask()V
    .locals 5

    .line 193
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 194
    .local v0, "currentRunner":Ljava/lang/Runnable;
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 195
    new-instance v1, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;-><init>(Lcom/google/common/util/concurrent/InterruptibleTask;Lcom/google/common/util/concurrent/InterruptibleTask$1;)V

    .line 196
    .local v1, "blocker":Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;->access$200(Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;Ljava/lang/Thread;)V

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    sget-object v2, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/google/common/util/concurrent/InterruptibleTask;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 206
    .local v2, "prev":Ljava/lang/Runnable;
    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v2, v3, :cond_0

    .line 207
    move-object v3, v0

    check-cast v3, Ljava/lang/Thread;

    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 209
    .end local v2    # "prev":Ljava/lang/Runnable;
    :cond_0
    goto :goto_0

    .line 205
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/InterruptibleTask;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 206
    .local v3, "prev":Ljava/lang/Runnable;
    sget-object v4, Lcom/google/common/util/concurrent/InterruptibleTask;->PARKED:Ljava/lang/Runnable;

    if-ne v3, v4, :cond_1

    .line 207
    move-object v4, v0

    check-cast v4, Ljava/lang/Thread;

    invoke-static {v4}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 209
    .end local v3    # "prev":Ljava/lang/Runnable;
    :cond_1
    throw v2

    .line 212
    .end local v1    # "blocker":Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;
    :cond_2
    :goto_0
    return-void
.end method

.method abstract isDone()Z
.end method

.method public final run()V
    .locals 5

    .line 64
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 65
    .local v0, "currentThread":Ljava/lang/Thread;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->isDone()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 70
    .local v1, "run":Z
    const/4 v2, 0x0

    .line 71
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .line 73
    .local v3, "error":Ljava/lang/Throwable;
    if-eqz v1, :cond_3

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->runInterruptibly()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v4

    .line 77
    .local v4, "t":Ljava/lang/Throwable;
    move-object v3, v4

    .line 80
    .end local v4    # "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->waitForInterrupt(Ljava/lang/Thread;)V

    .line 83
    :cond_1
    if-eqz v1, :cond_5

    .line 84
    nop

    .line 88
    :cond_2
    invoke-virtual {p0, v3}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptiblyFailure(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 80
    :cond_3
    :goto_0
    sget-object v4, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4}, Lcom/google/common/util/concurrent/InterruptibleTask;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 81
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/InterruptibleTask;->waitForInterrupt(Ljava/lang/Thread;)V

    .line 83
    :cond_4
    if-eqz v1, :cond_5

    .line 84
    if-nez v3, :cond_2

    .line 86
    invoke-static {v2}, Lcom/google/common/util/concurrent/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/common/util/concurrent/InterruptibleTask;->afterRanInterruptiblySuccess(Ljava/lang/Object;)V

    .line 92
    :cond_5
    :goto_1
    return-void
.end method

.method abstract runInterruptibly()Ljava/lang/Object;
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method abstract toPendingString()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 242
    .local p0, "this":Lcom/google/common/util/concurrent/InterruptibleTask;, "Lcom/google/common/util/concurrent/InterruptibleTask<TT;>;"
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 244
    .local v0, "state":Ljava/lang/Runnable;
    sget-object v1, Lcom/google/common/util/concurrent/InterruptibleTask;->DONE:Ljava/lang/Runnable;

    if-ne v0, v1, :cond_0

    .line 245
    const-string v1, "running=[DONE]"

    .local v1, "result":Ljava/lang/String;
    goto :goto_0

    .line 246
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    instance-of v1, v0, Lcom/google/common/util/concurrent/InterruptibleTask$Blocker;

    if-eqz v1, :cond_1

    .line 247
    const-string v1, "running=[INTERRUPTED]"

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    if-eqz v1, :cond_2

    .line 250
    move-object v1, v0

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "running=[RUNNING ON "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v1    # "result":Ljava/lang/String;
    :cond_2
    const-string v1, "running=[NOT STARTED YET]"

    .line 254
    .restart local v1    # "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;->toPendingString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
