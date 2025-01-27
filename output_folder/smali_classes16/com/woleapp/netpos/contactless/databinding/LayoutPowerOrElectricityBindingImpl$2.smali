.class Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl$2;
.super Ljava/lang/Object;
.source "LayoutPowerOrElectricityBindingImpl.java"

# interfaces
.implements Landroidx/databinding/InverseBindingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;


# direct methods
.method constructor <init>(Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 11

    .line 91
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;->access$000(Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 96
    .local v1, "viewmodelPayloadMutableLiveDataGetValue":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v2, 0x0

    .line 98
    .local v2, "viewmodelJavaLangObjectNull":Z
    const/4 v3, 0x0

    .line 100
    .local v3, "viewmodelPayloadMutableLiveDataGetValueJavaLangObjectNull":Z
    const/4 v4, 0x0

    .line 102
    .local v4, "viewmodelPayloadMutableLiveDataJavaLangObjectNull":Z
    const/4 v5, 0x0

    .line 104
    .local v5, "viewmodelPayloadMutableLiveDataStringAmount":Ljava/lang/String;
    const/4 v6, 0x0

    .line 106
    .local v6, "viewmodelPayloadMutableLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;>;"
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl$2;->this$0:Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;

    iget-object v7, v7, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 110
    .local v7, "viewmodel":Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    move v2, v10

    .line 111
    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    .line 116
    if-eqz v6, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    move v4, v10

    .line 117
    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 122
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    move v3, v8

    .line 123
    if-eqz v3, :cond_3

    .line 128
    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setStringAmount(Ljava/lang/String;)V

    .line 132
    :cond_3
    return-void
.end method
