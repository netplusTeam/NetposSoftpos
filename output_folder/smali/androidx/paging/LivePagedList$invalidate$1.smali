.class final Landroidx/paging/LivePagedList$invalidate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LivePagedList.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/LivePagedList;->invalidate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0012\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000\"\u0008\u0008\u0001\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"
    }
    d2 = {
        "",
        "Key",
        "Value",
        "Lkotlinx/coroutines/CoroutineScope;",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.paging.LivePagedList$invalidate$1"
    f = "LivePagedList.kt"
    i = {
        0x0,
        0x1,
        0x1
    }
    l = {
        0x52,
        0x5a
    }
    m = "invokeSuspend"
    n = {
        "pagingSource",
        "pagingSource",
        "lastKey"
    }
    s = {
        "L$0",
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/paging/LivePagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/LivePagedList<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/LivePagedList;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LivePagedList<",
            "TKey;TValue;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/paging/LivePagedList$invalidate$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/paging/LivePagedList$invalidate$1;

    iget-object v1, p0, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-direct {v0, v1, p2}, Landroidx/paging/LivePagedList$invalidate$1;-><init>(Landroidx/paging/LivePagedList;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/paging/LivePagedList$invalidate$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/paging/LivePagedList$invalidate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/paging/LivePagedList$invalidate$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/paging/LivePagedList$invalidate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget v1, p0, Landroidx/paging/LivePagedList$invalidate$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 120
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :pswitch_0
    move-object v0, p0

    .local v0, "this":Landroidx/paging/LivePagedList$invalidate$1;
    .local p1, "$result":Ljava/lang/Object;
    iget-object v1, v0, Landroidx/paging/LivePagedList$invalidate$1;->L$1:Ljava/lang/Object;

    .local v1, "lastKey":Ljava/lang/Object;
    iget-object v2, v0, Landroidx/paging/LivePagedList$invalidate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PagingSource;

    .local v2, "pagingSource":Landroidx/paging/PagingSource;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v1

    move-object v3, v2

    move-object v1, v0

    move-object v0, p1

    goto/16 :goto_2

    .end local v0    # "this":Landroidx/paging/LivePagedList$invalidate$1;
    .end local v1    # "lastKey":Ljava/lang/Object;
    .end local v2    # "pagingSource":Landroidx/paging/PagingSource;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_1
    move-object v1, p0

    .local v1, "this":Landroidx/paging/LivePagedList$invalidate$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->L$0:Ljava/lang/Object;

    check-cast v2, Landroidx/paging/PagingSource;

    .restart local v2    # "pagingSource":Landroidx/paging/PagingSource;
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local v1    # "this":Landroidx/paging/LivePagedList$invalidate$1;
    .end local v2    # "pagingSource":Landroidx/paging/PagingSource;
    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, p0

    .line 75
    .restart local v1    # "this":Landroidx/paging/LivePagedList$invalidate$1;
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v2}, Landroidx/paging/LivePagedList;->access$getCurrentData$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/paging/PagedList;->getPagingSource()Landroidx/paging/PagingSource;

    move-result-object v2

    iget-object v3, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v3}, Landroidx/paging/LivePagedList;->access$getCallback$p(Landroidx/paging/LivePagedList;)Lkotlin/jvm/functions/Function0;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/paging/PagingSource;->unregisterInvalidatedCallback(Lkotlin/jvm/functions/Function0;)V

    .line 76
    iget-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v2}, Landroidx/paging/LivePagedList;->access$getPagingSourceFactory$p(Landroidx/paging/LivePagedList;)Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/PagingSource;

    .line 77
    .restart local v2    # "pagingSource":Landroidx/paging/PagingSource;
    iget-object v3, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v3}, Landroidx/paging/LivePagedList;->access$getCallback$p(Landroidx/paging/LivePagedList;)Lkotlin/jvm/functions/Function0;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/paging/PagingSource;->registerInvalidatedCallback(Lkotlin/jvm/functions/Function0;)V

    .line 78
    instance-of v3, v2, Landroidx/paging/LegacyPagingSource;

    if-eqz v3, :cond_0

    .line 79
    move-object v3, v2

    check-cast v3, Landroidx/paging/LegacyPagingSource;

    iget-object v4, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v4}, Landroidx/paging/LivePagedList;->access$getConfig$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList$Config;

    move-result-object v4

    iget v4, v4, Landroidx/paging/PagedList$Config;->pageSize:I

    invoke-virtual {v3, v4}, Landroidx/paging/LegacyPagingSource;->setPageSize(I)V

    .line 82
    :cond_0
    iget-object v3, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v3}, Landroidx/paging/LivePagedList;->access$getNotifyDispatcher$p(Landroidx/paging/LivePagedList;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Landroidx/paging/LivePagedList$invalidate$1$1;

    iget-object v5, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/paging/LivePagedList$invalidate$1$1;-><init>(Landroidx/paging/LivePagedList;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->L$0:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v1, Landroidx/paging/LivePagedList$invalidate$1;->label:I

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 74
    .end local v2    # "pagingSource":Landroidx/paging/PagingSource;
    :goto_0
    return-object v0

    .line 87
    .restart local v2    # "pagingSource":Landroidx/paging/PagingSource;
    :cond_1
    :goto_1
    iget-object v3, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v3}, Landroidx/paging/LivePagedList;->access$getCurrentData$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/paging/PagedList;->getLastKey()Ljava/lang/Object;

    move-result-object v3

    .line 86
    nop

    .line 88
    .local v3, "lastKey":Ljava/lang/Object;
    iget-object v4, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v4}, Landroidx/paging/LivePagedList;->access$getConfig$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList$Config;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/paging/PagingSourceKt;->toRefreshLoadParams(Landroidx/paging/PagedList$Config;Ljava/lang/Object;)Landroidx/paging/PagingSource$LoadParams;

    move-result-object v4

    .line 90
    .local v4, "params":Landroidx/paging/PagingSource$LoadParams;
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->L$0:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/paging/LivePagedList$invalidate$1;->L$1:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v1, Landroidx/paging/LivePagedList$invalidate$1;->label:I

    invoke-virtual {v2, v4, v5}, Landroidx/paging/PagingSource;->load(Landroidx/paging/PagingSource$LoadParams;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "params":Landroidx/paging/PagingSource$LoadParams;
    if-ne v4, v0, :cond_2

    .end local v2    # "pagingSource":Landroidx/paging/PagingSource;
    .end local v3    # "lastKey":Ljava/lang/Object;
    goto :goto_0

    .restart local v2    # "pagingSource":Landroidx/paging/PagingSource;
    .restart local v3    # "lastKey":Ljava/lang/Object;
    :cond_2
    move-object v0, p1

    move-object v10, v3

    move-object p1, v4

    move-object v3, v2

    .line 74
    .end local v2    # "pagingSource":Landroidx/paging/PagingSource;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v3, "pagingSource":Landroidx/paging/PagingSource;
    .local v10, "lastKey":Ljava/lang/Object;
    :goto_2
    check-cast p1, Landroidx/paging/PagingSource$LoadResult;

    .line 91
    .local p1, "initialResult":Landroidx/paging/PagingSource$LoadResult;
    instance-of v2, p1, Landroidx/paging/PagingSource$LoadResult$Invalid;

    if-eqz v2, :cond_3

    .line 92
    iget-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v2}, Landroidx/paging/LivePagedList;->access$getCurrentData$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList;

    move-result-object v2

    .line 93
    sget-object v4, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 94
    new-instance v5, Landroidx/paging/LoadState$NotLoading;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    check-cast v5, Landroidx/paging/LoadState;

    .line 92
    invoke-virtual {v2, v4, v5}, Landroidx/paging/PagedList;->setInitialLoadState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 96
    invoke-virtual {v3}, Landroidx/paging/PagingSource;->invalidate()V

    goto :goto_3

    .line 98
    :cond_3
    instance-of v2, p1, Landroidx/paging/PagingSource$LoadResult$Error;

    if-eqz v2, :cond_4

    .line 99
    iget-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v2}, Landroidx/paging/LivePagedList;->access$getCurrentData$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList;

    move-result-object v2

    .line 100
    sget-object v4, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    .line 101
    new-instance v5, Landroidx/paging/LoadState$Error;

    move-object v6, p1

    check-cast v6, Landroidx/paging/PagingSource$LoadResult$Error;

    invoke-virtual {v6}, Landroidx/paging/PagingSource$LoadResult$Error;->getThrowable()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/paging/LoadState$Error;-><init>(Ljava/lang/Throwable;)V

    check-cast v5, Landroidx/paging/LoadState;

    .line 99
    invoke-virtual {v2, v4, v5}, Landroidx/paging/PagedList;->setInitialLoadState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    goto :goto_3

    .line 104
    :cond_4
    instance-of v2, p1, Landroidx/paging/PagingSource$LoadResult$Page;

    if-eqz v2, :cond_5

    .line 105
    sget-object v2, Landroidx/paging/PagedList;->Companion:Landroidx/paging/PagedList$Companion;

    .line 106
    nop

    .line 107
    .end local v3    # "pagingSource":Landroidx/paging/PagingSource;
    move-object v4, p1

    check-cast v4, Landroidx/paging/PagingSource$LoadResult$Page;

    .line 108
    .end local p1    # "initialResult":Landroidx/paging/PagingSource$LoadResult;
    iget-object p1, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {p1}, Landroidx/paging/LivePagedList;->access$getCoroutineScope$p(Landroidx/paging/LivePagedList;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    .line 109
    iget-object p1, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {p1}, Landroidx/paging/LivePagedList;->access$getNotifyDispatcher$p(Landroidx/paging/LivePagedList;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v6

    .line 110
    iget-object p1, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {p1}, Landroidx/paging/LivePagedList;->access$getFetchDispatcher$p(Landroidx/paging/LivePagedList;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    .line 111
    iget-object p1, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {p1}, Landroidx/paging/LivePagedList;->access$getBoundaryCallback$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList$BoundaryCallback;

    move-result-object v8

    .line 112
    iget-object p1, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {p1}, Landroidx/paging/LivePagedList;->access$getConfig$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList$Config;

    move-result-object v9

    .line 113
    nop

    .line 105
    .end local v10    # "lastKey":Ljava/lang/Object;
    invoke-virtual/range {v2 .. v10}, Landroidx/paging/PagedList$Companion;->create(Landroidx/paging/PagingSource;Landroidx/paging/PagingSource$LoadResult$Page;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Landroidx/paging/PagedList$BoundaryCallback;Landroidx/paging/PagedList$Config;Ljava/lang/Object;)Landroidx/paging/PagedList;

    move-result-object p1

    .line 115
    .local p1, "pagedList":Landroidx/paging/PagedList;
    iget-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v2}, Landroidx/paging/LivePagedList;->access$getCurrentData$p(Landroidx/paging/LivePagedList;)Landroidx/paging/PagedList;

    move-result-object v3

    invoke-static {v2, v3, p1}, Landroidx/paging/LivePagedList;->access$onItemUpdate(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V

    .line 116
    iget-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v2, p1}, Landroidx/paging/LivePagedList;->access$setCurrentData$p(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;)V

    .line 117
    iget-object v2, v1, Landroidx/paging/LivePagedList$invalidate$1;->this$0:Landroidx/paging/LivePagedList;

    invoke-static {v2, p1}, Landroidx/paging/LivePagedList;->access$postValue(Landroidx/paging/LivePagedList;Landroidx/paging/PagedList;)V

    .line 120
    .end local p1    # "pagedList":Landroidx/paging/PagedList;
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
