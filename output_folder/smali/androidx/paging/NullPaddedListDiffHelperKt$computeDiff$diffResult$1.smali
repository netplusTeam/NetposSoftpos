.class public final Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "NullPaddedListDiffHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/NullPaddedListDiffHelperKt;->computeDiff(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Landroidx/paging/NullPaddedDiffResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1",
        "Landroidx/recyclerview/widget/DiffUtil$Callback;",
        "areContentsTheSame",
        "",
        "oldItemPosition",
        "",
        "newItemPosition",
        "areItemsTheSame",
        "getChangePayload",
        "",
        "getNewListSize",
        "getOldListSize",
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
.field final synthetic $diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $newList:Landroidx/paging/NullPaddedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/NullPaddedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $newSize:I

.field final synthetic $oldSize:I

.field final synthetic $this_computeDiff:Landroidx/paging/NullPaddedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/NullPaddedList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;II)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/paging/NullPaddedList;
    .param p2, "$newList"    # Landroidx/paging/NullPaddedList;
    .param p3, "$diffCallback"    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .param p4, "$oldSize"    # I
    .param p5, "$newSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/NullPaddedList;

    iput-object p2, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/NullPaddedList;

    iput-object p3, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    iput p4, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$oldSize:I

    iput p5, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newSize:I

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 72
    iget-object v0, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/NullPaddedList;

    invoke-interface {v0, p1}, Landroidx/paging/NullPaddedList;->getFromStorage(I)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "oldItem":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v1, p2}, Landroidx/paging/NullPaddedList;->getFromStorage(I)Ljava/lang/Object;

    move-result-object v1

    .line 75
    .local v1, "newItem":Ljava/lang/Object;
    nop

    .line 76
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v2, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 75
    :goto_0
    return v2
.end method

.method public areItemsTheSame(II)Z
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 62
    iget-object v0, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/NullPaddedList;

    invoke-interface {v0, p1}, Landroidx/paging/NullPaddedList;->getFromStorage(I)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "oldItem":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v1, p2}, Landroidx/paging/NullPaddedList;->getFromStorage(I)Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "newItem":Ljava/lang/Object;
    nop

    .line 66
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-object v2, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 65
    :goto_0
    return v2
.end method

.method public getChangePayload(II)Ljava/lang/Object;
    .locals 3
    .param p1, "oldItemPosition"    # I
    .param p2, "newItemPosition"    # I

    .line 48
    iget-object v0, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$this_computeDiff:Landroidx/paging/NullPaddedList;

    invoke-interface {v0, p1}, Landroidx/paging/NullPaddedList;->getFromStorage(I)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, "oldItem":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v1, p2}, Landroidx/paging/NullPaddedList;->getFromStorage(I)Ljava/lang/Object;

    move-result-object v1

    .line 51
    .local v1, "newItem":Ljava/lang/Object;
    nop

    .line 52
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 53
    :cond_0
    iget-object v2, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    :goto_0
    return-object v2
.end method

.method public getNewListSize()I
    .locals 1

    .line 59
    iget v0, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$newSize:I

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 57
    iget v0, p0, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;->$oldSize:I

    return v0
.end method
