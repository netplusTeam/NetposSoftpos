.class public final Landroidx/paging/NullPaddedDiffResult;
.super Ljava/lang/Object;
.source "NullPaddedListDiffHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/paging/NullPaddedDiffResult;",
        "",
        "diff",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "hasOverlap",
        "",
        "(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Z)V",
        "getDiff",
        "()Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "getHasOverlap",
        "()Z",
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
.field private final diff:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field private final hasOverlap:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Z)V
    .locals 1
    .param p1, "diff"    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .param p2, "hasOverlap"    # Z

    const-string v0, "diff"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Landroidx/paging/NullPaddedDiffResult;->diff:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    .line 190
    iput-boolean p2, p0, Landroidx/paging/NullPaddedDiffResult;->hasOverlap:Z

    .line 187
    return-void
.end method


# virtual methods
.method public final getDiff()Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .locals 1

    .line 188
    iget-object v0, p0, Landroidx/paging/NullPaddedDiffResult;->diff:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    return-object v0
.end method

.method public final getHasOverlap()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Landroidx/paging/NullPaddedDiffResult;->hasOverlap:Z

    return v0
.end method
