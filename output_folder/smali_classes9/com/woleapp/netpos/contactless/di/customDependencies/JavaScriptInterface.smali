.class public final Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;
.super Ljava/lang/Object;
.source "JavaScriptInterface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000f\u001a\u00020\u0005H\u0007J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;",
        "",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "redirectHtml",
        "",
        "transId",
        "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V",
        "context",
        "Landroid/content/Context;",
        "loader",
        "Landroid/app/AlertDialog;",
        "responseModal",
        "Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;",
        "webViewReQueryUrl",
        "sendValueToWebView",
        "webViewCallback",
        "",
        "webViewResponse",
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
.field private final context:Landroid/content/Context;

.field private final fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private final loader:Landroid/app/AlertDialog;

.field private final redirectHtml:Ljava/lang/String;

.field private final responseModal:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

.field private final transId:Ljava/lang/String;

.field private final webViewReQueryUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p2, "redirectHtml"    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
            value = "redirectHtml"
        .end annotation
    .end param
    .param p3, "transId"    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
            value = "transId"
        .end annotation
    .end param
    .annotation runtime Ldagger/assisted/AssistedInject;
    .end annotation

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "redirectHtml"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 22
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->redirectHtml:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->transId:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "fragmentManager.fragments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fragmentManager.fragments.first().requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->context:Landroid/content/Context;

    .line 26
    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    const v2, 0x7f0d006a

    invoke-virtual {v1, v0, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->alertDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->loader:Landroid/app/AlertDialog;

    .line 27
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->responseModal:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_WEB_VIEW_BASE_URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MERCHANT_ID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->webViewReQueryUrl:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public final sendValueToWebView()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->redirectHtml:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<======>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->transId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->webViewReQueryUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final webViewCallback(Ljava/lang/String;)V
    .locals 6
    .param p1, "webViewResponse"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "webViewResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 38
    const-class v1, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    .line 37
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    .line 41
    .local v0, "responseFromWebView":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;
    nop

    .line 42
    nop

    .line 43
    sget-object v1, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/User;->getTerminal_id()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move-object v1, v2

    .line 44
    :cond_1
    sget-object v3, Lcom/woleapp/netpos/contactless/util/UtilityParam;->INSTANCE:Lcom/woleapp/netpos/contactless/util/UtilityParam;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/UtilityParam;->getSTRING_MERCHANT_ID()Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v0, v2, v1, v3}, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;->mapQrTransRespToQrRespFinalModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;

    move-result-object v1

    .line 47
    .local v1, "response":Lcom/woleapp/netpos/contactless/model/QrTransactionResponseFinalModel;
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 48
    nop

    .line 49
    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    const-string v5, "QR_TRANSACTION_RESULT_BUNDLE_KEY"

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v3

    .line 47
    const-string v4, "QR_TRANSACTION_RESULT_REQUEST_KEY"

    invoke-virtual {v2, v4, v3}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 52
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->responseModal:Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/di/customDependencies/JavaScriptInterface;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v4, "STRING_QR_RESPONSE_MODAL_DIALOG_TAG"

    invoke-virtual {v2, v3, v4}, Lcom/woleapp/netpos/contactless/ui/dialog/ResponseModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 53
    return-void
.end method
