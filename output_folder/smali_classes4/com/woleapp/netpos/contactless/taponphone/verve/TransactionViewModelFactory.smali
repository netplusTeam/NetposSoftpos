.class public final Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;
.super Ljava/lang/Object;
.source "TransactionViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J%\u0010\t\u001a\u0002H\n\"\u0008\u0008\u0000\u0010\n*\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\n0\rH\u0016\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "context",
        "Landroid/content/Context;",
        "nfcListener",
        "Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;",
        "transactionParameters",
        "Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;",
        "(Landroid/content/Context;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;)V",
        "create",
        "T",
        "Landroidx/lifecycle/ViewModel;",
        "modelClass",
        "Ljava/lang/Class;",
        "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final nfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

.field private final transactionParameters:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcListener"    # Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;
    .param p3, "transactionParameters"    # Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nfcListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;->context:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;->nfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    .line 12
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;->transactionParameters:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    .line 9
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 4
    .param p1, "modelClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;->nfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/TransactionViewModelFactory;->transactionParameters:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;-><init>(Landroid/content/Context;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;)V

    check-cast v0, Landroidx/lifecycle/ViewModel;

    return-object v0
.end method
