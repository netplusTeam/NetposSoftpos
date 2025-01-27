.class public abstract Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "DialogSelectCardschemeBinding.java"


# instance fields
.field public final header:Landroid/widget/TextView;

.field public final mastercardIcon:Landroid/widget/ImageView;

.field public final mastercardSelector:Landroid/view/View;

.field public final proceedButton:Landroid/widget/Button;

.field public final verveCardIcon:Landroid/widget/ImageView;

.field public final verveCardSelector:Landroid/view/View;

.field public final visaIcon:Landroid/widget/ImageView;

.field public final visaSelector:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "header"    # Landroid/widget/TextView;
    .param p5, "mastercardIcon"    # Landroid/widget/ImageView;
    .param p6, "mastercardSelector"    # Landroid/view/View;
    .param p7, "proceedButton"    # Landroid/widget/Button;
    .param p8, "verveCardIcon"    # Landroid/widget/ImageView;
    .param p9, "verveCardSelector"    # Landroid/view/View;
    .param p10, "visaIcon"    # Landroid/widget/ImageView;
    .param p11, "visaSelector"    # Landroid/view/View;
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
            "header",
            "mastercardIcon",
            "mastercardSelector",
            "proceedButton",
            "verveCardIcon",
            "verveCardSelector",
            "visaIcon",
            "visaSelector"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->header:Landroid/widget/TextView;

    .line 49
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->mastercardIcon:Landroid/widget/ImageView;

    .line 50
    iput-object p6, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->mastercardSelector:Landroid/view/View;

    .line 51
    iput-object p7, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->proceedButton:Landroid/widget/Button;

    .line 52
    iput-object p8, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->verveCardIcon:Landroid/widget/ImageView;

    .line 53
    iput-object p9, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->verveCardSelector:Landroid/view/View;

    .line 54
    iput-object p10, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->visaIcon:Landroid/widget/ImageView;

    .line 55
    iput-object p11, p0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->visaSelector:Landroid/view/View;

    .line 56
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;
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

    .line 98
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;
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

    .line 110
    const v0, 0x7f0d003b

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;
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

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;
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

    .line 61
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;
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

    .line 75
    const v0, 0x7f0d003b

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;
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

    .line 94
    const v0, 0x7f0d003b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/DialogSelectCardschemeBinding;

    return-object v0
.end method
