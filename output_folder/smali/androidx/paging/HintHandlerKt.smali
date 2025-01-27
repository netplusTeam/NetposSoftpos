.class public final Landroidx/paging/HintHandlerKt;
.super Ljava/lang/Object;
.source "HintHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "shouldPrioritizeOver",
        "",
        "Landroidx/paging/ViewportHint;",
        "previous",
        "loadType",
        "Landroidx/paging/LoadType;",
        "paging-common"
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
.method public static final shouldPrioritizeOver(Landroidx/paging/ViewportHint;Landroidx/paging/ViewportHint;Landroidx/paging/LoadType;)Z
    .locals 4
    .param p0, "$this$shouldPrioritizeOver"    # Landroidx/paging/ViewportHint;
    .param p1, "previous"    # Landroidx/paging/ViewportHint;
    .param p2, "loadType"    # Landroidx/paging/LoadType;

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    nop

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 152
    :cond_0
    instance-of v2, p1, Landroidx/paging/ViewportHint$Initial;

    if-eqz v2, :cond_1

    instance-of v2, p0, Landroidx/paging/ViewportHint$Access;

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 153
    :cond_1
    instance-of v2, p0, Landroidx/paging/ViewportHint$Initial;

    if-eqz v2, :cond_2

    instance-of v2, p1, Landroidx/paging/ViewportHint$Access;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Landroidx/paging/ViewportHint;->getOriginalPageOffsetFirst()I

    move-result v2

    invoke-virtual {p1}, Landroidx/paging/ViewportHint;->getOriginalPageOffsetFirst()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {p0}, Landroidx/paging/ViewportHint;->getOriginalPageOffsetLast()I

    move-result v2

    invoke-virtual {p1}, Landroidx/paging/ViewportHint;->getOriginalPageOffsetLast()I

    move-result v3

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p1, p2}, Landroidx/paging/ViewportHint;->presentedItemsBeyondAnchor$paging_common(Landroidx/paging/LoadType;)I

    move-result v2

    invoke-virtual {p0, p2}, Landroidx/paging/ViewportHint;->presentedItemsBeyondAnchor$paging_common(Landroidx/paging/LoadType;)I

    move-result v3

    if-gt v2, v3, :cond_5

    .line 161
    goto :goto_0

    .line 162
    :cond_5
    move v0, v1

    .line 149
    :goto_0
    return v0
.end method
