.class public Landroidx/paging/AsyncPagedListDiffer;
.super Ljava/lang/Object;
.source "AsyncPagedListDiffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/AsyncPagedListDiffer$PagedListListener;,
        Landroidx/paging/AsyncPagedListDiffer$OnCurrentListChangedWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAsyncPagedListDiffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncPagedListDiffer.kt\nandroidx/paging/AsyncPagedListDiffer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,594:1\n1849#2,2:595\n*S KotlinDebug\n*F\n+ 1 AsyncPagedListDiffer.kt\nandroidx/paging/AsyncPagedListDiffer\n*L\n505#1:595,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "AsyncPagedListDiffer is deprecated and has been replaced by AsyncPagingDataDiffer"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "AsyncPagingDataDiffer<T>"
        imports = {
            "androidx.paging.AsyncPagingDataDiffer"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0002_`B!\u0008\u0017\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007B\u001d\u0008\u0017\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b\u00a2\u0006\u0002\u0010\u000cJ\"\u0010H\u001a\u00020(2\u0018\u0010I\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020(0+H\u0016J0\u0010J\u001a\u00020(2(\u0010K\u001a$\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012\u0012\u0004\u0012\u00020(0+J\u0016\u0010J\u001a\u00020(2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0017\u0010L\u001a\u0004\u0018\u00018\u00002\u0006\u0010M\u001a\u00020\u0017H\u0016\u00a2\u0006\u0002\u0010NJK\u0010O\u001a\u00020(2\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00122\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020\u00172\u0008\u0010W\u001a\u0004\u0018\u00010XH\u0000\u00a2\u0006\u0002\u0008YJ2\u0010Z\u001a\u00020(2\u000e\u0010[\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00122\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00122\u0008\u0010W\u001a\u0004\u0018\u00010XH\u0002J\"\u0010\\\u001a\u00020(2\u0018\u0010I\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020(0+H\u0016J0\u0010]\u001a\u00020(2(\u0010K\u001a$\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012\u0012\u0004\u0012\u00020(0+J\u0016\u0010]\u001a\u00020(2\u000c\u0010I\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\u0018\u0010^\u001a\u00020(2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012H\u0016J\"\u0010^\u001a\u00020(2\u000e\u0010<\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00122\u0008\u0010W\u001a\u0004\u0018\u00010XH\u0016R \u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000bX\u0080\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00128VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00178VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R(\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u001c0\u001b8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u000e\u001a\u0004\u0008\u001e\u0010\u001fR>\u0010 \u001a2\u0012\u0013\u0012\u00110\"\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(%\u0012\u0013\u0012\u00110&\u00a2\u0006\u000c\u0008#\u0012\u0008\u0008$\u0012\u0004\u0008\u0008(\'\u0012\u0004\u0012\u00020(0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R,\u0010)\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020(0+0*X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010-R\u0014\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u00080\u0010\u000eR\u001a\u00101\u001a\u000202X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106R \u00107\u001a\u00020\u0017X\u0080\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u00088\u0010\u000e\u001a\u0004\u00089\u0010\u0019\"\u0004\u0008:\u0010;R\u001c\u0010<\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008=\u0010\u000eR\u0014\u0010>\u001a\u00020?X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008@\u0010\u000eR\u001c\u0010A\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008B\u0010\u000eR\u001a\u0010C\u001a\u00020\tX\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008D\u0010E\"\u0004\u0008F\u0010G\u00a8\u0006a"
    }
    d2 = {
        "Landroidx/paging/AsyncPagedListDiffer;",
        "T",
        "",
        "adapter",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V",
        "listUpdateCallback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "config",
        "Landroidx/recyclerview/widget/AsyncDifferConfig;",
        "(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V",
        "getConfig$paging_runtime_release$annotations",
        "()V",
        "getConfig$paging_runtime_release",
        "()Landroidx/recyclerview/widget/AsyncDifferConfig;",
        "currentList",
        "Landroidx/paging/PagedList;",
        "getCurrentList$annotations",
        "getCurrentList",
        "()Landroidx/paging/PagedList;",
        "itemCount",
        "",
        "getItemCount",
        "()I",
        "listeners",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroidx/paging/AsyncPagedListDiffer$PagedListListener;",
        "getListeners$paging_runtime_release$annotations",
        "getListeners$paging_runtime_release",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "loadStateListener",
        "Lkotlin/reflect/KFunction2;",
        "Landroidx/paging/LoadType;",
        "Lkotlin/ParameterName;",
        "name",
        "type",
        "Landroidx/paging/LoadState;",
        "state",
        "",
        "loadStateListeners",
        "",
        "Lkotlin/Function2;",
        "getLoadStateListeners$paging_runtime_release",
        "()Ljava/util/List;",
        "loadStateManager",
        "Landroidx/paging/PagedList$LoadStateManager;",
        "getLoadStateManager$annotations",
        "mainThreadExecutor",
        "Ljava/util/concurrent/Executor;",
        "getMainThreadExecutor$paging_runtime_release",
        "()Ljava/util/concurrent/Executor;",
        "setMainThreadExecutor$paging_runtime_release",
        "(Ljava/util/concurrent/Executor;)V",
        "maxScheduledGeneration",
        "getMaxScheduledGeneration$paging_runtime_release$annotations",
        "getMaxScheduledGeneration$paging_runtime_release",
        "setMaxScheduledGeneration$paging_runtime_release",
        "(I)V",
        "pagedList",
        "getPagedList$annotations",
        "pagedListCallback",
        "Landroidx/paging/PagedList$Callback;",
        "getPagedListCallback$annotations",
        "snapshot",
        "getSnapshot$annotations",
        "updateCallback",
        "getUpdateCallback$paging_runtime_release",
        "()Landroidx/recyclerview/widget/ListUpdateCallback;",
        "setUpdateCallback$paging_runtime_release",
        "(Landroidx/recyclerview/widget/ListUpdateCallback;)V",
        "addLoadStateListener",
        "listener",
        "addPagedListListener",
        "callback",
        "getItem",
        "index",
        "(I)Ljava/lang/Object;",
        "latchPagedList",
        "newList",
        "diffSnapshot",
        "diffResult",
        "Landroidx/paging/NullPaddedDiffResult;",
        "recordingCallback",
        "Landroidx/paging/RecordingCallback;",
        "lastAccessIndex",
        "commitCallback",
        "Ljava/lang/Runnable;",
        "latchPagedList$paging_runtime_release",
        "onCurrentListChanged",
        "previousList",
        "removeLoadStateListener",
        "removePagedListListener",
        "submitList",
        "OnCurrentListChangedWrapper",
        "PagedListListener",
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
.field private final config:Landroidx/recyclerview/widget/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/paging/AsyncPagedListDiffer$PagedListListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final loadStateListener:Lkotlin/reflect/KFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KFunction<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final loadStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field private final loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

.field private mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private maxScheduledGeneration:I

.field private pagedList:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pagedListCallback:Landroidx/paging/PagedList$Callback;

.field private snapshot:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .locals 2
    .param p1, "listUpdateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p2, "config"    # Landroidx/recyclerview/widget/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "PagedList is deprecated and has been replaced by PagingData"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AsyncPagingDataDiffer(\n                Dispatchers.Main,\n                Dispatchers.IO,\n                config.diffCallback,\n                listUpdateCallback\n            )"
            imports = {
                "androidx.paging.AsyncPagingDataDiffer",
                "kotlinx.coroutines.Dispatchers"
            }
        .end subannotation
    .end annotation

    const-string v0, "listUpdateCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getMainThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 154
    new-instance v0, Landroidx/paging/AsyncPagedListDiffer$loadStateManager$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagedListDiffer$loadStateManager$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;)V

    check-cast v0, Landroidx/paging/PagedList$LoadStateManager;

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    .line 161
    new-instance v1, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;

    invoke-direct {v1, v0}, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    iput-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    .line 164
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    .line 167
    new-instance v0, Landroidx/paging/AsyncPagedListDiffer$pagedListCallback$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagedListDiffer$pagedListCallback$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;)V

    check-cast v0, Landroidx/paging/PagedList$Callback;

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    .line 284
    invoke-virtual {p0, p1}, Landroidx/paging/AsyncPagedListDiffer;->setUpdateCallback$paging_runtime_release(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 285
    iput-object p2, p0, Landroidx/paging/AsyncPagedListDiffer;->config:Landroidx/recyclerview/widget/AsyncDifferConfig;

    .line 286
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 2
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "diffCallback"    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "PagedList is deprecated and has been replaced by PagingData"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AsyncPagingDataDiffer(\n                Dispatchers.Main,\n                Dispatchers.IO,\n                diffCallback,\n                listUpdateCallback\n            )"
            imports = {
                "androidx.paging.AsyncPagingDataDiffer",
                "kotlinx.coroutines.Dispatchers"
            }
        .end subannotation
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    const-string v1, "getMainThreadExecutor()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 138
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 154
    new-instance v0, Landroidx/paging/AsyncPagedListDiffer$loadStateManager$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagedListDiffer$loadStateManager$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;)V

    check-cast v0, Landroidx/paging/PagedList$LoadStateManager;

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    .line 161
    new-instance v1, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;

    invoke-direct {v1, v0}, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lkotlin/reflect/KFunction;

    iput-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    .line 164
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    .line 167
    new-instance v0, Landroidx/paging/AsyncPagedListDiffer$pagedListCallback$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagedListDiffer$pagedListCallback$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;)V

    check-cast v0, Landroidx/paging/PagedList$Callback;

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    .line 262
    new-instance v0, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    check-cast v0, Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p0, v0}, Landroidx/paging/AsyncPagedListDiffer;->setUpdateCallback$paging_runtime_release(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 263
    new-instance v0, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig$Builder;->build()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v0

    const-string v1, "Builder(diffCallback).build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->config:Landroidx/recyclerview/widget/AsyncDifferConfig;

    .line 264
    return-void
.end method

.method public static synthetic getConfig$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getCurrentList$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getListeners$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLoadStateManager$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getMaxScheduledGeneration$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getPagedList$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getPagedListCallback$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getSnapshot$annotations()V
    .locals 0

    return-void
.end method

.method private final onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "previousList"    # Landroidx/paging/PagedList;
    .param p2, "currentList"    # Landroidx/paging/PagedList;
    .param p3, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 505
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 595
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroidx/paging/AsyncPagedListDiffer$PagedListListener;

    .local v4, "it":Landroidx/paging/AsyncPagedListDiffer$PagedListListener;
    const/4 v5, 0x0

    .line 505
    .local v5, "$i$a$-forEach-AsyncPagedListDiffer$onCurrentListChanged$1":I
    invoke-interface {v4, p1, p2}, Landroidx/paging/AsyncPagedListDiffer$PagedListListener;->onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Landroidx/paging/AsyncPagedListDiffer$PagedListListener;
    .end local v5    # "$i$a$-forEach-AsyncPagedListDiffer$onCurrentListChanged$1":I
    goto :goto_0

    .line 596
    :cond_0
    nop

    .line 506
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 507
    :goto_1
    return-void
.end method


# virtual methods
.method public addLoadStateListener(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "listener"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/LoadType;",
            "-",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 573
    .local v0, "pagedList":Landroidx/paging/PagedList;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0, p1}, Landroidx/paging/PagedList;->addWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v1, p1}, Landroidx/paging/PagedList$LoadStateManager;->dispatchCurrentLoadState(Lkotlin/jvm/functions/Function2;)V

    .line 578
    :goto_0
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    return-void
.end method

.method public addPagedListListener(Landroidx/paging/AsyncPagedListDiffer$PagedListListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/paging/AsyncPagedListDiffer$PagedListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AsyncPagedListDiffer$PagedListListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method public final addPagedListListener(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "callback"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/PagedList<",
            "TT;>;-",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroidx/paging/AsyncPagedListDiffer$OnCurrentListChangedWrapper;

    invoke-direct {v1, p1}, Landroidx/paging/AsyncPagedListDiffer$OnCurrentListChangedWrapper;-><init>(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    return-void
.end method

.method public final getConfig$paging_runtime_release()Landroidx/recyclerview/widget/AsyncDifferConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->config:Landroidx/recyclerview/widget/AsyncDifferConfig;

    return-object v0
.end method

.method public getCurrentList()Landroidx/paging/PagedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    :cond_0
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 300
    .local v0, "snapshot":Landroidx/paging/PagedList;
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 302
    .local v1, "pagedList":Landroidx/paging/PagedList;
    nop

    .line 303
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/paging/PagedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 304
    :cond_0
    if-eqz v1, :cond_1

    .line 305
    invoke-virtual {v1, p1}, Landroidx/paging/PagedList;->loadAround(I)V

    .line 306
    invoke-virtual {v1, p1}, Landroidx/paging/PagedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 302
    :goto_0
    return-object v2

    .line 308
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Item count is zero, getItem() call is invalid"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getItemCount()I
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getCurrentList()Landroidx/paging/PagedList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/paging/PagedList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getListeners$paging_runtime_release()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/paging/AsyncPagedListDiffer$PagedListListener<",
            "TT;>;>;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public final getLoadStateListeners$paging_runtime_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/paging/LoadType;",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getMainThreadExecutor$paging_runtime_release()Ljava/util/concurrent/Executor;
    .locals 1

    .line 134
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getMaxScheduledGeneration$paging_runtime_release()I
    .locals 1

    .line 150
    iget v0, p0, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    return v0
.end method

.method public final getUpdateCallback$paging_runtime_release()Landroidx/recyclerview/widget/ListUpdateCallback;
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "updateCallback"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final latchPagedList$paging_runtime_release(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/RecordingCallback;ILjava/lang/Runnable;)V
    .locals 4
    .param p1, "newList"    # Landroidx/paging/PagedList;
    .param p2, "diffSnapshot"    # Landroidx/paging/PagedList;
    .param p3, "diffResult"    # Landroidx/paging/NullPaddedDiffResult;
    .param p4, "recordingCallback"    # Landroidx/paging/RecordingCallback;
    .param p5, "lastAccessIndex"    # I
    .param p6, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedDiffResult;",
            "Landroidx/paging/RecordingCallback;",
            "I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffSnapshot"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "recordingCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 455
    .local v0, "previousSnapshot":Landroidx/paging/PagedList;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-nez v1, :cond_1

    .line 459
    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 460
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, v1}, Landroidx/paging/PagedList;->addWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 461
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 464
    invoke-virtual {v0}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object v1

    .line 465
    invoke-virtual {p0}, Landroidx/paging/AsyncPagedListDiffer;->getUpdateCallback$paging_runtime_release()Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v2

    .line 466
    invoke-virtual {p2}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object v3

    .line 467
    nop

    .line 464
    invoke-static {v1, v2, v3, p3}, Landroidx/paging/NullPaddedListDiffHelperKt;->dispatchDiff(Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedDiffResult;)V

    .line 472
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {p4, v1}, Landroidx/paging/RecordingCallback;->dispatchRecordingTo(Landroidx/paging/PagedList$Callback;)V

    .line 475
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {p1, v1}, Landroidx/paging/PagedList;->addWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 477
    invoke-virtual {p1}, Landroidx/paging/PagedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    invoke-virtual {v0}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object v1

    .line 485
    nop

    .line 486
    invoke-virtual {p2}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object v2

    .line 487
    nop

    .line 484
    invoke-static {v1, p3, v2, p5}, Landroidx/paging/NullPaddedListDiffHelperKt;->transformAnchorIndex(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/NullPaddedList;I)I

    move-result v1

    .line 494
    .local v1, "newPosition":I
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroidx/paging/PagedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/paging/PagedList;->loadAround(I)V

    .line 497
    .end local v1    # "newPosition":I
    :cond_0
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    invoke-direct {p0, v0, v1, p6}, Landroidx/paging/AsyncPagedListDiffer;->onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    .line 498
    return-void

    .line 456
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "must be in snapshot state to apply diff"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeLoadStateListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/LoadType;",
            "-",
            "Landroidx/paging/LoadState;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->loadStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 591
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/paging/PagedList;->removeWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 592
    :goto_0
    return-void
.end method

.method public removePagedListListener(Landroidx/paging/AsyncPagedListDiffer$PagedListListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/paging/AsyncPagedListDiffer$PagedListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AsyncPagedListDiffer$PagedListListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 545
    return-void
.end method

.method public final removePagedListListener(Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .param p1, "callback"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/paging/PagedList<",
            "TT;>;-",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    check-cast v0, Ljava/util/List;

    new-instance v1, Landroidx/paging/AsyncPagedListDiffer$removePagedListListener$1;

    invoke-direct {v1, p1}, Landroidx/paging/AsyncPagedListDiffer$removePagedListListener$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 559
    return-void
.end method

.method public final setMainThreadExecutor$paging_runtime_release(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/concurrent/Executor;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final setMaxScheduledGeneration$paging_runtime_release(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 150
    iput p1, p0, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    return-void
.end method

.method public final setUpdateCallback$paging_runtime_release(Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 1
    .param p1, "<set-?>"    # Landroidx/recyclerview/widget/ListUpdateCallback;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    return-void
.end method

.method public submitList(Landroidx/paging/PagedList;)V
    .locals 1
    .param p1, "pagedList"    # Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;)V"
        }
    .end annotation

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/paging/AsyncPagedListDiffer;->submitList(Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitList(Landroidx/paging/PagedList;Ljava/lang/Runnable;)V
    .locals 17
    .param p1, "pagedList"    # Landroidx/paging/PagedList;
    .param p2, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 347
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    iget v0, v8, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v8, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    iget v11, v8, Landroidx/paging/AsyncPagedListDiffer;->maxScheduledGeneration:I

    .line 351
    .local v11, "runGeneration":I
    iget-object v0, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-ne v9, v0, :cond_1

    .line 352
    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 353
    :goto_0
    return-void

    .line 356
    :cond_1
    iget-object v12, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 364
    .local v12, "currentPagedList":Landroidx/paging/PagedList;
    const/4 v0, 0x0

    if-eqz v12, :cond_3

    instance-of v1, v9, Landroidx/paging/InitialPagedList;

    if-eqz v1, :cond_3

    .line 365
    iget-object v1, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {v12, v1}, Landroidx/paging/PagedList;->removeWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 366
    iget-object v1, v8, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v12, v1}, Landroidx/paging/PagedList;->removeWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 367
    iget-object v1, v8, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v2, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    sget-object v3, Landroidx/paging/LoadState$Loading;->INSTANCE:Landroidx/paging/LoadState$Loading;

    check-cast v3, Landroidx/paging/LoadState;

    invoke-virtual {v1, v2, v3}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 368
    iget-object v1, v8, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v2, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    new-instance v3, Landroidx/paging/LoadState$NotLoading;

    invoke-direct {v3, v0}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    check-cast v3, Landroidx/paging/LoadState;

    invoke-virtual {v1, v2, v3}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 369
    iget-object v1, v8, Landroidx/paging/AsyncPagedListDiffer;->loadStateManager:Landroidx/paging/PagedList$LoadStateManager;

    sget-object v2, Landroidx/paging/LoadType;->APPEND:Landroidx/paging/LoadType;

    new-instance v3, Landroidx/paging/LoadState$NotLoading;

    invoke-direct {v3, v0}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    check-cast v3, Landroidx/paging/LoadState;

    invoke-virtual {v1, v2, v3}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    .line 370
    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/lang/Runnable;->run()V

    .line 371
    :goto_1
    return-void

    .line 374
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/paging/AsyncPagedListDiffer;->getCurrentList()Landroidx/paging/PagedList;

    move-result-object v13

    .line 376
    .local v13, "previous":Landroidx/paging/PagedList;
    const/4 v1, 0x0

    if-nez v9, :cond_6

    .line 377
    invoke-virtual/range {p0 .. p0}, Landroidx/paging/AsyncPagedListDiffer;->getItemCount()I

    move-result v2

    .line 378
    .local v2, "removedCount":I
    if-eqz v12, :cond_4

    .line 379
    iget-object v3, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {v12, v3}, Landroidx/paging/PagedList;->removeWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 380
    iget-object v3, v8, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v12, v3}, Landroidx/paging/PagedList;->removeWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 381
    iput-object v1, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    goto :goto_2

    .line 382
    :cond_4
    iget-object v3, v8, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    if-eqz v3, :cond_5

    .line 383
    iput-object v1, v8, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 386
    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/paging/AsyncPagedListDiffer;->getUpdateCallback$paging_runtime_release()Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 387
    invoke-direct {v8, v13, v1, v10}, Landroidx/paging/AsyncPagedListDiffer;->onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    .line 388
    return-void

    .line 391
    .end local v2    # "removedCount":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/paging/AsyncPagedListDiffer;->getCurrentList()Landroidx/paging/PagedList;

    move-result-object v2

    if-nez v2, :cond_7

    .line 393
    iput-object v9, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 394
    iget-object v2, v8, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v9, v2}, Landroidx/paging/PagedList;->addWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 395
    iget-object v2, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {v9, v2}, Landroidx/paging/PagedList;->addWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroidx/paging/AsyncPagedListDiffer;->getUpdateCallback$paging_runtime_release()Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagedList;->size()I

    move-result v3

    invoke-interface {v2, v0, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 400
    invoke-direct {v8, v1, v9, v10}, Landroidx/paging/AsyncPagedListDiffer;->onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    .line 401
    return-void

    .line 404
    :cond_7
    iget-object v0, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-nez v0, :cond_8

    goto :goto_3

    .local v0, "it":Landroidx/paging/PagedList;
    :cond_8
    const/4 v2, 0x0

    .line 407
    .local v2, "$i$a$-let-AsyncPagedListDiffer$submitList$1":I
    iget-object v3, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedListCallback:Landroidx/paging/PagedList$Callback;

    invoke-virtual {v0, v3}, Landroidx/paging/PagedList;->removeWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 408
    iget-object v3, v8, Landroidx/paging/AsyncPagedListDiffer;->loadStateListener:Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, v3}, Landroidx/paging/PagedList;->removeWeakLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 411
    invoke-virtual {v0}, Landroidx/paging/PagedList;->snapshot()Ljava/util/List;

    move-result-object v3

    check-cast v3, Landroidx/paging/PagedList;

    iput-object v3, v8, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 412
    iput-object v1, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    .line 413
    nop

    .line 404
    .end local v0    # "it":Landroidx/paging/PagedList;
    .end local v2    # "$i$a$-let-AsyncPagedListDiffer$submitList$1":I
    nop

    .line 415
    :goto_3
    iget-object v14, v8, Landroidx/paging/AsyncPagedListDiffer;->snapshot:Landroidx/paging/PagedList;

    .line 416
    .local v14, "oldSnapshot":Landroidx/paging/PagedList;
    if-eqz v14, :cond_9

    iget-object v0, v8, Landroidx/paging/AsyncPagedListDiffer;->pagedList:Landroidx/paging/PagedList;

    if-nez v0, :cond_9

    .line 421
    invoke-virtual/range {p1 .. p1}, Landroidx/paging/PagedList;->snapshot()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/paging/PagedList;

    .line 420
    nop

    .line 422
    .local v2, "newSnapshot":Landroidx/paging/PagedList;
    new-instance v0, Landroidx/paging/RecordingCallback;

    invoke-direct {v0}, Landroidx/paging/RecordingCallback;-><init>()V

    move-object v15, v0

    .line 423
    .local v15, "recordingCallback":Landroidx/paging/RecordingCallback;
    move-object v0, v15

    check-cast v0, Landroidx/paging/PagedList$Callback;

    invoke-virtual {v9, v0}, Landroidx/paging/PagedList;->addWeakCallback(Landroidx/paging/PagedList$Callback;)V

    .line 424
    iget-object v0, v8, Landroidx/paging/AsyncPagedListDiffer;->config:Landroidx/recyclerview/widget/AsyncDifferConfig;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v7

    new-instance v16, Landroidx/paging/AsyncPagedListDiffer$submitList$2;

    move-object/from16 v0, v16

    move-object v1, v14

    move-object/from16 v3, p0

    move v4, v11

    move-object/from16 v5, p1

    move-object v6, v15

    move-object v8, v7

    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Landroidx/paging/AsyncPagedListDiffer$submitList$2;-><init>(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/paging/AsyncPagedListDiffer;ILandroidx/paging/PagedList;Landroidx/paging/RecordingCallback;Ljava/lang/Runnable;)V

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 443
    return-void

    .line 417
    .end local v2    # "newSnapshot":Landroidx/paging/PagedList;
    .end local v15    # "recordingCallback":Landroidx/paging/RecordingCallback;
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must be in snapshot state to diff"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
