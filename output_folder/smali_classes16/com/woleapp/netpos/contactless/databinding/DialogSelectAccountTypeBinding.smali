.class public abstract Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogSelectAccountTypeBinding.java"


# instance fields
.field public final accountTypes:Landroid/widget/RadioGroup;

.field public final bonusAccount:Landroid/widget/RadioButton;

.field public final cancelButton:Landroid/widget/Button;

.field public final creditAccount:Landroid/widget/RadioButton;

.field public final currentAccount:Landroid/widget/RadioButton;

.field public final header:Landroid/widget/TextView;

.field public final investmentAccount:Landroid/widget/RadioButton;

.field public final savingsAccount:Landroid/widget/RadioButton;

.field public final universalAccount:Landroid/widget/RadioButton;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/Button;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "accountTypes"    # Landroid/widget/RadioGroup;
    .param p5, "bonusAccount"    # Landroid/widget/RadioButton;
    .param p6, "cancelButton"    # Landroid/widget/Button;
    .param p7, "creditAccount"    # Landroid/widget/RadioButton;
    .param p8, "currentAccount"    # Landroid/widget/RadioButton;
    .param p9, "header"    # Landroid/widget/TextView;
    .param p10, "investmentAccount"    # Landroid/widget/RadioButton;
    .param p11, "savingsAccount"    # Landroid/widget/RadioButton;
    .param p12, "universalAccount"    # Landroid/widget/RadioButton;
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
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "accountTypes",
            "bonusAccount",
            "cancelButton",
            "creditAccount",
            "currentAccount",
            "header",
            "investmentAccount",
            "savingsAccount",
            "universalAccount"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 52
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->accountTypes:Landroid/widget/RadioGroup;

    .line 53
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->bonusAccount:Landroid/widget/RadioButton;

    .line 54
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->cancelButton:Landroid/widget/Button;

    .line 55
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->creditAccount:Landroid/widget/RadioButton;

    .line 56
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->currentAccount:Landroid/widget/RadioButton;

    .line 57
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->header:Landroid/widget/TextView;

    .line 58
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->investmentAccount:Landroid/widget/RadioButton;

    .line 59
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->savingsAccount:Landroid/widget/RadioButton;

    .line 60
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->universalAccount:Landroid/widget/RadioButton;

    .line 61
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
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

    .line 103
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
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

    .line 116
    const v0, 0x7f0d0039

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
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

    .line 85
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
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

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
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

    .line 80
    const v0, 0x7f0d0039

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;
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

    .line 99
    const v0, 0x7f0d0039

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectAccountTypeBinding;

    return-object v0
.end method
