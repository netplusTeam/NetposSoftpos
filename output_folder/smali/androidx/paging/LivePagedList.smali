.class public final Landroidx/paging/LivePagedList;
.super Landroidx/lifecycle/LiveData;
.source "LivePagedList.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "Landroidx/paging/PagedList<",
        "TValue;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00030\u00050\u0004BY\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000c\u0012\u0018\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f0\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010\u001b\u001a\u00020\u00152\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0008\u0010\u001e\u001a\u00020\u0015H\u0014J$\u0010\u001f\u001a\u00020\u00152\u000c\u0010 \u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00052\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005H\u0002R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/paging/LivePagedList;",
        "Key",
        "",
        "Value",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/paging/PagedList;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "initialKey",
        "config",
        "Landroidx/paging/PagedList$Config;",
        "boundaryCallback",
        "Landroidx/paging/PagedList$BoundaryCallback;",
        "pagingSourceFactory",
        "Lkotlin/Function0;",
        "Landroidx/paging/PagingSource;",
        "notifyDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "fetchDispatcher",
        "(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;Landroidx/paging/PagedList$Config;Landroidx/paging/PagedList$BoundaryCallback;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "callback",
        "",
        "currentData",
        "currentJob",
        "Lkotlinx/coroutines/Job;",
        "refreshRetryCallback",
        "Ljava/lang/Runnable;",
        "invalidate",
        "force",
        "",
        "onActive",
        "onItemUpdate",
        "previous",
        "next",
        "paging-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList$BoundaryCallback<",
            "TValue;>;"
        }
    .end annotation
.end field

.field private final callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Landroidx/paging/PagedList$Config;

.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private currentData:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TValue;>;"
        }
    .end annotation
.end field

.field private currentJob:Lkotlinx/coroutines/Job;

.field private final fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final notifyDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final pagingSourceFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field

