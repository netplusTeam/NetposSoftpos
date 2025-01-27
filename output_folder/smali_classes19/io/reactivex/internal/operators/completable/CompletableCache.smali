.class public final Lio/reactivex/internal/operators/completable/CompletableCache;
.super Lio/reactivex/Completable;
.source "CompletableCache.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

.field static final TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;


# instance fields
.field error:Ljava/lang/Throwable;

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;",
            ">;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sput-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 30
    new-array v0, v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    sput-object v0, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 2
    .param p1, "source"    # Lio/reactivex/CompletableSource;

    .line 40
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 41
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->source:Lio/reactivex/CompletableSource;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)Z
    .locals 4
    .param p1, "inner"    # Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 95
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 96
    .local v0, "a":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 97
    return v2

    .line 99
    :cond_0
    array-length v1, v0

    .line 100
    .local v1, "n":I
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 101
    .local v3, "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    aput-object p1, v3, v1

    .line 103
    iget-object v2, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    const/4 v2, 0x1

    return v2

    .line 106
    .end local v0    # "a":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    .end local v1    # "n":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :cond_1
    goto :goto_0
.end method

.method public onComplete()V
    .locals 5

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 87
    .local v3, "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    invoke-virtual {v3}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    iget-object v4, v3, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v4}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 86
    .end local v3    # "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->error:Ljava/lang/Throwable;

    .line 77
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/completable/CompletableCache;->TERMINATED:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 78
    .local v3, "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    invoke-virtual {v3}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 79
    iget-object v4, v3, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->downstream:Lio/reactivex/CompletableObserver;

    invoke-interface {v4, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 77
    .end local v3    # "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 72
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V
    .locals 7
    .param p1, "inner"    # Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 111
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 112
    .local v0, "a":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    array-length v1, v0

    .line 113
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    const/4 v2, -0x1

    .line 119
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 120
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 121
    move v2, v3

    .line 122
    goto :goto_2

    .line 119
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 127
    return-void

    .line 132
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 133
    sget-object v3, Lio/reactivex/internal/operators/completable/CompletableCache;->EMPTY:[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .local v3, "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    goto :goto_3

    .line 135
    .end local v3    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    .line 136
    .local v4, "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 140
    .end local v4    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    .restart local v3    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 141
    nop

    .line 144
    .end local v0    # "a":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "b":[Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    return-void

    .line 143
    :cond_5
    goto :goto_0
.end method

.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 4
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 48
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;-><init>(Lio/reactivex/internal/operators/completable/CompletableCache;Lio/reactivex/CompletableObserver;)V

    .line 49
    .local v0, "inner":Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 51
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCache;->add(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v0}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/completable/CompletableCache;->remove(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V

    .line 56
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->source:Lio/reactivex/CompletableSource;

    invoke-interface {v1, p0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/completable/CompletableCache;->error:Ljava/lang/Throwable;

    .line 61
    .local v1, "ex":Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 62
    invoke-interface {p1, v1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-interface {p1}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 67
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void
.end method
