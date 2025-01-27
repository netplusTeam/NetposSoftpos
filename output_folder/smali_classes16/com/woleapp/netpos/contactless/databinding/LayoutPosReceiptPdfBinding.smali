.class public abstract Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutPosReceiptPdfBinding.java"


# instance fields
.field public final appVersion:Landroid/widget/TextView;

.field public final cardHolder:Landroid/widget/TextView;

.field public final cardType:Landroid/widget/TextView;

.field public final dateTime:Landroid/widget/TextView;

.field public final imageView:Landroid/widget/ImageView;

.field public final imageView2:Landroid/widget/ImageView;

.field public final maskedPan:Landroid/widget/TextView;

.field public final merchantName:Landroid/widget/TextView;

.field public final message:Landroid/widget/TextView;

.field public final poweredBy:Landroid/widget/TextView;

.field public final responseCode:Landroid/widget/TextView;

.field public final rrn:Landroid/widget/TextView;

.field public final stan:Landroid/widget/TextView;

.field public final status:Landroid/widget/TextView;

.field public final terminalIdPlaceHolder:Landroid/widget/TextView;

.field public final textView3:Landroid/widget/TextView;

.field public final textView4:Landroid/widget/TextView;

.field public final textView5:Landroid/widget/TextView;

.field public final title:Landroid/widget/TextView;

.field public final transAmount:Landroid/widget/TextView;

.field public final view2:Landroid/view/View;

.field public final view3:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;)V
    .locals 16
    .param p1, "_bindingComponent"    # Ljava/lang/Object;
    .param p2, "_root"    # Landroid/view/View;
    .param p3, "_localFieldCount"    # I
    .param p4, "appVersion"    # Landroid/widget/TextView;
    .param p5, "cardHolder"    # Landroid/widget/TextView;
    .param p6, "cardType"    # Landroid/widget/TextView;
    .param p7, "dateTime"    # Landroid/widget/TextView;
    .param p8, "imageView"    # Landroid/widget/ImageView;
    .param p9, "imageView2"    # Landroid/widget/ImageView;
    .param p10, "maskedPan"    # Landroid/widget/TextView;
    .param p11, "merchantName"    # Landroid/widget/TextView;
    .param p12, "message"    # Landroid/widget/TextView;
    .param p13, "poweredBy"    # Landroid/widget/TextView;
    .param p14, "responseCode"    # Landroid/widget/TextView;
    .param p15, "rrn"    # Landroid/widget/TextView;
    .param p16, "stan"    # Landroid/widget/TextView;
    .param p17, "status"    # Landroid/widget/TextView;
    .param p18, "terminalIdPlaceHolder"    # Landroid/widget/TextView;
    .param p19, "textView3"    # Landroid/widget/TextView;
    .param p20, "textView4"    # Landroid/widget/TextView;
    .param p21, "textView5"    # Landroid/widget/TextView;
    .param p22, "title"    # Landroid/widget/TextView;
    .param p23, "transAmount"    # Landroid/widget/TextView;
    .param p24, "view2"    # Landroid/view/View;
    .param p25, "view3"    # Landroid/view/View;
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
            0x0,
            0x0,
            0x0
        }
        names = {
            "_bindingComponent",
            "_root",
            "_localFieldCount",
            "appVersion",
            "cardHolder",
            "cardType",
            "dateTime",
            "imageView",
            "imageView2",
            "maskedPan",
            "merchantName",
            "message",
            "poweredBy",
            "responseCode",
            "rrn",
            "stan",
            "status",
            "terminalIdPlaceHolder",
            "textView3",
            "textView4",
            "textView5",
            "title",
            "transAmount",
            "view2",
            "view3"
        }
    .end annotation

    .line 90
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 91
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    .line 92
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->cardHolder:Landroid/widget/TextView;

    .line 93
    move-object/from16 v3, p6

    iput-object v3, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->cardType:Landroid/widget/TextView;

    .line 94
    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->dateTime:Landroid/widget/TextView;

    .line 95
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->imageView:Landroid/widget/ImageView;

    .line 96
    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->imageView2:Landroid/widget/ImageView;

    .line 97
    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->maskedPan:Landroid/widget/TextView;

    .line 98
    move-object/from16 v8, p11

    iput-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->merchantName:Landroid/widget/TextView;

    .line 99
    move-object/from16 v9, p12

    iput-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->message:Landroid/widget/TextView;

    .line 100
    move-object/from16 v10, p13

    iput-object v10, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->poweredBy:Landroid/widget/TextView;

    .line 101
    move-object/from16 v11, p14

    iput-object v11, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->responseCode:Landroid/widget/TextView;

    .line 102
    move-object/from16 v12, p15

    iput-object v12, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->rrn:Landroid/widget/TextView;

    .line 103
    move-object/from16 v13, p16

    iput-object v13, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->stan:Landroid/widget/TextView;

    .line 104
    move-object/from16 v14, p17

    iput-object v14, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->status:Landroid/widget/TextView;

    .line 105
    move-object/from16 v15, p18

    iput-object v15, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->terminalIdPlaceHolder:Landroid/widget/TextView;

    .line 106
    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->textView3:Landroid/widget/TextView;

    .line 107
    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->textView4:Landroid/widget/TextView;

    .line 108
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->textView5:Landroid/widget/TextView;

    .line 109
    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->title:Landroid/widget/TextView;

    .line 110
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->transAmount:Landroid/widget/TextView;

    .line 111
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->view2:Landroid/view/View;

    .line 112
    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->view3:Landroid/view/View;

    .line 113
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
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

    .line 155
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    move-result-object v0

    return-object v0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
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

    .line 167
    const v0, 0x7f0d006d

    invoke-static {p1, p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
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

    .line 137
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
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

    .line 118
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
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

    .line 132
    const v0, 0x7f0d006d

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
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

    .line 151
    const v0, 0x7f0d006d

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    return-object v0
.end method
