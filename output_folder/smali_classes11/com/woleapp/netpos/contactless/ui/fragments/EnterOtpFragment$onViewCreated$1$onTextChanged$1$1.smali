.class final Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EnterOtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    .line 84
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getTransactionResponseFromVerve()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/util/Resource;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    nop

    .line 85
    .local v0, "transactionResponseFromVerve":Ljava/lang/Object;
    nop

    .line 86
    :try_start_0
    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    .line 87
    move-object v2, v0

    check-cast v2, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    .line 86
    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->formatFailedVerveTransRespToExtractIswResponse(Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;)Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;->mapToQrTransactionResponseModel()Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    check-cast v2, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;->mapToQrTransactionResponseModel()Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    move-result-object v2

    move-object v1, v2

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 94
    .local v1, "transResp":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;
    nop

    .line 95
    nop

    .line 96
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 97
    :cond_0
    move-object v2, v3

    .line 98
    :cond_1
    sget-object v4, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MERCHANT_ID()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v1, v3, v2, v4}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;->mapQrTransRespToQrRespFinalModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v2

    .line 93
    nop

    .line 100
    .local v2, "formattedTransactionResp":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    .line 101
    nop

    .line 102
    const/4 v4, 0x1

    new-array v4, v4, [Lkotlin/Pair;

    const/4 v5, 0x0

    const-string v6, "QR_TRANSACTION_RESULT_BUNDLE_KEY"

    invoke-static {v6, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v4

    .line 100
    const-string v5, "QR_TRANSACTION_RESULT_REQUEST_KEY"

    invoke-virtual {v3, v5, v4}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 104
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 106
    new-instance v3, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;-><init>()V

    .line 107
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    .line 108
    nop

    .line 106
    const-string v5, "STRING_QR_RESPONSE_MODAL_DIALOG_TAG"

    invoke-virtual {v3, v4, v5}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 110
    return-void
.end method
