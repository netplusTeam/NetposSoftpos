.class Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl$2;
.super Ljava/lang/Object;
.source "FragmentLoginBindingImpl.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 9

    .line 75
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->etPwd:Lcom/google/android/material/textfield/TextInputEditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 80
    .local v1, "viewmodelPasswordLiveDataGetValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 82
    .local v2, "viewmodelJavaLangObjectNull":Z
    const/4 v3, 0x0

    .line 84
    .local v3, "viewmodelPasswordLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 86
    .local v4, "viewmodelPasswordLiveDataJavaLangObjectNull":Z
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;

    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentLoginBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    .line 90
    .local v5, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    move v2, v8

    .line 91
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->getPasswordLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    .line 96
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    move v4, v6

    .line 97
    if-eqz v4, :cond_2

    .line 102
    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 105
    :cond_2
    return-void
.end method
