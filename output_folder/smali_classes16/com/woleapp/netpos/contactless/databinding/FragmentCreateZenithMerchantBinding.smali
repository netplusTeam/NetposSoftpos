.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentCreateZenithMerchantBinding.java"


# instance fields
.field public final bvnWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final citySpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field public final citySpinnerLabel:Landroid/widget/TextView;

.field public final getMCC:Landroid/widget/TextView;

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final progress:Landroid/widget/ProgressBar;

.field public final qrRegistration:Landroid/widget/TextView;

.field public final register:Landroid/widget/Button;

.field public final statesSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

.field public final zenithLogo:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/textfield/TextInputLayout;Landroidx/appcompat/widget/AppCompatSpinner;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/Button;Landroidx/appcompat/widget/AppCompatSpinner;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "bvnWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p5, "citySpinner"    # Landroidx/appcompat/widget/AppCompatSpinner;
    .param p6, "citySpinnerLabel"    # Landroid/widget/TextView;
    .param p7, "getMCC"    # Landroid/widget/TextView;
    .param p8, "progress"    # Landroid/widget/ProgressBar;
    .param p9, "qrRegistration"    # Landroid/widget/TextView;
    .param p10, "register"    # Landroid/widget/Button;
    .param p11, "statesSpinner"    # Landroidx/appcompat/widget/AppCompatSpinner;
    .param p12, "zenithLogo"    # Landroid/widget/ImageView;
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
            "bvnWrapper",
            "citySpinner",
            "citySpinnerLabel",
            "getMCC",
            "progress",
            "qrRegistration",
            "register",
            "statesSpinner",
            "zenithLogo"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 59
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->bvnWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 60
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->citySpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 61
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->citySpinnerLabel:Landroid/widget/TextView;

    .line 62
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->getMCC:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->progress:Landroid/widget/ProgressBar;

    .line 64
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->qrRegistration:Landroid/widget/TextView;

    .line 65
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->register:Landroid/widget/Button;

    .line 66
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->statesSpinner:Landroidx/appcompat/widget/AppCompatSpinner;

    .line 67
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->zenithLogo:Landroid/widget/ImageView;

    .line 68
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
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

    .line 117
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
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

    .line 130
    const v0, 0x7f0d0042

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
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

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
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

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
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

    .line 94
    const v0, 0x7f0d0042

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;
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

    .line 113
    const v0, 0x7f0d0042

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;

    return-object v0
.end method


# virtual methods
.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentCreateZenithMerchantBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;

    return-object v0
.end method

.method public abstract setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/QRViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewmodel"
        }
    .end annotation
.end method
