.class public final Lio/reactivex/internal/operators/flowable/FlowableCache;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableCache.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCache$Node;,
        Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

.field static final TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;


# instance fields
.field final capacityHint:I

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final head:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile size:J

.field final subscribers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<",
            "TT;>;"
        }
    .end annotation
.end field

.field tailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const/4 v0, 0x0

    new-array v1, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    sput-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 60
    new-array v0, v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    sput-object v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 3
    .param p2, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    .local p1, "source":Lio/reactivex/Flowable;, "Lio/reactivex/Flowable<TT;>;"
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    .line 100
    iput p2, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->capacityHint:I

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    invoke-direct {v0, p2}, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;-><init>(I)V

    .line 103
    .local v0, "n":Lio/reactivex/internal/operators/flowable/FlowableCache$Node;, "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<TT;>;"
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->head:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 104
    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 105
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lio/reactivex/internal/operators/flowable/FlowableCache;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 106
    return-void
.end method


# virtual methods
.method add(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    .local p1, "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 153
    .local v0, "current":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    if-ne v0, v1, :cond_0

    .line 154
    return-void

    .line 156
    :cond_0
    array-length v1, v0

    .line 159
    .local v1, "n":I
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 160
    .local v2, "next":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    aput-object p1, v2, v1

    .line 163
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v3, v0, v2}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 164
    return-void

    .line 166
    .end local v0    # "current":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "next":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    :cond_1
    goto :goto_0
.end method

.method cachedEventCount()J
    .locals 2

    .line 142
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    iget-wide v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->size:J

    return-wide v0
.end method

