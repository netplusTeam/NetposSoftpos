.class public final Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment$onCreateView$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "CompleteQrPaymentWebViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment$onCreateView$1",
        "Landroidx/activity/OnBackPressedCallback;",
        "handleOnBackPressed",
        "",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)V
    .locals 1
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;->access$getWbView$p(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "wbView"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;->access$getWbView$p(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;->access$getWbView$p(Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/CompleteQrPaymentWebViewFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 65
    :goto_1
    return-void
.end method
