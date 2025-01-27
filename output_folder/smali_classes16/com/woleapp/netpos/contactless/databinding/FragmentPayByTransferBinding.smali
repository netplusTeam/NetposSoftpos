.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentPayByTransferBinding.java"


# instance fields
.field public final accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

.field public final accountNumberQr:Landroid/widget/ImageView;

.field public final bankName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final newTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final pageTitle:Landroid/widget/TextView;

.field public final scanQrTextView:Landroid/widget/TextView;

.field public final scanQrView:Landroid/view/View;

.field public final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textView13:Landroid/widget/TextView;

.field public final textView17:Landroid/widget/TextView;

.field public final textView18:Landroid/widget/TextView;

.field public final view4:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/textfield/TextInputEditText;Landroid/widget/ImageView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "accountNumber"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "accountNumberQr"    # Landroid/widget/ImageView;
    .param p6, "bankName"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p7, "newTextInputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p8, "pageTitle"    # Landroid/widget/TextView;
    .param p9, "scanQrTextView"    # Landroid/widget/TextView;
    .param p10, "scanQrView"    # Landroid/view/View;
    .param p11, "textInputLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p12, "textView13"    # Landroid/widget/TextView;
    .param p13, "textView17"    # Landroid/widget/TextView;
    .param p14, "textView18"    # Landroid/widget/TextView;
    .param p15, "view4"    # Landroid/view/View;
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
            "accountNumber",
            "accountNumberQr",
            "bankName",
            "newTextInputLayout",
            "pageTitle",
            "scanQrTextView",
            "scanQrView",
            "textInputLayout",
            "textView13",
            "textView17",
            "textView18",
            "view4"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 62
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    .line 63
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->accountNumberQr:Landroid/widget/ImageView;

    .line 64
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->bankName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 65
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->newTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 66
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->pageTitle:Landroid/widget/TextView;

    .line 67
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->scanQrTextView:Landroid/widget/TextView;

    .line 68
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->scanQrView:Landroid/view/View;

    .line 69
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 70
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->textView13:Landroid/widget/TextView;

    .line 71
    iput-object p13, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->textView17:Landroid/widget/TextView;

    .line 72
    iput-object p14, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->textView18:Landroid/widget/TextView;

    .line 73
    iput-object p15, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->view4:Landroid/view/View;

    .line 74
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
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

    .line 116
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
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

    .line 128
    const v0, 0x7f0d004f

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
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

    .line 98
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
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

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
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

    .line 93
    const v0, 0x7f0d004f

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
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

    .line 112
    const v0, 0x7f0d004f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    return-object v0
.end method
