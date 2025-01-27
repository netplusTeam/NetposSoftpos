.class final Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;
.super Lio/reactivex/internal/observers/DeferredScalarDisposable;
.source "MaybeToObservable.java"

# interfaces
.implements Lio/reactivex/MaybeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/maybe/MaybeToObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MaybeToObservableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/observers/DeferredScalarDisposable<",
        "TT;>;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6984808a6f073b2aL


# instance fields
.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver<TT;>;"
    .local p1, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/observers/DeferredScalarDisposable;-><init>(Lio/reactivex/Observer;)V

    .line 67
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver<TT;>;"
    invoke-super {p0}, Lio/reactivex/internal/observers/DeferredScalarDisposable;->dispose()V

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 97
    return-void
.end method

.method public onComplete()V
    .locals 0

    .line 90
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver<TT;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;->complete()V

    .line 91
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver<TT;>;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;->error(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 71
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 74
    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 76
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;, "Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/maybe/MaybeToObservable$MaybeToObservableObserver;->complete(Ljava/lang/Object;)V

    .line 81
    return-void
.end method
