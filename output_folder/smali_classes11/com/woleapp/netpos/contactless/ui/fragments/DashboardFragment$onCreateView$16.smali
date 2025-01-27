.class final Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$16;
.super Lkotlin/jvm/internal/Lambda;
.source "DashboardFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/woleapp/netpos/contactless/model/Service;",
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
        "Lcom/woleapp/netpos/contactless/model/Service;",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$16;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 300
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/model/Service;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$16;->invoke(Lcom/woleapp/netpos/contactless/model/Service;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/woleapp/netpos/contactless/model/Service;)V
    .locals 7
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/model/Service;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/Service;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 312
    :pswitch_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$16;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->access$sendPayload(Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;)V

    goto :goto_0

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$16;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 307
    const v1, 0x7f0a00e8

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/SettingsFragment;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/SettingsFragment;-><init>()V

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 304
    :pswitch_2
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$16;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/BillsFragment;-><init>()V

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 303
    :pswitch_3
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$16;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    sget-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$Companion;->newInstance()Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 302
    :pswitch_4
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment$onCreateView$16;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/DashboardFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/TransactionsFragment;-><init>()V

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 315
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
