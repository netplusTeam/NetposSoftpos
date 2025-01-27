.class public final Lio/reactivex/internal/operators/observable/ObservableCache;
.super Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;
.source "ObservableCache.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableCache$Node;,
        Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream<",
        "TT;TT;>;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

.field static final TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;


# instance fields
.field final capacityHint:I

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final head:Lio/reactivex/internal/operators/observable/ObservableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final observers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile size:J

.field tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field tailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 56
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableCache;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observable;I)V
    .locals 3
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;I)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    .local p1, "source":Lio/reactivex/Observable;, "Lio/reactivex/Observable<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/observable/AbstractObservableWithUpstream;-><init>(Lio/reactivex/ObservableSource;)V

    .line 96
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->capacityHint:I

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    invoke-direct {v0, p2}, Lio/reactivex/internal/operators/observable/ObservableCache$Node;-><init>(I)V

    .line 99
    .local v0, "n":Lio/reactivex/internal/operators/observable/ObservableCache$Node;, "Lio/reactivex/internal/operators/observable/ObservableCache$Node<TT;>;"
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->head:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 100
    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 101
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/observable/ObservableCache;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 102
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    .local p1, "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 149
    .local v0, "current":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    if-ne v0, v1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    array-length v1, v0

    .line 155
    .local v1, "n":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 156
    .local v2, "next":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    aput-object p1, v2, v1

    .line 159
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    return-void

    .line 162
    .end local v0    # "current":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "next":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method cachedEventCount()J
    .locals 2

    .line 138
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->size:J

    return-wide v0
.end method

.method hasObservers()Z
    .locals 1

    .line 130
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConnected()Z
    .locals 1

    .line 122
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 323
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->done:Z

    .line 324
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 325
    .local v3, "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableCache;->replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    .line 324
    .end local v3    # "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 313
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->error:Ljava/lang/Throwable;

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->done:Z

    .line 315
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservableCache;->TERMINATED:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 316
    .local v3, "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableCache;->replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    .line 315
    .end local v3    # "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 292
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tailOffset:I

    .line 294
    .local v0, "tailOffset":I
    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->capacityHint:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 295
    new-instance v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/observable/ObservableCache$Node;-><init>(I)V

    .line 296
    .local v1, "n":Lio/reactivex/internal/operators/observable/ObservableCache$Node;, "Lio/reactivex/internal/operators/observable/ObservableCache$Node<TT;>;"
    iget-object v3, v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->values:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 297
    const/4 v3, 0x1

    iput v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tailOffset:I

    .line 298
    iget-object v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    iput-object v1, v3, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->next:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 299
    iput-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 300
    .end local v1    # "n":Lio/reactivex/internal/operators/observable/ObservableCache$Node;, "Lio/reactivex/internal/operators/observable/ObservableCache$Node<TT;>;"
    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tail:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    iget-object v1, v1, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->values:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 302
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->tailOffset:I

    .line 304
    :goto_0
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->size:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->size:J

    .line 305
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 306
    .local v4, "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/observable/ObservableCache;->replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    .line 305
    .end local v4    # "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 308
    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .param p1, "d"    # Lio/reactivex/disposables/Disposable;

    .line 288
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    .local p1, "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 173
    .local v0, "current":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    array-length v1, v0

    .line 174
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    const/4 v2, -0x1

    .line 179
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 180
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 181
    move v2, v3

    .line 182
    goto :goto_2

    .line 179
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 187
    return-void

    .line 191
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 192
    sget-object v3, Lio/reactivex/internal/operators/observable/ObservableCache;->EMPTY:[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .local v3, "next":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    goto :goto_3

    .line 194
    .end local v3    # "next":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    .line 195
    .local v4, "next":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 199
    .end local v4    # "next":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    .restart local v3    # "next":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->observers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 200
    return-void

    .line 202
    .end local v0    # "current":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "next":[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "[Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    .local p1, "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x1

    .line 219
    .local v0, "missed":I
    iget-wide v1, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->index:J

    .line 220
    .local v1, "index":J
    iget v3, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->offset:I

    .line 221
    .local v3, "offset":I
    iget-object v4, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 222
    .local v4, "node":Lio/reactivex/internal/operators/observable/ObservableCache$Node;, "Lio/reactivex/internal/operators/observable/ObservableCache$Node<TT;>;"
    iget-object v5, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->downstream:Lio/reactivex/Observer;

    .line 223
    .local v5, "downstream":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    iget v6, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->capacityHint:I

    .line 227
    .local v6, "capacity":I
    :goto_0
    iget-boolean v7, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->disposed:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 228
    iput-object v8, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 229
    return-void

    .line 233
    :cond_1
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->done:Z

    .line 235
    .local v7, "sourceDone":Z
    iget-wide v9, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->size:J

    cmp-long v9, v9, v1

    const/4 v10, 0x1

    if-nez v9, :cond_2

    move v9, v10

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 238
    .local v9, "empty":Z
    :goto_1
    if-eqz v7, :cond_4

    if-eqz v9, :cond_4

    .line 240
    iput-object v8, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 242
    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->error:Ljava/lang/Throwable;

    .line 243
    .local v8, "ex":Ljava/lang/Throwable;
    if-eqz v8, :cond_3

    .line 244
    invoke-interface {v5, v8}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 246
    :cond_3
    invoke-interface {v5}, Lio/reactivex/Observer;->onComplete()V

    .line 248
    :goto_2
    return-void

    .line 252
    .end local v8    # "ex":Ljava/lang/Throwable;
    :cond_4
    if-nez v9, :cond_6

    .line 254
    if-ne v3, v6, :cond_5

    .line 256
    iget-object v4, v4, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->next:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 258
    const/4 v3, 0x0

    .line 262
    :cond_5
    iget-object v8, v4, Lio/reactivex/internal/operators/observable/ObservableCache$Node;->values:[Ljava/lang/Object;

    aget-object v8, v8, v3

    invoke-interface {v5, v8}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 265
    add-int/2addr v3, v10

    .line 267
    const-wide/16 v10, 0x1

    add-long/2addr v1, v10

    .line 270
    goto :goto_0

    .line 274
    :cond_6
    iput-wide v1, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->index:J

    .line 275
    iput v3, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->offset:I

    .line 276
    iput-object v4, p1, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->node:Lio/reactivex/internal/operators/observable/ObservableCache$Node;

    .line 278
    neg-int v8, v0

    invoke-virtual {p1, v8}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;->addAndGet(I)I

    move-result v0

    .line 279
    if-nez v0, :cond_7

    .line 280
    nop

    .line 283
    .end local v7    # "sourceDone":Z
    .end local v9    # "empty":Z
    return-void

    .line 282
    :cond_7
    goto :goto_0
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/reactivex/internal/operators/observable/ObservableCache;, "Lio/reactivex/internal/operators/observable/ObservableCache<TT;>;"
    .local p1, "t":Lio/reactivex/Observer;, "Lio/reactivex/Observer<-TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;-><init>(Lio/reactivex/Observer;Lio/reactivex/internal/operators/observable/ObservableCache;)V

    .line 107
    .local v0, "consumer":Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;, "Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable<TT;>;"
    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 108
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;->add(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    .line 110
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableCache;->source:Lio/reactivex/ObservableSource;

    invoke-interface {v1, p0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableCache;->replay(Lio/reactivex/internal/operators/observable/ObservableCache$CacheDisposable;)V

    .line 115
    :goto_0
    return-void
.end method
