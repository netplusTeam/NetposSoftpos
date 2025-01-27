.class public final Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
.super Landroidx/paging/PagingDataDiffer;
.source "AsyncPagingDataDiffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/paging/AsyncPagingDataDiffer;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;Landroidx/recyclerview/widget/ListUpdateCallback;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/paging/PagingDataDiffer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016JE\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00072\u0006\u0010\t\u001a\u00020\u00052\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\r\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "androidx/paging/AsyncPagingDataDiffer$differBase$1",
        "Landroidx/paging/PagingDataDiffer;",
        "postEvents",
        "",
        "presentNewList",
        "",
        "previousList",
        "Landroidx/paging/NullPaddedList;",
        "newList",
        "lastAccessedIndex",
        "onListPresentable",
        "Lkotlin/Function0;",
        "",
        "(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic this$0:Landroidx/paging/AsyncPagingDataDiffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/paging/AsyncPagingDataDiffer;Landroidx/paging/DifferCallback;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0
    .param p1, "$receiver"    # Landroidx/paging/AsyncPagingDataDiffer;
    .param p2, "$super_call_param$1"    # Landroidx/paging/DifferCallback;
    .param p3, "$super_call_param$2"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/AsyncPagingDataDiffer<",
            "TT;>;",
            "Landroidx/paging/DifferCallback;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    .line 78
    invoke-direct {p0, p2, p3}, Landroidx/paging/PagingDataDiffer;-><init>(Landroidx/paging/DifferCallback;Lkotlinx/coroutines/CoroutineDispatcher;)V

    return-void
.end method


# virtual methods
.method public postEvents()Z
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {v0}, Landroidx/paging/AsyncPagingDataDiffer;->getInGetItem$paging_runtime_release()Z

    move-result v0

    return v0
.end method

