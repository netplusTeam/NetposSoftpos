.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentNewOrExistingBinding.java"


# instance fields
.field public final confirmationOptions:Landroid/widget/LinearLayout;

.field public final confirmationTvMessage:Landroid/widget/TextView;

.field public final confirmationTvNo:Landroid/widget/TextView;

.field public final confirmationTvTitle:Landroid/widget/TextView;

.field public final confirmationTvYes:Landroid/widget/TextView;

.field public final enterAccountNumber:Landroid/widget/Button;

.field public final linearOptions2:Landroid/widget/LinearLayout;

.field public final newOrExistingCardview:Landroidx/cardview/widget/CardView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/cardview/widget/CardView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "confirmationOptions"    # Landroid/widget/LinearLayout;
    .param p5, "confirmationTvMessage"    # Landroid/widget/TextView;
    .param p6, "confirmationTvNo"    # Landroid/widget/TextView;
    .param p7, "confirmationTvTitle"    # Landroid/widget/TextView;
    .param p8, "confirmationTvYes"    # Landroid/widget/TextView;
    .param p9, "enterAccountNumber"    # Landroid/widget/Button;
    .param p10, "linearOptions2"    # Landroid/widget/LinearLayout;
    .param p11, "newOrExistingCardview"    # Landroidx/cardview/widget/CardView;
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
            "confirmationOptions",
            "confirmationTvMessage",
            "confirmationTvNo",
            "confirmationTvTitle",
            "confirmationTvYes",
            "enterAccountNumber",
            "linearOptions2",
            "newOrExistingCardview"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->confirmationOptions:Landroid/widget/LinearLayout;

    .line 50
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->confirmationTvMessage:Landroid/widget/TextView;

    .line 51
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->confirmationTvNo:Landroid/widget/TextView;

    .line 52
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->confirmationTvTitle:Landroid/widget/TextView;

    .line 53
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->confirmationTvYes:Landroid/widget/TextView;

    .line 54
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->enterAccountNumber:Landroid/widget/Button;

    .line 55
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->linearOptions2:Landroid/widget/LinearLayout;

    .line 56
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->newOrExistingCardview:Landroidx/cardview/widget/CardView;

    .line 57
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;
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

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;
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

    .line 111
    const v0, 0x7f0d0049

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;
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

    .line 81
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;
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

    .line 62
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;
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

    .line 76
    const v0, 0x7f0d0049

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;
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

    .line 95
    const v0, 0x7f0d0049

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNewOrExistingBinding;

    return-object v0
.end method
