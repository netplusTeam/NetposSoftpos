.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentDashboardBinding.java"


# instance fields
.field public final btn0:Landroid/widget/TextView;

.field public final btn1:Landroid/widget/TextView;

.field public final btn2:Landroid/widget/TextView;

.field public final btn3:Landroid/widget/TextView;

.field public final btn4:Landroid/widget/TextView;

.field public final btn5:Landroid/widget/TextView;

.field public final btn6:Landroid/widget/TextView;

.field public final btn7:Landroid/widget/TextView;

.field public final btn8:Landroid/widget/TextView;

.field public final btn9:Landroid/widget/TextView;

.field public final btnClear:Landroidx/appcompat/widget/AppCompatImageView;

.field public final btnConfirm:Landroid/widget/Button;

.field public final btnEsc:Landroid/widget/TextView;

.field public final cashbackCurrencyTextbox:Landroid/widget/TextView;

.field public final cashbackInputLayout:Landroid/widget/LinearLayout;

.field public final cashbackTextbox:Landroid/widget/EditText;

.field public final enterName:Landroid/widget/EditText;

.field public final enterPin:Landroid/widget/EditText;

.field public final etPin:Landroid/widget/EditText;

.field public final layoutKeyboard:Landroidx/constraintlayout/widget/ConstraintLayout;

.field protected mType:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final priceInputLayout:Landroid/widget/LinearLayout;

.field public final priceTextbox:Landroid/widget/EditText;

.field public final process:Landroid/widget/Button;

.field public final salesHeader:Landroid/widget/TextView;

.field public final selectTransactionSpinner:Landroid/widget/Spinner;

.field public final tvMessage:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/EditText;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "btn0"    # Landroid/widget/TextView;
    .param p5, "btn1"    # Landroid/widget/TextView;
    .param p6, "btn2"    # Landroid/widget/TextView;
    .param p7, "btn3"    # Landroid/widget/TextView;
    .param p8, "btn4"    # Landroid/widget/TextView;
    .param p9, "btn5"    # Landroid/widget/TextView;
    .param p10, "btn6"    # Landroid/widget/TextView;
    .param p11, "btn7"    # Landroid/widget/TextView;
    .param p12, "btn8"    # Landroid/widget/TextView;
    .param p13, "btn9"    # Landroid/widget/TextView;
    .param p14, "btnClear"    # Landroidx/appcompat/widget/AppCompatImageView;
    .param p15, "btnConfirm"    # Landroid/widget/Button;
    .param p16, "btnEsc"    # Landroid/widget/TextView;
    .param p17, "cashbackCurrencyTextbox"    # Landroid/widget/TextView;
    .param p18, "cashbackInputLayout"    # Landroid/widget/LinearLayout;
    .param p19, "cashbackTextbox"    # Landroid/widget/EditText;
    .param p20, "enterName"    # Landroid/widget/EditText;
    .param p21, "enterPin"    # Landroid/widget/EditText;
    .param p22, "etPin"    # Landroid/widget/EditText;
    .param p23, "layoutKeyboard"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p24, "priceInputLayout"    # Landroid/widget/LinearLayout;
    .param p25, "priceTextbox"    # Landroid/widget/EditText;
    .param p26, "process"    # Landroid/widget/Button;
    .param p27, "salesHeader"    # Landroid/widget/TextView;
    .param p28, "selectTransactionSpinner"    # Landroid/widget/Spinner;
    .param p29, "tvMessage"    # Landroid/widget/TextView;
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
            "btn0",
            "btn1",
            "btn2",
            "btn3",
            "btn4",
            "btn5",
            "btn6",
            "btn7",
            "btn8",
            "btn9",
            "btnClear",
            "btnConfirm",
            "btnEsc",
            "cashbackCurrencyTextbox",
            "cashbackInputLayout",
            "cashbackTextbox",
            "enterName",
            "enterPin",
            "etPin",
            "layoutKeyboard",
            "priceInputLayout",
            "priceTextbox",
            "process",
            "salesHeader",
            "selectTransactionSpinner",
            "tvMessage"
        }
    .end annotation

    .line 117
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 118
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn0:Landroid/widget/TextView;

    .line 119
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn1:Landroid/widget/TextView;

    .line 120
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn2:Landroid/widget/TextView;

    .line 121
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn3:Landroid/widget/TextView;

    .line 122
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn4:Landroid/widget/TextView;

    .line 123
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn5:Landroid/widget/TextView;

    .line 124
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn6:Landroid/widget/TextView;

    .line 125
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn7:Landroid/widget/TextView;

    .line 126
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn8:Landroid/widget/TextView;

    .line 127
    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btn9:Landroid/widget/TextView;

    .line 128
    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btnClear:Landroidx/appcompat/widget/AppCompatImageView;

    .line 129
    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btnConfirm:Landroid/widget/Button;

    .line 130
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->btnEsc:Landroid/widget/TextView;

    .line 131
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->cashbackCurrencyTextbox:Landroid/widget/TextView;

    .line 132
    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->cashbackInputLayout:Landroid/widget/LinearLayout;

    .line 133
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->cashbackTextbox:Landroid/widget/EditText;

    .line 134
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->enterName:Landroid/widget/EditText;

    .line 135
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->enterPin:Landroid/widget/EditText;

    .line 136
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->etPin:Landroid/widget/EditText;

    .line 137
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->layoutKeyboard:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 138
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->priceInputLayout:Landroid/widget/LinearLayout;

    .line 139
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->priceTextbox:Landroid/widget/EditText;

    .line 140
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->process:Landroid/widget/Button;

    .line 141
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->salesHeader:Landroid/widget/TextView;

    .line 142
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->selectTransactionSpinner:Landroid/widget/Spinner;

    .line 143
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->tvMessage:Landroid/widget/TextView;

    .line 144
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;
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

    .line 200
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;
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

    .line 212
    const v0, 0x7f0d0043

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;
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

    .line 182
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;
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

    .line 163
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;
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

    .line 177
    const v0, 0x7f0d0043

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;
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

    .line 196
    const v0, 0x7f0d0043

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    return-object v0
.end method

.method public abstract setType(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewmodel"
        }
    .end annotation
.end method
