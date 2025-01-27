.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutBankDetailsBinding.java"


# instance fields
.field public final accountName:Landroid/widget/TextView;

.field public final accountNumber:Landroid/widget/TextView;

.field public final accountNumber2:Landroid/widget/TextView;

.field public final bank:Landroid/widget/TextView;

.field public final bank2:Landroid/widget/TextView;

.field public final btnDone:Landroid/widget/Button;

.field public final divider:Landroid/view/View;

.field public final note:Landroid/widget/TextView;

.field public final reference:Landroid/widget/TextView;

.field public final tap:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "accountName"    # Landroid/widget/TextView;
    .param p5, "accountNumber"    # Landroid/widget/TextView;
    .param p6, "accountNumber2"    # Landroid/widget/TextView;
    .param p7, "bank"    # Landroid/widget/TextView;
    .param p8, "bank2"    # Landroid/widget/TextView;
    .param p9, "btnDone"    # Landroid/widget/Button;
    .param p10, "divider"    # Landroid/view/View;
    .param p11, "note"    # Landroid/widget/TextView;
    .param p12, "reference"    # Landroid/widget/TextView;
    .param p13, "tap"    # Landroid/widget/TextView;
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
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "accountName",
            "accountNumber",
            "accountNumber2",
            "bank",
            "bank2",
            "btnDone",
            "divider",
            "note",
            "reference",
            "tap"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 53
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->accountName:Landroid/widget/TextView;

    .line 54
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->accountNumber:Landroid/widget/TextView;

    .line 55
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->accountNumber2:Landroid/widget/TextView;

    .line 56
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->bank:Landroid/widget/TextView;

    .line 57
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->bank2:Landroid/widget/TextView;

    .line 58
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->btnDone:Landroid/widget/Button;

    .line 59
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->divider:Landroid/view/View;

    .line 60
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->note:Landroid/widget/TextView;

    .line 61
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->reference:Landroid/widget/TextView;

    .line 62
    iput-object p13, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->tap:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;
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

    .line 105
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;
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

    .line 117
    const v0, 0x7f0d0061

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;
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

    .line 87
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;
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

    .line 68
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;
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

    .line 82
    const v0, 0x7f0d0061

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;
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

    .line 101
    const v0, 0x7f0d0061

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;

    return-object v0
.end method
