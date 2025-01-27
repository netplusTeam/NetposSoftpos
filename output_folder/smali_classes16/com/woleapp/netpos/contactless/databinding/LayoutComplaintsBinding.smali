.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutComplaintsBinding.java"


# instance fields
.field public final authProgress:Landroid/widget/ProgressBar;

.field public final email:Lcom/google/android/material/textfield/TextInputEditText;

.field public final emailWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final feedbackEdittext:Lcom/google/android/material/textfield/TextInputEditText;

.field public final feedbackTextView:Landroid/widget/TextView;

.field public final feedbackWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final moreInfo:Landroid/widget/TextView;

.field public final subjectEdittext:Lcom/google/android/material/textfield/TextInputEditText;

.field public final subjectWrapper:Lcom/google/android/material/textfield/TextInputLayout;

.field public final submitFeedback:Landroid/widget/Button;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ProgressBar;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/Button;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "authProgress"    # Landroid/widget/ProgressBar;
    .param p5, "email"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p6, "emailWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p7, "feedbackEdittext"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p8, "feedbackTextView"    # Landroid/widget/TextView;
    .param p9, "feedbackWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p10, "moreInfo"    # Landroid/widget/TextView;
    .param p11, "subjectEdittext"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p12, "subjectWrapper"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p13, "submitFeedback"    # Landroid/widget/Button;
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
            "authProgress",
            "email",
            "emailWrapper",
            "feedbackEdittext",
            "feedbackTextView",
            "feedbackWrapper",
            "moreInfo",
            "subjectEdittext",
            "subjectWrapper",
            "submitFeedback"
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 57
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->authProgress:Landroid/widget/ProgressBar;

    .line 58
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    .line 59
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->emailWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 60
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->feedbackEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    .line 61
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->feedbackTextView:Landroid/widget/TextView;

    .line 62
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->feedbackWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 63
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->moreInfo:Landroid/widget/TextView;

    .line 64
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->subjectEdittext:Lcom/google/android/material/textfield/TextInputEditText;

    .line 65
    iput-object p12, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->subjectWrapper:Lcom/google/android/material/textfield/TextInputLayout;

    .line 66
    iput-object p13, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->submitFeedback:Landroid/widget/Button;

    .line 67
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
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

    .line 109
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
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

    .line 121
    const v0, 0x7f0d0064

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
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

    .line 91
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
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

    .line 72
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
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

    .line 86
    const v0, 0x7f0d0064

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;
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

    .line 105
    const v0, 0x7f0d0064

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutComplaintsBinding;

    return-object v0
.end method
