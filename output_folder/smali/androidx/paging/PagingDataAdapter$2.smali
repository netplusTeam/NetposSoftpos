.class public final Landroidx/paging/PagingDataAdapter$2;
.super Ljava/lang/Object;
.source "PagingDataAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/PagingDataAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/paging/CombinedLoadStates;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u0011\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0002H\u0096\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/paging/PagingDataAdapter$2",
        "Lkotlin/Function1;",
        "Landroidx/paging/CombinedLoadStates;",
        "",
        "ignoreNextEvent",
        "",
        "invoke",
        "loadStates",
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
.field private ignoreNextEvent:Z

.field final synthetic this$0:Landroidx/paging/PagingDataAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagingDataAdapter<",
            "TT;TVH;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/PagingDataAdapter;)V
    .locals 1
    .param p1, "$receiver"    # Landroidx/paging/PagingDataAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagingDataAdapter<",
            "TT;TVH;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/PagingDataAdapter$2;->this$0:Landroidx/paging/PagingDataAdapter;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/paging/PagingDataAdapter$2;->ignoreNextEvent:Z

    .line 108
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Landroidx/paging/CombinedLoadStates;

    invoke-virtual {p0, v0}, Landroidx/paging/PagingDataAdapter$2;->invoke(Landroidx/paging/CombinedLoadStates;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public invoke(Landroidx/paging/CombinedLoadStates;)V
    .locals 2
    .param p1, "loadStates"    # Landroidx/paging/CombinedLoadStates;

    const-string v0, "loadStates"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-boolean v0, p0, Landroidx/paging/PagingDataAdapter$2;->ignoreNextEvent:Z

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/paging/PagingDataAdapter$2;->ignoreNextEvent:Z

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Landroidx/paging/CombinedLoadStates;->getSource()Landroidx/paging/LoadStates;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/paging/LoadStates;->getRefresh()Landroidx/paging/LoadState;

    move-result-object v0

    instance-of v0, v0, Landroidx/paging/LoadState$NotLoading;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Landroidx/paging/PagingDataAdapter$2;->this$0:Landroidx/paging/PagingDataAdapter;

    invoke-static {v0}, Landroidx/paging/PagingDataAdapter;->access$_init_$considerAllowingStateRestoration(Landroidx/paging/PagingDataAdapter;)V

    .line 118
    iget-object v0, p0, Landroidx/paging/PagingDataAdapter$2;->this$0:Landroidx/paging/PagingDataAdapter;

    move-object v1, p0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Landroidx/paging/PagingDataAdapter;->removeLoadStateListener(Lkotlin/jvm/functions/Function1;)V

    .line 120
    :cond_1
    :goto_0
    return-void
.end method
