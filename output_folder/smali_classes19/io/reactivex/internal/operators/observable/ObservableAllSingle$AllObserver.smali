.class final Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;
.super Ljava/lang/Object;
.source "ObservableAllSingle.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableAllSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AllObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field done:Z

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final predicate:Lio/reactivex/functions/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method constructor <init>(Lio/reactivex/SingleObserver;Lio/reactivex/functions/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-",
            "Ljava/lang/Boolean;",
            ">;",
            "Lio/reactivex/functions/Predicate<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;, "Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver<TT;>;"
    .local p1, "actual":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-Ljava/lang/Boolean;>;"
    .local p2, "predicate":Lio/reactivex/functions/Predicate;, "Lio/reactivex/functions/Predicate<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->downstream:Lio/reactivex/SingleObserver;

    .line 52
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->predicate:Lio/reactivex/functions/Predicate;

    .line 53
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 105
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;, "Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 106
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 110
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;, "Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 96
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;, "Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->done:Z

    if-eqz v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->done:Z

    .line 100
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 86
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;, "Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->done:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 88
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->done:Z

    .line 91
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;, "Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->done:Z

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->predicate:Lio/reactivex/functions/Predicate;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .local v0, "b":Z
    nop

    .line 77
    if-nez v0, :cond_1

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->done:Z

    .line 79
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 80
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->downstream:Lio/reactivex/SingleObserver;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 82
    :cond_1
    return-void

    .line 71
    .end local v0    # "b":Z
    :catchall_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 73
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 74
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->onError(Ljava/lang/Throwable;)V

    .line 75
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 57
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;, "Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 59
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableAllSingle$AllObserver;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p0}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 61
    :cond_0
    return-void
.end method