.method public presentNewList(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;ILkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;

    iget v1, v0, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;

    invoke-direct {v0, p0, p5}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;-><init>(Landroidx/paging/AsyncPagingDataDiffer$differBase$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object p5, v0

    .local p5, "$continuation":Lkotlin/coroutines/Continuation;
    iget-object v0, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->result:Ljava/lang/Object;

    .local v0, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 79
    iget v2, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 109
    .end local v0    # "$result":Ljava/lang/Object;
    .end local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    .restart local v0    # "$result":Ljava/lang/Object;
    .restart local p5    # "$continuation":Lkotlin/coroutines/Continuation;
    :pswitch_0
    iget p1, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->I$0:I

    .local p1, "lastAccessedIndex":I
    iget-object p2, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .local p2, "onListPresentable":Lkotlin/jvm/functions/Function0;
    iget-object p3, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->L$2:Ljava/lang/Object;

    check-cast p3, Landroidx/paging/NullPaddedList;

    .local p3, "newList":Landroidx/paging/NullPaddedList;
    iget-object p4, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->L$1:Ljava/lang/Object;

    check-cast p4, Landroidx/paging/NullPaddedList;

    .local p4, "previousList":Landroidx/paging/NullPaddedList;
    iget-object v1, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->L$0:Ljava/lang/Object;

    check-cast v1, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;

    .local v1, "this":Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v3, v0

    goto :goto_1

    .end local v1    # "this":Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .end local p1    # "lastAccessedIndex":I
    .end local p2    # "onListPresentable":Lkotlin/jvm/functions/Function0;
    .end local p3    # "newList":Landroidx/paging/NullPaddedList;
    .end local p4    # "previousList":Landroidx/paging/NullPaddedList;
    :pswitch_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 84
    .local v2, "this":Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .local p1, "previousList":Landroidx/paging/NullPaddedList;
    .local p2, "newList":Landroidx/paging/NullPaddedList;
    .local p3, "lastAccessedIndex":I
    .local p4, "onListPresentable":Lkotlin/jvm/functions/Function0;
    nop

    .line 86
    invoke-interface {p1}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 87
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 88
    iget-object v1, v2, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {v1}, Landroidx/paging/AsyncPagingDataDiffer;->getDifferCallback$paging_runtime_release()Landroidx/paging/DifferCallback;

    move-result-object v1

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    invoke-interface {v1, v5, v4}, Landroidx/paging/DifferCallback;->onInserted(II)V

    .line 89
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    goto :goto_2

    .line 92
    :cond_1
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 94
    iget-object v1, v2, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-virtual {v1}, Landroidx/paging/AsyncPagingDataDiffer;->getDifferCallback$paging_runtime_release()Landroidx/paging/DifferCallback;

    move-result-object v1

    invoke-interface {p1}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    invoke-interface {v1, v5, v4}, Landroidx/paging/DifferCallback;->onRemoved(II)V

    .line 95
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    goto :goto_2

    .line 98
    :cond_2
    iget-object v4, v2, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-static {v4}, Landroidx/paging/AsyncPagingDataDiffer;->access$getWorkerDispatcher$p(Landroidx/paging/AsyncPagingDataDiffer;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    check-cast v4, Lkotlin/coroutines/CoroutineContext;

    new-instance v5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1;

    iget-object v6, v2, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-direct {v5, p1, p2, v6, v3}, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1;-><init>(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/paging/AsyncPagingDataDiffer;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v2, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->L$0:Ljava/lang/Object;

    iput-object p1, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->L$1:Ljava/lang/Object;

    iput-object p2, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->L$2:Ljava/lang/Object;

    iput-object p4, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->L$3:Ljava/lang/Object;

    iput p3, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->I$0:I

    const/4 v3, 0x1

    iput v3, p5, Landroidx/paging/AsyncPagingDataDiffer$differBase$1$presentNewList$1;->label:I

    invoke-static {v4, v5, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_3

    .line 79
    .end local v2    # "this":Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .end local p1    # "previousList":Landroidx/paging/NullPaddedList;
    .end local p2    # "newList":Landroidx/paging/NullPaddedList;
    .end local p3    # "lastAccessedIndex":I
    .end local p4    # "onListPresentable":Lkotlin/jvm/functions/Function0;
    return-object v1

    .line 98
    .restart local v2    # "this":Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .restart local p1    # "previousList":Landroidx/paging/NullPaddedList;
    .restart local p2    # "newList":Landroidx/paging/NullPaddedList;
    .restart local p3    # "lastAccessedIndex":I
    .restart local p4    # "onListPresentable":Lkotlin/jvm/functions/Function0;
    :cond_3
    move-object v1, v2

    move-object v7, p4

    move-object p4, p1

    move p1, p3

    move-object p3, p2

    move-object p2, v7

    .line 79
    .end local v2    # "this":Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .restart local v1    # "this":Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    .local p1, "lastAccessedIndex":I
    .local p2, "onListPresentable":Lkotlin/jvm/functions/Function0;
    .local p3, "newList":Landroidx/paging/NullPaddedList;
    .local p4, "previousList":Landroidx/paging/NullPaddedList;
    :goto_1
    move-object v2, v3

    check-cast v2, Landroidx/paging/NullPaddedDiffResult;

    .line 101
    .local v2, "diffResult":Landroidx/paging/NullPaddedDiffResult;
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 102
    .end local p2    # "onListPresentable":Lkotlin/jvm/functions/Function0;
    iget-object p2, v1, Landroidx/paging/AsyncPagingDataDiffer$differBase$1;->this$0:Landroidx/paging/AsyncPagingDataDiffer;

    invoke-static {p2}, Landroidx/paging/AsyncPagingDataDiffer;->access$getUpdateCallback$p(Landroidx/paging/AsyncPagingDataDiffer;)Landroidx/recyclerview/widget/ListUpdateCallback;

    move-result-object p2

    invoke-static {p4, p2, p3, v2}, Landroidx/paging/NullPaddedListDiffHelperKt;->dispatchDiff(Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedDiffResult;)V

    .line 103
    .end local v1    # "this":Landroidx/paging/AsyncPagingDataDiffer$differBase$1;
    nop

    .line 104
    .end local p4    # "previousList":Landroidx/paging/NullPaddedList;
    nop

    .line 105
    .end local v2    # "diffResult":Landroidx/paging/NullPaddedDiffResult;
    nop

    .line 106
    .end local p3    # "newList":Landroidx/paging/NullPaddedList;
    nop

    .line 103
    .end local p1    # "lastAccessedIndex":I
    invoke-static {p4, v2, p3, p1}, Landroidx/paging/NullPaddedListDiffHelperKt;->transformAnchorIndex(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/NullPaddedList;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v3

    .line 109
    :goto_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
