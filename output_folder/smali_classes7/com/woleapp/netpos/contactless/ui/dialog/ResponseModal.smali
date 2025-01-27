.class public final Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;
.super Lcom/woleapp/netpos/contactless/ui/dialog/Hilt_ResponseModal;
.source "ResponseModal.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nResponseModal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResponseModal.kt\ncom/woleapp/netpos/contactless/ui/dialog/ResponseModal\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n*L\n1#1,154:1\n77#2,6:155\n77#2,6:161\n*S KotlinDebug\n*F\n+ 1 ResponseModal.kt\ncom/woleapp/netpos/contactless/ui/dialog/ResponseModal\n*L\n44#1:155,6\n45#1:161,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0002J\u0012\u0010 \u001a\u00020\u001f2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0008\u0010)\u001a\u00020\u001fH\u0016J\u001a\u0010*\u001a\u00020\u001f2\u0006\u0010+\u001a\u00020$2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010,\u001a\u00020\u001f2\u0006\u0010-\u001a\u00020\u0016H\u0002J\u0008\u0010.\u001a\u00020\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0012\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001c\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;",
        "Landroidx/fragment/app/DialogFragment;",
        "()V",
        "amountTv",
        "Landroid/widget/TextView;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;",
        "cancelBtn",
        "Landroid/widget/ImageView;",
        "lottieIcon",
        "Lcom/airbnb/lottie/LottieAnimationView;",
        "modalData",
        "Lcom/woleapp/netpos/contactless/model/ModalData;",
        "nfcCardReaderViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "getNfcCardReaderViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;",
        "nfcCardReaderViewModel$delegate",
        "Lkotlin/Lazy;",
        "pdfView",
        "Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;",
        "responseFromWebView",
        "Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;",
        "scanQrViewModel",
        "Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "getScanQrViewModel",
        "()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;",
        "scanQrViewModel$delegate",
        "sendReceiptAsSms",
        "statusTv",
        "initViews",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "onResume",
        "onViewCreated",
        "view",
        "saveTransactionIntoDb",
        "qrTransaction",
        "setData",
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

.field private amountTv:Landroid/widget/TextView;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;

.field private cancelBtn:Landroid/widget/ImageView;

.field private lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

.field private modalData:Lcom/woleapp/netpos/contactless/model/ModalData;

.field private final nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

.field private pdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

.field private responseFromWebView:Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

.field private final scanQrViewModel$delegate:Lkotlin/Lazy;

.field private sendReceiptAsSms:Landroid/widget/ImageView;

