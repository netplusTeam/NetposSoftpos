.class final Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "ObservableSwitchMapMaybe.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SwitchMapMaybeMainObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field static final INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x4af86f46b0766842L


# instance fields
.field volatile cancelled:Z

.field final delayErrors:Z

.field volatile done:Z

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final errors:Lio/reactivex/internal/util/AtomicThrowable;

.field final inner:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field final mapper:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field upstream:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;-><init>(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;)V

    sput-object v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    return-void
.end method

.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;Z)V
    .locals 1
    .param p3, "delayErrors"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;Z)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    .local p1, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    .local p2, "mapper":Lio/reactivex/functions/Function;, "Lio/reactivex/functions/Function<-TT;+Lio/reactivex/MaybeSource<+TR;>;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 86
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->downstream:Lio/reactivex/Observer;

    .line 87
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->mapper:Lio/reactivex/functions/Function;

    .line 88
    iput-boolean p3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->delayErrors:Z

    .line 89
    new-instance v0, Lio/reactivex/internal/util/AtomicThrowable;

    invoke-direct {v0}, Lio/reactivex/internal/util/AtomicThrowable;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 164
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->cancelled:Z

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 166
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->disposeInner()V

    .line 167
    return-void
.end method

.method disposeInner()V
    .locals 2

    .line 156
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    .line 157
    .local v0, "current":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;"
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 158
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;->dispose()V

    .line 160
    :cond_0
    return-void
.end method

.method drain()V
    .locals 8

    .line 195
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x1

    .line 200
    .local v0, "missed":I
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->downstream:Lio/reactivex/Observer;

    .line 201
    .local v1, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TR;>;"
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    .line 202
    .local v2, "errors":Lio/reactivex/internal/util/AtomicThrowable;
    iget-object v3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    .line 207
    .local v3, "inner":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;>;"
    :goto_0
    iget-boolean v4, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->cancelled:Z

    if-eqz v4, :cond_1

    .line 208
    return-void

    .line 211
    :cond_1
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 212
    iget-boolean v4, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->delayErrors:Z

    if-nez v4, :cond_2

    .line 213
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v4

    .line 214
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-interface {v1, v4}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 215
    return-void

    .line 219
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_2
    iget-boolean v4, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->done:Z

    .line 220
    .local v4, "d":Z
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    .line 221
    .local v5, "current":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;"
    if-nez v5, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 223
    .local v6, "empty":Z
    :goto_1
    if-eqz v4, :cond_5

    if-eqz v6, :cond_5

    .line 224
    invoke-virtual {v2}, Lio/reactivex/internal/util/AtomicThrowable;->terminate()Ljava/lang/Throwable;

    move-result-object v7

    .line 225
    .local v7, "ex":Ljava/lang/Throwable;
    if-eqz v7, :cond_4

    .line 226
    invoke-interface {v1, v7}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 228
    :cond_4
    invoke-interface {v1}, Lio/reactivex/Observer;->onComplete()V

    .line 230
    :goto_2
    return-void

    .line 233
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-nez v6, :cond_7

    iget-object v7, v5, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;->item:Ljava/lang/Object;

    if-nez v7, :cond_6

    .line 234
    goto :goto_3

    .line 237
    :cond_6
    const/4 v7, 0x0

    invoke-static {v3, v5, v7}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    iget-object v7, v5, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;->item:Ljava/lang/Object;

    invoke-interface {v1, v7}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 240
    .end local v4    # "d":Z
    .end local v5    # "current":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;"
    .end local v6    # "empty":Z
    goto :goto_0

    .line 242
    :cond_7
    :goto_3
    neg-int v4, v0

    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->addAndGet(I)I

    move-result v0

    .line 243
    if-nez v0, :cond_8

    .line 244
    nop

    .line 247
    return-void

    .line 243
    :cond_8
    goto :goto_0
.end method

.method innerComplete(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<",
            "TR;>;)V"
        }
    .end annotation

    .line 189
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    .local p1, "sender":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->drain()V

    .line 192
    :cond_0
    return-void
.end method

.method innerError(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;Ljava/lang/Throwable;)V
    .locals 2
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<",
            "TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    .local p1, "sender":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p2}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->delayErrors:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 179
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->disposeInner()V

    .line 181
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->drain()V

    .line 182
    return-void

    .line 185
    :cond_1
    invoke-static {p2}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 186
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 171
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->cancelled:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 150
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->done:Z

    .line 151
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->drain()V

    .line 152
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 137
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->errors:Lio/reactivex/internal/util/AtomicThrowable;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AtomicThrowable;->addThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->delayErrors:Z

    if-nez v0, :cond_0

    .line 139
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->disposeInner()V

    .line 141
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->done:Z

    .line 142
    invoke-virtual {p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->drain()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 104
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    .line 105
    .local v0, "current":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;"
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;->dispose()V

    .line 112
    :cond_0
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->mapper:Lio/reactivex/functions/Function;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The mapper returned a null MaybeSource"

    invoke-static {v1, v2}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/MaybeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .local v1, "ms":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TR;>;"
    nop

    .line 121
    new-instance v2, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    invoke-direct {v2, p0}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;-><init>(Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;)V

    .line 124
    .local v2, "observer":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;"
    :cond_1
    iget-object v3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    .line 125
    sget-object v3, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    if-ne v0, v3, :cond_2

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    iget-object v3, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-interface {v1, v2}, Lio/reactivex/MaybeSource;->subscribe(Lio/reactivex/MaybeObserver;)V

    .line 130
    nop

    .line 133
    :goto_0
    return-void

    .line 113
    .end local v1    # "ms":Lio/reactivex/MaybeSource;, "Lio/reactivex/MaybeSource<+TR;>;"
    .end local v2    # "observer":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver<TR;>;"
    :catchall_0
    move-exception v1

    .line 114
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 115
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-interface {v2}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 116
    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->inner:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->INNER_DISPOSED:Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver$SwitchMapMaybeObserver;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->onError(Ljava/lang/Throwable;)V

    .line 118
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;, "Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver<TT;TR;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->upstream:Lio/reactivex/disposables/Disposable;

    .line 97
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/ObservableSwitchMapMaybe$SwitchMapMaybeMainObserver;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 99
    :cond_0
    return-void
.end method
