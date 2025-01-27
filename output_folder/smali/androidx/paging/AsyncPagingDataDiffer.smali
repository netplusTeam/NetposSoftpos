.class public final Landroidx/paging/AsyncPagingDataDiffer;
.super Ljava/lang/Object;
.source "AsyncPagingDataDiffer.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u007f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u000c\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B1\u0008\u0007\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\nJ\u001a\u0010)\u001a\u00020%2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020%0+J\u0014\u0010,\u001a\u00020%2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020%0-J\u0017\u0010.\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0001\u0010/\u001a\u00020\u001c\u00a2\u0006\u0002\u00100J\u0017\u00101\u001a\u0004\u0018\u00018\u00002\u0008\u0008\u0001\u0010/\u001a\u00020\u001c\u00a2\u0006\u0002\u00100J\u0006\u00102\u001a\u00020%J\u001a\u00103\u001a\u00020%2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020%0+J\u0014\u00104\u001a\u00020%2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020%0-J\u0006\u00105\u001a\u00020%J\u000c\u00106\u001a\u0008\u0012\u0004\u0012\u00028\u000007J\u001c\u00108\u001a\u00020%2\u0006\u00109\u001a\u00020:2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00028\u00000<J\u001f\u00108\u001a\u00020%2\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00028\u00000<H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010=R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000fX\u0080\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R \u0010\u0014\u001a\u00020\u0015X\u0080\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020!0 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010#R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006>"
    }
    d2 = {
        "Landroidx/paging/AsyncPagingDataDiffer;",
        "T",
        "",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "updateCallback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "mainDispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "workerDispatcher",
        "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "differBase",
        "androidx/paging/AsyncPagingDataDiffer$differBase$1",
        "Landroidx/paging/AsyncPagingDataDiffer$differBase$1;",
        "differCallback",
        "Landroidx/paging/DifferCallback;",
        "getDifferCallback$paging_runtime_release$annotations",
        "()V",
        "getDifferCallback$paging_runtime_release",
        "()Landroidx/paging/DifferCallback;",
        "inGetItem",
        "",
        "getInGetItem$paging_runtime_release$annotations",
        "getInGetItem$paging_runtime_release",
        "()Z",
        "setInGetItem$paging_runtime_release",
        "(Z)V",
        "itemCount",
        "",
        "getItemCount",
        "()I",
        "loadStateFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroidx/paging/CombinedLoadStates;",
        "getLoadStateFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "onPagesUpdatedFlow",
        "",
        "getOnPagesUpdatedFlow",
        "submitDataId",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "addLoadStateListener",
        "listener",
        "Lkotlin/Function1;",
        "addOnPagesUpdatedListener",
        "Lkotlin/Function0;",
        "getItem",
        "index",
        "(I)Ljava/lang/Object;",
        "peek",
        "refresh",
        "removeLoadStateListener",
        "removeOnPagesUpdatedListener",
        "retry",
        "snapshot",
        "Landroidx/paging/ItemSnapshotList;",
        "submitData",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "pagingData",
        "Landroidx/paging/PagingData;",
        "(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field private final diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

.field private final differCallback:Landroidx/paging/DifferCallback;

.field private inGetItem:Z

.field private final loadStateFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation
.end field

.field private final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final onPagesUpdatedFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

.field private final workerDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 3
    .param p1, "diffCallback"    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .param p2, "updateCallback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p3, "mainDispatcher"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p4, "workerDispatcher"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "updateCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerDispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    .line 42
    iput-object p2, p0, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 44
    iput-object p3, p0, Landroidx/paging/AsyncPagingDataDiffer;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 46
    iput-object p4, p0, Landroidx/paging/AsyncPagingDataDiffer;->workerDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 50
    new-instance v0, Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;

    invoke-direct {v0, p0}, Landroidx/paging/AsyncPagingDataDiffer$differCallback$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer;)V

    check-cast v0, Landroidx/paging/DifferCallback;

    iput-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differCallback:Landroidx/paging/DifferCallback;

    .line 78
    new-instance v1, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-direct {v1, p0, v0, p3}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer;Landroidx/paging/DifferCallback;Lkotlinx/coroutines/CoroutineDispatcher;)V

    iput-object v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 255
    invoke-virtual {v1}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->getLoadStateFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    .line 275
    invoke-virtual {v1}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->getOnPagesUpdatedFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->onPagesUpdatedFlow:Lkotlinx/coroutines/flow/Flow;

    .line 40
    return-void
