.class public final Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$getTransactions$$inlined$map$1;
.super Ljava/lang/Object;
.source "Transformations.kt"

# interfaces
.implements Landroidx/arch/core/util/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->getTransactions()Landroidx/lifecycle/LiveData;
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
    value = "SMAP\nTransformations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transformations.kt\nandroidx/lifecycle/TransformationsKt$map$1\n+ 2 TransactionsViewModel.kt\ncom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel\n*L\n1#1,88:1\n93#2,2:89\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0006\u0010\u0005\u001a\n \u0002*\u0004\u0018\u00018\u00018\u0001\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u00012\u000e\u0010\u0003\u001a\n \u0002*\u0004\u0018\u00018\u00008\u0000H\n\u00a8\u0006\u0004"
    }
    d2 = {
        "X",
        "Y",
        "kotlin.jvm.PlatformType",
        "it",
        "androidx/lifecycle/TransformationsKt$map$1",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;


# direct methods
.method public constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$getTransactions$$inlined$map$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "it"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
            ">;"
        }
    .end annotation

    .line 36
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 89
    .local v1, "$i$a$-map-TransactionsViewModel$getTransactions$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel$getTransactions$$inlined$map$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    invoke-virtual {v2, v0}, Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;->setTransactionList(Ljava/util/List;)V

    .line 90
    nop

    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-map-TransactionsViewModel$getTransactions$1":I
    return-object v0
.end method
