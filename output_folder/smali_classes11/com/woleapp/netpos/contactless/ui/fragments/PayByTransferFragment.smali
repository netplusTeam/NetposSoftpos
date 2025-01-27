.class public final Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "PayByTransferFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPayByTransferFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PayByTransferFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,108:1\n77#2,6:109\n*S KotlinDebug\n*F\n+ 1 PayByTransferFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment\n*L\n34#1:109,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002J\u0008\u0010\u0016\u001a\u00020\u0015H\u0002J\u0008\u0010\u0017\u001a\u00020\u0015H\u0002J\u0008\u0010\u0018\u001a\u00020\u0015H\u0002J$\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016J\u001a\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u001a2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006#"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "accountNumberQRCode",
        "Landroid/widget/ImageView;",
        "bankAccountNumber",
        "Lcom/google/android/material/textfield/TextInputEditText;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;",
        "copyAccountNumber",
        "",
        "loader",
        "Landroid/app/AlertDialog;",
        "merchantBank",
        "scanQrViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "getScanQrViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "scanQrViewModel$delegate",
        "Lkotlin/Lazy;",
        "convertAccountNumberToQR",
        "",
        "copyText",
        "generateMerchantDetails",
        "initViews",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private accountNumberQRCode:Landroid/widget/ImageView;

.field private bankAccountNumber:Lcom/google/android/material/textfield/TextInputEditText;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

.field private copyAccountNumber:Ljava/lang/String;

.field private loader:Landroid/app/AlertDialog;

.field private merchantBank:Lcom/google/android/material/textfield/TextInputEditText;

.field private final scanQrViewModel$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$MbpFPideDr-n8UNZ_sNYWKcJQfE(Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P-SOfIqZpAHtrlBdDghel4jbCN0(Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->generateMerchantDetails$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 34
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 109
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 110
    const/4 v1, 0x0

    .line 109
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 111
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 113
    nop

    .line 111
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 114
    nop

    .line 34
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->scanQrViewModel$delegate:Lkotlin/Lazy;

    .line 28
    return-void
.end method

.method private final convertAccountNumberToQR()V
    .locals 8

    .line 61
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    .line 62
    .local v0, "writer":Lcom/google/zxing/qrcode/QRCodeWriter;
    nop

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->copyAccountNumber:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 64
    .local v1, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 65
    .local v2, "width":I
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    .line 66
    .local v3, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "createBitmap(width, height, Bitmap.Config.RGB_565)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .local v4, "bmp":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 68
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 69
    invoke-virtual {v1, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-eqz v7, :cond_0

    const/high16 v7, -0x1000000

    goto :goto_2

    :cond_0
    const/4 v7, -0x1

    :goto_2
    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 68
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 67
    .end local v6    # "y":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    .end local v5    # "x":I
    :cond_2
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    if-nez v5, :cond_3

    const-string v5, "binding"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_3
    iget-object v5, v5, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->accountNumberQr:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "bmp":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 73
    :catch_0
    move-exception v1

    .line 75
    :goto_3
    return-void
.end method

.method private final copyText()V
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/ClipboardManager;

    .line 102
    nop

    .line 104
    .local v0, "clipboardManager":Landroid/content/ClipboardManager;
    const-string v1, "Text copied"

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->copyAccountNumber:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 105
    .local v1, "clip":Landroid/content/ClipData;
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 106
    move-object v2, p0

    check-cast v2, Landroidx/fragment/app/Fragment;

    const-string v3, "Account number copied"

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private final generateMerchantDetails()V
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getPayByTransfer()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 99
    return-void
.end method

.method private static final generateMerchantDetails$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;
    .param p1, "merchantDetails"    # Lcom/woleapp/netpos/contactless/util/Resource;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;->getUser()Lcom/woleapp/netpos/contactless/model/MerchantDetail;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetail;->getAcctNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "bankAccountNumber"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 88
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->bankAccountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;->getUser()Lcom/woleapp/netpos/contactless/model/MerchantDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetail;->getAcctNumber()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->merchantBank:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_3

    const-string v0, "merchantBank"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_3
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;->getUser()Lcom/woleapp/netpos/contactless/model/MerchantDetail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/MerchantDetail;->getBank()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;->getUser()Lcom/woleapp/netpos/contactless/model/MerchantDetail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/MerchantDetail;->getAcctNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->copyAccountNumber:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    const-string v1, "binding"

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_4
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->scanQrTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_5
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->scanQrView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v3, v0

    :goto_2
    iget-object v0, v3, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->accountNumberQr:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->convertAccountNumberToQR()V

    goto :goto_3

    .line 96
    :cond_7
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->bankAccountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_8
    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    :goto_3
    return-void
.end method

.method private final getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->scanQrViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    return-object v0
.end method

.method private final initViews()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$this$initViews_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
    :cond_0
    const/4 v1, 0x0

    .line 79
    .local v1, "$i$a$-with-PayByTransferFragment$initViews$1":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->accountNumberQr:Landroid/widget/ImageView;

    const-string v3, "accountNumberQr"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->accountNumberQRCode:Landroid/widget/ImageView;

    .line 80
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->bankName:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "bankName"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->merchantBank:Lcom/google/android/material/textfield/TextInputEditText;

    .line 81
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->accountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    const-string v3, "accountNumber"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->bankAccountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    .line 82
    nop

    .line 78
    .end local v0    # "$this$initViews_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;
    .end local v1    # "$i$a$-with-PayByTransferFragment$initViews$1":I
    nop

    .line 83
    return-void
.end method

.method private static final onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->copyAccountNumber:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 55
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->copyText()V

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    nop

    .line 43
    const v0, 0x7f0d004f

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, R.layo\u2026ansfer, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    .line 42
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;

    .line 45
    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentPayByTransferBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 50
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->initViews()V

    .line 51
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->alertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->loader:Landroid/app/AlertDialog;

    .line 52
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->generateMerchantDetails()V

    .line 53
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;->bankAccountNumber:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v0, :cond_0

    const-string v0, "bankAccountNumber"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/PayByTransferFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method
