.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment$onCreateView$1;
.super Landroidx/activity/OnBackPressedCallback;
.source "NewOrExistingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment$onCreateView$1",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;)V
    .locals 1
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NewOrExistingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 63
    return-void
.end method
