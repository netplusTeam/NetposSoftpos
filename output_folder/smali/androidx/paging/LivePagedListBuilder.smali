.class public final Landroidx/paging/LivePagedListBuilder;
.super Ljava/lang/Object;
.source "LivePagedListBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "PagedList is deprecated and has been replaced by PagingData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B#\u0008\u0017\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008B#\u0008\u0017\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bB)\u0008\u0017\u0012\u0018\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e0\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000fB)\u0008\u0017\u0012\u0018\u0010\u000c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e0\r\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u0010J\u0012\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u001f0\u001eJ\"\u0010 \u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0012J\u001a\u0010!\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010#\u001a\u00020$J!\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0008\u0010&\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010\'R\u001c\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0015\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u0017X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0018\u0010\u0014R\u001c\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001cR\"\u0010\u000c\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u000e\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Landroidx/paging/LivePagedListBuilder;",
        "Key",
        "",
        "Value",
        "dataSourceFactory",
        "Landroidx/paging/DataSource$Factory;",
        "config",
        "Landroidx/paging/PagedList$Config;",
        "(Landroidx/paging/DataSource$Factory;Landroidx/paging/PagedList$Config;)V",
        "pageSize",
        "",
        "(Landroidx/paging/DataSource$Factory;I)V",
        "pagingSourceFactory",
        "Lkotlin/Function0;",
        "Landroidx/paging/PagingSource;",
        "(Lkotlin/jvm/functions/Function0;Landroidx/paging/PagedList$Config;)V",
        "(Lkotlin/jvm/functions/Function0;I)V",
        "boundaryCallback",
        "Landroidx/paging/PagedList$BoundaryCallback;",
        "getBoundaryCallback$annotations",
        "()V",
        "getConfig$annotations",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope$annotations",
        "fetchDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "initialLoadKey",
        "Ljava/lang/Object;",
        "build",
        "Landroidx/lifecycle/LiveData;",
        "Landroidx/paging/PagedList;",
        "setBoundaryCallback",
        "setCoroutineScope",
        "setFetchExecutor",
        "fetchExecutor",
        "Ljava/util/concurrent/Executor;",
        "setInitialLoadKey",
        "key",
        "(Ljava/lang/Object;)Landroidx/paging/LivePagedListBuilder;",
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
.field private boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList$BoundaryCallback<",
            "TValue;>;"
        }
    .end annotation
.end field

.field private final config:Landroidx/paging/PagedList$Config;

.field private coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private final dataSourceFactory:Landroidx/paging/DataSource$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/DataSource$Factory<",
            "TKey;TValue;>;"
        }
    .end annotation
.end field

.field private fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private initialLoadKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TKey;"
        }
    .end annotation
.end field

