.class final Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;
.super Ljava/lang/Object;
.source "CallEnqueueObservable.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/adapter/rxjava2/CallEnqueueObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final call:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile disposed:Z

.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field terminated:Z


# direct methods
.method constructor <init>(Lretrofit2/Call;Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "*>;",
            "Lio/reactivex/Observer<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;, "Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<*>;"
    .local p2, "observer":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-Lretrofit2/Response<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->terminated:Z

    .line 53
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->call:Lretrofit2/Call;

    .line 54
    iput-object p2, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    .line 55
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 97
    .local p0, "this":Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;, "Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->disposed:Z

    .line 98
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->call:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    .line 99
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 103
    .local p0, "this":Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;, "Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback<TT;>;"
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->disposed:Z

    return v0
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 4
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;, "Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-interface {p1}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    invoke-interface {v0, p2}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "inner":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 91
    new-instance v1, Lio/reactivex/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 93
    .end local v0    # "inner":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;, "Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->disposed:Z

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    invoke-interface {v1, p2}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 64
    iget-boolean v1, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->disposed:Z

    if-nez v1, :cond_1

    .line 65
    iput-boolean v0, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->terminated:Z

    .line 66
    iget-object v1, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_1
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v1

    .line 69
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 70
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->terminated:Z

    if-eqz v2, :cond_2

    .line 71
    invoke-static {v1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 72
    :cond_2
    iget-boolean v2, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->disposed:Z

    if-nez v2, :cond_3

    .line 74
    :try_start_1
    iget-object v2, p0, Lretrofit2/adapter/rxjava2/CallEnqueueObservable$CallCallback;->observer:Lio/reactivex/Observer;

    invoke-interface {v2, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    goto :goto_0

    .line 75
    :catchall_1
    move-exception v2

    .line 76
    .local v2, "inner":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 77
    new-instance v3, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v0

    invoke-direct {v3, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 81
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "inner":Ljava/lang/Throwable;
    :cond_3
    :goto_0
    return-void
.end method
