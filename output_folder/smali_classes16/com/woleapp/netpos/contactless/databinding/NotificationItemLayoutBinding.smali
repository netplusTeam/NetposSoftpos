.class public abstract Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "NotificationItemLayoutBinding.java"


# instance fields
.field public final hasBeenRead:Landroid/view/View;

.field public final incomingMessageCard:Landroidx/cardview/widget/CardView;

.field protected mNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final textView10:Landroid/widget/TextView;

.field public final textView12:Landroid/widget/TextView;

.field public final textView9:Landroid/widget/TextView;

.field public final viewMessage:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "hasBeenRead"    # Landroid/view/View;
    .param p5, "incomingMessageCard"    # Landroidx/cardview/widget/CardView;
    .param p6, "textView10"    # Landroid/widget/TextView;
    .param p7, "textView12"    # Landroid/widget/TextView;
    .param p8, "textView9"    # Landroid/widget/TextView;
    .param p9, "viewMessage"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "hasBeenRead",
            "incomingMessageCard",
            "textView10",
            "textView12",
            "textView9",
            "viewMessage"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->hasBeenRead:Landroid/view/View;

    .line 46
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->incomingMessageCard:Landroidx/cardview/widget/CardView;

    .line 47
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->textView10:Landroid/widget/TextView;

    .line 48
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->textView12:Landroid/widget/TextView;

    .line 49
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->textView9:Landroid/widget/TextView;

    .line 50
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->viewMessage:Landroid/widget/TextView;

    .line 51
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 100
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    const v0, 0x7f0d00ae

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot"
        }
    .end annotation

    .line 63
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
    .locals 1
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "attachToRoot"    # Z
    .param p3, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "root",
            "attachToRoot",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    const v0, 0x7f0d00ae

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "component"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "component"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    const v0, 0x7f0d00ae

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;

    return-object v0
.end method


# virtual methods
.method public getNotification()Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/NotificationItemLayoutBinding;->mNotification:Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    return-object v0
.end method

.method public abstract setNotification(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation
.end method
