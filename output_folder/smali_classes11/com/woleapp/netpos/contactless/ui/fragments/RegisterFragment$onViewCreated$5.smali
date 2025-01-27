.class public final Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "RegisterFragment.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$5",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$5;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    .line 197
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, "null cannot be cast to non-null type com.woleapp.netpos.contactless.model.FBNBranch"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/woleapp/netpos/contactless/model/FBNBranch;

    .line 196
    nop

    .line 198
    .local v1, "branchList":Lcom/woleapp/netpos/contactless/model/FBNBranch;
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$5;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/FBNBranch;->getBranch_name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->access$setListOfBranches$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;Ljava/lang/String;)V

    .line 199
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$5;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    invoke-static {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    move-result-object v2

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment$onViewCreated$5;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;

    invoke-static {v3}, Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;->access$getListOfBranches$p(Lcom/woleapp/netpos/contactless/ui/fragments/RegisterFragment;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "listOfBranches"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->setSelectedBranch(Ljava/lang/String;)V

    .line 200
    return-void
.end method
