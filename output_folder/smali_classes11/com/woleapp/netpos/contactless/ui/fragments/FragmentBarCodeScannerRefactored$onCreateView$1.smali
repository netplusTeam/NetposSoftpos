.class public final Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onCreateView$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "FragmentBarCodeScannerRefactored.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onCreateView$1",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V
    .locals 1
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 5

    .line 72
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    move-object v2, v1

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v3, "requireView()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    const v4, 0x7f1301a9

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.scanning_not_completed)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 74
    return-void
.end method
