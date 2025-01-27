.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutCableTvBinding.java"


# instance fields
.field public final daily:Landroid/widget/RadioButton;

.field public final enterSmartCardNumber:Landroid/widget/EditText;

.field public final header:Landroid/widget/TextView;

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final monthly:Landroid/widget/RadioButton;

.field public final planValidityOptions:Landroid/widget/RadioGroup;

.field public final priceInputLayout:Landroid/widget/LinearLayout;

.field public final priceTextbox:Landroid/widget/EditText;

.field public final selectCableTvCategory:Landroid/widget/Spinner;

.field public final selectCableTvPackage:Landroid/widget/Spinner;

.field public final weekly:Landroid/widget/RadioButton;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RadioButton;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/RadioButton;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "daily"    # Landroid/widget/RadioButton;
    .param p5, "enterSmartCardNumber"    # Landroid/widget/EditText;
    .param p6, "header"    # Landroid/widget/TextView;
    .param p7, "monthly"    # Landroid/widget/RadioButton;
    .param p8, "planValidityOptions"    # Landroid/widget/RadioGroup;
    .param p9, "priceInputLayout"    # Landroid/widget/LinearLayout;
    .param p10, "priceTextbox"    # Landroid/widget/EditText;
    .param p11, "selectCableTvCategory"    # Landroid/widget/Spinner;
    .param p12, "selectCableTvPackage"    # Landroid/widget/Spinner;
    .param p13, "weekly"    # Landroid/widget/RadioButton;
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
            "daily",
            "enterSmartCardNumber",
            "header",
            "monthly",
            "planValidityOptions",
            "priceInputLayout",
            "priceTextbox",
            "selectCableTvCategory",
            "selectCableTvPackage",
            "weekly"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 62
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->daily:Landroid/widget/RadioButton;

    .line 63
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->enterSmartCardNumber:Landroid/widget/EditText;

    .line 64
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->header:Landroid/widget/TextView;

    .line 65
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->monthly:Landroid/widget/RadioButton;

    .line 66
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->planValidityOptions:Landroid/widget/RadioGroup;

    .line 67
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->priceInputLayout:Landroid/widget/LinearLayout;

    .line 68
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->priceTextbox:Landroid/widget/EditText;

    .line 69
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->selectCableTvCategory:Landroid/widget/Spinner;

    .line 70
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->selectCableTvPackage:Landroid/widget/Spinner;

    .line 71
    iput-object p13, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->weekly:Landroid/widget/RadioButton;

    .line 72
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;
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

    .line 121
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;
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

    .line 133
    const v0, 0x7f0d0063

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;
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

    .line 103
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;
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

    .line 84
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;
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

    .line 98
    const v0, 0x7f0d0063

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;
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

    .line 117
    const v0, 0x7f0d0063

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;

    return-object v0
.end method


# virtual methods
.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutCableTvBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

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
