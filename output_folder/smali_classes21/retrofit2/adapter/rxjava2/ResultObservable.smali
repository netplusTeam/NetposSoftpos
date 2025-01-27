.class final Lretrofit2/adapter/rxjava2/ResultObservable;
.super Lio/reactivex/Observable;
.source "ResultObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "Lretrofit2/adapter/rxjava2/Result<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final upstream:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 29
    .local p0, "this":Lretrofit2/adapter/rxjava2/ResultObservable;, "Lretrofit2/adapter/rxjava2/ResultObservable<TT;>;"
    .local p1, "upstream":Lio/reactivex/Observable;, "Lio/reactivex/Observable<Lretrofit2/Response<TT;>;>;"
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 30
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/ResultObservable;->upstream:Lio/reactivex/Observable;

    .line 31
    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lretrofit2/adapter/rxjava2/Result<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lretrofit2/adapter/rxjava2/ResultObservable;, "Lretrofit2/adapter/rxjava2/ResultObservable<TT;>;"
    .local p1, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lretrofit2/adapter/rxjava2/Result<TT;>;>;"
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/ResultObservable;->upstream:Lio/reactivex/Observable;

    new-instance v1, Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;

    invoke-direct {v1, p1}, Lretrofit2/adapter/rxjava2/ResultObservable$ResultObserver;-><init>(Lio/reactivex/Observer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    .line 36
    return-void
.end method
