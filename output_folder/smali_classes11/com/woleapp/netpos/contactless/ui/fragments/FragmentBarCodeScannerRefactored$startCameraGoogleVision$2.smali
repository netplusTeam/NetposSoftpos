.class public final Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;
.super Ljava/lang/Object;
.source "FragmentBarCodeScannerRefactored.kt"

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->startCameraGoogleVision()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/Detector$Processor<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0004H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2",
        "Lcom/google/android/gms/vision/Detector$Processor;",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        "receiveDetections",
        "",
        "detections",
        "Lcom/google/android/gms/vision/Detector$Detections;",
        "release",
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
.field final synthetic this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;


# direct methods
.method public static synthetic $r8$lambda$B0J-w7K5rZitCZFuBm4R6fRnxr8(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;->receiveDetections$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    iput-object p1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final receiveDetections$lambda-1(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;Ljava/lang/String;)V
    .locals 13
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;
    .param p1, "$qrCodeText"    # Ljava/lang/String;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->access$getCameraSource$p(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/google/android/gms/vision/CameraSource;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "cameraSource"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 146
    if-eqz p1, :cond_5

    move-object v0, p1

    .local v0, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 147
    .local v2, "$i$a$-let-FragmentBarCodeScannerRefactored$startCameraGoogleVision$2$receiveDetections$1$1":I
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v3, v4, v5, v6, v1}, Lcom/woleapp/netpos/contactless/util/AppUtilsKt;->vibrateThePhone$default(Landroid/content/Context;JILjava/lang/Object;)V

    .line 148
    nop

    .line 150
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v7, "https"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v5, v7, v4, v6, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 152
    new-instance v5, Lkotlin/text/Regex;

    const-string v7, "[?&]token=([^&]*)"

    invoke-direct {v5, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v5, v7, v4, v6, v1}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Lkotlin/text/MatchResult;->getGroups()Lkotlin/text/MatchGroupCollection;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5, v3}, Lkotlin/text/MatchGroupCollection;->get(I)Lkotlin/text/MatchGroup;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lkotlin/text/MatchGroup;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    goto :goto_0

    :cond_1
    move-object v6, v1

    goto :goto_0

    .line 154
    :cond_2
    move-object v6, v0

    .line 150
    :goto_0
    nop

    .line 157
    .local v6, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getGson()Lcom/google/gson/Gson;

    move-result-object v5

    sget-object v12, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "%3D"

    const-string v8, "="

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->base64ToPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    invoke-virtual {v5, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    .end local v6    # "token":Ljava/lang/String;
    check-cast v5, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    move-exception v5

    .line 160
    .local v5, "e":Ljava/lang/Exception;
    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    const-string v7, "ERROR"

    const-string v8, "Failed to process scanned data"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    move-object v6, v1

    check-cast v6, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;

    move-object v5, v1

    .line 148
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 164
    .local v5, "scannedData":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    if-eqz v5, :cond_3

    .line 165
    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->access$getViewModel(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;

    move-result-object v1

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;->getCard_scheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/woleapp/netpos/contactless/viewmodels/ScanQrViewModel;->setCardScheme(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 168
    const v6, 0x7f13018f

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 169
    nop

    .line 166
    invoke-static {v1, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 171
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 173
    nop

    .line 174
    new-array v3, v3, [Lkotlin/Pair;

    const-string v6, "STRING_QR_READ_RESULT_BUNDLE_KEY"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    .line 172
    const-string v4, "STRING_QR_READ_RESULT_REQUEST_KEY"

    invoke-virtual {v1, v4, v3}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    .line 177
    :cond_3
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v4, p0

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->access$getBinding$p(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;)Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, "binding"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v6

    :goto_2
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/databinding/FragmentBarCodeScannerRefactoredBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    const-string v6, "binding.root"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f1300cd

    invoke-virtual {p0, v6}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.invalid_qr)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v1, v6}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 179
    :goto_3
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 180
    nop

    .line 146
    .end local v0    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-FragmentBarCodeScannerRefactored$startCameraGoogleVision$2$receiveDetections$1$1":I
    .end local v5    # "scannedData":Lcom/woleapp/netpos/contactless/model/QrScannedDataModel;
    nop

    .line 181
    :cond_5
    return-void
.end method


# virtual methods
.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 5
    .param p1, "detections"    # Lcom/google/android/gms/vision/Detector$Detections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "detections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object v0

    const-string v1, "detections.detectedItems"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    .local v0, "barcodes":Landroid/util/SparseArray;
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/barcode/Barcode;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/vision/barcode/Barcode;->rawValue:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 144
    .local v1, "qrCodeText":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    .end local v1    # "qrCodeText":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored$startCameraGoogleVision$2;->this$0:Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;

    const v2, 0x7f1301a7

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/FragmentBarCodeScannerRefactored;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 135
    nop

    .line 132
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method
