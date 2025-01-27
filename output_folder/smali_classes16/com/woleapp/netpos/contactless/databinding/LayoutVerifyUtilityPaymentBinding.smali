.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutVerifyUtilityPaymentBinding.java"


# instance fields
.field public final accountId:Landroid/widget/TextView;

.field public final accountIdDetails:Landroid/widget/TextView;

.field public final accountIdDetailsValue:Landroid/widget/TextView;

.field public final accountIdValue:Landroid/widget/TextView;

.field public final amount:Landroid/widget/TextView;

.field public final amountValue:Landroid/widget/TextView;

.field public final billPackage:Landroid/widget/TextView;

.field public final fee:Landroid/widget/TextView;

.field public final feeValue:Landroid/widget/TextView;

.field protected mBillResponse:Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final packageValue:Landroid/widget/TextView;

.field public final proceed:Landroid/widget/Button;

.field public final provider:Landroid/widget/TextView;

.field public final providerValue:Landroid/widget/TextView;

.field public final summary:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 15
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "accountId"    # Landroid/widget/TextView;
    .param p5, "accountIdDetails"    # Landroid/widget/TextView;
    .param p6, "accountIdDetailsValue"    # Landroid/widget/TextView;
    .param p7, "accountIdValue"    # Landroid/widget/TextView;
    .param p8, "amount"    # Landroid/widget/TextView;
    .param p9, "amountValue"    # Landroid/widget/TextView;
    .param p10, "billPackage"    # Landroid/widget/TextView;
    .param p11, "fee"    # Landroid/widget/TextView;
    .param p12, "feeValue"    # Landroid/widget/TextView;
    .param p13, "packageValue"    # Landroid/widget/TextView;
    .param p14, "proceed"    # Landroid/widget/Button;
    .param p15, "provider"    # Landroid/widget/TextView;
    .param p16, "providerValue"    # Landroid/widget/TextView;
    .param p17, "summary"    # Landroid/widget/TextView;
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
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "accountId",
            "accountIdDetails",
            "accountIdDetailsValue",
            "accountIdValue",
            "amount",
            "amountValue",
            "billPackage",
            "fee",
            "feeValue",
            "packageValue",
            "proceed",
            "provider",
            "providerValue",
            "summary"
        }
    .end annotation

    .line 71
    move-object v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 72
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->accountId:Landroid/widget/TextView;

    .line 73
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->accountIdDetails:Landroid/widget/TextView;

    .line 74
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->accountIdDetailsValue:Landroid/widget/TextView;

    .line 75
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->accountIdValue:Landroid/widget/TextView;

    .line 76
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->amount:Landroid/widget/TextView;

    .line 77
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->amountValue:Landroid/widget/TextView;

    .line 78
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->billPackage:Landroid/widget/TextView;

    .line 79
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->fee:Landroid/widget/TextView;

    .line 80
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->feeValue:Landroid/widget/TextView;

    .line 81
    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->packageValue:Landroid/widget/TextView;

    .line 82
    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->proceed:Landroid/widget/Button;

    .line 83
    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->provider:Landroid/widget/TextView;

    .line 84
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->providerValue:Landroid/widget/TextView;

    .line 85
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->summary:Landroid/widget/TextView;

    .line 86
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;
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

    .line 135
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;
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

    .line 148
    const v0, 0x7f0d0077

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;
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

    .line 117
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;
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

    .line 98
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;
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

    .line 112
    const v0, 0x7f0d0077

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;
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

    .line 131
    const v0, 0x7f0d0077

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;

    return-object v0
.end method


# virtual methods
.method public getBillResponse()Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutVerifyUtilityPaymentBinding;->mBillResponse:Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;

    return-object v0
.end method

.method public abstract setBillResponse(Lcom/woleapp/netpos/contactless/model/ValidateBillResponse;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "billResponse"
        }
    .end annotation
.end method