.field private statusTv:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$KlvM2NfXHHvsQpHZX4g_ftS-JXQ(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->onResume$lambda-3(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LhhWIl9x9EHFxf7Fdq5bYj6ikT4(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->saveTransactionIntoDb$lambda-7(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjVjs-JOiBsEqb19KpcarGAEq1U(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->onResume$lambda-1(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/Hilt_ResponseModal;-><init>()V

    .line 44
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 155
    .local v0, "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 156
    const/4 v1, 0x0

    .line 155
    .local v1, "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 157
    .local v2, "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$special$$inlined$activityViewModels$default$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 159
    nop

    .line 157
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$special$$inlined$activityViewModels$default$2;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 160
    nop

    .line 44
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->scanQrViewModel$delegate:Lkotlin/Lazy;

    .line 45
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 161
    .restart local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    nop

    .line 162
    const/4 v1, 0x0

    .line 161
    .restart local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    const/4 v2, 0x0

    .line 163
    .restart local v2    # "$i$f$activityViewModels":I
    const-class v3, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$special$$inlined$activityViewModels$default$3;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    .line 165
    nop

    .line 163
    new-instance v5, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$special$$inlined$activityViewModels$default$4;

    invoke-direct {v5, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v3, v4, v5}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    .line 166
    nop

    .line 45
    .end local v0    # "$this$activityViewModels_u24default$iv":Landroidx/fragment/app/Fragment;
    .end local v1    # "factoryProducer$iv":Lkotlin/jvm/functions/Function0;
    .end local v2    # "$i$f$activityViewModels":I
    iput-object v3, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

    .line 34
    return-void
.end method

.method public static final synthetic access$getNfcCardReaderViewModel(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    .line 33
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .locals 1
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->responseFromWebView:Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    return-object v0
.end method

.method public static final synthetic access$saveTransactionIntoDb(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;
    .param p1, "qrTransaction"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 33
    invoke-direct {p0, p1}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->saveTransactionIntoDb(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    return-void
.end method

.method public static final synthetic access$setModalData$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Lcom/woleapp/netpos/contactless/model/ModalData;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/model/ModalData;

    .line 33
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->modalData:Lcom/woleapp/netpos/contactless/model/ModalData;

    return-void
.end method

.method public static final synthetic access$setResponseFromWebView$p(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 33
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->responseFromWebView:Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    return-void
.end method

.method private final getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->nfcCardReaderViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    return-object v0
.end method

.method private final getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->scanQrViewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    return-object v0
.end method

.method private final initViews()V
    .locals 4

    .line 109
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->binding:Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "$this$initViews_u24lambda_u2d4":Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;
    :cond_0
    const/4 v1, 0x0

    .line 110
    .local v1, "$i$a$-with-ResponseModal$initViews$1":I
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;->statusIconLAV:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v3, "statusIconLAV"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    .line 111
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;->successFailed:Landroid/widget/TextView;

    const-string v3, "successFailed"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->statusTv:Landroid/widget/TextView;

    .line 112
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;->cancelButton:Landroid/widget/ImageView;

    const-string v3, "cancelButton"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->cancelBtn:Landroid/widget/ImageView;

    .line 113
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;->qrAmount:Landroid/widget/TextView;

    const-string v3, "qrAmount"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->amountTv:Landroid/widget/TextView;

    .line 114
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;->printReceipt:Landroid/widget/ImageView;

    const-string v3, "printReceipt"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->sendReceiptAsSms:Landroid/widget/ImageView;

    .line 115
    nop

    .line 109
    .end local v0    # "$this$initViews_u24lambda_u2d4":Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;
    .end local v1    # "$i$a$-with-ResponseModal$initViews$1":I
    nop

    .line 116
    return-void
.end method

.method private static final onResume$lambda-1(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 97
    :cond_0
    return-void
.end method

.method private static final onResume$lambda-3(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;Landroid/view/View;)V
    .locals 51
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;
    .param p1, "it"    # Landroid/view/View;

    move-object/from16 v0, p0

    const-string v1, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 100
    :cond_0
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->responseFromWebView:Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    if-eqz v2, :cond_1

    .local v2, "qrTransResponse":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    const/4 v1, 0x0

    .line 101
    .local v1, "$i$a$-let-ResponseModal$onResume$2$1":I
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->getAmount()J

    move-result-wide v3

    const/16 v5, 0x64

    int-to-long v5, v5

    mul-long v48, v3, v5

    .local v48, "modifiedAmount":J
    move-wide/from16 v3, v48

    .line 102
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v50, v15

    move-object/from16 v15, v16

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-wide/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const/16 v45, -0x2

    const/16 v46, 0x1f

    const/16 v47, 0x0

    invoke-static/range {v2 .. v47}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->copy$default(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JIILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v3

    move-object/from16 v4, v50

    invoke-virtual {v4, v3}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->setQrTransactionResponse(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V

    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getNfcCardReaderViewModel()Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->showReceiptDialogForQrPayment()V

    .line 104
    nop

    .line 100
    .end local v1    # "$i$a$-let-ResponseModal$onResume$2$1":I
    .end local v2    # "qrTransResponse":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    .end local v48    # "modifiedAmount":J
    nop

    .line 105
    :cond_1
    return-void
.end method

.method private final saveTransactionIntoDb(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)V
    .locals 47
    .param p1, "qrTransaction"    # Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-object/from16 v0, p1

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getScanQrViewModel()Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->getCardScheme()Ljava/lang/String;

    move-result-object v27

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const v43, -0x800001

    const/16 v44, 0x1f

    const/16 v45, 0x0

    invoke-static/range {v0 .. v45}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;->copy$default(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JIILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v0

    .line 134
    nop

    .line 136
    .local v0, "qrTransactionWithCardScheme":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    sget-object v1, Lcom/woleapp/netpos/contactless/util/Mappers;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Mappers;

    invoke-virtual {v1, v0}, Lcom/woleapp/netpos/contactless/util/Mappers;->mapQrTransToNormalTransRespType(Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v1

    .local v1, "transactionResponse":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    move-object v2, v1

    .line 138
    sget-object v3, Lcom/woleapp/netpos/contactless/database/AppDatabase;->Companion:Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/database/AppDatabase$Companion;->getDatabaseInstance(Landroid/content/Context;)Lcom/woleapp/netpos/contactless/database/AppDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/database/AppDatabase;->transactionResponseDao()Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;

    move-result-object v15

    .line 140
    nop

    .line 141
    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v3

    .line 142
    const/16 v5, 0x64

    int-to-long v5, v5

    .line 141
    mul-long/2addr v5, v3

    .line 140
    nop

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTVR()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IS_QR_TRANSACTION"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 140
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v46, v15

    move-object/from16 v15, v16

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v33, 0x0

    const v40, -0x40005

    const/16 v41, 0x0

    invoke-static/range {v2 .. v41}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->copy$default(Lcom/danbamitale/epmslib/entities/TransactionResponse;Lcom/danbamitale/epmslib/entities/TransactionType;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/danbamitale/epmslib/utils/IsoAccountType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/danbamitale/epmslib/entities/PosMode;JLjava/lang/String;ILjava/lang/Object;)Lcom/danbamitale/epmslib/entities/TransactionResponse;

    move-result-object v2

    .line 139
    move-object/from16 v3, v46

    invoke-interface {v3, v2}, Lcom/woleapp/netpos/contactless/database/dao/TransactionResponseDao;->insertNewTransaction(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lio/reactivex/Single;

    move-result-object v2

    .line 147
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RxJavaUtils;

    const-string v4, "SAVE_QR_TRANS_TO_DB====>"

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->getSingleTransformer(Ljava/lang/String;)Lio/reactivex/SingleTransformer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->compose(Lio/reactivex/SingleTransformer;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$$ExternalSyntheticLambda0;-><init>()V

    .line 148
    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    .line 152
    return-void
.end method

.method private static final saveTransactionIntoDb$lambda-7(Ljava/lang/Long;)V
    .locals 3
    .param p0, "responseFromDbOperations"    # Ljava/lang/Long;

    .line 149
    if-eqz p0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .local v0, "it":J
    const/4 v2, 0x0

    .line 150
    .local v2, "$i$a$-let-ResponseModal$saveTransactionIntoDb$1$1":I
    nop

    .line 149
    .end local v0    # "it":J
    .end local v2    # "$i$a$-let-ResponseModal$saveTransactionIntoDb$1$1":I
    nop

    .line 151
    :cond_0
    return-void
.end method

.method private final setData()V
    .locals 6

    .line 119
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->modalData:Lcom/woleapp/netpos/contactless/model/ModalData;

    if-eqz v0, :cond_8

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/ModalData;
    const/4 v1, 0x0

    .line 120
    .local v1, "$i$a$-let-ResponseModal$setData$1":I
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/ModalData;->getStatus()Z

    move-result v2

    const-string v3, "lottieIcon"

    const-string v4, "statusTv"

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 121
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_0
    const v3, 0x7f120005

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 122
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->statusTv:Landroid/widget/TextView;

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_1
    const v3, 0x7f1301c9

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->statusTv:Landroid/widget/TextView;

    if-nez v2, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_2
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060305

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->lottieIcon:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v2, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_4
    const v3, 0x7f120003

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 126
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->statusTv:Landroid/widget/TextView;

    if-nez v2, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_5
    const v3, 0x7f1300b7

    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->statusTv:Landroid/widget/TextView;

    if-nez v2, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_6
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :goto_0
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->amountTv:Landroid/widget/TextView;

    if-nez v2, :cond_7

    const-string v2, "amountTv"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v5, v2

    :goto_1
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/ModalData;->getAmount()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const-string v3, "\u20a6"

    invoke-static {v2, v3}, Lcom/danbamitale/epmslib/extensions/NumberExtensionsKt;->formatCurrencyAmount(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    nop

    .line 119
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/ModalData;
    .end local v1    # "$i$a$-let-ResponseModal$setData$1":I
    nop

    .line 131
    :cond_8
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getView()Landroid/view/View;

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Lcom/woleapp/netpos/contactless/ui/dialog/Hilt_ResponseModal;->onCreate(Landroid/os/Bundle;)V

    .line 49
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$onCreate$1;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const-string v2, "QR_TRANSACTION_RESULT_REQUEST_KEY"

    invoke-static {v0, v2, v1}, Landroidx/fragment/app/FragmentKt;->setFragmentResultListener(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    .line 64
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    nop

    .line 73
    const v0, 0x7f0d0071

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v2, "inflate(inflater, R.layo\u2026pt_pdf, container, false)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    .line 72
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->pdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    .line 74
    nop

    .line 75
    const v0, 0x7f0d00d5

    invoke-static {p1, v0, p2, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, R.layo\u2026_modal, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;

    .line 74
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->binding:Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;

    .line 76
    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/TransactionStatusModalBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/Hilt_ResponseModal;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 93
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/Hilt_ResponseModal;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->setData()V

    .line 95
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->cancelBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "cancelBtn"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v2, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->sendReceiptAsSms:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    const-string v0, "sendReceiptAsSms"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/dialog/Hilt_ResponseModal;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->initViews()V

    .line 82
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "$this$onViewCreated_u24lambda_u2d0":Landroid/view/Window;
    const/4 v1, 0x0

    .line 83
    .local v1, "$i$a$-apply-ResponseModal$onViewCreated$1":I
    const v2, 0x7f0800a8

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 84
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->setCancelable(Z)V

    .line 85
    nop

    .line 82
    .end local v0    # "$this$onViewCreated_u24lambda_u2d0":Landroid/view/Window;
    .end local v1    # "$i$a$-apply-ResponseModal$onViewCreated$1":I
    :cond_0
    nop

    .line 87
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->pdfView:Lcom/woleapp/netpos/contactless/databinding/LayoutQrReceiptPdfBinding;

    if-nez v0, :cond_1

    const-string v0, "pdfView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Landroidx/databinding/ViewDataBinding;

    .line 88
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->responseFromWebView:Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    .line 86
    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/BuildPdfUtilKt;->initViewsForPdfLayout(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;)V

    .line 90
    return-void
.end method
