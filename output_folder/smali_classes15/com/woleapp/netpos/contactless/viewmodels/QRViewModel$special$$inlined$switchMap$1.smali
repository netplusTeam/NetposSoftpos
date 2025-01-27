.class public final Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$1;
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
    value = "SMAP\nTransformations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformations.kt\nandroidx/lifecycle/TransformationsKt$switchMap$1\n+ 2 QRViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/QRViewModel\n*L\n1#1,88:1\n70#2:89\n*E\n"
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
    .locals 3
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/PaginationHelper;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "+",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 79
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/model/PaginationHelper;

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/PaginationHelper;
    const/4 v1, 0x0

    .line 89
    .local v1, "$i$a$-switchMap-QRViewModel$emptyListLiveData$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/PaginationHelper;->getEmptyResultLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/PaginationHelper;
    .end local v1    # "$i$a$-switchMap-QRViewModel$emptyListLiveData$1":I
    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;

    .line 79
    invoke-virtual {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel$special$$inlined$switchMap$1;->apply(Ljava/lang/Object;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
