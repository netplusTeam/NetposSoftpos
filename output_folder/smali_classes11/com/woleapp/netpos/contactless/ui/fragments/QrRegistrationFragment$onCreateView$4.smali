.class public final Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;
.super Ljava/lang/Object;
.source "QrRegistrationFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "parent",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "id",
        "",
        "onNothingSelected",
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
.field final synthetic $states:[Ljava/lang/String;

.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;[Ljava/lang/String;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;
    .param p2, "$states"    # [Ljava/lang/String;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    iput-object p2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;->$states:[Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->clearSelectedCity()V

    .line 73
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->citySpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 74
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    const v3, 0x1090009

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 73
    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    check-cast v1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 78
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment;)Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/QrRegistrationFragment$onCreateView$4;->$states:[Ljava/lang/String;

    aget-object v1, v1, p3

    const-string v2, "states[position]"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;->getCities(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 82
    return-void
.end method
