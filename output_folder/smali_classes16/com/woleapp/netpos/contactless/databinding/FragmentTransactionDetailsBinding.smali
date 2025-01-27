.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentTransactionDetailsBinding.java"


# instance fields
.field public final actionButton:Landroid/widget/Button;

.field public final actionProgress:Landroid/widget/ProgressBar;

.field public final actionProgress1:Landroid/widget/ProgressBar;

.field public final details:Landroid/widget/TextView;

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final message:Landroid/widget/TextView;

.field public final preAuthComplete:Landroid/widget/Button;

.field public final preAuthRefund:Landroid/widget/Button;

.field public final transactionsHeader:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "actionButton"    # Landroid/widget/Button;
    .param p5, "actionProgress"    # Landroid/widget/ProgressBar;
    .param p6, "actionProgress1"    # Landroid/widget/ProgressBar;
    .param p7, "details"    # Landroid/widget/TextView;
    .param p8, "message"    # Landroid/widget/TextView;
    .param p9, "preAuthComplete"    # Landroid/widget/Button;
    .param p10, "preAuthRefund"    # Landroid/widget/Button;
    .param p11, "transactionsHeader"    # Landroid/widget/TextView;
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "actionButton",
            "actionProgress",
            "actionProgress1",
            "details",
            "message",
            "preAuthComplete",
            "preAuthRefund",
            "transactionsHeader"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 53
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->actionButton:Landroid/widget/Button;

    .line 54
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->actionProgress:Landroid/widget/ProgressBar;

    .line 55
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->actionProgress1:Landroid/widget/ProgressBar;

    .line 56
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->details:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->message:Landroid/widget/TextView;

    .line 58
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->preAuthComplete:Landroid/widget/Button;

    .line 59
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->preAuthRefund:Landroid/widget/Button;

    .line 60
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->transactionsHeader:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;
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

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;
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

    .line 123
    const v0, 0x7f0d0057

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;
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

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;
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

    .line 73
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;
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

    .line 87
    const v0, 0x7f0d0057

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;
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

    .line 106
    const v0, 0x7f0d0057

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;

    return-object v0
.end method


# virtual methods
.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentTransactionDetailsBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;

    return-object v0
.end method

.method public abstract setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/TransactionsViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewmodel"
        }
    .end annotation
.end method
