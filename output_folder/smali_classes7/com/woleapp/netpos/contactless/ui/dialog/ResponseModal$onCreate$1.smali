.class final Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ResponseModal.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "bundle",
        "Landroid/os/Bundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->invoke(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "bundle"    # Landroid/os/Bundle;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bundle"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    .line 51
    const-string v0, "QR_TRANSACTION_RESULT_BUNDLE_KEY"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 50
    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$setResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    .line 52
    iget-object p1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    .line 53
    invoke-static {p1}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$getResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$getResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$getResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$saveTransactionIntoDb(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$getNfcCardReaderViewModel(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$getResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->setQrTransactionResponse(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    .line 56
    new-instance v0, Lcom/woleapp/netpos/contactless/model/ModalData;

    .line 57
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$getResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getResponseCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "00"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 58
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;->this$0:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$getResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getAmount()J

    move-result-wide v2

    long-to-double v2, v2

    .line 56
    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/ModalData;-><init>(ZD)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcom/woleapp/netpos/contactless/model/ModalData;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/model/ModalData;-><init>(ZD)V

    .line 52
    :goto_0
    invoke-static {p1, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->access$setModalData$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Lcom/woleapp/netpos/contactless/model/ModalData;)V

    .line 63
    return-void
.end method
