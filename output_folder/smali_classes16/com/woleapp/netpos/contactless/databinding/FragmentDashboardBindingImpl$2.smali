.class Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$2;
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

    .line 84
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 9

    .line 89
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->enterName:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 94
    .local v1, "viewmodelCustomerName":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 96
    .local v2, "viewmodelJavaLangObjectNull":Z
    const/4 v3, 0x0

    .line 98
    .local v3, "viewmodelCustomerNameJavaLangObjectNull":Z
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    iget-object v4, v4, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    .line 100
    .local v4, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    const/4 v5, 0x0

    .line 104
    .local v5, "viewmodelCustomerNameGetValue":Ljava/lang/String;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    move v2, v8

    .line 105
    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getCustomerName()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    move v3, v6

    .line 111
    if-eqz v3, :cond_2

    .line 116
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 119
    :cond_2
    return-void
.end method
