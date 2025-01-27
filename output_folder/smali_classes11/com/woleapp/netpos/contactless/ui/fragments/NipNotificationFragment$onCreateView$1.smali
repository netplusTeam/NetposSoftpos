.class final Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NipNotificationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

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

    check-cast v0, Lcom/woleapp/netpos/contactless/model/Service;

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;->invoke(Lcom/woleapp/netpos/contactless/model/Service;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lcom/woleapp/netpos/contactless/model/Service;)V
    .locals 8
    .param p1, "it"    # Lcom/woleapp/netpos/contactless/model/Service;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/Service;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 67
    :pswitch_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationSearch;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationSearch;-><init>()V

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 64
    :pswitch_1
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->access$showCalendarDialog(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;)V

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

    move-object v1, v0

    check-cast v1, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    .line 59
    sget-object v2, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;

    .line 60
    const/4 v3, 0x1

    .line 59
    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;->newInstance$default(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;IJILjava/lang/Object;)Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 58
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Please wait!!!"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->access$getCode(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;)V

    .line 69
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
