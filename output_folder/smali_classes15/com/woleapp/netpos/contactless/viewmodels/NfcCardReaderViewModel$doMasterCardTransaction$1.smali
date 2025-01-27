.class public final Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;
.super Ljava/lang/Object;
.source "NfcCardReaderViewModel.kt"

# interfaces
.implements Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->doMasterCardTransaction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0008\u0010\u000b\u001a\u00020\u0003H\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0012\u0010\r\u001a\u00020\u00032\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u000f\u001a\u00020\u0003H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "com/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1",
        "Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;",
        "logToScreen",
        "",
        "s",
        "",
        "onApplicationEnded",
        "onOnlineReferral",
        "cardData",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "pan",
        "onTransactionCancelled",
        "onTransactionDeclined",
        "onTransactionError",
        "message",
        "onTransactionSuccessful",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logToScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 512
    return-void
.end method

.method public onApplicationEnded()V
    .locals 3

    .line 502
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 503
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->access$get_showWaitingDialog(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 504
    return-void
.end method

.method public onOnlineReferral(Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/String;)V
    .locals 3
    .param p1, "cardData"    # Lcom/danbamitale/epmslib/entities/CardData;
    .param p2, "pan"    # Ljava/lang/String;

    const-string v0, "cardData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->getIccCardHelper()Lcom/woleapp/netpos/contactless/util/ICCCardHelper;

    move-result-object v0

    .local v0, "$this$onOnlineReferral_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    const/4 v1, 0x0

    .line 486
    .local v1, "$i$a$-apply-NfcCardReaderViewModel$doMasterCardTransaction$1$onOnlineReferral$1":I
    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCardData(Lcom/danbamitale/epmslib/entities/CardData;)V

    .line 487
    sget-object v2, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->MASTERCARD:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCardScheme(Ljava/lang/String;)V

    .line 488
    const-string v2, "CUSTOMER"

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/util/ICCCardHelper;->setCustomerName(Ljava/lang/String;)V

    .line 489
    nop

    .line 485
    .end local v0    # "$this$onOnlineReferral_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/util/ICCCardHelper;
    .end local v1    # "$i$a$-apply-NfcCardReaderViewModel$doMasterCardTransaction$1$onOnlineReferral$1":I
    nop

    .line 490
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 491
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->access$get_showWaitingDialog(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 492
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->access$get_showPinPadDialog(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v1, p2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 493
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "on online referral"

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method public onTransactionCancelled()V
    .locals 3

    .line 507
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 508
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->access$get_showWaitingDialog(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 509
    return-void
.end method

.method public onTransactionDeclined()V
    .locals 3

    .line 497
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 498
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->access$get_showWaitingDialog(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method public onTransactionError(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 515
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doMasterCardTransaction$1;->this$0:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->access$get_message(Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v1, p1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 516
    return-void
.end method

.method public onTransactionSuccessful()V
    .locals 0

    .line 482
    return-void
.end method
