.class final Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;
.super Ljava/lang/Object;
.source "SingleOnErrorReturn.java"

# interfaces
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleOnErrorReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnErrorReturn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final observer:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/single/SingleOnErrorReturn;Lio/reactivex/SingleObserver;)V
    .locals 0
    .param p1, "this$0"    # Lio/reactivex/internal/operators/single/SingleOnErrorReturn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "-TT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;, "Lio/reactivex/internal/operators/single/SingleOnErrorReturn<TT;>.OnErrorReturn;"
    .local p2, "observer":Lio/reactivex/SingleObserver;, "Lio/reactivex/SingleObserver<-TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    .line 47
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 53
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;, "Lio/reactivex/internal/operators/single/SingleOnErrorReturn<TT;>.OnErrorReturn;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->valueSupplier:Lio/reactivex/functions/Function;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->valueSupplier:Lio/reactivex/functions/Function;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .local v0, "v":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 56
    .end local v0    # "v":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 57
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 58
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 59
    return-void

    .line 62
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->this$0:Lio/reactivex/internal/operators/single/SingleOnErrorReturn;

    iget-object v0, v0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn;->value:Ljava/lang/Object;

    .line 65
    .local v0, "v":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v0, :cond_1

    .line 66
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Value supplied was null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1, p1}, Ljava/lang/NullPointerException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 68
    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v2, v1}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    .line 69
    return-void

    .line 72
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :cond_1
    iget-object v1, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 77
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;, "Lio/reactivex/internal/operators/single/SingleOnErrorReturn<TT;>.OnErrorReturn;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 78
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;, "Lio/reactivex/internal/operators/single/SingleOnErrorReturn<TT;>.OnErrorReturn;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn;->observer:Lio/reactivex/SingleObserver;

    invoke-interface {v0, p1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    .line 83
    return-void
.end method
