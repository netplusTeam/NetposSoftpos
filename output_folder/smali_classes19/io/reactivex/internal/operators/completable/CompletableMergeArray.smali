.class public final Lio/reactivex/internal/operators/completable/CompletableMergeArray;
.super Lio/reactivex/Completable;
.source "CompletableMergeArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;
    }
.end annotation


# instance fields
.field final sources:[Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>([Lio/reactivex/CompletableSource;)V
    .locals 0
    .param p1, "sources"    # [Lio/reactivex/CompletableSource;

    .line 25
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 26
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    .line 27
    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 8
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 31
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    .line 32
    .local v0, "set":Lio/reactivex/disposables/CompositeDisposable;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 34
    .local v1, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v2, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;

    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, p1, v1, v0, v3}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/disposables/CompositeDisposable;I)V

    .line 35
    .local v2, "shared":Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;
    invoke-interface {p1, v0}, Lio/reactivex/CompletableObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 37
    iget-object v3, p0, Lio/reactivex/internal/operators/completable/CompletableMergeArray;->sources:[Lio/reactivex/CompletableSource;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 38
    .local v6, "c":Lio/reactivex/CompletableSource;
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    if-nez v6, :cond_1

    .line 43
    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 44
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "A completable source is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v2, v3}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 46
    return-void

    .line 49
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    invoke-interface {v6, v2}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    .line 37
    .end local v6    # "c":Lio/reactivex/CompletableSource;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v2}, Lio/reactivex/internal/operators/completable/CompletableMergeArray$InnerCompletableObserver;->onComplete()V

    .line 53
    return-void
.end method
