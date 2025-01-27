.class Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$3;
.super Ljava/lang/Object;
.source "FragmentDashboardBindingImpl.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$3;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 9

    .line 126
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$3;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterPin:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 131
    .local v1, "viewmodelPinGetValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 133
    .local v2, "viewmodelPin":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 135
    .local v3, "viewmodelJavaLangObjectNull":Z
    const/4 v4, 0x0

    .line 137
    .local v4, "viewmodelPinJavaLangObjectNull":Z
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$3;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    .line 141
    .local v5, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    move v3, v8

    .line 142
    if-eqz v3, :cond_2

    .line 145
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getPin()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    move v4, v6

    .line 148
    if-eqz v4, :cond_2

    .line 153
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 156
    :cond_2
    return-void
.end method