.field private final pagingSourceFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/paging/DataSource$Factory;I)V
    .locals 1
    .param p1, "dataSourceFactory"    # Landroidx/paging/DataSource$Factory;
    .param p2, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/DataSource$Factory<",
            "TKey;TValue;>;I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "PagedList is deprecated and has been replaced by PagingData"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Pager(\n                PagingConfig(pageSize),\n                initialLoadKey,\n                dataSourceFactory.asPagingSourceFactory(Dispatchers.IO)\n            ).liveData"
            imports = {
                "androidx.paging.Pager",
                "androidx.paging.PagingConfig",
                "androidx.paging.liveData",
                "kotlinx.coroutines.Dispatchers"
            }
        .end subannotation
    .end annotation

    const-string v0, "dataSourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    nop

    .line 119
    nop

    .line 120
    new-instance v0, Landroidx/paging/PagedList$Config$Builder;

    invoke-direct {v0}, Landroidx/paging/PagedList$Config$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/paging/PagedList$Config$Builder;->setPageSize(I)Landroidx/paging/PagedList$Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/PagedList$Config$Builder;->build()Landroidx/paging/PagedList$Config;

    move-result-object v0

    .line 118
    invoke-direct {p0, p1, v0}, Landroidx/paging/LivePagedListBuilder;-><init>(Landroidx/paging/DataSource$Factory;Landroidx/paging/PagedList$Config;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroidx/paging/DataSource$Factory;Landroidx/paging/PagedList$Config;)V
    .locals 2
    .param p1, "dataSourceFactory"    # Landroidx/paging/DataSource$Factory;
    .param p2, "config"    # Landroidx/paging/PagedList$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/DataSource$Factory<",
            "TKey;TValue;>;",
            "Landroidx/paging/PagedList$Config;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "PagedList is deprecated and has been replaced by PagingData"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Pager(\n                PagingConfig(\n                    config.pageSize,\n                    config.prefetchDistance,\n                    config.enablePlaceholders,\n                    config.initialLoadSizeHint,\n                    config.maxSize\n                ),\n                initialLoadKey,\n                dataSourceFactory.asPagingSourceFactory(Dispatchers.IO)\n            ).liveData"
            imports = {
                "androidx.paging.Pager",
                "androidx.paging.PagingConfig",
                "androidx.paging.liveData",
                "kotlinx.coroutines.Dispatchers"
            }
        .end subannotation
    .end annotation

    const-string v0, "dataSourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iput-object v0, p0, Landroidx/paging/LivePagedListBuilder;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 53
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getIOThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/LivePagedListBuilder;->fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/paging/LivePagedListBuilder;->pagingSourceFactory:Lkotlin/jvm/functions/Function0;

    .line 87
    iput-object p1, p0, Landroidx/paging/LivePagedListBuilder;->dataSourceFactory:Landroidx/paging/DataSource$Factory;

    .line 88
    iput-object p2, p0, Landroidx/paging/LivePagedListBuilder;->config:Landroidx/paging/PagedList$Config;

    .line 89
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;I)V
    .locals 1
    .param p1, "pagingSourceFactory"    # Lkotlin/jvm/functions/Function0;
    .param p2, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;I)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "PagedList is deprecated and has been replaced by PagingData"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Pager(\n                PagingConfig(pageSize),\n                initialLoadKey,\n                this\n            ).liveData"
            imports = {
                "androidx.paging.Pager",
                "androidx.paging.PagingConfig",
                "androidx.paging.liveData"
            }
        .end subannotation
    .end annotation

    const-string/jumbo v0, "pagingSourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    nop

    .line 201
    nop

    .line 202
    new-instance v0, Landroidx/paging/PagedList$Config$Builder;

    invoke-direct {v0}, Landroidx/paging/PagedList$Config$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroidx/paging/PagedList$Config$Builder;->setPageSize(I)Landroidx/paging/PagedList$Config$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/PagedList$Config$Builder;->build()Landroidx/paging/PagedList$Config;

    move-result-object v0

    .line 200
    invoke-direct {p0, p1, v0}, Landroidx/paging/LivePagedListBuilder;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/paging/PagedList$Config;)V

    .line 203
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/paging/PagedList$Config;)V
    .locals 2
    .param p1, "pagingSourceFactory"    # Lkotlin/jvm/functions/Function0;
    .param p2, "config"    # Landroidx/paging/PagedList$Config;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/paging/PagingSource<",
            "TKey;TValue;>;>;",
            "Landroidx/paging/PagedList$Config;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "PagedList is deprecated and has been replaced by PagingData"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Pager(\n                PagingConfig(\n                    config.pageSize,\n                    config.prefetchDistance,\n                    config.enablePlaceholders,\n                    config.initialLoadSizeHint,\n                    config.maxSize\n                ),\n                initialLoadKey,\n                this\n            ).liveData"
            imports = {
                "androidx.paging.Pager",
                "androidx.paging.PagingConfig",
                "androidx.paging.liveData"
            }
        .end subannotation
    .end annotation

    const-string/jumbo v0, "pagingSourceFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iput-object v0, p0, Landroidx/paging/LivePagedListBuilder;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 53
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getIOThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/LivePagedListBuilder;->fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 161
    iput-object p1, p0, Landroidx/paging/LivePagedListBuilder;->pagingSourceFactory:Lkotlin/jvm/functions/Function0;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/paging/LivePagedListBuilder;->dataSourceFactory:Landroidx/paging/DataSource$Factory;

    .line 163
    iput-object p2, p0, Landroidx/paging/LivePagedListBuilder;->config:Landroidx/paging/PagedList$Config;

    .line 164
    return-void
