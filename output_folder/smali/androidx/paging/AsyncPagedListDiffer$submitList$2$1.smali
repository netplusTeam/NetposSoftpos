.class final Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;
.super Ljava/lang/Object;
.source "AsyncPagedListDiffer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagedListDiffer$submitList$2;->run()V
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

.field final synthetic $result:Landroidx/paging/NullPaddedDiffResult;

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
.method constructor <init>(Landroidx/paging/AsyncPagedListDiffer;ILandroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/RecordingCallback;Landroidx/paging/PagedList;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AsyncPagedListDiffer<",
            "TT;>;I",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedDiffResult;",
            "Landroidx/paging/RecordingCallback;",
            "Landroidx/paging/PagedList<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    iput p2, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$runGeneration:I

    iput-object p3, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$pagedList:Landroidx/paging/PagedList;

    iput-object p4, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$newSnapshot:Landroidx/paging/PagedList;

    iput-object p5, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$result:Landroidx/paging/NullPaddedDiffResult;

    iput-object p6, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$recordingCallback:Landroidx/paging/RecordingCallback;

    iput-object p7, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$oldSnapshot:Landroidx/paging/PagedList;

    iput-object p8, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$commitCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 431
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagedListDiffer;->getMaxScheduledGeneration$paging_runtime_release()I

    move-result v0

    iget v1, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$runGeneration:I

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v2, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->this$0:Landroidx/paging/AsyncPagedListDiffer;

    .line 433
    iget-object v3, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$pagedList:Landroidx/paging/PagedList;

    .line 434
    iget-object v4, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$newSnapshot:Landroidx/paging/PagedList;

    .line 435
    iget-object v5, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$result:Landroidx/paging/NullPaddedDiffResult;

    .line 436
    iget-object v6, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$recordingCallback:Landroidx/paging/RecordingCallback;

    .line 437
    iget-object v0, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$oldSnapshot:Landroidx/paging/PagedList;

    invoke-virtual {v0}, Landroidx/paging/PagedList;->lastLoad()I

    move-result v7

    .line 438
    iget-object v8, p0, Landroidx/paging/AsyncPagedListDiffer$submitList$2$1;->$commitCallback:Ljava/lang/Runnable;

    .line 432
    invoke-virtual/range {v2 .. v8}, Landroidx/paging/AsyncPagedListDiffer;->latchPagedList$paging_runtime_release(Landroidx/paging/PagedList;Landroidx/paging/PagedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/RecordingCallback;ILjava/lang/Runnable;)V

    .line 441
    :cond_0
    return-void
.end method
