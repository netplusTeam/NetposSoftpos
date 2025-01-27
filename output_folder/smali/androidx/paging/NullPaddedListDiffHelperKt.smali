.class public final Landroidx/paging/NullPaddedListDiffHelperKt;
.super Ljava/lang/Object;
.source "NullPaddedListDiffHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNullPaddedListDiffHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NullPaddedListDiffHelper.kt\nandroidx/paging/NullPaddedListDiffHelperKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,553:1\n1741#2,3:554\n*S KotlinDebug\n*F\n+ 1 NullPaddedListDiffHelper.kt\nandroidx/paging/NullPaddedListDiffHelperKt\n*L\n84#1:554,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a8\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0007H\u0000\u001a:\u0010\u0008\u001a\u00020\t\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0001H\u0000\u001a,\u0010\r\u001a\u00020\u000e*\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u000c\u001a\u00020\u00012\n\u0010\u0005\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "computeDiff",
        "Landroidx/paging/NullPaddedDiffResult;",
        "T",
        "",
        "Landroidx/paging/NullPaddedList;",
        "newList",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "dispatchDiff",
        "",
        "callback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "diffResult",
        "transformAnchorIndex",
        "",
        "oldPosition",
        "paging-runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final computeDiff(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)Landroidx/paging/NullPaddedDiffResult;
    .locals 13
    .param p0, "$this$computeDiff"    # Landroidx/paging/NullPaddedList;
    .param p1, "newList"    # Landroidx/paging/NullPaddedList;
    .param p2, "diffCallback"    # Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)",
            "Landroidx/paging/NullPaddedDiffResult;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v0

    .line 43
    .local v0, "oldSize":I
    invoke-interface {p1}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v7

    .line 46
    .local v7, "newSize":I
    new-instance v8, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Landroidx/paging/NullPaddedListDiffHelperKt$computeDiff$diffResult$1;-><init>(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;II)V

    check-cast v8, Landroidx/recyclerview/widget/DiffUtil$Callback;

    .line 81
    nop

    .line 45
    const/4 v1, 0x1

    invoke-static {v8, v1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;Z)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v2

    const-string v3, "NullPaddedList<T>.comput\u2026    },\n        true\n    )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .local v2, "diffResult":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$any$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 554
    .local v5, "$i$f$any":I
    instance-of v6, v3, Ljava/util/Collection;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    goto :goto_1

    .line 555
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v6

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .local v8, "element$iv":I
    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 85
    .local v10, "$i$a$-any-NullPaddedListDiffHelperKt$computeDiff$hasOverlap$1":I
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->convertOldPositionToNew(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    move v9, v1

    goto :goto_0

    :cond_2
    move v9, v4

    .end local v9    # "it":I
    .end local v10    # "$i$a$-any-NullPaddedListDiffHelperKt$computeDiff$hasOverlap$1":I
    :goto_0
    if-eqz v9, :cond_1

    goto :goto_1

    .line 556
    .end local v8    # "element$iv":I
    :cond_3
    move v1, v4

    .line 84
    .end local v3    # "$this$any$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$any":I
    :goto_1
    nop

    .line 87
    .local v1, "hasOverlap":Z
    new-instance v3, Landroidx/paging/NullPaddedDiffResult;

    .line 88
    nop

    .line 89
    nop

    .line 87
    invoke-direct {v3, v2, v1}, Landroidx/paging/NullPaddedDiffResult;-><init>(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Z)V

    return-object v3
.end method

.method public static final dispatchDiff(Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedDiffResult;)V
    .locals 1
    .param p0, "$this$dispatchDiff"    # Landroidx/paging/NullPaddedList;
    .param p1, "callback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p2, "newList"    # Landroidx/paging/NullPaddedList;
    .param p3, "diffResult"    # Landroidx/paging/NullPaddedDiffResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedDiffResult;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p3}, Landroidx/paging/NullPaddedDiffResult;->getHasOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Landroidx/paging/OverlappingListsDiffDispatcher;->INSTANCE:Landroidx/paging/OverlappingListsDiffDispatcher;

    .line 128
    nop

    .line 129
    nop

    .line 130
    nop

    .line 131
    nop

    .line 127
    invoke-virtual {v0, p0, p2, p1, p3}, Landroidx/paging/OverlappingListsDiffDispatcher;->dispatchDiff(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedDiffResult;)V

    goto :goto_0

    .line 137
    :cond_0
    sget-object v0, Landroidx/paging/DistinctListsDiffDispatcher;->INSTANCE:Landroidx/paging/DistinctListsDiffDispatcher;

    .line 138
    nop

    .line 139
    nop

    .line 140
    nop

    .line 137
    invoke-virtual {v0, p1, p0, p2}, Landroidx/paging/DistinctListsDiffDispatcher;->dispatchDiff(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;)V

    .line 143
    :goto_0
    return-void
.end method

.method public static final transformAnchorIndex(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedDiffResult;Landroidx/paging/NullPaddedList;I)I
    .locals 9
    .param p0, "$this$transformAnchorIndex"    # Landroidx/paging/NullPaddedList;
    .param p1, "diffResult"    # Landroidx/paging/NullPaddedDiffResult;
    .param p2, "newList"    # Landroidx/paging/NullPaddedList;
    .param p3, "oldPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/NullPaddedList<",
            "*>;",
            "Landroidx/paging/NullPaddedDiffResult;",
            "Landroidx/paging/NullPaddedList<",
            "*>;I)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Landroidx/paging/NullPaddedDiffResult;->getHasOverlap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v0

    invoke-static {v1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Lkotlin/ranges/ClosedRange;

    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result v0

    return v0

    .line 160
    :cond_0
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v0

    sub-int v0, p3, v0

    .line 162
    .local v0, "diffIndex":I
    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v2

    .line 165
    .local v2, "oldSize":I
    const/4 v3, 0x1

    if-ltz v0, :cond_1

    if-ge v0, v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v4, :cond_7

    .line 167
    move v4, v1

    :cond_2
    move v5, v4

    .local v5, "i":I
    add-int/2addr v4, v3

    .line 168
    div-int/lit8 v6, v5, 0x2

    rem-int/lit8 v7, v5, 0x2

    const/4 v8, -0x1

    if-ne v7, v3, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    mul-int/2addr v6, v7

    add-int/2addr v6, v0

    .line 171
    .local v6, "positionToTry":I
    if-ltz v6, :cond_5

    invoke-interface {p0}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v7

    if-lt v6, v7, :cond_4

    goto :goto_2

    .line 175
    :cond_4
    invoke-virtual {p1}, Landroidx/paging/NullPaddedDiffResult;->getDiff()Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->convertOldPositionToNew(I)I

    move-result v7

    .line 176
    .local v7, "result":I
    if-eq v7, v8, :cond_6

    .line 178
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    add-int/2addr v1, v7

    return v1

    .line 172
    .end local v7    # "result":I
    :cond_5
    :goto_2
    nop

    .line 167
    .end local v6    # "positionToTry":I
    :cond_6
    const/16 v6, 0x1d

    if-le v4, v6, :cond_2

    .line 184
    .end local v5    # "i":I
    :cond_7
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v3

    invoke-static {v1, v3}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Lkotlin/ranges/ClosedRange;

    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceIn(ILkotlin/ranges/ClosedRange;)I

    move-result v1

    return v1
.end method
