.class public final Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "ExistingCustomersRegistrationFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$3",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "onItemClick",
        "",
        "adapterView",
        "Landroid/widget/AdapterView;",
        "p1",
        "Landroid/view/View;",
        "p2",
        "",
        "p3",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "p1"    # Landroid/view/View;
    .param p3, "p2"    # I
    .param p4, "p3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "null cannot be cast to non-null type com.woleapp.netpos.contactless.model.FBNState"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/woleapp/netpos/contactless/model/FBNState;

    .line 173
    .local v1, "statesList":Lcom/woleapp/netpos/contactless/model/FBNState;
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/FBNState;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;->access$setListOfStates$p(Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;)Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;

    move-result-object v2

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/FBNState;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    invoke-static {v4}, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;->access$getPartnerID$p(Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "partnerID"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v0

    :cond_1
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment$onViewCreated$3;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;

    invoke-static {v5}, Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;->access$getDeviceSerialID$p(Lcom/woleapp/netpos/contactless/ui/fragments/ExistingCustomersRegistrationFragment;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "deviceSerialID"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v0, v5

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/woleapp/netpos/contactless/viewmodels/ContactlessRegViewModel;->getBranches(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method
