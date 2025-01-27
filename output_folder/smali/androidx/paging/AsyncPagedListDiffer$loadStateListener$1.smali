.class final synthetic Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "AsyncPagedListDiffer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagedListDiffer;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/paging/LoadType;",
        "Landroidx/paging/LoadState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Landroidx/paging/PagedList$LoadStateManager;

    const/4 v1, 0x2

    const-string/jumbo v4, "setState"

    const-string/jumbo v5, "setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 161
    move-object v0, p1

    check-cast v0, Landroidx/paging/LoadType;

    move-object v1, p2

    check-cast v1, Landroidx/paging/LoadState;

    invoke-virtual {p0, v0, v1}, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;->invoke(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V
    .locals 1
    .param p1, "p0"    # Landroidx/paging/LoadType;
    .param p2, "p1"    # Landroidx/paging/LoadState;

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$loadStateListener$1;->receiver:Ljava/lang/Object;

    check-cast v0, Landroidx/paging/PagedList$LoadStateManager;

    invoke-virtual {v0, p1, p2}, Landroidx/paging/PagedList$LoadStateManager;->setState(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    return-void
.end method
