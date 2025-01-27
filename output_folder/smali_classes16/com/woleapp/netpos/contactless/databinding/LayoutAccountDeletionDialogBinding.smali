.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutAccountDeletionDialogBinding.java"


# instance fields
.field public final enterPhoneNumberLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final loadingDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final noBtn:Landroid/widget/TextView;

.field public final submitRequest:Landroid/widget/Button;

.field public final textView11:Landroid/widget/TextView;

.field public final username:Landroid/widget/EditText;

.field public final yesBtn:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "enterPhoneNumberLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p5, "loadingDialogLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p6, "noBtn"    # Landroid/widget/TextView;
    .param p7, "submitRequest"    # Landroid/widget/Button;
    .param p8, "textView11"    # Landroid/widget/TextView;
    .param p9, "username"    # Landroid/widget/EditText;
    .param p10, "yesBtn"    # Landroid/widget/TextView;
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "enterPhoneNumberLayout",
            "loadingDialogLayout",
            "noBtn",
            "submitRequest",
            "textView11",
            "username",
            "yesBtn"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->enterPhoneNumberLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 47
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->loadingDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->noBtn:Landroid/widget/TextView;

    .line 49
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->submitRequest:Landroid/widget/Button;

    .line 50
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->textView11:Landroid/widget/TextView;

    .line 51
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->username:Landroid/widget/EditText;

    .line 52
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->yesBtn:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
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

    .line 95
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
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

    .line 108
    const v0, 0x7f0d005f

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
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

    .line 77
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
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

    .line 58
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
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

    .line 72
    const v0, 0x7f0d005f

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;
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

    .line 91
    const v0, 0x7f0d005f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutAccountDeletionDialogBinding;

    return-object v0
.end method
