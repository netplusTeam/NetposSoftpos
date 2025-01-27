.class final Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onViewCreated$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NotificationFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/view/View;",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "clickedMessage",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onViewCreated$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 63
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    move-object v1, p2

    check-cast v1, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-virtual {p0, v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onViewCreated$1;->invoke(Landroid/view/View;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/view/View;Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 6
    .param p2, "clickedMessage"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clickedMessage"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onViewCreated$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->access$getNotificationViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;)Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->markMessageAsRead(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    .line 68
    iget-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onViewCreated$1;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;

    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    new-instance p1, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;

    invoke-direct {p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationDetailsFragment;-><init>()V

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->showFragment$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 69
    return-void
.end method