.end method

.method private static synthetic getBoundaryCallback$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getConfig$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getCoroutineScope$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final build()Landroidx/lifecycle/LiveData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "TValue;>;>;"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Landroidx/paging/LivePagedListBuilder;->pagingSourceFactory:Lkotlin/jvm/functions/Function0;

    if-nez v0, :cond_1

    .line 287
    iget-object v0, p0, Landroidx/paging/LivePagedListBuilder;->dataSourceFactory:Landroidx/paging/DataSource$Factory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/paging/LivePagedListBuilder;->fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Landroidx/paging/DataSource$Factory;->asPagingSourceFactory(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    .line 286
    :cond_1
    :goto_0
    nop

    .line 289
    .local v0, "pagingSourceFactory":Lkotlin/jvm/functions/Function0;
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 293
    new-instance v9, Landroidx/paging/LivePagedList;

    .line 294
    iget-object v2, p0, Landroidx/paging/LivePagedListBuilder;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 295
    iget-object v3, p0, Landroidx/paging/LivePagedListBuilder;->initialLoadKey:Ljava/lang/Object;

    .line 296
    iget-object v4, p0, Landroidx/paging/LivePagedListBuilder;->config:Landroidx/paging/PagedList$Config;

    .line 297
    iget-object v5, p0, Landroidx/paging/LivePagedListBuilder;->boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;

    .line 298
    nop

    .line 299
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const-string v6, "getMainThreadExecutor()"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    .line 300
    iget-object v8, p0, Landroidx/paging/LivePagedListBuilder;->fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 293
    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v8}, Landroidx/paging/LivePagedList;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;Landroidx/paging/PagedList$Config;Landroidx/paging/PagedList$BoundaryCallback;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V

    check-cast v9, Landroidx/lifecycle/LiveData;

    return-object v9

    .line 289
    :cond_3
    const/4 v1, 0x0

    .line 290
    .local v1, "$i$a$-check-LivePagedListBuilder$build$1":I
    nop

    .line 289
    .end local v1    # "$i$a$-check-LivePagedListBuilder$build$1":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "LivePagedList cannot be built without a PagingSourceFactory or DataSource.Factory"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final setBoundaryCallback(Landroidx/paging/PagedList$BoundaryCallback;)Landroidx/paging/LivePagedListBuilder;
    .locals 2
    .param p1, "boundaryCallback"    # Landroidx/paging/PagedList$BoundaryCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList$BoundaryCallback<",
            "TValue;>;)",
            "Landroidx/paging/LivePagedListBuilder<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 256
    move-object v0, p0

    check-cast v0, Landroidx/paging/LivePagedListBuilder;

    .local v0, "$this$setBoundaryCallback_u24lambda_u2d2":Landroidx/paging/LivePagedListBuilder;
    const/4 v1, 0x0

    .line 257
    .local v1, "$i$a$-apply-LivePagedListBuilder$setBoundaryCallback$1":I
    iput-object p1, v0, Landroidx/paging/LivePagedListBuilder;->boundaryCallback:Landroidx/paging/PagedList$BoundaryCallback;

    .line 258
    nop

    .line 256
    .end local v0    # "$this$setBoundaryCallback_u24lambda_u2d2":Landroidx/paging/LivePagedListBuilder;
    .end local v1    # "$i$a$-apply-LivePagedListBuilder$setBoundaryCallback$1":I
    move-object v0, p0

    check-cast v0, Landroidx/paging/LivePagedListBuilder;

    .line 258
    return-object v0
