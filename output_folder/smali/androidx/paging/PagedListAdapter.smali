.class public abstract Landroidx/paging/PagedListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PagedListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "PagedListAdapter is deprecated and has been replaced by PagingDataAdapter"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "PagingDataAdapter<T, VH>"
        imports = {
            "androidx.paging.PagingDataAdapter"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u00042\u0008\u0012\u0004\u0012\u0002H\u00030\u0005B\u0015\u0008\u0014\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008B\u0015\u0008\u0014\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0002\u0010\u000bJ\"\u0010\u001b\u001a\u00020\u00192\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00190\u0018H\u0016J\u0017\u0010\u001e\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u001f\u001a\u00020 H\u0014\u00a2\u0006\u0002\u0010!J\u0008\u0010\"\u001a\u00020 H\u0016J\u0018\u0010#\u001a\u00020\u00192\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\rH\u0017J(\u0010#\u001a\u00020\u00192\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\rH\u0016J\"\u0010%\u001a\u00020\u00192\u0018\u0010\u0017\u001a\u0014\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u00190\u0018H\u0016J\u0018\u0010&\u001a\u00020\u00192\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\rH\u0016J\"\u0010&\u001a\u00020\u00192\u000e\u0010\'\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0016J\u0012\u0010*\u001a\u00020+2\n\u0010,\u001a\u0006\u0012\u0002\u0008\u00030-J\u0012\u0010.\u001a\u00020+2\n\u0010/\u001a\u0006\u0012\u0002\u0008\u00030-J\u001e\u00100\u001a\u00020+2\n\u0010/\u001a\u0006\u0012\u0002\u0008\u00030-2\n\u0010,\u001a\u0006\u0012\u0002\u0008\u00030-R\"\u0010\u000c\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R \u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0013X\u0080\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0015\u0010\u0016R6\u0010\u0017\u001a$\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r\u0012\u000c\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\r\u0012\u0004\u0012\u00020\u00190\u0018X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001a\u0010\u000f\u00a8\u00061"
    }
    d2 = {
        "Landroidx/paging/PagedListAdapter;",
        "T",
        "",
        "VH",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V",
        "config",
        "Landroidx/recyclerview/widget/AsyncDifferConfig;",
        "(Landroidx/recyclerview/widget/AsyncDifferConfig;)V",
        "currentList",
        "Landroidx/paging/PagedList;",
        "getCurrentList$annotations",
        "()V",
        "getCurrentList",
        "()Landroidx/paging/PagedList;",
        "differ",
        "Landroidx/paging/AsyncPagedListDiffer;",
        "getDiffer$paging_runtime_release$annotations",
        "getDiffer$paging_runtime_release",
        "()Landroidx/paging/AsyncPagedListDiffer;",
        "listener",
        "Lkotlin/Function2;",
        "",
        "getListener$annotations",
        "addLoadStateListener",
        "Landroidx/paging/LoadType;",
        "Landroidx/paging/LoadState;",
        "getItem",
        "position",
        "",
        "(I)Ljava/lang/Object;",
        "getItemCount",
        "onCurrentListChanged",
        "previousList",
        "removeLoadStateListener",
        "submitList",
        "pagedList",
        "commitCallback",
        "Ljava/lang/Runnable;",
        "withLoadStateFooter",
        "Landroidx/recyclerview/widget/ConcatAdapter;",
        "footer",
        "Landroidx/paging/LoadStateAdapter;",
        "withLoadStateHeader",
        "header",
        "withLoadStateHeaderAndFooter",
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
.field private final differ:Landroidx/paging/AsyncPagedListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AsyncPagedListDiffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final listener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/AsyncDifferConfig;)V
    .locals 4
    .param p1, "config"    # Landroidx/recyclerview/widget/AsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/AsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 119
    new-instance v0, Landroidx/paging/PagedListAdapter$listener$1;

    invoke-direct {v0, p0}, Landroidx/paging/PagedListAdapter$listener$1;-><init>(Landroidx/paging/PagedListAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/paging/PagedListAdapter;->listener:Lkotlin/jvm/functions/Function2;

    .line 156
    new-instance v1, Landroidx/paging/AsyncPagedListDiffer;

    new-instance v2, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    move-object v3, p0

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    check-cast v2, Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-direct {v1, v2, p1}, Landroidx/paging/AsyncPagedListDiffer;-><init>(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/recyclerview/widget/AsyncDifferConfig;)V

    iput-object v1, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    .line 157
    invoke-virtual {v1, v0}, Landroidx/paging/AsyncPagedListDiffer;->addPagedListListener(Lkotlin/jvm/functions/Function2;)V

    .line 158
    return-void
.end method

.method protected constructor <init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 3
    .param p1, "diffCallback"    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "diffCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 119
    new-instance v0, Landroidx/paging/PagedListAdapter$listener$1;

    invoke-direct {v0, p0}, Landroidx/paging/PagedListAdapter$listener$1;-><init>(Landroidx/paging/PagedListAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/paging/PagedListAdapter;->listener:Lkotlin/jvm/functions/Function2;

    .line 150
    new-instance v1, Landroidx/paging/AsyncPagedListDiffer;

    move-object v2, p0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-direct {v1, v2, p1}, Landroidx/paging/AsyncPagedListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object v1, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    .line 151
    invoke-virtual {v1, v0}, Landroidx/paging/AsyncPagedListDiffer;->addPagedListListener(Lkotlin/jvm/functions/Function2;)V

    .line 152
    return-void
.end method

.method public static synthetic getCurrentList$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getDiffer$paging_runtime_release$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getListener$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public addLoadStateListener(Lkotlin/jvm/functions/Function2;)V
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

    .line 251
    iget-object v0, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagedListDiffer;->addLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 252
    return-void
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

    .line 137
    iget-object v0, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagedListDiffer;->getCurrentList()Landroidx/paging/PagedList;

    move-result-object v0

    return-object v0
.end method

.method public final getDiffer$paging_runtime_release()Landroidx/paging/AsyncPagedListDiffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/paging/AsyncPagedListDiffer<",
            "TT;>;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    return-object v0
.end method

.method protected getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagedListDiffer;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 192
    iget-object v0, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagedListDiffer;->getItemCount()I

    move-result v0

    return v0
.end method

.method public onCurrentListChanged(Landroidx/paging/PagedList;)V
    .locals 0
    .param p1, "currentList"    # Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "Use the two argument variant instead."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "onCurrentListChanged(previousList, currentList)"
            imports = {}
        .end subannotation
    .end annotation

    .line 215
    return-void
.end method

.method public onCurrentListChanged(Landroidx/paging/PagedList;Landroidx/paging/PagedList;)V
    .locals 0
    .param p1, "previousList"    # Landroidx/paging/PagedList;
    .param p2, "currentList"    # Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/PagedList<",
            "TT;>;)V"
        }
    .end annotation

    .line 238
    return-void
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

    .line 261
    iget-object v0, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagedListDiffer;->removeLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 262
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

    .line 169
    iget-object v0, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0, p1}, Landroidx/paging/AsyncPagedListDiffer;->submitList(Landroidx/paging/PagedList;)V

    return-void
