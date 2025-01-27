.class public final Landroidx/paging/DistinctListsDiffDispatcher;
.super Ljava/lang/Object;
.source "NullPaddedListDiffHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J8\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0001H\u0002J4\u0010\r\u001a\u00020\u0004\"\u0008\u0008\u0000\u0010\u000e*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u000e0\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/paging/DistinctListsDiffDispatcher;",
        "",
        "()V",
        "dispatchChange",
        "",
        "callback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "startBoundary",
        "",
        "endBoundary",
        "start",
        "end",
        "payload",
        "dispatchDiff",
        "T",
        "oldList",
        "Landroidx/paging/NullPaddedList;",
        "newList",
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


# static fields
.field public static final INSTANCE:Landroidx/paging/DistinctListsDiffDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/paging/DistinctListsDiffDispatcher;

    invoke-direct {v0}, Landroidx/paging/DistinctListsDiffDispatcher;-><init>()V

    sput-object v0, Landroidx/paging/DistinctListsDiffDispatcher;->INSTANCE:Landroidx/paging/DistinctListsDiffDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V
    .locals 2
    .param p1, "callback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p2, "startBoundary"    # I
    .param p3, "endBoundary"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "payload"    # Ljava/lang/Object;

    .line 543
    sub-int v0, p2, p4

    .line 544
    .local v0, "beforeOverlapCount":I
    if-lez v0, :cond_0

    .line 545
    invoke-interface {p1, p4, v0, p6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 547
    :cond_0
    sub-int v1, p5, p3

    .line 548
    .local v1, "afterOverlapCount":I
    if-lez v1, :cond_1

    .line 549
    invoke-interface {p1, p3, v1, p6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 551
    :cond_1
    return-void
.end method


# virtual methods
.method public final dispatchDiff(Landroidx/recyclerview/widget/ListUpdateCallback;Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;)V
    .locals 12
    .param p1, "callback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .param p2, "oldList"    # Landroidx/paging/NullPaddedList;
    .param p3, "newList"    # Landroidx/paging/NullPaddedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v0

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    .line 491
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 495
    .local v0, "storageOverlapStart":I
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 496
    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v2

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 494
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 499
    .local v1, "storageOverlapEnd":I
    sub-int v2, v1, v0

    .line 500
    .local v2, "overlappingStorageSize":I
    if-lez v2, :cond_0

    .line 501
    invoke-interface {p1, v0, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 502
    invoke-interface {p1, v0, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 507
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 508
    .local v10, "changeEventStartBoundary":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 509
    .local v11, "changeEventEndBoundary":I
    nop

    .line 510
    nop

    .line 511
    nop

    .line 512
    nop

    .line 513
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v3

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v7

    .line 514
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v3

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    .line 515
    sget-object v9, Landroidx/paging/DiffingChangePayload;->ITEM_TO_PLACEHOLDER:Landroidx/paging/DiffingChangePayload;

    .line 509
    move-object v3, p0

    move-object v4, p1

    move v5, v10

    move v6, v11

    invoke-direct/range {v3 .. v9}, Landroidx/paging/DistinctListsDiffDispatcher;->dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V

    .line 518
    nop

    .line 519
    nop

    .line 520
    nop

    .line 521
    nop

    .line 522
    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v3

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v7

    .line 523
    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v3

    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v4

    add-int/2addr v3, v4

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    invoke-static {v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v8

    .line 524
    sget-object v9, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_TO_ITEM:Landroidx/paging/DiffingChangePayload;

    .line 518
    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v9}, Landroidx/paging/DistinctListsDiffDispatcher;->dispatchChange(Landroidx/recyclerview/widget/ListUpdateCallback;IIIILjava/lang/Object;)V

    .line 527
    invoke-interface {p3}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v3

    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    sub-int/2addr v3, v4

    .line 528
    .local v3, "itemsToAdd":I
    if-lez v3, :cond_1

    .line 529
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    invoke-interface {p1, v4, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_0

    .line 530
    :cond_1
    if-gez v3, :cond_2

    .line 531
    invoke-interface {p2}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    add-int/2addr v4, v3

    neg-int v5, v3

    invoke-interface {p1, v4, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 533
    :cond_2
    :goto_0
    return-void
.end method
