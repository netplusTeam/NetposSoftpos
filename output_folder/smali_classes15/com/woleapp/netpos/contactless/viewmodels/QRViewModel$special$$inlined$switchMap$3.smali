.class public final Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$3;
.super Ljava/lang/Object;
.source "Transformations.kt"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/arch/core/util/Function;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformations.kt\nandroidx/lifecycle/TransformationsKt$switchMap$1\n+ 2 QRViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/QRViewModel\n*L\n1#1,88:1\n94#2,5:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0006\u001a&\u0012\u000c\u0012\n \u0002*\u0004\u0018\u00018\u00018\u0001 \u0002*\u0012\u0012\u000c\u0012\n \u0002*\u0004\u0018\u00018\u00018\u0001\u0018\u00010\u00040\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00018\u00008\u0000H\n\u00a8\u0006\u0005"
    }
    d2 = {
        "X",
        "Y",
        "kotlin.jvm.PlatformType",
        "it",
        "Landroidx/lifecycle/LiveData;",
        "androidx/lifecycle/TransformationsKt$switchMap$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Landroidx/lifecycle/LiveData;
    .locals 5
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/PaginationHelper;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/paging/PagedList<",
            "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
            ">;>;"
        }
    .end annotation

    .line 79
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/PaginationHelper;
    const/4 v1, 0x0

    .line 89
    .local v1, "$i$a$-switchMap-QRViewModel$zenithMccList$1":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->getData()Landroidx/lifecycle/LiveData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/paging/PagedList;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/paging/PagedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->getData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 91
    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "data is null"

    invoke-static {v3, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :cond_1
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->getData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/PaginationHelper;
    .end local v1    # "$i$a$-switchMap-QRViewModel$zenithMccList$1":I
    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$3;->apply(Ljava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
