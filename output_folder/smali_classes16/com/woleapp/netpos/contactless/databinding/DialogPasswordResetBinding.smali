.class public abstract Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogPasswordResetBinding.java"


# instance fields
.field public final authProgress:Landroid/widget/ProgressBar;

.field public final btnResetPassword:Landroid/widget/Button;

.field public final closeDialog:Landroid/widget/ImageView;

.field public final etEmail:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etPassword:Lcom/google/android/material/textfield/TextInputEditText;

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final resetPasswordHeader:Landroid/widget/TextView;

.field public final textInputForgotPassword:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputForgotPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "authProgress"    # Landroid/widget/ProgressBar;
    .param p5, "btnResetPassword"    # Landroid/widget/Button;
    .param p6, "closeDialog"    # Landroid/widget/ImageView;
    .param p7, "etEmail"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p8, "etPassword"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p9, "resetPasswordHeader"    # Landroid/widget/TextView;
    .param p10, "textInputForgotPassword"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p11, "textInputForgotPasswordLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
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
            "authProgress",
            "btnResetPassword",
            "closeDialog",
            "etEmail",
            "etPassword",
            "resetPasswordHeader",
            "textInputForgotPassword",
            "textInputForgotPasswordLayout"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 56
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->authProgress:Landroid/widget/ProgressBar;

    .line 57
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->btnResetPassword:Landroid/widget/Button;

    .line 58
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->closeDialog:Landroid/widget/ImageView;

    .line 59
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    .line 60
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->etPassword:Lcom/google/android/material/textfield/TextInputEditText;

    .line 61
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->resetPasswordHeader:Landroid/widget/TextView;

    .line 62
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->textInputForgotPassword:Lcom/google/android/material/textfield/TextInputLayout;

    .line 63
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->textInputForgotPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 64
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;
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

    .line 113
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;
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

    .line 125
    const v0, 0x7f0d0036

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;
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

    .line 95
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;
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

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;
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

    .line 90
    const v0, 0x7f0d0036

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;
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

    .line 109
    const v0, 0x7f0d0036

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;

    return-object v0
.end method


# virtual methods
.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/DialogPasswordResetBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    return-object v0
.end method

.method public abstract setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewmodel"
        }
    .end annotation
.end method
