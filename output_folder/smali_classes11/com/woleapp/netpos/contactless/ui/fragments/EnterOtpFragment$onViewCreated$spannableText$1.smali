.class final Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EnterOtpFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 11

    .line 124
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->retrieveQrPostPayloadFromSharedPrefs()Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;

    move-result-object v0

    .line 125
    .local v0, "qrDataToResend":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    move-object v2, v0

    .local v2, "it":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    const/4 v3, 0x0

    .line 126
    .local v3, "$i$a$-let-EnterOtpFragment$onViewCreated$spannableText$1$1":I
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->setScannedQrIsVerveCard(Z)V

    .line 127
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->postScannedQrRequestToServer(Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;)V

    .line 128
    sget-object v5, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v6, v1

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 129
    invoke-static {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getSendQrToServerResponse()Landroidx/lifecycle/LiveData;

    move-result-object v7

    .line 130
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    invoke-direct {v8}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;-><init>()V

    .line 131
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v9

    const-string v4, "requireActivity().supportFragmentManager"

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1$1$1;

    invoke-direct {v4, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$spannableText$1$1$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)V

    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v5 .. v10}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 135
    nop

    .line 125
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/model/PostQrToServerModel;
    .end local v3    # "$i$a$-let-EnterOtpFragment$onViewCreated$spannableText$1$1":I
    nop

    .line 136
    :cond_0
    return-void
.end method
