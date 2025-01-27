.class public abstract Lio/reactivex/Scheduler$Worker;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/Scheduler$Worker$PeriodicTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public now(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 481
    invoke-static {p1}, Lio/reactivex/Scheduler;->computeNow(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;
    .locals 3
    .param p1, "run"    # Ljava/lang/Runnable;

    .line 401
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
.end method

.method public schedulePeriodically(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;
    .locals 24
    .param p1, "run"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 453
    move-object/from16 v10, p0

    move-wide/from16 v11, p2

    move-object/from16 v13, p6

    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>()V

    move-object v14, v0

    .line 455
    .local v14, "first":Lio/reactivex/internal/disposables/SequentialDisposable;
    new-instance v0, Lio/reactivex/internal/disposables/SequentialDisposable;

    invoke-direct {v0, v14}, Lio/reactivex/internal/disposables/SequentialDisposable;-><init>(Lio/reactivex/disposables/Disposable;)V

    move-object v15, v0

    .line 457
    .local v15, "sd":Lio/reactivex/internal/disposables/SequentialDisposable;
    invoke-static/range {p1 .. p1}, Lio/reactivex/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v16

    .line 459
    .local v16, "decoratedRun":Ljava/lang/Runnable;
    move-wide/from16 v8, p4

    invoke-virtual {v13, v8, v9}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v17

    .line 460
    .local v17, "periodInNanoseconds":J
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v0}, Lio/reactivex/Scheduler$Worker;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v19

    .line 461
    .local v19, "firstNowNanoseconds":J
    invoke-virtual {v13, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    add-long v21, v19, v0

    .line 463
    .local v21, "firstStartInNanoseconds":J
    new-instance v7, Lio/reactivex/Scheduler$Worker$PeriodicTask;

    move-object v0, v7

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    move-object/from16 v4, v16

    move-wide/from16 v5, v19

    move-object/from16 v23, v14

    move-object v14, v7

    .end local v14    # "first":Lio/reactivex/internal/disposables/SequentialDisposable;
    .local v23, "first":Lio/reactivex/internal/disposables/SequentialDisposable;
    move-object v7, v15

    move-wide/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Lio/reactivex/Scheduler$Worker$PeriodicTask;-><init>(Lio/reactivex/Scheduler$Worker;JLjava/lang/Runnable;JLio/reactivex/internal/disposables/SequentialDisposable;J)V

    invoke-virtual {v10, v14, v11, v12, v13}, Lio/reactivex/Scheduler$Worker;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 466
    .local v0, "d":Lio/reactivex/disposables/Disposable;
    sget-object v1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    if-ne v0, v1, :cond_0

    .line 467
    return-object v0

    .line 469
    :cond_0
    move-object/from16 v1, v23

    .end local v23    # "first":Lio/reactivex/internal/disposables/SequentialDisposable;
    .local v1, "first":Lio/reactivex/internal/disposables/SequentialDisposable;
    invoke-virtual {v1, v0}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    .line 471
    return-object v15
.end method