.end method

.method public final setCoroutineScope(Lkotlinx/coroutines/CoroutineScope;)Landroidx/paging/LivePagedListBuilder;
    .locals 2
    .param p1, "coroutineScope"    # Lkotlinx/coroutines/CoroutineScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            ")",
            "Landroidx/paging/LivePagedListBuilder<",
            "TKey;TValue;>;"
        }
    .end annotation

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    move-object v0, p0

    check-cast v0, Landroidx/paging/LivePagedListBuilder;

    .local v0, "$this$setCoroutineScope_u24lambda_u2d0":Landroidx/paging/LivePagedListBuilder;
    const/4 v1, 0x0

    .line 217
    .local v1, "$i$a$-apply-LivePagedListBuilder$setCoroutineScope$1":I
    iput-object p1, v0, Landroidx/paging/LivePagedListBuilder;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 218
    nop

    .line 216
    .end local v0    # "$this$setCoroutineScope_u24lambda_u2d0":Landroidx/paging/LivePagedListBuilder;
    .end local v1    # "$i$a$-apply-LivePagedListBuilder$setCoroutineScope$1":I
    move-object v0, p0

    check-cast v0, Landroidx/paging/LivePagedListBuilder;

    .line 218
    return-object v0
.end method

.method public final setFetchExecutor(Ljava/util/concurrent/Executor;)Landroidx/paging/LivePagedListBuilder;
    .locals 3
    .param p1, "fetchExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Landroidx/paging/LivePagedListBuilder<",
            "TKey;TValue;>;"
        }
    .end annotation

    const-string v0, "fetchExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    move-object v0, p0

    check-cast v0, Landroidx/paging/LivePagedListBuilder;

    .local v0, "$this$setFetchExecutor_u24lambda_u2d3":Landroidx/paging/LivePagedListBuilder;
    const/4 v1, 0x0

    .line 273
    .local v1, "$i$a$-apply-LivePagedListBuilder$setFetchExecutor$1":I
    invoke-static {p1}, Lkotlinx/coroutines/ExecutorsKt;->from(Ljava/util/concurrent/Executor;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    iput-object v2, v0, Landroidx/paging/LivePagedListBuilder;->fetchDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 274
    nop

    .line 272
    .end local v0    # "$this$setFetchExecutor_u24lambda_u2d3":Landroidx/paging/LivePagedListBuilder;
    .end local v1    # "$i$a$-apply-LivePagedListBuilder$setFetchExecutor$1":I
    move-object v0, p0

    check-cast v0, Landroidx/paging/LivePagedListBuilder;

    .line 274
    return-object v0
.end method

.method public final setInitialLoadKey(Ljava/lang/Object;)Landroidx/paging/LivePagedListBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)",
            "Landroidx/paging/LivePagedListBuilder<",
            "TKey;TValue;>;"
        }
    .end annotation

    .line 229
    move-object v0, p0

    check-cast v0, Landroidx/paging/LivePagedListBuilder;

    .local v0, "$this$setInitialLoadKey_u24lambda_u2d1":Landroidx/paging/LivePagedListBuilder;
    const/4 v1, 0x0

    .line 230
    .local v1, "$i$a$-apply-LivePagedListBuilder$setInitialLoadKey$1":I
    iput-object p1, v0, Landroidx/paging/LivePagedListBuilder;->initialLoadKey:Ljava/lang/Object;

    .line 231
    nop

    .line 229
    .end local v0    # "$this$setInitialLoadKey_u24lambda_u2d1":Landroidx/paging/LivePagedListBuilder;
    .end local v1    # "$i$a$-apply-LivePagedListBuilder$setInitialLoadKey$1":I
    move-object v0, p0

    check-cast v0, Landroidx/paging/LivePagedListBuilder;

    .line 231
    return-object v0
.end method
