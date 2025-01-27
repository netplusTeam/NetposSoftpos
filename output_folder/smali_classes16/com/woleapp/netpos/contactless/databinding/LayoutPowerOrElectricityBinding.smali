.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutPowerOrElectricityBinding.java"


# instance fields
.field public final enterEmailAddress:Landroid/widget/EditText;

.field public final enterMeterNumber:Landroid/widget/EditText;

.field public final enterMobileNumber:Landroid/widget/EditText;

.field public final header:Landroid/widget/TextView;

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final meterType:Landroid/widget/Spinner;

.field public final priceInputLayout:Landroid/widget/LinearLayout;

.field public final productsSpinner:Landroid/widget/Spinner;

.field public final selectACategory:Landroid/widget/Spinner;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/LinearLayout;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "enterEmailAddress"    # Landroid/widget/EditText;
    .param p5, "enterMeterNumber"    # Landroid/widget/EditText;
    .param p6, "enterMobileNumber"    # Landroid/widget/EditText;
    .param p7, "header"    # Landroid/widget/TextView;
    .param p8, "meterType"    # Landroid/widget/Spinner;
    .param p9, "priceInputLayout"    # Landroid/widget/LinearLayout;
    .param p10, "productsSpinner"    # Landroid/widget/Spinner;
    .param p11, "selectACategory"    # Landroid/widget/Spinner;
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
            "enterEmailAddress",
            "enterMeterNumber",
            "enterMobileNumber",
            "header",
            "meterType",
            "priceInputLayout",
            "productsSpinner",
            "selectACategory"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 54
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->enterEmailAddress:Landroid/widget/EditText;

    .line 55
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->enterMeterNumber:Landroid/widget/EditText;

    .line 56
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->enterMobileNumber:Landroid/widget/EditText;

    .line 57
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->header:Landroid/widget/TextView;

    .line 58
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->meterType:Landroid/widget/Spinner;

    .line 59
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->priceInputLayout:Landroid/widget/LinearLayout;

    .line 60
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->productsSpinner:Landroid/widget/Spinner;

    .line 61
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->selectACategory:Landroid/widget/Spinner;

    .line 62
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;
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

    .line 111
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;
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

    .line 124
    const v0, 0x7f0d006e

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;
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

    .line 93
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;
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

    .line 74
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;
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

    .line 88
    const v0, 0x7f0d006e

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;
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

    .line 107
    const v0, 0x7f0d006e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;

    return-object v0
.end method


# virtual methods
.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

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
