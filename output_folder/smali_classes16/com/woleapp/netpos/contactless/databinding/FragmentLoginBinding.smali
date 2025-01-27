.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentLoginBinding.java"


# instance fields
.field public final authProgress:Landroid/widget/ProgressBar;

.field public final btnLogin:Landroid/widget/Button;

.field public final contactlessLogo:Landroid/widget/ImageView;

.field public final etEmail:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etPwd:Lcom/google/android/material/textfield/TextInputEditText;

.field public final forgotPassword:Landroid/widget/TextView;

.field public final loginLabel:Landroid/widget/TextView;

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final privacyPolicy:Landroid/widget/TextView;

.field public final register:Landroid/widget/TextView;

.field public final testMyPhone:Landroid/widget/TextView;

.field public final textInputPwd:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputUname:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ProgressBar;Landroid/widget/Button;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "authProgress"    # Landroid/widget/ProgressBar;
    .param p5, "btnLogin"    # Landroid/widget/Button;
    .param p6, "contactlessLogo"    # Landroid/widget/ImageView;
    .param p7, "etEmail"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p8, "etPwd"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p9, "forgotPassword"    # Landroid/widget/TextView;
    .param p10, "loginLabel"    # Landroid/widget/TextView;
    .param p11, "privacyPolicy"    # Landroid/widget/TextView;
    .param p12, "register"    # Landroid/widget/TextView;
    .param p13, "testMyPhone"    # Landroid/widget/TextView;
    .param p14, "textInputPwd"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p15, "textInputUname"    # Lcom/google/android/material/textfield/TextInputLayout;
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
            "authProgress",
            "btnLogin",
            "contactlessLogo",
            "etEmail",
            "etPwd",
            "forgotPassword",
            "loginLabel",
            "privacyPolicy",
            "register",
            "testMyPhone",
            "textInputPwd",
            "textInputUname"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 69
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->authProgress:Landroid/widget/ProgressBar;

    .line 70
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->btnLogin:Landroid/widget/Button;

    .line 71
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->contactlessLogo:Landroid/widget/ImageView;

    .line 72
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    .line 73
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->etPwd:Lcom/google/android/material/textfield/TextInputEditText;

    .line 74
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->forgotPassword:Landroid/widget/TextView;

    .line 75
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->loginLabel:Landroid/widget/TextView;

    .line 76
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->privacyPolicy:Landroid/widget/TextView;

    .line 77
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->register:Landroid/widget/TextView;

    .line 78
    iput-object p13, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->testMyPhone:Landroid/widget/TextView;

    .line 79
    iput-object p14, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->textInputPwd:Lcom/google/android/material/textfield/TextInputLayout;

    .line 80
    iput-object p15, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->textInputUname:Lcom/google/android/material/textfield/TextInputLayout;

    .line 81
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;
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

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;
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
    const v0, 0x7f0d0048

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;
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

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;
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
    const v0, 0x7f0d0048

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;
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
    const v0, 0x7f0d0048

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;

    return-object v0
.end method


# virtual methods
.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

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
