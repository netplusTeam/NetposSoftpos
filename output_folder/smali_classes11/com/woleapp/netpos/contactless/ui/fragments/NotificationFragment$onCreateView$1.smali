.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "NotificationFragment.kt"

# interfaces
.implements Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface<",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onCreateView$1",
        "Lcom/woleapp/netpos/contactless/adapter/GenericRecyclerViewBindingInterface;",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        "bindData",
        "",
        "item",
        "view",
        "Landroidx/databinding/ViewDataBinding;",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bindData(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;Landroidx/databinding/ViewDataBinding;)V
    .locals 2
    .param p1, "item"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .param p2, "view"    # Landroidx/databinding/ViewDataBinding;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p2

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;

    .local v0, "$this$bindData_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$a$-apply-NotificationFragment$onCreateView$1$bindData$1":I
    invoke-virtual {v0, p1}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->setNotification(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V

    .line 53
    nop

    .line 51
    .end local v0    # "$this$bindData_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
    .end local v1    # "$i$a$-apply-NotificationFragment$onCreateView$1$bindData$1":I
    nop

    .line 54
    return-void
.end method

.method public bridge synthetic bindData(Ljava/lang/Object;Landroidx/databinding/ViewDataBinding;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "view"    # Landroidx/databinding/ViewDataBinding;

    .line 49
    move-object v0, p1

    check-cast v0, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    invoke-virtual {p0, v0, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NotificationFragment$onCreateView$1;->bindData(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method
