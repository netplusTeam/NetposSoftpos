.class public abstract Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogTransactionResultBinding.java"


# instance fields
.field public final closeBtn:Landroid/widget/ImageButton;

.field public final emailField:Lcom/google/android/material/textfield/TextInputEditText;

.field public final emailWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final netposLogo:Landroid/widget/ImageView;

.field public final progress:Landroid/widget/ProgressBar;

.field public final sendButton:Landroid/widget/Button;

.field public final telephone:Lcom/google/android/material/textfield/TextInputEditText;

.field public final telephoneWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final transactionContent:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "closeBtn"    # Landroid/widget/ImageButton;
    .param p5, "emailField"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "emailWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p7, "netposLogo"    # Landroid/widget/ImageView;
    .param p8, "progress"    # Landroid/widget/ProgressBar;
    .param p9, "sendButton"    # Landroid/widget/Button;
    .param p10, "telephone"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p11, "telephoneWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p12, "transactionContent"    # Landroid/widget/TextView;
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
            "closeBtn",
            "emailField",
            "emailWrapper",
            "netposLogo",
            "progress",
            "sendButton",
            "telephone",
            "telephoneWrapper",
            "transactionContent"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 55
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->closeBtn:Landroid/widget/ImageButton;

    .line 56
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->emailField:Lcom/google/android/material/textfield/TextInputEditText;

    .line 57
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->emailWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 58
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->netposLogo:Landroid/widget/ImageView;

    .line 59
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->progress:Landroid/widget/ProgressBar;

    .line 60
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->sendButton:Landroid/widget/Button;

    .line 61
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephone:Lcom/google/android/material/textfield/TextInputEditText;

    .line 62
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->telephoneWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 63
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->transactionContent:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
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

    .line 106
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
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

    .line 119
    const v0, 0x7f0d003e

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
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

    .line 88
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
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

    .line 69
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
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

    .line 83
    const v0, 0x7f0d003e

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;
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

    .line 102
    const v0, 0x7f0d003e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogTransactionResultBinding;

    return-object v0
.end method
