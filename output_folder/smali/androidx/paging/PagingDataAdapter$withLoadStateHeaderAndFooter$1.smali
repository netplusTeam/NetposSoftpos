.class final Landroidx/paging/PagingDataAdapter$withLoadStateHeaderAndFooter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PagingDataAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataAdapter;->withLoadStateHeaderAndFooter(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)Landroidx/recyclerview/widget/ConcatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/paging/CombinedLoadStates;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0007\u001a\u00020\u0006\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000\"\u0008\u0008\u0001\u0010\u0003*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\n"
    }
    d2 = {
        "",
        "T",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "VH",
        "Landroidx/paging/CombinedLoadStates;",
        "loadStates",
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


# instance fields
.field final synthetic $footer:Landroidx/paging/LoadStateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/LoadStateAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $header:Landroidx/paging/LoadStateAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/LoadStateAdapter<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/LoadStateAdapter;Landroidx/paging/LoadStateAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;",
            "Landroidx/paging/LoadStateAdapter<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PagingDataAdapter$withLoadStateHeaderAndFooter$1;->$header:Landroidx/paging/LoadStateAdapter;

    iput-object p2, p0, Landroidx/paging/PagingDataAdapter$withLoadStateHeaderAndFooter$1;->$footer:Landroidx/paging/LoadStateAdapter;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 381
    move-object v0, p1

    check-cast v0, Landroidx/paging/CombinedLoadStates;

    invoke-virtual {p0, v0}, Landroidx/paging/PagingDataAdapter$withLoadStateHeaderAndFooter$1;->invoke(Landroidx/paging/CombinedLoadStates;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroidx/paging/CombinedLoadStates;)V
    .locals 2
    .param p1, "loadStates"    # Landroidx/paging/CombinedLoadStates;

    const-string v0, "loadStates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Landroidx/paging/PagingDataAdapter$withLoadStateHeaderAndFooter$1;->$header:Landroidx/paging/LoadStateAdapter;

    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->getPrepend()Landroidx/paging/LoadState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 383
    iget-object v0, p0, Landroidx/paging/PagingDataAdapter$withLoadStateHeaderAndFooter$1;->$footer:Landroidx/paging/LoadStateAdapter;

    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->getAppend()Landroidx/paging/LoadState;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/paging/LoadStateAdapter;->setLoadState(Landroidx/paging/LoadState;)V

    .line 384
    return-void
.end method
