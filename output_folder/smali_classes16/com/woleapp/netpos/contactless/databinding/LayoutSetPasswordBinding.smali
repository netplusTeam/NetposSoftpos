.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutSetPasswordBinding.java"


# instance fields
.field public final authProgress:Landroid/widget/ProgressBar;

.field public final confirmPasswordEdittext:Lcom/google/android/material/textfield/TextInputEditText;

.field public final confirmPasswordWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final email:Lcom/google/android/material/textfield/TextInputEditText;

.field public final emailWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final passwordEdittext:Lcom/google/android/material/textfield/TextInputEditText;

.field public final passwordWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final reprintPassword:Landroid/widget/TextView;

.field public final save:Landroid/widget/Button;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ProgressBar;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "authProgress"    # Landroid/widget/ProgressBar;
    .param p5, "confirmPasswordEdittext"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "confirmPasswordWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p7, "email"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p8, "emailWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p9, "passwordEdittext"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p10, "passwordWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p11, "reprintPassword"    # Landroid/widget/TextView;
    .param p12, "save"    # Landroid/widget/Button;
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
            "authProgress",
            "confirmPasswordEdittext",
            "confirmPasswordWrapper",
            "email",
            "emailWrapper",
            "passwordEdittext",
            "passwordWrapper",
            "reprintPassword",
            "save"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 54
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->authProgress:Landroid/widget/ProgressBar;

    .line 55
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->confirmPasswordEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    .line 56
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->confirmPasswordWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 57
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    .line 58
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->emailWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 59
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->passwordEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    .line 60
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->passwordWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 61
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->reprintPassword:Landroid/widget/TextView;

    .line 62
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->save:Landroid/widget/Button;

    .line 63
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;
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

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;
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
    const v0, 0x7f0d0075

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;
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

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;
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

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;
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
    const v0, 0x7f0d0075

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;
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
    const v0, 0x7f0d0075

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutSetPasswordBinding;

    return-object v0
.end method
