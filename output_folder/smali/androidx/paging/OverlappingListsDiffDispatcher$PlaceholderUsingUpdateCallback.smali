.class final Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
.super Ljava/lang/Object;
.source "NullPaddedListDiffHelper.kt"

# interfaces
.implements Landroidx/recyclerview/widget/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/OverlappingListsDiffDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlaceholderUsingUpdateCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ListUpdateCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNullPaddedListDiffHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NullPaddedListDiffHelper.kt\nandroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback\n*L\n1#1,553:1\n232#1:554\n232#1:555\n232#1:556\n232#1:557\n232#1:558\n232#1:559\n232#1:560\n232#1:561\n232#1:562\n232#1:563\n232#1:564\n232#1:565\n*S KotlinDebug\n*F\n+ 1 NullPaddedListDiffHelper.kt\nandroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback\n*L\n315#1:554\n337#1:555\n344#1:556\n364#1:557\n371#1:558\n387#1:559\n412#1:560\n417#1:561\n448#1:562\n455#1:563\n461#1:564\n465#1:565\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0008\u0008\u0002\u0018\u0000 \"*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\"B)\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0007J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0018\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0018\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0006\u0010\u0017\u001a\u00020\u0016J\u0008\u0010\u0018\u001a\u00020\u0016H\u0002J\"\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\t2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0018\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0016J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0016J\u0018\u0010 \u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\tH\u0016J\r\u0010!\u001a\u00020\t*\u00020\tH\u0082\u0008R\u000e\u0010\u0006\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;",
        "T",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "oldList",
        "Landroidx/paging/NullPaddedList;",
        "newList",
        "callback",
        "(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;)V",
        "placeholdersAfter",
        "",
        "placeholdersAfterState",
        "placeholdersBefore",
        "placeholdersBeforeState",
        "storageCount",
        "dispatchInsertAsPlaceholderAfter",
        "",
        "position",
        "count",
        "dispatchInsertAsPlaceholderBefore",
        "dispatchRemovalAsPlaceholdersAfter",
        "dispatchRemovalAsPlaceholdersBefore",
        "fixLeadingPlaceholders",
        "",
        "fixPlaceholders",
        "fixTrailingPlaceholders",
        "onChanged",
        "payload",
        "",
        "onInserted",
        "onMoved",
        "fromPosition",
        "toPosition",
        "onRemoved",
        "offsetForDispatch",
        "Companion",
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
.field public static final Companion:Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback$Companion;

.field private static final UNUSED:I = 0x1

.field private static final USED_FOR_ADDITION:I = 0x3

.field private static final USED_FOR_REMOVAL:I = 0x2


# instance fields
.field private final callback:Landroidx/recyclerview/widget/ListUpdateCallback;

.field private final newList:Landroidx/paging/NullPaddedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/NullPaddedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final oldList:Landroidx/paging/NullPaddedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/paging/NullPaddedList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private placeholdersAfter:I

.field private placeholdersAfterState:I

.field private placeholdersBefore:I

.field private placeholdersBeforeState:I

.field private storageCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->Companion:Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/paging/NullPaddedList;Landroidx/paging/NullPaddedList;Landroidx/recyclerview/widget/ListUpdateCallback;)V
    .locals 1
    .param p1, "oldList"    # Landroidx/paging/NullPaddedList;
    .param p2, "newList"    # Landroidx/paging/NullPaddedList;
    .param p3, "callback"    # Landroidx/recyclerview/widget/ListUpdateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/paging/NullPaddedList<",
            "TT;>;",
            "Landroidx/recyclerview/widget/ListUpdateCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "oldList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->oldList:Landroidx/paging/NullPaddedList;

    .line 215
    iput-object p2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->newList:Landroidx/paging/NullPaddedList;

    .line 216
    iput-object p3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 220
    invoke-interface {p1}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v0

    iput v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    .line 221
    invoke-interface {p1}, Landroidx/paging/NullPaddedList;->getPlaceholdersAfter()I

    move-result v0

    iput v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    .line 222
    invoke-interface {p1}, Landroidx/paging/NullPaddedList;->getStorageCount()I

    move-result v0

    iput v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    .line 226
    const/4 v0, 0x1

    iput v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBeforeState:I

    .line 227
    iput v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfterState:I

    .line 213
    return-void
