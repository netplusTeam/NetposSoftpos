.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentScanQrCodeLandingPageBinding.java"


# instance fields
.field public final guideline2:Landroidx/constraintlayout/widget/Guideline;

.field public final guideline3:Landroidx/constraintlayout/widget/Guideline;

.field public final guideline4:Landroidx/constraintlayout/widget/Guideline;

.field public final imageView3:Landroid/widget/ImageView;

.field public final proceedButton:Landroid/widget/Button;

.field public final textView6:Landroid/widget/TextView;

.field public final textView7:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "guideline2"    # Landroidx/constraintlayout/widget/Guideline;
    .param p5, "guideline3"    # Landroidx/constraintlayout/widget/Guideline;
    .param p6, "guideline4"    # Landroidx/constraintlayout/widget/Guideline;
    .param p7, "imageView3"    # Landroid/widget/ImageView;
    .param p8, "proceedButton"    # Landroid/widget/Button;
    .param p9, "textView6"    # Landroid/widget/TextView;
    .param p10, "textView7"    # Landroid/widget/TextView;
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
            "guideline2",
            "guideline3",
            "guideline4",
            "imageView3",
            "proceedButton",
            "textView6",
            "textView7"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 45
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->guideline2:Landroidx/constraintlayout/widget/Guideline;

    .line 46
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->guideline3:Landroidx/constraintlayout/widget/Guideline;

    .line 47
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->guideline4:Landroidx/constraintlayout/widget/Guideline;

    .line 48
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->imageView3:Landroid/widget/ImageView;

    .line 49
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->proceedButton:Landroid/widget/Button;

    .line 50
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->textView6:Landroid/widget/TextView;

    .line 51
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->textView7:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;
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

    .line 94
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;
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

    .line 107
    const v0, 0x7f0d0056

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;
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

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;
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

    .line 57
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;
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

    .line 71
    const v0, 0x7f0d0056

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;
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

    .line 90
    const v0, 0x7f0d0056

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentScanQrCodeLandingPageBinding;

    return-object v0
.end method