.field private final refreshRetryCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;Landroidx/paging/PagedList$Config;Landroidx/paging/PagedList$BoundaryCallback;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 7
    .param p1, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .param p2, "initialKey"    # Ljava/lang/Object;
    .param p3, "config"    # Landroidx/paging/PagedList$Config;
    .param p4, "boundaryCallback"    # Landroidx/paging/PagedList$BoundaryCallback;
    .param p5, "pagingSourceFactory"    # Lkotlin/jvm/functions/Function0;
    .param p6, "notifyDispatcher"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p7, "fetchDispatcher"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "TKey;",
            "Landroidx/paging/PagedList$Config;",
            "Landroidx/paging/PagedList$BoundaryCallback<",
            "TValue;>;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pagingSourceFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifyDispatcher"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchDispatcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    nop

    .line 44
    new-instance v0, Landroidx/paging/InitialPagedList;

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 44
    move-object v1, v0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p7

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroidx/paging/InitialPagedList;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/paging/PagedList$Config;Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0, v0}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    .line 36
    iput-object p1, p0, Landroidx/paging/LivePagedList;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    iput-object p3, p0, Landroidx/paging/LivePagedList;->config:Landroidx/paging/PagedList$Config;

    .line 39
    iput-object p4, p0, Landroidx/paging/LivePagedList;->boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;

    .line 40
    iput-object p5, p0, Landroidx/paging/LivePagedList;->pagingSourceFactory:Lkotlin/jvm/functions/Function0;

    .line 41
    iput-object p6, p0, Landroidx/paging/LivePagedList;->notifyDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 42
    iput-object p7, p0, Landroidx/paging/LivePagedList;->fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 55
    new-instance v0, Landroidx/paging/LivePagedList$callback$1;

    invoke-direct {v0, p0}, Landroidx/paging/LivePagedList$callback$1;-><init>(Landroidx/paging/LivePagedList;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Landroidx/paging/LivePagedList;->callback:Lkotlin/jvm/functions/Function0;

    .line 57
    new-instance v0, Landroidx/paging/LivePagedList$refreshRetryCallback$1;

    invoke-direct {v0, p0}, Landroidx/paging/LivePagedList$refreshRetryCallback$1;-><init>(Landroidx/paging/LivePagedList;)V

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroidx/paging/LivePagedList;->refreshRetryCallback:Ljava/lang/Runnable;

    .line 59
    nop

    .line 60
    invoke-virtual {p0}, Landroidx/paging/LivePagedList;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v2, "value!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/paging/PagedList;

    iput-object v1, p0, Landroidx/paging/LivePagedList;->currentData:Landroidx/paging/PagedList;

    .line 61
    invoke-virtual {v1, v0}, Landroidx/paging/PagedList;->setRetryCallback(Ljava/lang/Runnable;)V

    .line 62
    nop

    .line 35
    return-void
.end method

.method public static final synthetic access$getBoundaryCallback$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList$BoundaryCallback;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/LivePagedList;

    .line 34
    iget-object v0, p0, Landroidx/paging/LivePagedList;->boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;

    return-object v0
.end method

.method public static final synthetic access$getCallback$p(Landroidx/paging/LivePagedList;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/LivePagedList;

    .line 34
    iget-object v0, p0, Landroidx/paging/LivePagedList;->callback:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$getConfig$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList$Config;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/LivePagedList;

    .line 34
    iget-object v0, p0, Landroidx/paging/LivePagedList;->config:Landroidx/paging/PagedList$Config;

    return-object v0
.end method

.method public static final synthetic access$getCoroutineScope$p(Landroidx/paging/LivePagedList;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/LivePagedList;

    .line 34
    iget-object v0, p0, Landroidx/paging/LivePagedList;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public static final synthetic access$getCurrentData$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/LivePagedList;

    .line 34
    iget-object v0, p0, Landroidx/paging/LivePagedList;->currentData:Landroidx/paging/PagedList;

    return-object v0
.end method

.method public static final synthetic access$getFetchDispatcher$p(Landroidx/paging/LivePagedList;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/LivePagedList;

    .line 34
    iget-object v0, p0, Landroidx/paging/LivePagedList;->fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static final synthetic access$getNotifyDispatcher$p(Landroidx/paging/LivePagedList;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/LivePagedList;

    .line 34
    iget-object v0, p0, Landroidx/paging/LivePagedList;->notifyDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static final synthetic access$getPagingSourceFactory$p(Landroidx/paging/LivePagedList;)Lkotlin/jvm/functions/Function0;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/LivePagedList;

    .line 34
    iget-object v0, p0, Landroidx/paging/LivePagedList;->pagingSourceFactory:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic access$invalidate(Landroidx/paging/LivePagedList;Z)V
    .locals 0
    .param p0, "$this"    # Landroidx/paging/LivePagedList;
    .param p1, "force"    # Z

    .line 34
    invoke-direct {p0, p1}, Landroidx/paging/LivePagedList;->invalidate(Z)V

    return-void
.end method

.method public static final synthetic access$onItemUpdate(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V
    .locals 0
    .param p0, "$this"    # Landroidx/paging/LivePagedList;
    .param p1, "previous"    # Landroidx/paging/PagedList;
    .param p2, "next"    # Landroidx/paging/PagedList;

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/paging/LivePagedList;->onItemUpdate(Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V

    return-void
.end method

.method public static final synthetic access$postValue(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;)V
    .locals 0
    .param p0, "$this"    # Landroidx/paging/LivePagedList;
    .param p1, "p0"    # Landroidx/paging/PagedList;

    .line 34
    invoke-virtual {p0, p1}, Landroidx/paging/LivePagedList;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$setCurrentData$p(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;)V
    .locals 0
    .param p0, "$this"    # Landroidx/paging/LivePagedList;
    .param p1, "<set-?>"    # Landroidx/paging/PagedList;

    .line 34
    iput-object p1, p0, Landroidx/paging/LivePagedList;->currentData:Landroidx/paging/PagedList;

    return-void
.end method

.method private final invalidate(Z)V
    .locals 9
    .param p1, "force"    # Z

    .line 71
    iget-object v0, p0, Landroidx/paging/LivePagedList;->currentJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v3, p0, Landroidx/paging/LivePagedList;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iget-object v0, p0, Landroidx/paging/LivePagedList;->fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v4, v0

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    const/4 v5, 0x0

    new-instance v0, Landroidx/paging/LivePagedList$invalidate$1;

    invoke-direct {v0, p0, v1}, Landroidx/paging/LivePagedList$invalidate$1;-><init>(Landroidx/paging/LivePagedList;Lkotlin/coroutines/Continuation;)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/LivePagedList;->currentJob:Lkotlinx/coroutines/Job;

    .line 121
    return-void
.end method

.method private final onItemUpdate(Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V
    .locals 1
    .param p1, "previous"    # Landroidx/paging/PagedList;
    .param p2, "next"    # Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TValue;>;",
            "Landroidx/paging/PagedList<",
            "TValue;>;)V"
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/paging/PagedList;->setRetryCallback(Ljava/lang/Runnable;)V

    .line 125
    iget-object v0, p0, Landroidx/paging/LivePagedList;->refreshRetryCallback:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroidx/paging/PagedList;->setRetryCallback(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/paging/LivePagedList;->invalidate(Z)V

    .line 67
    return-void
.end method