.end method

.method public submitList(Landroidx/paging/PagedList;Ljava/lang/Runnable;)V
    .locals 1
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

    .line 188
    iget-object v0, p0, Landroidx/paging/PagedListAdapter;->differ:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0, p1, p2}, Landroidx/paging/AsyncPagedListDiffer;->submitList(Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final withLoadStateFooter(Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 4
    .param p1, "footer"    # Landroidx/paging/LoadStateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;)",
            "Landroidx/recyclerview/widget/ConcatAdapter;"
        }
    .end annotation

    const-string v0, "footer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    new-instance v0, Landroidx/paging/PagedListAdapter$withLoadStateFooter$1;

    invoke-direct {v0, p1}, Landroidx/paging/PagedListAdapter$withLoadStateFooter$1;-><init>(Landroidx/paging/LoadStateAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Landroidx/paging/PagedListAdapter;->addLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 291
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v2, p0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public final withLoadStateHeader(Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 4
    .param p1, "header"    # Landroidx/paging/LoadStateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;)",
            "Landroidx/recyclerview/widget/ConcatAdapter;"
        }
    .end annotation

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroidx/paging/PagedListAdapter$withLoadStateHeader$1;

    invoke-direct {v0, p1}, Landroidx/paging/PagedListAdapter$withLoadStateHeader$1;-><init>(Landroidx/paging/LoadStateAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Landroidx/paging/PagedListAdapter;->addLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 276
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object v2, p0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public final withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
    .locals 4
    .param p1, "header"    # Landroidx/paging/LoadStateAdapter;
    .param p2, "footer"    # Landroidx/paging/LoadStateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;)",
            "Landroidx/recyclerview/widget/ConcatAdapter;"
        }
    .end annotation

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "footer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    new-instance v0, Landroidx/paging/PagedListAdapter$withLoadStateHeaderAndFooter$1;

    invoke-direct {v0, p1, p2}, Landroidx/paging/PagedListAdapter$withLoadStateHeaderAndFooter$1;-><init>(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Landroidx/paging/PagedListAdapter;->addLoadStateListener(Lkotlin/jvm/functions/Function2;)V

    .line 310
    new-instance v0, Landroidx/recyclerview/widget/ConcatAdapter;

    const/4 v1, 0x3

    new-array v1, v1, [Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-object v2, p1

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    move-object v2, p0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    move-object v2, p2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ConcatAdapter;-><init>([Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method
