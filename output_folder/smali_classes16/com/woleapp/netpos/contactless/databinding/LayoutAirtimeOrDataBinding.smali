.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutAirtimeOrDataBinding.java"


# instance fields
.field public final confirmMobileNumber:Landroid/widget/EditText;

.field public final currencyTextbox:Landroid/widget/TextView;

.field public final dataOrAirtimeSpinner:Landroid/widget/Spinner;

.field public final dataOrAirtimeSpinnerIcon:Landroid/widget/ImageView;

.field public final enterMobileNumber:Landroid/widget/EditText;

.field public final header:Landroid/widget/TextView;

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final pay:Landroid/widget/Button;

.field public final priceInputLayout:Landroid/widget/LinearLayout;

.field public final priceTextbox:Landroid/widget/EditText;

.field public final selectDataBundleSpinner:Landroid/widget/Spinner;

.field public final selectDataBundleSpinnerIcon:Landroid/widget/ImageView;

.field public final selectNetworkSpinner:Landroid/widget/Spinner;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/ImageView;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "confirmMobileNumber"    # Landroid/widget/EditText;
    .param p5, "currencyTextbox"    # Landroid/widget/TextView;
    .param p6, "dataOrAirtimeSpinner"    # Landroid/widget/Spinner;
    .param p7, "dataOrAirtimeSpinnerIcon"    # Landroid/widget/ImageView;
    .param p8, "enterMobileNumber"    # Landroid/widget/EditText;
    .param p9, "header"    # Landroid/widget/TextView;
    .param p10, "pay"    # Landroid/widget/Button;
    .param p11, "priceInputLayout"    # Landroid/widget/LinearLayout;
    .param p12, "priceTextbox"    # Landroid/widget/EditText;
    .param p13, "selectDataBundleSpinner"    # Landroid/widget/Spinner;
    .param p14, "selectDataBundleSpinnerIcon"    # Landroid/widget/ImageView;
    .param p15, "selectNetworkSpinner"    # Landroid/widget/Spinner;
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
            "confirmMobileNumber",
            "currencyTextbox",
            "dataOrAirtimeSpinner",
            "dataOrAirtimeSpinnerIcon",
            "enterMobileNumber",
            "header",
            "pay",
            "priceInputLayout",
            "priceTextbox",
            "selectDataBundleSpinner",
            "selectDataBundleSpinnerIcon",
            "selectNetworkSpinner"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 69
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->confirmMobileNumber:Landroid/widget/EditText;

    .line 70
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->currencyTextbox:Landroid/widget/TextView;

    .line 71
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->dataOrAirtimeSpinner:Landroid/widget/Spinner;

    .line 72
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->dataOrAirtimeSpinnerIcon:Landroid/widget/ImageView;

    .line 73
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->enterMobileNumber:Landroid/widget/EditText;

    .line 74
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->header:Landroid/widget/TextView;

    .line 75
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->pay:Landroid/widget/Button;

    .line 76
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->priceInputLayout:Landroid/widget/LinearLayout;

    .line 77
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->priceTextbox:Landroid/widget/EditText;

    .line 78
    iput-object p13, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->selectDataBundleSpinner:Landroid/widget/Spinner;

    .line 79
    iput-object p14, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->selectDataBundleSpinnerIcon:Landroid/widget/ImageView;

    .line 80
    iput-object p15, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->selectNetworkSpinner:Landroid/widget/Spinner;

    .line 81
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;
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

    .line 130
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;
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

    .line 142
    const v0, 0x7f0d0060

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;
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

    .line 112
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;
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

    .line 93
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;
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

    .line 107
    const v0, 0x7f0d0060

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;
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

    .line 126
    const v0, 0x7f0d0060

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;

    return-object v0
.end method


# virtual methods
.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAirtimeOrDataBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    return-object v0
.end method

.method public abstract setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewmodel"
        }
    .end annotation
.end method
