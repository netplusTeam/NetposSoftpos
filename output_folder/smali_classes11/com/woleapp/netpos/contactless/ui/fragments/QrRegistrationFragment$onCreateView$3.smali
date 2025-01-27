.class final Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$3;
.super Lkotlin/jvm/internal/Lambda;
.source "QrRegistrationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$3;->invoke(Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;)V
    .locals 2
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->access$getMccAlertDialog$p(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "mccAlertDialog"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->cancel()V

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->getMCC:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;->getMerchantCategoryDescription()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->setSelectedMerchantCategory(Lcom/woleapp/netpos/contactless/model/ZenithMerchantCategory;)V

    .line 56
    return-void
.end method
