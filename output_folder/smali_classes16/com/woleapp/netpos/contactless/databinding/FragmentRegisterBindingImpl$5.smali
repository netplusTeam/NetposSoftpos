.class Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$5;
.super Ljava/lang/Object;
.source "FragmentRegisterBindingImpl.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$5;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 11

    .line 240
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$5;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->phone:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 245
    .local v1, "viewmodelRegistrationModelPhoneNumber":Ljava/lang/String;
    const/4 v2, 0x0

    .line 247
    .local v2, "viewmodelRegistrationModelJavaLangObjectNull":Z
    const/4 v3, 0x0

    .line 249
    .local v3, "viewmodelRegistrationModelGetValueJavaLangObjectNull":Z
    const/4 v4, 0x0

    .line 251
    .local v4, "viewmodelJavaLangObjectNull":Z
    const/4 v5, 0x0

    .line 253
    .local v5, "viewmodelRegistrationModelGetValue":Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    const/4 v6, 0x0

    .line 255
    .local v6, "viewmodelRegistrationModel":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/RegistrationModel;>;"
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$5;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;

    iget-object v7, v7, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    .line 259
    .local v7, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    move v4, v10

    .line 260
    if-eqz v4, :cond_3

    .line 263
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->getRegistrationModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    .line 265
    if-eqz v6, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    move v2, v10

    .line 266
    if-eqz v2, :cond_3

    .line 269
    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v5, v10

    check-cast v5, Lcom/woleapp/netpos/contactless/model/RegistrationModel;

    .line 271
    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    move v3, v8

    .line 272
    if-eqz v3, :cond_3

    .line 277
    invoke-virtual {v5, v0}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->setPhoneNumber(Ljava/lang/String;)V

    .line 281
    :cond_3
    return-void
.end method
