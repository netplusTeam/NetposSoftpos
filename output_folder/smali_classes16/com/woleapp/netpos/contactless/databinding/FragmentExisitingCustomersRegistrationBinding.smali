.class public abstract Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentExisitingCustomersRegistrationBinding.java"


# instance fields
.field public final address:Lcom/google/android/material/textfield/TextInputEditText;

.field public final authProgress:Landroid/widget/ProgressBar;

.field public final branch:Landroid/widget/AutoCompleteTextView;

.field public final btnSubmit:Landroid/widget/Button;

.field public final businessName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final confirmPassword:Lcom/google/android/material/textfield/TextInputEditText;

.field public final confirmPasswordField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

.field public final contactPerson:Lcom/google/android/material/textfield/TextInputEditText;

.field public final contactPersonLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final email:Lcom/google/android/material/textfield/TextInputEditText;

.field public final emailField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final existingCustomersBusinessName:Lcom/google/android/material/textfield/TextInputLayout;

.field public final existingCustomersContactInfo:Lcom/google/android/material/textfield/TextInputLayout;

.field public final existingCustomersPhoneee:Lcom/google/android/material/textfield/TextInputLayout;

.field public final existingCustomersSignUpLabel:Landroid/widget/TextView;

.field public final existingCustomersTextInputAddress:Lcom/google/android/material/textfield/TextInputLayout;

.field public final fragmentBranch:Lcom/google/android/material/textfield/TextInputLayout;

.field public final fragmentState:Lcom/google/android/material/textfield/TextInputLayout;

.field public final noOfTidsLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final password:Lcom/google/android/material/textfield/TextInputEditText;

.field public final passwordField:Lcom/google/android/material/textfield/TextInputLayout;

.field public final phone:Lcom/google/android/material/textfield/TextInputEditText;

.field public final rcNumber:Lcom/google/android/material/textfield/TextInputEditText;

.field public final rcNumberLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field public final state:Landroid/widget/AutoCompleteTextView;

.field public final tids:Lcom/google/android/material/textfield/TextInputEditText;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/google/android/material/textfield/TextInputEditText;Landroid/widget/ProgressBar;Landroid/widget/AutoCompleteTextView;Landroid/widget/Button;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/AutoCompleteTextView;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 16
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "address"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p5, "authProgress"    # Landroid/widget/ProgressBar;
    .param p6, "branch"    # Landroid/widget/AutoCompleteTextView;
    .param p7, "btnSubmit"    # Landroid/widget/Button;
    .param p8, "businessName"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p9, "confirmPassword"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p10, "confirmPasswordField"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p11, "contactInfo"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p12, "contactPerson"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p13, "contactPersonLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p14, "email"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p15, "emailField"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p16, "existingCustomersBusinessName"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p17, "existingCustomersContactInfo"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p18, "existingCustomersPhoneee"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p19, "existingCustomersSignUpLabel"    # Landroid/widget/TextView;
    .param p20, "existingCustomersTextInputAddress"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p21, "fragmentBranch"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p22, "fragmentState"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p23, "noOfTidsLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p24, "password"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p25, "passwordField"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p26, "phone"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p27, "rcNumber"    # Lcom/google/android/material/textfield/TextInputEditText;
    .param p28, "rcNumberLayout"    # Lcom/google/android/material/textfield/TextInputLayout;
    .param p29, "state"    # Landroid/widget/AutoCompleteTextView;
    .param p30, "tids"    # Lcom/google/android/material/textfield/TextInputEditText;
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
            "btnSubmit",
            "businessName",
            "confirmPassword",
            "confirmPasswordField",
            "contactInfo",
            "contactPerson",
            "contactPersonLayout",
            "email",
            "emailField",
            "existingCustomersBusinessName",
            "existingCustomersContactInfo",
            "existingCustomersPhoneee",
            "existingCustomersSignUpLabel",
            "existingCustomersTextInputAddress",
            "fragmentBranch",
            "fragmentState",
            "noOfTidsLayout",
            "password",
            "passwordField",
            "phone",
            "rcNumber",
            "rcNumberLayout",
            "state",
            "tids"
        }
    .end annotation

    .line 115
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 116
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->address:Lcom/google/android/material/textfield/TextInputEditText;

    .line 117
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->authProgress:Landroid/widget/ProgressBar;

    .line 118
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->branch:Landroid/widget/AutoCompleteTextView;

    .line 119
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->btnSubmit:Landroid/widget/Button;

    .line 120
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->businessName:Lcom/google/android/material/textfield/TextInputEditText;

    .line 121
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->confirmPassword:Lcom/google/android/material/textfield/TextInputEditText;

    .line 122
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->confirmPasswordField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 123
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

    .line 124
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->contactPerson:Lcom/google/android/material/textfield/TextInputEditText;

    .line 125
    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->contactPersonLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 126
    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->email:Lcom/google/android/material/textfield/TextInputEditText;

    .line 127
    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->emailField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 128
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->existingCustomersBusinessName:Lcom/google/android/material/textfield/TextInputLayout;

    .line 129
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->existingCustomersContactInfo:Lcom/google/android/material/textfield/TextInputLayout;

    .line 130
    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->existingCustomersPhoneee:Lcom/google/android/material/textfield/TextInputLayout;

    .line 131
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->existingCustomersSignUpLabel:Landroid/widget/TextView;

    .line 132
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->existingCustomersTextInputAddress:Lcom/google/android/material/textfield/TextInputLayout;

    .line 133
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->fragmentBranch:Lcom/google/android/material/textfield/TextInputLayout;

    .line 134
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->fragmentState:Lcom/google/android/material/textfield/TextInputLayout;

    .line 135
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->noOfTidsLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 136
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->password:Lcom/google/android/material/textfield/TextInputEditText;

    .line 137
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->passwordField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 138
    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->phone:Lcom/google/android/material/textfield/TextInputEditText;

    .line 139
    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->rcNumber:Lcom/google/android/material/textfield/TextInputEditText;

    .line 140
    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->rcNumberLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 141
    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->state:Landroid/widget/AutoCompleteTextView;

    .line 142
    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->tids:Lcom/google/android/material/textfield/TextInputEditText;

    .line 143
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;
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

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;
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

    .line 200
    const v0, 0x7f0d0046

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;
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

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;
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

    .line 148
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;
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

    .line 163
    const v0, 0x7f0d0046

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;
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
    const v0, 0x7f0d0046

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentExisitingCustomersRegistrationBinding;

    return-object v0
.end method
