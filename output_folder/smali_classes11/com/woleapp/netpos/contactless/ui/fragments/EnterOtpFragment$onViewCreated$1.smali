.class public final Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "EnterOtpFragment.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J*\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016J*\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1",
        "Landroid/text/TextWatcher;",
        "afterTextChanged",
        "",
        "s",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "",
        "start",
        "",
        "count",
        "after",
        "onTextChanged",
        "before",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 116
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 71
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 74
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;

    move-object v1, p1

    .local v1, "it":Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 75
    .local v2, "$i$a$-let-EnterOtpFragment$onViewCreated$1$onTextChanged$1":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 76
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v6, "requireActivity()"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v3, v4, v5}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->closeSoftKeyboard(Landroid/content/Context;Landroid/app/Activity;)V

    .line 77
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->sendOtpForVerveCard(Ljava/lang/String;)V

    .line 78
    sget-object v5, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v6, v0

    check-cast v6, Landroidx/fragment/app/Fragment;

    .line 79
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getTransactionResponseFromVerve()Landroidx/lifecycle/LiveData;

    move-result-object v7

    .line 80
    new-instance v8, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;

    invoke-direct {v8}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;-><init>()V

    .line 81
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v9

    const-string v3, "requireActivity().supportFragmentManager"

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;

    invoke-direct {v3, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment$onViewCreated$1$onTextChanged$1$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/EnterOtpFragment;)V

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-virtual/range {v5 .. v10}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V

    .line 112
    :cond_0
    nop

    .line 74
    .end local v1    # "it":Ljava/lang/CharSequence;
    .end local v2    # "$i$a$-let-EnterOtpFragment$onViewCreated$1$onTextChanged$1":I
    nop

    .line 113
    :cond_1
    return-void
.end method
