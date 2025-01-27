.class Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$3;
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

    .line 139
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$3;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 11

    .line 144
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$3;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->contactInfo:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 149
    .local v1, "viewmodelRegistrationModelJavaLangObjectNull":Z
    const/4 v2, 0x0

    .line 151
    .local v2, "viewmodelRegistrationModelGetValueJavaLangObjectNull":Z
    const/4 v3, 0x0

    .line 153
    .local v3, "viewmodelJavaLangObjectNull":Z
    const/4 v4, 0x0

    .line 155
    .local v4, "viewmodelRegistrationModelGetValue":Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    const/4 v5, 0x0

    .line 157
    .local v5, "viewmodelRegistrationModel":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/RegistrationModel;>;"
    const/4 v6, 0x0

    .line 159
    .local v6, "viewmodelRegistrationModelContactInformation":Ljava/lang/String;
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl$3;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;

    iget-object v7, v7, Lcom/woleapp/netpos/contactless/databinding/FragmentRegisterBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    .line 163
    .local v7, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    move v3, v10

    .line 164
    if-eqz v3, :cond_3

    .line 167
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->getRegistrationModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    .line 169
    if-eqz v5, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    move v1, v10

    .line 170
    if-eqz v1, :cond_3

    .line 173
    invoke-virtual {v5}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Lcom/woleapp/netpos/contactless/model/RegistrationModel;

    .line 175
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    move v2, v8

    .line 176
    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {v4, v0}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->setContactInformation(Ljava/lang/String;)V

    .line 185
    :cond_3
    return-void
.end method
