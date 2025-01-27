.class public Lcom/hivemq/client/internal/rx/CompletableFlow;
.super Ljava/lang/Object;
.source "CompletableFlow.java"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# instance fields
.field private volatile disposed:Z

.field private final observer:Lio/reactivex/CompletableObserver;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableObserver;)V
    .locals 0
    .param p1, "observer"    # Lio/reactivex/CompletableObserver;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->observer:Lio/reactivex/CompletableObserver;

    .line 33
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->disposed:Z

    .line 46
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/hivemq/client/internal/rx/CompletableFlow;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->disposed:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->observer:Lio/reactivex/CompletableObserver;

    invoke-interface {v0}, Lio/reactivex/CompletableObserver;->onComplete()V

    .line 37
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 40
    iget-object v0, p0, Lcom/hivemq/client/internal/rx/CompletableFlow;->observer:Lio/reactivex/CompletableObserver;

    invoke-interface {v0, p1}, Lio/reactivex/CompletableObserver;->onError(Ljava/lang/Throwable;)V

    .line 41
    return-void
.end method
