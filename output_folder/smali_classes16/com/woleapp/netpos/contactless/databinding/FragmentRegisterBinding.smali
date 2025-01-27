.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentRegisterBinding.java"


# instance fields
.field public final address:Lcom/google/android/material/textfield/TextInputEditText;

.field public final authProgress:Landroid/widget/ProgressBar;

.field public final branch:Landroid/widget/AutoCompleteTextView;

.field public final btnLogin:Landroid/widget/Button;

.field public final businessName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final bvn:Lcom/google/android/material/textfield/TextInputEditText;

.field public final bvnField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final confirmPassword:Lcom/google/android/material/textfield/TextInputEditText;

.field public final confirmPasswordField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

.field public final email:Lcom/google/android/material/textfield/TextInputEditText;

.field public final emailField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final fragmentBranch:Lcom/google/android/material/textfield/TextInputLayout;

.field public final fragmentState:Lcom/google/android/material/textfield/TextInputLayout;

.field public final loginLabel:Landroid/widget/TextView;

.field protected mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final password:Lcom/google/android/material/textfield/TextInputEditText;

.field public final passwordField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final phone:Lcom/google/android/material/textfield/TextInputEditText;

.field public final phoneee:Lcom/google/android/material/textfield/TextInputLayout;

.field public final reference:Lcom/google/android/material/textfield/TextInputEditText;

.field public final referenceField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final state:Landroid/widget/AutoCompleteTextView;

.field public final textContactInfo:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputAddress:Lcom/google/android/material/textfield/TextInputLayout;

.field public final textInputBusinessName:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/textfield/TextInputEditText;Landroid/widget/ProgressBar;Landroid/widget/AutoCompleteTextView;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/AutoCompleteTextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 16
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "address"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "authProgress"    # Landroid/widget/ProgressBar;
    .param p6, "branch"    # Landroid/widget/AutoCompleteTextView;
    .param p7, "btnLogin"    # Landroid/widget/Button;
    .param p8, "businessName"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p9, "bvn"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p10, "bvnField"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p11, "confirmPassword"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p12, "confirmPasswordField"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p13, "contactInfo"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p14, "email"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p15, "emailField"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p16, "fragmentBranch"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p17, "fragmentState"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p18, "loginLabel"    # Landroid/widget/TextView;
    .param p19, "password"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p20, "passwordField"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p21, "phone"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p22, "phoneee"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p23, "reference"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p24, "referenceField"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p25, "state"    # Landroid/widget/AutoCompleteTextView;
    .param p26, "textContactInfo"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p27, "textInputAddress"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p28, "textInputBusinessName"    # Lcom/google/android/material/textfield/TextInputLayout;
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "address",
            "authProgress",
            "branch",
            "btnLogin",
            "businessName",
            "bvn",
            "bvnField",
            "confirmPassword",
            "confirmPasswordField",
            "contactInfo",
            "email",
            "emailField",
            "fragmentBranch",
            "fragmentState",
            "loginLabel",
            "password",
            "passwordField",
            "phone",
            "phoneee",
            "reference",
            "referenceField",
            "state",
            "textContactInfo",
            "textInputAddress",
            "textInputBusinessName"
        }
    .end annotation

    .line 112
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 113
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->address:Lcom/google/android/material/textfield/TextInputEditText;

    .line 114
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->authProgress:Landroid/widget/ProgressBar;

    .line 115
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->branch:Landroid/widget/AutoCompleteTextView;

    .line 116
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->btnLogin:Landroid/widget/Button;

    .line 117
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->businessName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 118
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->bvn:Lcom/google/android/material/textfield/TextInputEditText;

    .line 119
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->bvnField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 120
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->confirmPassword:Lcom/google/android/material/textfield/TextInputEditText;

    .line 121
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->confirmPasswordField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 122
    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

    .line 123
    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    .line 124
    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->emailField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 125
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->fragmentBranch:Lcom/google/android/material/textfield/TextInputLayout;

    .line 126
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->fragmentState:Lcom/google/android/material/textfield/TextInputLayout;

    .line 127
    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->loginLabel:Landroid/widget/TextView;

    .line 128
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->password:Lcom/google/android/material/textfield/TextInputEditText;

    .line 129
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->passwordField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 130
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->phone:Lcom/google/android/material/textfield/TextInputEditText;

    .line 131
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->phoneee:Lcom/google/android/material/textfield/TextInputLayout;

    .line 132
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->reference:Lcom/google/android/material/textfield/TextInputEditText;

    .line 133
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->referenceField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 134
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->state:Landroid/widget/AutoCompleteTextView;

    .line 135
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->textContactInfo:Lcom/google/android/material/textfield/TextInputLayout;

    .line 136
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->textInputAddress:Lcom/google/android/material/textfield/TextInputLayout;

    .line 137
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->textInputBusinessName:Lcom/google/android/material/textfield/TextInputLayout;

    .line 138
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
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

    .line 187
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
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

    .line 199
    const v0, 0x7f0d0051

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
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

    .line 169
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
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

    .line 150
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
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

    .line 164
    const v0, 0x7f0d0051

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;
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

    .line 183
    const v0, 0x7f0d0051

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;

    return-object v0
.end method


# virtual methods
.method public getViewmodel()Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBinding;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    return-object v0
.end method

.method public abstract setViewmodel(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewmodel"
        }
    .end annotation
.end method