.end method

.method public synthetic constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 40
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 45
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p3

    check-cast p3, Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 47
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p4

    .line 40
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V

    .line 332
    return-void
.end method

.method public static final synthetic access$getDiffCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/AsyncPagingDataDiffer;

    .line 40
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-object v0
.end method

.method public static final synthetic access$getDifferBase$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/AsyncPagingDataDiffer;

    .line 40
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    return-object v0
.end method

.method public static final synthetic access$getSubmitDataId$p(Landroidx/paging/AsyncPagingDataDiffer;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/AsyncPagingDataDiffer;

    .line 40
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static final synthetic access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/AsyncPagingDataDiffer;

    .line 40
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->updateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    return-object v0
.end method

.method public static final synthetic access$getWorkerDispatcher$p(Landroidx/paging/AsyncPagingDataDiffer;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1
    .param p0, "$this"    # Landroidx/paging/AsyncPagingDataDiffer;

    .line 40
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->workerDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object v0
.end method

.method public static synthetic getDifferCallback$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getInGetItem$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addLoadStateListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->addLoadStateListener(Lkotlin/jvm/functions/Function1;)V

    .line 321
    return-void
.end method

.method public final addOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->addOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V

    .line 293
    return-void
.end method

.method public final getDifferCallback$paging_runtime_release()Landroidx/paging/DifferCallback;
    .locals 1

    .line 50
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differCallback:Landroidx/paging/DifferCallback;

    return-object v0
.end method

.method public final getInGetItem$paging_runtime_release()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 212
    nop

    .line 213
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    .line 214
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iput-boolean v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    .line 214
    return-object v0

    :catchall_0
    move-exception v0

    .line 216
    iput-boolean v1, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    throw v0
.end method

.method public final getItemCount()I
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->getSize()I

    move-result v0

    return v0
.end method

.method public final getLoadStateFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/paging/CombinedLoadStates;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->loadStateFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final getOnPagesUpdatedFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->onPagesUpdatedFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public final peek(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->peek(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final refresh()V
    .locals 1

    .line 200
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->refresh()V

    .line 201
    return-void
.end method

.method public final removeLoadStateListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/paging/CombinedLoadStates;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->removeLoadStateListener(Lkotlin/jvm/functions/Function1;)V

    .line 331
    return-void
.end method

.method public final removeOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "listener"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->removeOnPagesUpdatedListener(Lkotlin/jvm/functions/Function0;)V

    .line 305
    return-void
.end method

.method public final retry()V
    .locals 1

    .line 180
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->retry()V

    .line 181
    return-void
.end method

.method public final setInGetItem$paging_runtime_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 76
    iput-boolean p1, p0, Landroidx/paging/AsyncPagingDataDiffer;->inGetItem:Z

    return-void
.end method

.method public final snapshot()Landroidx/paging/ItemSnapshotList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/ItemSnapshotList<",
            "TT;>;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->snapshot()Landroidx/paging/ItemSnapshotList;

    move-result-object v0

    return-object v0
.end method

.method public final submitData(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "pagingData"    # Landroidx/paging/PagingData;
    .param p2, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingData<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 142
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->differBase:Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    invoke-virtual {v0, p1, p2}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->collectFrom(Landroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 143
    return-object v0
.end method

.method public final submitData(Landroidx/lifecycle/Lifecycle;Landroidx/paging/PagingData;)V
    .locals 8
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "pagingData"    # Landroidx/paging/PagingData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Landroidx/paging/PagingData<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pagingData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer;->submitDataId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 159
    .local v0, "id":I
    invoke-static {p1}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Landroidx/paging/AsyncPagingDataDiffer$submitData$2;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, p2, v3}, Landroidx/paging/AsyncPagingDataDiffer$submitData$2;-><init>(Landroidx/paging/AsyncPagingDataDiffer;ILandroidx/paging/PagingData;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 166
    return-void
.end method
