.class final Landroidx/paging/AsyncPagedListDiffer$submitList$2;
.super Ljava/lang/Object;
.source "AsyncPagedListDiffer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagedListDiffer;->submitList(Landroidx/paging/PagedList;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0008\u0008\u0000\u0010\u0001*\u00020\u0000H\n"
    }
    d2 = {
        "",
        "T",
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
.field final synthetic $commitCallback:Ljava/lang/Runnable;

.field final synthetic $newSnapshot:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $oldSnapshot:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $pagedList:Landroidx/paging/PagedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/PagedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $recordingCallback:Landroidx/paging/RecordingCallback;

.field final synthetic $runGeneration:I

.field final synthetic this$0:Landroidx/paging/AsyncPagedListDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AsyncPagedListDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/paging/AsyncPagedListDiffer;ILandroidx/paging/PagedList;Landroidx/paging/RecordingCallback;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/AsyncPagedListDiffer<",
            "TT;>;I",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/RecordingCallback;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$oldSnapshot:Landroidx/paging/PagedList;

    iput-object p2, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$newSnapshot:Landroidx/paging/PagedList;

    iput-object p3, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    iput p4, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$runGeneration:I

    iput-object p5, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$pagedList:Landroidx/paging/PagedList;

    iput-object p6, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$recordingCallback:Landroidx/paging/RecordingCallback;

    iput-object p7, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$commitCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 425
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$oldSnapshot:Landroidx/paging/PagedList;

    invoke-virtual {v0}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object v0

    .line 426
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$newSnapshot:Landroidx/paging/PagedList;

    invoke-virtual {v1}, Landroidx/paging/PagedList;->getNullPaddedList()Landroidx/paging/NullPaddedList;

    move-result-object v1

    .line 427
    iget-object v2, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v2}, Landroidx/paging/AsyncPagedListDiffer;->getConfig$paging_runtime_release()Landroidx/recyclerview/widget/AsyncDifferConfig;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/AsyncDifferConfig;->getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    move-result-object v2

    const-string v3, "config.diffCallback"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-static {v0, v1, v2}, Landroidx/paging/NullPaddedListDiffHelperKt;->computeDiff(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Landroidx/paging/NullPaddedDiffResult;

    move-result-object v0

    .line 430
    .local v0, "result":Landroidx/paging/NullPaddedDiffResult;
    iget-object v1, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v1}, Landroidx/paging/AsyncPagedListDiffer;->getMainThreadExecutor$paging_runtime_release()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;

    iget-object v5, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    iget v6, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$runGeneration:I

    iget-object v7, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$pagedList:Landroidx/paging/PagedList;

    iget-object v8, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$newSnapshot:Landroidx/paging/PagedList;

    iget-object v10, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$recordingCallback:Landroidx/paging/RecordingCallback;

    iget-object v11, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$oldSnapshot:Landroidx/paging/PagedList;

    iget-object v12, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2;->$commitCallback:Ljava/lang/Runnable;

    move-object v4, v2

    move-object v9, v0

    invoke-direct/range {v4 .. v12}, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;-><init>(Landroidx/paging/AsyncPagedListDiffer;ILandroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/RecordingCallback;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 442
    return-void
.end method
