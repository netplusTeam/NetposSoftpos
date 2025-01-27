.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentSalesBinding.java"


# instance fields
.field public final cashbackCurrencyTextbox:Landroid/widget/TextView;

.field public final cashbackInputLayout:Landroid/widget/LinearLayout;

.field public final cashbackTextbox:Landroid/widget/EditText;

.field public final currencyTextbox:Landroid/widget/TextView;

.field public final enterName:Landroid/widget/EditText;

.field public final enterPin:Landroid/widget/EditText;

.field protected mType:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final priceInputLayout:Landroid/widget/LinearLayout;

.field public final priceTextbox:Landroid/widget/EditText;

.field public final process:Landroid/widget/Button;

.field public final remark:Landroid/widget/EditText;

.field public final salesHeader:Landroid/widget/TextView;

.field public final selectTransactionSpinner:Landroid/widget/Spinner;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "cashbackCurrencyTextbox"    # Landroid/widget/TextView;
    .param p5, "cashbackInputLayout"    # Landroid/widget/LinearLayout;
    .param p6, "cashbackTextbox"    # Landroid/widget/EditText;
    .param p7, "currencyTextbox"    # Landroid/widget/TextView;
    .param p8, "enterName"    # Landroid/widget/EditText;
    .param p9, "enterPin"    # Landroid/widget/EditText;
    .param p10, "priceInputLayout"    # Landroid/widget/LinearLayout;
    .param p11, "priceTextbox"    # Landroid/widget/EditText;
    .param p12, "process"    # Landroid/widget/Button;
    .param p13, "remark"    # Landroid/widget/EditText;
    .param p14, "salesHeader"    # Landroid/widget/TextView;
    .param p15, "selectTransactionSpinner"    # Landroid/widget/Spinner;
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "cashbackCurrencyTextbox",
            "cashbackInputLayout",
            "cashbackTextbox",
            "currencyTextbox",
            "enterName",
            "enterPin",
            "priceInputLayout",
            "priceTextbox",
            "process",
            "remark",
            "salesHeader",
            "selectTransactionSpinner"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 71
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->cashbackCurrencyTextbox:Landroid/widget/TextView;

    .line 72
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->cashbackInputLayout:Landroid/widget/LinearLayout;

    .line 73
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->cashbackTextbox:Landroid/widget/EditText;

    .line 74
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->currencyTextbox:Landroid/widget/TextView;

    .line 75
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->enterName:Landroid/widget/EditText;

    .line 76
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->enterPin:Landroid/widget/EditText;

    .line 77
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->priceInputLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->priceTextbox:Landroid/widget/EditText;

    .line 79
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->process:Landroid/widget/Button;

    .line 80
    iput-object p13, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->remark:Landroid/widget/EditText;

    .line 81
    iput-object p14, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->salesHeader:Landroid/widget/TextView;

    .line 82
    iput-object p15, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->selectTransactionSpinner:Landroid/widget/Spinner;

    .line 83
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
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

    .line 139
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
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

    .line 151
    const v0, 0x7f0d0055

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
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

    .line 121
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
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

    .line 102
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
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

    .line 116
    const v0, 0x7f0d0055

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;
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

    .line 135
    const v0, 0x7f0d0055

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    return-object v0
.end method

.method public abstract setType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewmodel"
        }
    .end annotation
.end method
