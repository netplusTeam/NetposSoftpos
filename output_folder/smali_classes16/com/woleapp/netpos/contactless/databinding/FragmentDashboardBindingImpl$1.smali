.class Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$1;
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

    .line 47
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$1;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 9

    .line 52
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$1;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->cashbackTextbox:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 57
    .local v1, "viewmodelJavaLangObjectNull":Z
    const/4 v2, 0x0

    .line 59
    .local v2, "viewmodelCashback":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 61
    .local v3, "viewmodelCashbackGetValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 63
    .local v4, "viewmodelCashbackJavaLangObjectNull":Z
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl$1;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;

    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentDashboardBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    .line 67
    .local v5, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    move v1, v8

    .line 68
    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getCashback()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    move v4, v6

    .line 74
    if-eqz v4, :cond_2

    .line 79
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 82
    :cond_2
    return-void
.end method