.method hasSubscribers()Z
    .locals 1

    .line 134
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

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

    .line 126
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 338
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->done:Z

    .line 339
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 340
    .local v3, "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableCache;->replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    .line 339
    .end local v3    # "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 324
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->done:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    .line 326
    return-void

    .line 328
    :cond_0
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->error:Ljava/lang/Throwable;

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->done:Z

    .line 330
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/flowable/FlowableCache;->TERMINATED:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 331
    .local v3, "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableCache;->replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    .line 330
    .end local v3    # "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 303
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tailOffset:I

    .line 305
    .local v0, "tailOffset":I
    iget v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->capacityHint:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 306
    new-instance v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    invoke-direct {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;-><init>(I)V

    .line 307
    .local v1, "n":Lio/reactivex/internal/operators/flowable/FlowableCache$Node;, "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<TT;>;"
    iget-object v3, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->values:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 308
    const/4 v3, 0x1

    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tailOffset:I

    .line 309
    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    iput-object v1, v3, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->next:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 310
    iput-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 311
    .end local v1    # "n":Lio/reactivex/internal/operators/flowable/FlowableCache$Node;, "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<TT;>;"
    goto :goto_0

    .line 312
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tail:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    iget-object v1, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->values:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 313
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->tailOffset:I

    .line 315
    :goto_0
    iget-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->size:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->size:J

    .line 316
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 317
    .local v4, "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    invoke-virtual {p0, v4}, Lio/reactivex/internal/operators/flowable/FlowableCache;->replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    .line 316
    .end local v4    # "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 319
    :cond_1
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2
    .param p1, "s"    # Lorg/reactivestreams/Subscription;

    .line 298
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    .line 299
    return-void
.end method

.method remove(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 176
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    .local p1, "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 177
    .local v0, "current":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    array-length v1, v0

    .line 178
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 179
    return-void

    .line 182
    :cond_0
    const/4 v2, -0x1

    .line 183
    .local v2, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 184
    aget-object v4, v0, v3

    if-ne v4, p1, :cond_1

    .line 185
    move v2, v3

    .line 186
    goto :goto_2

    .line 183
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-gez v2, :cond_3

    .line 191
    return-void

    .line 195
    :cond_3
    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 196
    sget-object v3, Lio/reactivex/internal/operators/flowable/FlowableCache;->EMPTY:[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .local v3, "next":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    goto :goto_3

    .line 198
    .end local v3    # "next":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    :cond_4
    add-int/lit8 v4, v1, -0x1

    new-array v4, v4, [Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    .line 199
    .local v4, "next":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    const/4 v5, 0x0

    invoke-static {v0, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v1, v2

    sub-int/2addr v6, v3

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 203
    .end local v4    # "next":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    .restart local v3    # "next":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    :goto_3
    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v4, v0, v3}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    return-void

    .line 206
    .end local v0    # "current":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    .end local v1    # "n":I
    .end local v2    # "j":I
    .end local v3    # "next":[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "[Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    :cond_5
    goto :goto_0
.end method

.method replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<",
            "TT;>;)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    .local p1, "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->getAndIncrement()I

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    return-void

    .line 221
    :cond_0
    const/4 v2, 0x1

    .line 223
    .local v2, "missed":I
    iget-wide v3, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->index:J

    .line 224
    .local v3, "index":J
    iget v5, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->offset:I

    .line 225
    .local v5, "offset":I
    iget-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 226
    .local v6, "node":Lio/reactivex/internal/operators/flowable/FlowableCache$Node;, "Lio/reactivex/internal/operators/flowable/FlowableCache$Node<TT;>;"
    iget-object v7, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 227
    .local v7, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    iget-object v8, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->downstream:Lorg/reactivestreams/Subscriber;

    .line 228
    .local v8, "downstream":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    iget v9, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->capacityHint:I

    .line 232
    .local v9, "capacity":I
    :goto_0
    iget-boolean v10, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->done:Z

    .line 234
    .local v10, "sourceDone":Z
    iget-wide v11, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->size:J

    cmp-long v11, v11, v3

    const/4 v12, 0x1

    if-nez v11, :cond_1

    move v11, v12

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    .line 237
    .local v11, "empty":Z
    :goto_1
    const/4 v13, 0x0

    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    .line 239
    iput-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 241
    iget-object v12, v0, Lio/reactivex/internal/operators/flowable/FlowableCache;->error:Ljava/lang/Throwable;

    .line 242
    .local v12, "ex":Ljava/lang/Throwable;
    if-eqz v12, :cond_2

    .line 243
    invoke-interface {v8, v12}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 245
    :cond_2
    invoke-interface {v8}, Lorg/reactivestreams/Subscriber;->onComplete()V

    .line 247
    :goto_2
    return-void

    .line 251
    .end local v12    # "ex":Ljava/lang/Throwable;
    :cond_3
    if-nez v11, :cond_6

    .line 253
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    .line 255
    .local v14, "consumerRequested":J
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v14, v16

    if-nez v16, :cond_4

    .line 257
    iput-object v13, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 258
    return-void

    .line 261
    :cond_4
    cmp-long v13, v14, v3

    if-eqz v13, :cond_6

    .line 264
    if-ne v5, v9, :cond_5

    .line 266
    iget-object v6, v6, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->next:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 268
    const/4 v5, 0x0

    .line 272
    :cond_5
    iget-object v13, v6, Lio/reactivex/internal/operators/flowable/FlowableCache$Node;->values:[Ljava/lang/Object;

    aget-object v13, v13, v5

    invoke-interface {v8, v13}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 275
    add-int/2addr v5, v12

    .line 277
    const-wide/16 v12, 0x1

    add-long/2addr v3, v12

    .line 280
    goto :goto_0

    .line 285
    .end local v14    # "consumerRequested":J
    :cond_6
    iput-wide v3, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->index:J

    .line 286
    iput v5, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->offset:I

    .line 287
    iput-object v6, v1, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->node:Lio/reactivex/internal/operators/flowable/FlowableCache$Node;

    .line 289
    neg-int v12, v2

    invoke-virtual {v1, v12}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;->addAndGet(I)I

    move-result v2

    .line 290
    if-nez v2, :cond_7

    .line 291
    nop

    .line 294
    .end local v10    # "sourceDone":Z
    .end local v11    # "empty":Z
    return-void

    .line 293
    :cond_7
    goto :goto_0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lio/reactivex/internal/operators/flowable/FlowableCache;, "Lio/reactivex/internal/operators/flowable/FlowableCache<TT;>;"
    .local p1, "t":Lorg/reactivestreams/Subscriber;, "Lorg/reactivestreams/Subscriber<-TT;>;"
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;

    invoke-direct {v0, p1, p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache;)V

    .line 111
    .local v0, "consumer":Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;, "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription<TT;>;"
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 112
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache;->add(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    .line 114
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->source:Lio/reactivex/Flowable;

    invoke-virtual {v1, p0}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/FlowableSubscriber;)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache;->replay(Lio/reactivex/internal/operators/flowable/FlowableCache$CacheSubscription;)V

    .line 119
    :goto_0
    return-void
.end method
