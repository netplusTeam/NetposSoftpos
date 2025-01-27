.class Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl$1;
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

    .line 38
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl$1;->this$0:Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 11

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl$1;->this$0:Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;

    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;->enterMeterNumber:Landroid/widget/EditText;

    invoke-static {v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->getTextString(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "callbackArg_0":Ljava/lang/String;
    const/4 v1, 0x0

    .line 48
    .local v1, "viewmodelPayloadMutableLiveDataGetValue":Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;
    const/4 v2, 0x0

    .line 50
    .local v2, "viewmodelJavaLangObjectNull":Z
    const/4 v3, 0x0

    .line 52
    .local v3, "viewmodelPayloadMutableLiveDataGetValueJavaLangObjectNull":Z
    const/4 v4, 0x0

    .line 54
    .local v4, "viewmodelPayloadMutableLiveDataJavaLangObjectNull":Z
    const/4 v5, 0x0

    .line 56
    .local v5, "viewmodelPayloadMutableLiveDataDestinationAccount":Ljava/lang/String;
    const/4 v6, 0x0

    .line 58
    .local v6, "viewmodelPayloadMutableLiveData":Landroidx/lifecycle/MutableLiveData;, "Landroidx/lifecycle/MutableLiveData<Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;>;"
    iget-object v7, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl$1;->this$0:Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;

    iget-object v7, v7, Lcom/woleapp/netpos/contactless/databinding/LayoutPowerOrElectricityBindingImpl;->mViewmodel:Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;

    .line 62
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

    .line 63
    if-eqz v2, :cond_3

    .line 66
    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/viewmodels/UtilitiesViewModel;->getPayloadMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    .line 68
    if-eqz v6, :cond_1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v9

    :goto_1
    move v4, v10

    .line 69
    if-eqz v4, :cond_3

    .line 72
    invoke-virtual {v6}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    move-object v1, v10

    check-cast v1, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;

    .line 74
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    move v3, v8

    .line 75
    if-eqz v3, :cond_3

    .line 80
    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/model/UtilitiesPayload;->setDestinationAccount(Ljava/lang/String;)V

    .line 84
    :cond_3
    return-void
.end method
