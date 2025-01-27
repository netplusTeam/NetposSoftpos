.class Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$5;
.super Ljava/lang/Object;
.source "FragmentSalesBindingImpl.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$5;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 9

    .line 185
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$5;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->remark:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 190
    .local v1, "viewmodelJavaLangObjectNull":Z
    const/4 v2, 0x0

    .line 192
    .local v2, "viewmodelRemarkJavaLangObjectNull":Z
    const/4 v3, 0x0

    .line 194
    .local v3, "viewmodelRemark":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 196
    .local v4, "viewmodelRemarkGetValue":Ljava/lang/String;
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl$5;->this$0:Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;

    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentSalesBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;

    .line 200
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

    .line 201
    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/viewmodels/SalesViewModel;->getRemark()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    .line 206
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    move v2, v6

    .line 207
    if-eqz v2, :cond_2

    .line 212
    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 215
    :cond_2
    return-void
.end method