.end method

.method public static final synthetic access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I
    .locals 1
    .param p0, "$this"    # Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;

    .line 212
    iget v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    return v0
.end method

.method private final dispatchInsertAsPlaceholderAfter(II)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 354
    iget v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 355
    return v1

    .line 357
    :cond_0
    iget v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfterState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 358
    return v1

    .line 360
    :cond_1
    iget v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 361
    .local v0, "asPlaceholderChange":I
    if-lez v0, :cond_2

    .line 362
    const/4 v1, 0x3

    iput v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfterState:I

    .line 363
    iget-object v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 364
    move v2, p1

    .local v2, "$this$offsetForDispatch$iv":I
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v4, 0x0

    .line 557
    .local v4, "$i$f$offsetForDispatch":I
    invoke-static {v3}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v5

    add-int/2addr v2, v5

    .line 364
    .end local v2    # "$this$offsetForDispatch$iv":I
    .end local v3    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v4    # "$i$f$offsetForDispatch":I
    sget-object v3, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_TO_ITEM:Landroidx/paging/DiffingChangePayload;

    .line 363
    invoke-interface {v1, v2, v0, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 366
    iget v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    .line 368
    :cond_2
    sub-int v1, p2, v0

    .line 369
    .local v1, "asInsert":I
    if-lez v1, :cond_3

    .line 370
    iget-object v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 371
    add-int v3, p1, v0

    .local v3, "$this$offsetForDispatch$iv":I
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v5, 0x0

    .line 558
    .local v5, "$i$f$offsetForDispatch":I
    invoke-static {v4}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v6

    add-int/2addr v3, v6

    .line 371
    .end local v3    # "$this$offsetForDispatch$iv":I
    .end local v4    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v5    # "$i$f$offsetForDispatch":I
    nop

    .line 370
    invoke-interface {v2, v3, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 374
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private final dispatchInsertAsPlaceholderBefore(II)Z
    .locals 7
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 325
    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 326
    return v0

    .line 328
    :cond_0
    iget v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBeforeState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 329
    return v0

    .line 331
    :cond_1
    iget v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 332
    .local v0, "asPlaceholderChange":I
    if-lez v0, :cond_2

    .line 333
    const/4 v1, 0x3

    iput v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBeforeState:I

    .line 335
    rsub-int/lit8 v1, v0, 0x0

    .line 336
    .local v1, "index":I
    iget-object v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 337
    move v3, v1

    .local v3, "$this$offsetForDispatch$iv":I
    move-object v4, p0

    .local v4, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v5, 0x0

    .line 555
    .local v5, "$i$f$offsetForDispatch":I
    invoke-static {v4}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v6

    add-int/2addr v3, v6

    .line 337
    .end local v3    # "$this$offsetForDispatch$iv":I
    .end local v4    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v5    # "$i$f$offsetForDispatch":I
    sget-object v4, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_TO_ITEM:Landroidx/paging/DiffingChangePayload;

    .line 336
    invoke-interface {v2, v3, v0, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 339
    iget v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    .line 341
    .end local v1    # "index":I
    :cond_2
    sub-int v1, p2, v0

    .line 342
    .local v1, "asInsert":I
    if-lez v1, :cond_3

    .line 343
    iget-object v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 344
    const/4 v3, 0x0

    .restart local v3    # "$this$offsetForDispatch$iv":I
    move-object v4, p0

    .restart local v4    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v5, 0x0

    .line 556
    .restart local v5    # "$i$f$offsetForDispatch":I
    invoke-static {v4}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v6

    add-int/2addr v3, v6

    .line 344
    .end local v3    # "$this$offsetForDispatch$iv":I
    .end local v4    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v5    # "$i$f$offsetForDispatch":I
    nop

    .line 343
    invoke-interface {v2, v3, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 347
    :cond_3
    const/4 v2, 0x1

    return v2
.end method

.method private final dispatchRemovalAsPlaceholdersAfter(II)Z
    .locals 9
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 430
    add-int v0, p1, p2

    .line 431
    .local v0, "end":I
    iget v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 432
    return v2

    .line 434
    :cond_0
    iget v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfterState:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    .line 435
    return v2

    .line 440
    :cond_1
    iget-object v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v1}, Landroidx/paging/NullPaddedList;->getPlaceholdersAfter()I

    move-result v1

    iget v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    sub-int/2addr v1, v3

    .line 441
    .local v1, "maxPlaceholdersToAdd":I
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    .line 442
    .local v2, "asPlaceholders":I
    sub-int v3, p2, v2

    .line 445
    .local v3, "asRemoval":I
    if-lez v2, :cond_2

    .line 446
    const/4 v4, 0x2

    iput v4, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfterState:I

    .line 447
    iget-object v4, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 448
    move v5, p1

    .local v5, "$this$offsetForDispatch$iv":I
    move-object v6, p0

    .local v6, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v7, 0x0

    .line 562
    .local v7, "$i$f$offsetForDispatch":I
    invoke-static {v6}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v8

    add-int/2addr v5, v8

    .line 449
    .end local v5    # "$this$offsetForDispatch$iv":I
    .end local v6    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v7    # "$i$f$offsetForDispatch":I
    nop

    .line 450
    sget-object v6, Landroidx/paging/DiffingChangePayload;->ITEM_TO_PLACEHOLDER:Landroidx/paging/DiffingChangePayload;

    .line 447
    invoke-interface {v4, v5, v2, v6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 452
    iget v4, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    add-int/2addr v4, v2

    iput v4, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    .line 454
    :cond_2
    if-lez v3, :cond_3

    .line 455
    iget-object v4, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    add-int v5, p1, v2

    .restart local v5    # "$this$offsetForDispatch$iv":I
    move-object v6, p0

    .restart local v6    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v7, 0x0

    .line 563
    .restart local v7    # "$i$f$offsetForDispatch":I
    invoke-static {v6}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v8

    add-int/2addr v5, v8

    .line 455
    .end local v5    # "$this$offsetForDispatch$iv":I
    .end local v6    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v7    # "$i$f$offsetForDispatch":I
    invoke-interface {v4, v5, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 457
    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method private final dispatchRemovalAsPlaceholdersBefore(II)Z
    .locals 8
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 397
    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 398
    return v0

    .line 400
    :cond_0
    iget v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBeforeState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 401
    return v0

    .line 406
    :cond_1
    iget-object v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v1}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    iget v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    sub-int/2addr v1, v2

    .line 407
    .local v1, "maxPlaceholdersToAdd":I
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 408
    .local v0, "asPlaceholders":I
    sub-int v2, p2, v0

    .line 411
    .local v2, "asRemoval":I
    if-lez v2, :cond_2

    .line 412
    iget-object v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v4, 0x0

    .local v4, "$this$offsetForDispatch$iv":I
    move-object v5, p0

    .local v5, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v6, 0x0

    .line 560
    .local v6, "$i$f$offsetForDispatch":I
    invoke-static {v5}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v7

    add-int/2addr v4, v7

    .line 412
    .end local v4    # "$this$offsetForDispatch$iv":I
    .end local v5    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v6    # "$i$f$offsetForDispatch":I
    invoke-interface {v3, v4, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 414
    :cond_2
    if-lez v0, :cond_3

    .line 415
    const/4 v3, 0x2

    iput v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBeforeState:I

    .line 416
    iget-object v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 417
    const/4 v4, 0x0

    .restart local v4    # "$this$offsetForDispatch$iv":I
    move-object v5, p0

    .restart local v5    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v6, 0x0

    .line 561
    .restart local v6    # "$i$f$offsetForDispatch":I
    invoke-static {v5}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v7

    add-int/2addr v4, v7

    .line 418
    .end local v4    # "$this$offsetForDispatch$iv":I
    .end local v5    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v6    # "$i$f$offsetForDispatch":I
    nop

    .line 419
    sget-object v5, Landroidx/paging/DiffingChangePayload;->ITEM_TO_PLACEHOLDER:Landroidx/paging/DiffingChangePayload;

    .line 416
    invoke-interface {v3, v4, v0, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 421
    iget v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    add-int/2addr v3, v0

    iput v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    .line 423
    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method private final fixLeadingPlaceholders()V
    .locals 6

    .line 281
    iget-object v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->oldList:Landroidx/paging/NullPaddedList;

    invoke-interface {v0}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v0

    iget v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 282
    .local v0, "unchangedPlaceholders":I
    iget-object v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v1}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v1

    iget v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    sub-int/2addr v1, v2

    .line 283
    .local v1, "prePlaceholdersToAdd":I
    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 284
    if-lez v0, :cond_0

    .line 286
    iget-object v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    sget-object v4, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_POSITION_CHANGE:Landroidx/paging/DiffingChangePayload;

    invoke-interface {v3, v2, v0, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 289
    :cond_0
    iget-object v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v3, v2, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_0

    .line 290
    :cond_1
    if-gez v1, :cond_2

    .line 292
    iget-object v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    neg-int v4, v1

    invoke-interface {v3, v2, v4}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 293
    add-int v3, v0, v1

    if-lez v3, :cond_2

    .line 296
    iget-object v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 297
    add-int v4, v0, v1

    .line 298
    sget-object v5, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_POSITION_CHANGE:Landroidx/paging/DiffingChangePayload;

    .line 296
    invoke-interface {v3, v2, v4, v5}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 302
    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v2}, Landroidx/paging/NullPaddedList;->getPlaceholdersBefore()I

    move-result v2

    iput v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    .line 303
    return-void
.end method

.method private final fixTrailingPlaceholders()V
    .locals 8

    .line 243
    iget-object v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->oldList:Landroidx/paging/NullPaddedList;

    invoke-interface {v0}, Landroidx/paging/NullPaddedList;->getPlaceholdersAfter()I

    move-result v0

    iget v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 245
    .local v0, "unchangedPlaceholders":I
    iget-object v1, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v1}, Landroidx/paging/NullPaddedList;->getPlaceholdersAfter()I

    move-result v1

    iget v2, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    sub-int/2addr v1, v2

    .line 246
    .local v1, "postPlaceholdersToAdd":I
    iget v3, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersBefore:I

    iget v4, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 248
    .local v3, "runningListSize":I
    sub-int v2, v3, v0

    .line 250
    .local v2, "unchangedPlaceholdersStartPos":I
    iget-object v4, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->oldList:Landroidx/paging/NullPaddedList;

    invoke-interface {v4}, Landroidx/paging/NullPaddedList;->getSize()I

    move-result v4

    sub-int/2addr v4, v0

    if-eq v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 249
    :goto_0
    nop

    .line 251
    .local v4, "unchangedPlaceholdersMoved":Z
    if-lez v1, :cond_1

    .line 253
    iget-object v5, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v5, v3, v1}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    goto :goto_1

    .line 254
    :cond_1
    if-gez v1, :cond_2

    .line 258
    iget-object v5, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 259
    add-int v6, v3, v1

    .line 260
    neg-int v7, v1

    .line 258
    invoke-interface {v5, v6, v7}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 264
    add-int/2addr v0, v1

    .line 266
    :cond_2
    :goto_1
    if-lez v0, :cond_3

    if-eqz v4, :cond_3

    .line 269
    iget-object v5, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 270
    nop

    .line 271
    nop

    .line 272
    sget-object v6, Landroidx/paging/DiffingChangePayload;->PLACEHOLDER_POSITION_CHANGE:Landroidx/paging/DiffingChangePayload;

    .line 269
    invoke-interface {v5, v2, v0, v6}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 275
    :cond_3
    iget-object v5, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->newList:Landroidx/paging/NullPaddedList;

    invoke-interface {v5}, Landroidx/paging/NullPaddedList;->getPlaceholdersAfter()I

    move-result v5

    iput v5, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->placeholdersAfter:I

    .line 276
    return-void
.end method

.method private final offsetForDispatch(I)I
    .locals 2
    .param p1, "$this$offsetForDispatch"    # I

    const/4 v0, 0x0

    .line 232
    .local v0, "$i$f$offsetForDispatch":I
    invoke-static {p0}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v1

    add-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method public final fixPlaceholders()V
    .locals 0

    .line 236
    invoke-direct {p0}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->fixLeadingPlaceholders()V

    .line 237
    invoke-direct {p0}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->fixTrailingPlaceholders()V

    .line 238
    return-void
.end method

.method public onChanged(IILjava/lang/Object;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    move v1, p1

    .local v1, "$this$offsetForDispatch$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v3, 0x0

    .line 565
    .local v3, "$i$f$offsetForDispatch":I
    invoke-static {v2}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v4

    add-int/2addr v1, v4

    .line 465
    .end local v1    # "$this$offsetForDispatch$iv":I
    .end local v2    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v3    # "$i$f$offsetForDispatch":I
    invoke-interface {v0, v1, p2, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 466
    return-void
.end method

.method public onInserted(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 306
    nop

    .line 307
    invoke-direct {p0, p1, p2}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->dispatchInsertAsPlaceholderAfter(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->dispatchInsertAsPlaceholderBefore(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    move v1, p1

    .local v1, "$this$offsetForDispatch$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v3, 0x0

    .line 554
    .local v3, "$i$f$offsetForDispatch":I
    invoke-static {v2}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v4

    add-int/2addr v1, v4

    .line 315
    .end local v1    # "$this$offsetForDispatch$iv":I
    .end local v2    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v3    # "$i$f$offsetForDispatch":I
    invoke-interface {v0, v1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 318
    :goto_0
    iget v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    .line 319
    return-void
.end method

.method public onMoved(II)V
    .locals 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 461
    iget-object v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    move v1, p1

    .local v1, "$this$offsetForDispatch$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v3, 0x0

    .line 564
    .local v3, "$i$f$offsetForDispatch":I
    invoke-static {v2}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v4

    add-int/2addr v1, v4

    .line 461
    .end local v1    # "$this$offsetForDispatch$iv":I
    .end local v2    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v3    # "$i$f$offsetForDispatch":I
    move v2, p2

    .local v2, "$this$offsetForDispatch$iv":I
    move-object v3, p0

    .local v3, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v4, 0x0

    .line 564
    .local v4, "$i$f$offsetForDispatch":I
    invoke-static {v3}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v5

    add-int/2addr v2, v5

    .line 461
    .end local v2    # "$this$offsetForDispatch$iv":I
    .end local v3    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v4    # "$i$f$offsetForDispatch":I
    invoke-interface {v0, v1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onMoved(II)V

    .line 462
    return-void
.end method

.method public onRemoved(II)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "count"    # I

    .line 378
    nop

    .line 379
    invoke-direct {p0, p1, p2}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->dispatchRemovalAsPlaceholdersAfter(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->dispatchRemovalAsPlaceholdersBefore(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->callback:Landroidx/recyclerview/widget/ListUpdateCallback;

    move v1, p1

    .local v1, "$this$offsetForDispatch$iv":I
    move-object v2, p0

    .local v2, "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    const/4 v3, 0x0

    .line 559
    .local v3, "$i$f$offsetForDispatch":I
    invoke-static {v2}, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->access$getPlaceholdersBefore$p(Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;)I

    move-result v4

    add-int/2addr v1, v4

    .line 387
    .end local v1    # "$this$offsetForDispatch$iv":I
    .end local v2    # "this_$iv":Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;
    .end local v3    # "$i$f$offsetForDispatch":I
    invoke-interface {v0, v1, p2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 390
    :goto_0
    iget v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/paging/OverlappingListsDiffDispatcher$PlaceholderUsingUpdateCallback;->storageCount:I

    .line 391
    return-void
.end method
