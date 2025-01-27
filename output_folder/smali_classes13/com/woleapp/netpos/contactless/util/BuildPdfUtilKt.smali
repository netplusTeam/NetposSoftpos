.class public final Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;
.super Ljava/lang/Object;
.source "BuildPdfUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuildPdfUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildPdfUtil.kt\ncom/woleapp/netpos/contactless/util/BuildPdfUtilKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,276:1\n1#2:277\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0010\u0004\n\u0002\u0008\u0002\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u001a\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u001a\u001a\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0016\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0015H\u0002\u00a8\u0006\u0018"
    }
    d2 = {
        "createPdf",
        "Ljava/io/File;",
        "pdfView",
        "Landroidx/databinding/ViewDataBinding;",
        "host",
        "Landroidx/lifecycle/LifecycleOwner;",
        "initViewsForPdfLayout",
        "",
        "receipt",
        "",
        "initViewsForPosReceipt",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;",
        "transResponse",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "initViewsForQrReceipt",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;",
        "responseFromWebView",
        "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
        "sharePdf",
        "outputFile",
        "formatCurrencyAmountUsingCurrentModule",
        "",
        "",
        "currencySymbol",
        "app_fcmbeasypayDebug"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createPdf(Landroidx/databinding/ViewDataBinding;Landroidx/lifecycle/LifecycleOwner;)Ljava/io/File;
    .locals 10
    .param p0, "pdfView"    # Landroidx/databinding/ViewDataBinding;
    .param p1, "host"    # Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "pdfView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 71
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    instance-of v1, p1, Landroidx/fragment/app/Fragment;

    const/16 v2, 0x1e

    if-eqz v1, :cond_2

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 73
    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 74
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    .line 76
    :cond_1
    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 79
    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    .line 80
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    .line 81
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    :cond_3
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    .line 84
    :cond_4
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    .line 90
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 91
    nop

    .line 89
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 94
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 95
    nop

    .line 93
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 88
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 99
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 101
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .local v1, "it":I
    const/4 v2, 0x0

    .line 102
    .local v2, "$i$a$-let-BuildPdfUtilKt$createPdf$bitmap$1":I
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .local v3, "it1":I
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$a$-let-BuildPdfUtilKt$createPdf$bitmap$1$1":I
    nop

    .line 105
    nop

    .line 106
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 103
    invoke-static {v1, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 102
    .end local v3    # "it1":I
    .end local v4    # "$i$a$-let-BuildPdfUtilKt$createPdf$bitmap$1$1":I
    nop

    .line 101
    .end local v1    # "it":I
    .end local v2    # "$i$a$-let-BuildPdfUtilKt$createPdf$bitmap$1":I
    const-string v1, "pdfView.root.measuredWid\u2026        )\n        }\n    }"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v3

    .line 111
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, v1

    .line 277
    .local v2, "it":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 111
    .local v3, "$i$a$-let-BuildPdfUtilKt$createPdf$canvas$1":I
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .end local v2    # "it":Landroid/graphics/Bitmap;
    .end local v3    # "$i$a$-let-BuildPdfUtilKt$createPdf$canvas$1":I
    move-object v2, v4

    .line 112
    .local v2, "canvas":Landroid/graphics/Canvas;
    nop

    .line 113
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 116
    nop

    .line 117
    const/16 v3, 0x253

    const/16 v4, 0x34a

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 119
    new-instance v3, Landroid/graphics/pdf/PdfDocument;

    invoke-direct {v3}, Landroid/graphics/pdf/PdfDocument;-><init>()V

    .line 120
    .local v3, "pdfDocument":Landroid/graphics/pdf/PdfDocument;
    move-object v4, v1

    .local v4, "it":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 121
    .local v6, "$i$a$-let-BuildPdfUtilKt$createPdf$pageInfo$1":I
    new-instance v7, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v8, v9, v5}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;-><init>(III)V

    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$PageInfo$Builder;->create()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v4

    .line 120
    .end local v4    # "it":Landroid/graphics/Bitmap;
    .end local v6    # "$i$a$-let-BuildPdfUtilKt$createPdf$pageInfo$1":I
    nop

    .line 123
    .local v4, "pageInfo":Landroid/graphics/pdf/PdfDocument$PageInfo;
    invoke-virtual {v3, v4}, Landroid/graphics/pdf/PdfDocument;->startPage(Landroid/graphics/pdf/PdfDocument$PageInfo;)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v5

    .line 124
    .local v5, "page":Landroid/graphics/pdf/PdfDocument$Page;
    nop

    .line 125
    invoke-virtual {v5}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 127
    invoke-virtual {v3, v5}, Landroid/graphics/pdf/PdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 128
    new-instance v6, Ljava/io/File;

    .line 129
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 130
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NetPOS_Receipt_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->getCurrentDateTimeAsFormattedString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".pdf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v6, "filePath":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v7, Ljava/io/OutputStream;

    invoke-virtual {v3, v7}, Landroid/graphics/pdf/PdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 134
    invoke-virtual {v3}, Landroid/graphics/pdf/PdfDocument;->close()V

    .line 136
    return-object v6
.end method

.method private static final formatCurrencyAmountUsingCurrentModule(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "$this$formatCurrencyAmountUsingCurrentModule"    # Ljava/lang/Number;
    .param p1, "currencySymbol"    # Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic formatCurrencyAmountUsingCurrentModule$default(Ljava/lang/Number;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 272
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "\u20a6"

    :cond_0
    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->formatCurrencyAmountUsingCurrentModule(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final initViewsForPdfLayout(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;)V
    .locals 2
    .param p0, "pdfView"    # Landroidx/databinding/ViewDataBinding;
    .param p1, "receipt"    # Ljava/lang/Object;

    const-string v0, "pdfView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    nop

    .line 34
    instance-of v0, p1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    if-eqz v0, :cond_0

    .line 35
    move-object v0, p0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->initViewsForQrReceipt(Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    goto :goto_0

    .line 37
    :cond_0
    instance-of v0, p1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    if-eqz v0, :cond_1

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;

    move-object v1, p1

    check-cast v1, Lcom/danbamitale/epmslib/entities/TransactionResponse;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->initViewsForPosReceipt(Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V

    .line 43
    :cond_1
    :goto_0
    return-void
.end method

.method private static final initViewsForPosReceipt(Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;Lcom/danbamitale/epmslib/entities/TransactionResponse;)V
    .locals 13
    .param p0, "pdfView"    # Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
    .param p1, "transResponse"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    .line 212
    move-object v0, p0

    .local v0, "$this$initViewsForPosReceipt_u24lambda_u2d8":Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
    const/4 v1, 0x0

    .line 213
    .local v1, "$i$a$-apply-BuildPdfUtilKt$initViewsForPosReceipt$1":I
    move-object v2, p1

    .local v2, "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v3, 0x0

    .line 214
    .local v3, "$i$a$-let-BuildPdfUtilKt$initViewsForPosReceipt$1$1":I
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->merchantName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 215
    nop

    .line 216
    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    sget-object v8, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/woleapp/netpos/contactless/model/User;->getBusiness_name()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 217
    :cond_0
    const-string v8, "fcmbeasypay POS MERCHANT"

    :cond_1
    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 216
    nop

    .line 214
    const v8, 0x7f130111

    invoke-virtual {v5, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->terminalIdPlaceHolder:Landroid/widget/TextView;

    .line 220
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 221
    const v7, 0x7f1301ce

    .line 222
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTerminalId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 220
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 219
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->dateTime:Landroid/widget/TextView;

    .line 225
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 226
    const v7, 0x7f130091

    .line 227
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionTimeInMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->formatDate(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 225
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 224
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->transAmount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 230
    const v7, 0x7f130034

    .line 231
    new-array v8, v6, [Ljava/lang/Object;

    sget-object v10, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->divideLongBy100(J)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    const/4 v11, 0x0

    invoke-static {v10, v11, v6, v11}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->formatCurrencyAmountUsingCurrentModule$default(Ljava/lang/Number;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 229
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->cardHolder:Landroid/widget/TextView;

    .line 239
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 240
    const v7, 0x7f130064

    .line 241
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardHolder()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 239
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 238
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->status:Landroid/widget/TextView;

    .line 244
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 245
    const v7, 0x7f1301da

    .line 246
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v10

    const-string v11, "00"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v10

    const-string v11, "16"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    const-string v10, "DECLINED"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v10, "APPROVED"

    :goto_1
    aput-object v10, v8, v9

    .line 244
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 243
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->responseCode:Landroid/widget/TextView;

    .line 249
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 250
    const v7, 0x7f13019f

    .line 251
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 249
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 248
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->message:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 254
    const v7, 0x7f130113

    .line 255
    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 253
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->cardType:Landroid/widget/TextView;

    .line 258
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f130067

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardLabel()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 257
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 260
    const v7, 0x7f13003a

    .line 261
    new-array v8, v6, [Ljava/lang/Object;

    const-string v10, "fcmbeasypay POS 1.0.50"

    aput-object v10, v8, v9

    .line 259
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->rrn:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v7, 0x7f1301a1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->maskedPan:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 265
    const v7, 0x7f1300f5

    .line 266
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v9

    .line 264
    invoke-virtual {v5, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    nop

    .line 213
    .end local v2    # "it":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    .end local v3    # "$i$a$-let-BuildPdfUtilKt$initViewsForPosReceipt$1$1":I
    nop

    .line 269
    nop

    .line 212
    .end local v0    # "$this$initViewsForPosReceipt_u24lambda_u2d8":Lcom/woleapp/netpos/contactless/databinding/LayoutPosReceiptPdfBinding;
    .end local v1    # "$i$a$-apply-BuildPdfUtilKt$initViewsForPosReceipt$1":I
    nop

    .line 270
    return-void
.end method

.method private static final initViewsForQrReceipt(Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V
    .locals 13
    .param p0, "pdfView"    # Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;
    .param p1, "responseFromWebView"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 143
    move-object v0, p0

    .local v0, "$this$initViewsForQrReceipt_u24lambda_u2d6":Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;
    const/4 v1, 0x0

    .line 144
    .local v1, "$i$a$-apply-BuildPdfUtilKt$initViewsForQrReceipt$1":I
    if-eqz p1, :cond_2

    move-object v2, p1

    .local v2, "respFromWebView":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    const/4 v3, 0x0

    .line 145
    .local v3, "$i$a$-let-BuildPdfUtilKt$initViewsForQrReceipt$1$1":I
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->merchantName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 146
    const v6, 0x7f130111

    .line 147
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    sget-object v9, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v9}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/woleapp/netpos/contactless/model/User;->getBusiness_name()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 148
    :cond_0
    const-string v9, "fcmbeasypay POS MERCHANT"

    :cond_1
    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 147
    nop

    .line 145
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->cardOwner:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->getRoot()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 151
    const v6, 0x7f130066

    .line 152
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getCustomerName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 150
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->terminalIdPlaceHolder:Landroid/widget/TextView;

    .line 155
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 156
    const v6, 0x7f1301ce

    .line 157
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getTerminalId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 155
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 154
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->dateTime:Landroid/widget/TextView;

    .line 160
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 161
    const v6, 0x7f130091

    .line 162
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getTransmissionDateTime()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 160
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 159
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->transAmount:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 165
    const v6, 0x7f130034

    .line 166
    new-array v8, v7, [Ljava/lang/Object;

    sget-object v9, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getAmount()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->divideLongBy100(J)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    const/4 v11, 0x0

    invoke-static {v9, v11, v7, v11}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->formatCurrencyAmountUsingCurrentModule$default(Ljava/lang/Number;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 164
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->orderId:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 169
    const v6, 0x7f130168

    .line 170
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getRrnOrderId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 168
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->status:Landroid/widget/TextView;

    .line 183
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 184
    const v6, 0x7f1301da

    .line 185
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getStatus()Ljava/lang/String;

    move-result-object v9

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v8, v10

    .line 183
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->responseCode:Landroid/widget/TextView;

    .line 188
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 189
    const v6, 0x7f13019f

    .line 190
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getResponseCode()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 188
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 187
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->message:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 193
    const v6, 0x7f130113

    .line 194
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 192
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->maskedPan:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 197
    const v6, 0x7f1300f5

    .line 198
    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getMaskedPan()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    .line 196
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;->appVersion:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 201
    const v6, 0x7f13003a

    .line 202
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "fcmbeasypay POS 1.0.50"

    aput-object v8, v7, v10

    .line 200
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    nop

    .line 144
    .end local v2    # "respFromWebView":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .end local v3    # "$i$a$-let-BuildPdfUtilKt$initViewsForQrReceipt$1$1":I
    nop

    .line 205
    :cond_2
    nop

    .line 143
    .end local v0    # "$this$initViewsForQrReceipt_u24lambda_u2d6":Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;
    .end local v1    # "$i$a$-apply-BuildPdfUtilKt$initViewsForQrReceipt$1":I
    nop

    .line 206
    return-void
.end method

.method public static final sharePdf(Ljava/io/File;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 7
    .param p0, "outputFile"    # Ljava/io/File;
    .param p1, "host"    # Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "outputFile"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    instance-of v0, p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "host.requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/content/Context;

    .line 54
    .local v0, "context":Landroid/content/Context;
    :goto_0
    nop

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    nop

    .line 53
    invoke-static {v0, v1, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "getUriForFile(\n        c\u2026        outputFile,\n    )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v3, v2

    .local v3, "$this$sharePdf_u24lambda_u2d0":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 59
    .local v4, "$i$a$-apply-BuildPdfUtilKt$sharePdf$share$1":I
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v5, "application/pdf"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    move-object v5, v1

    check-cast v5, Landroid/os/Parcelable;

    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    nop

    .line 58
    .end local v3    # "$this$sharePdf_u24lambda_u2d0":Landroid/content/Intent;
    .end local v4    # "$i$a$-apply-BuildPdfUtilKt$sharePdf$share$1":I
    nop

    .line 63
    .local v2, "share":Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method
