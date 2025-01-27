.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutReceiptPdfBinding.java"


# instance fields
.field public final accountType:Landroid/widget/TextView;

.field public final appVersion:Landroid/widget/TextView;

.field public final authCode:Landroid/widget/TextView;

.field public final cardExpiration:Landroid/widget/TextView;

.field public final cardHolder:Landroid/widget/TextView;

.field public final cardType:Landroid/widget/TextView;

.field public final dateTime:Landroid/widget/TextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final isCustomersCopy:Landroid/widget/TextView;

.field public final message:Landroid/widget/TextView;

.field public final orderId:Landroid/widget/TextView;

.field public final poweredBy:Landroid/widget/TextView;

.field public final responseCode:Landroid/widget/TextView;

.field public final stan:Landroid/widget/TextView;

.field public final status:Landroid/widget/TextView;

.field public final terminalIdPlaceHolder:Landroid/widget/TextView;

.field public final textView5:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;

.field public final transAmount:Landroid/widget/TextView;

.field public final transId:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "accountType"    # Landroid/widget/TextView;
    .param p5, "appVersion"    # Landroid/widget/TextView;
    .param p6, "authCode"    # Landroid/widget/TextView;
    .param p7, "cardExpiration"    # Landroid/widget/TextView;
    .param p8, "cardHolder"    # Landroid/widget/TextView;
    .param p9, "cardType"    # Landroid/widget/TextView;
    .param p10, "dateTime"    # Landroid/widget/TextView;
    .param p11, "imageView"    # Landroid/widget/ImageView;
    .param p12, "isCustomersCopy"    # Landroid/widget/TextView;
    .param p13, "message"    # Landroid/widget/TextView;
    .param p14, "orderId"    # Landroid/widget/TextView;
    .param p15, "poweredBy"    # Landroid/widget/TextView;
    .param p16, "responseCode"    # Landroid/widget/TextView;
    .param p17, "stan"    # Landroid/widget/TextView;
    .param p18, "status"    # Landroid/widget/TextView;
    .param p19, "terminalIdPlaceHolder"    # Landroid/widget/TextView;
    .param p20, "textView5"    # Landroid/widget/TextView;
    .param p21, "title"    # Landroid/widget/TextView;
    .param p22, "transAmount"    # Landroid/widget/TextView;
    .param p23, "transId"    # Landroid/widget/TextView;
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
            "accountType",
            "appVersion",
            "authCode",
            "cardExpiration",
            "cardHolder",
            "cardType",
            "dateTime",
            "imageView",
            "isCustomersCopy",
            "message",
            "orderId",
            "poweredBy",
            "responseCode",
            "stan",
            "status",
            "terminalIdPlaceHolder",
            "textView5",
            "title",
            "transAmount",
            "transId"
        }
    .end annotation

    .line 84
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 85
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->accountType:Landroid/widget/TextView;

    .line 86
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    .line 87
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->authCode:Landroid/widget/TextView;

    .line 88
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->cardExpiration:Landroid/widget/TextView;

    .line 89
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->cardHolder:Landroid/widget/TextView;

    .line 90
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->cardType:Landroid/widget/TextView;

    .line 91
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->dateTime:Landroid/widget/TextView;

    .line 92
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->imageView:Landroid/widget/ImageView;

    .line 93
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->isCustomersCopy:Landroid/widget/TextView;

    .line 94
    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->message:Landroid/widget/TextView;

    .line 95
    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->orderId:Landroid/widget/TextView;

    .line 96
    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->poweredBy:Landroid/widget/TextView;

    .line 97
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->responseCode:Landroid/widget/TextView;

    .line 98
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->stan:Landroid/widget/TextView;

    .line 99
    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->status:Landroid/widget/TextView;

    .line 100
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->terminalIdPlaceHolder:Landroid/widget/TextView;

    .line 101
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->textView5:Landroid/widget/TextView;

    .line 102
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->title:Landroid/widget/TextView;

    .line 103
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->transAmount:Landroid/widget/TextView;

    .line 104
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->transId:Landroid/widget/TextView;

    .line 105
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;
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

    .line 147
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;
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

    .line 159
    const v0, 0x7f0d0073

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;
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

    .line 129
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;
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

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;
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

    .line 124
    const v0, 0x7f0d0073

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;
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

    .line 143
    const v0, 0x7f0d0073

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutReceiptPdfBinding;

    return-object v0
.end method
