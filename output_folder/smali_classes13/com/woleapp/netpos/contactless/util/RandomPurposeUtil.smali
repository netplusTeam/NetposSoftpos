.class public final Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;
.super Ljava/lang/Object;
.source "RandomPurposeUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0004\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005J\u0016\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016J,\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u00102\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJ\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0005J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0005H\u0007J\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u001fJ\u000e\u0010%\u001a\u00020\u00052\u0006\u0010&\u001a\u00020#J\u000e\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(J\u000e\u0010*\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u0010J\u0008\u0010,\u001a\u0004\u0018\u00010\u0005J\u0008\u0010-\u001a\u00020\u0005H\u0007J\u0008\u0010.\u001a\u00020\u0005H\u0007J\u0008\u0010/\u001a\u00020\u0005H\u0007J\u000e\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020\u0005J\u000e\u00102\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u00103\u001a\u00020\u00052\u0006\u00104\u001a\u00020\u0005J\u0006\u00105\u001a\u00020\u0005J\u000e\u00106\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u00107\u001a\u0002082\u0006\u0010$\u001a\u000209JN\u0010:\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010;2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010<\u001a\u00020=2\u0012\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H;0@0?2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020D2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJ\u000e\u0010F\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020\u0005J\u000e\u0010H\u001a\u00020\u000e2\u0006\u0010G\u001a\u00020\u0005J,\u0010I\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010J\u001a\u00020\u00052\u0006\u0010K\u001a\u00020\u00052\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJ\u000e\u0010M\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005J\u0014\u0010N\u001a\u00020\u0005*\u00020O2\u0008\u0008\u0002\u0010P\u001a\u00020\u0005J.\u0010Q\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010;*\u0008\u0012\u0004\u0012\u0002H;0?2\u0006\u0010R\u001a\u00020=2\u000e\u0010S\u001a\n\u0012\u0004\u0012\u0002H;\u0018\u00010TJB\u0010U\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010;*\u00020V2\u0012\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H;0@0?2\u0006\u0010A\u001a\u00020\n2\u0006\u0010C\u001a\u00020D2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJB\u0010U\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010;*\u00020V2\u0012\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H;0@0?2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020D2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJR\u0010U\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010;*\u00020V2\u0012\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H;0@0W2\u0006\u0010A\u001a\u00020\n2\u0006\u0010X\u001a\u00020Y2\u0006\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020[2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJB\u0010]\u001a\u00020\u0014\"\u0004\u0008\u0000\u0010;*\u00020V2\u0012\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H;0@0?2\u0006\u0010A\u001a\u00020\n2\u0006\u0010C\u001a\u00020D2\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u001dJ\u001a\u0010^\u001a\u00020\u0014*\u00020=2\u0006\u0010_\u001a\u00020`2\u0006\u0010J\u001a\u00020\u0005R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006a"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;",
        "",
        "()V",
        "bankList",
        "",
        "",
        "formattedTime",
        "getFormattedTime",
        "()Ljava/lang/String;",
        "alertDialog",
        "Landroid/app/AlertDialog;",
        "context",
        "Landroid/content/Context;",
        "setCancelable",
        "",
        "layout",
        "",
        "base64ToPlainText",
        "base64String",
        "closeSoftKeyboard",
        "",
        "activity",
        "Landroid/app/Activity;",
        "customSpannableString",
        "Landroid/text/SpannableString;",
        "text",
        "startIndex",
        "endIndex",
        "clickAction",
        "Lkotlin/Function0;",
        "dateStr2Long",
        "",
        "dateStr",
        "inputDateFormat",
        "divideLongBy100",
        "",
        "input",
        "formatAmountToNaira",
        "amount",
        "formatFailedVerveTransRespToExtractIswResponse",
        "Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;",
        "transResponse",
        "generateRandomRrn",
        "length",
        "getBankName",
        "getCurrentDate",
        "getCurrentDateTime",
        "getDate",
        "getDateFromZenithPbtTransDate",
        "dateTime",
        "getDeviceId",
        "increaseHourInDate",
        "paidAt",
        "initPartnerId",
        "isDebuggableModeEnabled",
        "mapDanbamitaleResponseToResponseX",
        "Lcom/woleapp/netpos/contactless/model/TransactionResponseX;",
        "Lcom/danbamitale/epmslib/entities/TransactionResponse;",
        "observeServerResponseActivity",
        "T",
        "lifecycle",
        "Landroidx/lifecycle/LifecycleOwner;",
        "serverResponse",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/woleapp/netpos/contactless/util/Resource;",
        "loadingDialog",
        "Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "successAction",
        "passwordValidation",
        "password",
        "passwordValidationZB",
        "showAlertDialog",
        "message",
        "positiveButtonTitle",
        "onPositiveButtonClick",
        "stringToBase64",
        "formatCurrencyAmountUsingCurrentModule",
        "",
        "currencySymbol",
        "observeOnce",
        "lifecycleOwner",
        "observer",
        "Landroidx/lifecycle/Observer;",
        "observeServerResponse",
        "Landroidx/fragment/app/Fragment;",
        "Lio/reactivex/Single;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "ioScheduler",
        "Lio/reactivex/Scheduler;",
        "mainThreadSchedulers",
        "observeServerResponseOnce",
        "showSnackBar",
        "rootView",
        "Landroid/view/View;",
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


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

.field private static final bankList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final formattedTime:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$CRVbH02FOVNCqU-Nt_dlSxTwA9I(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponseOnce$lambda-6(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HkuatZ9uDevedsVTKu6bkydxzHA(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse$lambda-1(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bt-f480dCHt5anSLvAXOuLwjzno(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse$lambda-5(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cX-gqwdcoxm-a9QLhnRtRS0YA5Y(Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showAlertDialog$lambda-9(Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$chnGlbHs-amExOTJBPDkU6oTvDk(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponse$lambda-4(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jq1th2heruZ0350V-gFzHftxc2k(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeServerResponseActivity$lambda-0(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/woleapp/netpos/contactless/util/Resource;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    .line 43
    nop

    .line 44
    const/16 v0, 0xd

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "firstbank"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 45
    const-string v1, "easypay"

    const-string v3, "fcmb"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    .line 44
    nop

    .line 46
    const-string v1, "fcmbeasypay"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v0, v5

    .line 44
    nop

    .line 47
    const-string v1, "easypayfcmb"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 44
    nop

    .line 48
    const-string v1, "providuspos"

    const-string v3, "providus"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 44
    nop

    .line 49
    const-string v1, "stanbic"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 44
    nop

    .line 50
    invoke-static {v3, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v5, 0x6

    aput-object v1, v0, v5

    .line 44
    nop

    .line 51
    const-string v1, "providussoftpos"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 44
    nop

    .line 52
    const-string v1, "wemabank"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 44
    nop

    .line 53
    const-string v1, "zenith"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 44
    nop

    .line 54
    const-string v1, "unitybank"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 44
    nop

    .line 55
    const-string v1, "polaris"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 44
    nop

    .line 56
    const-string v1, "netpos"

    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    .line 44
    nop

    .line 43
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->bankList:Ljava/util/Map;

    .line 510
    nop

    .line 509
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v3, "hh:mm:ss"

    invoke-direct {v0, v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(\"hh:mm:\u2026stem.currentTimeMillis())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    new-array v1, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    aput-object v3, v1, v2

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->formattedTime:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic formatCurrencyAmountUsingCurrentModule$default(Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;Ljava/lang/Number;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 388
    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-string p2, "\u20a6"

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->formatCurrencyAmountUsingCurrentModule(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final observeServerResponse$lambda-1(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 5
    .param p0, "$loadingDialog"    # Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;
    .param p1, "$successAction"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p3, "$this_observeServerResponse"    # Landroidx/fragment/app/Fragment;
    .param p4, "it"    # Lcom/woleapp/netpos/contactless/util/Resource;

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fragmentManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_observeServerResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getStatus()Lcom/woleapp/netpos/contactless/model/Status;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;->dismiss()V

    .line 193
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v1, p3

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    const-string v3, "this.requireView()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1301cf

    invoke-virtual {p3, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.timeOut)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;->dismiss()V

    goto :goto_0

    .line 183
    :pswitch_2
    nop

    .line 184
    nop

    .line 185
    nop

    .line 183
    const-string v0, "STRING_LOADING_DIALOG_TAG"

    invoke-virtual {p0, p2, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_3
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;->dismiss()V

    .line 176
    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;

    if-nez v0, :cond_0

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;

    if-eqz v0, :cond_1

    .line 177
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 196
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final observeServerResponse$lambda-4(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "$loadingDialog"    # Landroid/app/AlertDialog;
    .param p1, "$successAction"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$this_observeServerResponse"    # Landroidx/fragment/app/Fragment;
    .param p3, "data"    # Lcom/woleapp/netpos/contactless/util/Resource;
    .param p4, "error"    # Ljava/lang/Throwable;

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_observeServerResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    const-string v0, "this.requireView()"

    if-eqz p3, :cond_3

    move-object v1, p3

    .local v1, "it":Lcom/woleapp/netpos/contactless/util/Resource;
    const/4 v2, 0x0

    .line 224
    .local v2, "$i$a$-let-RandomPurposeUtil$observeServerResponse$2$1":I
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getStatus()Lcom/woleapp/netpos/contactless/model/Status;

    move-result-object v3

    sget-object v4, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/Status;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 252
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 253
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v4, p2

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f1301cf

    invoke-virtual {p2, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.timeOut)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 242
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 243
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 246
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v3}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    const-string v3, "An error occurred, please try again"

    invoke-static {p2, v3}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 227
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 228
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/WemaExistingRegistrationResponse;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/woleapp/netpos/contactless/model/FeedbackResponse;

    if-eqz v3, :cond_2

    .line 229
    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 257
    :cond_2
    :goto_0
    nop

    .line 222
    .end local v1    # "it":Lcom/woleapp/netpos/contactless/util/Resource;
    .end local v2    # "$i$a$-let-RandomPurposeUtil$observeServerResponse$2$1":I
    nop

    .line 258
    :cond_3
    if-eqz p4, :cond_4

    move-object v1, p4

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 259
    .local v2, "$i$a$-let-RandomPurposeUtil$observeServerResponse$2$2":I
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 260
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 261
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v4, p2

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f130035

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "getString(R.string.an_error_occurred)"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5, v0}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 262
    nop

    .line 258
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-RandomPurposeUtil$observeServerResponse$2$2":I
    nop

    .line 263
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final observeServerResponse$lambda-5(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 5
    .param p0, "$loadingDialog"    # Landroid/app/AlertDialog;
    .param p1, "$successAction"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$this_observeServerResponse"    # Landroidx/fragment/app/Fragment;
    .param p3, "it"    # Lcom/woleapp/netpos/contactless/util/Resource;

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_observeServerResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getStatus()Lcom/woleapp/netpos/contactless/model/Status;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 292
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 293
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 294
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v1, p2

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    const-string v3, "this.requireView()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f1301cf

    invoke-virtual {p2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.timeOut)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 289
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 284
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 276
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 277
    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ResetPasswordResponseForProvidus;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/GeneralResponse;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PayThroughMPGSResponse;

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/FeedbackResponse;

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 297
    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final observeServerResponseActivity$lambda-0(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 3
    .param p0, "$loadingDialog"    # Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;
    .param p1, "$successAction"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$context"    # Landroid/content/Context;
    .param p3, "$fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p4, "it"    # Lcom/woleapp/netpos/contactless/util/Resource;

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$fragmentManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getStatus()Lcom/woleapp/netpos/contactless/model/Status;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const v1, 0x7f130035

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 159
    :pswitch_0
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;->dismiss()V

    .line 160
    const v0, 0x7f1301cf

    invoke-static {p2, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 155
    :pswitch_1
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;->dismiss()V

    .line 156
    invoke-static {p2, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 149
    :pswitch_2
    nop

    .line 150
    nop

    .line 151
    nop

    .line 149
    const-string v0, "STRING_LOADING_DIALOG_TAG"

    invoke-virtual {p0, p3, v0}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    :pswitch_3
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;->dismiss()V

    .line 141
    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/MerchantDetailsResponse;

    if-nez v0, :cond_1

    invoke-virtual {p4}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/FeedbackResponse;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {p2, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 163
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final observeServerResponseOnce$lambda-6(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;Lcom/woleapp/netpos/contactless/util/Resource;)V
    .locals 6
    .param p0, "$loadingDialog"    # Landroid/app/AlertDialog;
    .param p1, "$successAction"    # Lkotlin/jvm/functions/Function0;
    .param p2, "$this_observeServerResponseOnce"    # Landroidx/fragment/app/Fragment;
    .param p3, "it"    # Lcom/woleapp/netpos/contactless/util/Resource;

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$successAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_observeServerResponseOnce"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getStatus()Lcom/woleapp/netpos/contactless/model/Status;

    move-result-object v0

    sget-object v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/model/Status;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "getString(R.string.an_error_occurred)"

    const v2, 0x7f130035

    const-string v3, "this.requireView()"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 325
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 326
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 327
    const v0, 0x7f1301cf

    invoke-virtual {p2, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.timeOut)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/woleapp/netpos/contactless/util/UtilsKt;->showToast(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 320
    :pswitch_1
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v4, p2

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroid/app/AlertDialog;->cancel()V

    .line 322
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_1

    .line 317
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 309
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 310
    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerResponse;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PostQrToServerVerveResponseModel;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/QrTransactionResponseModel;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/AccountNumberLookUpResponse;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ConfirmOTPResponse;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/GeneralResponse;

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/woleapp/netpos/contactless/util/Resource;->getData()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/woleapp/netpos/contactless/model/PayThroughMPGSResponse;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 313
    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    move-object v4, p2

    check-cast v4, Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5, v2}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_1
    :goto_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 330
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final showAlertDialog$lambda-9(Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "$onPositiveButtonClick"    # Lkotlin/jvm/functions/Function0;
    .param p1, "$context"    # Landroid/content/Context;

    const-string p2, "$onPositiveButtonClick"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 554
    sget-object p2, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {p2, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->alertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AlertDialog;->dismiss()V

    .line 555
    return-void
.end method


# virtual methods
.method public final alertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(context).inflate(R.\u2026out_loading_dialog, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    nop

    .line 368
    .local v0, "dialogView":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 369
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v3, "dialogBuilder.create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final alertDialog(Landroid/content/Context;I)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(context).inflate(layout, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .local v0, "dialogView":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v3, "dialogBuilder.create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final alertDialog(Landroid/content/Context;Z)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "setCancelable"    # Z

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "from(context).inflate(R.\u2026out_loading_dialog, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    nop

    .line 381
    .local v0, "dialogView":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 382
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 383
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const-string v3, "dialogBuilder.create()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final base64ToPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "base64String"    # Ljava/lang/String;

    const-string v0, "base64String"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .local v0, "decodedString":[B
    new-instance v1, Ljava/lang/String;

    .line 66
    const-string v2, "decodedString"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public final closeSoftKeyboard(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "view":Landroid/view/View;
    const/4 v1, 0x0

    .line 348
    .local v1, "$i$a$-let-RandomPurposeUtil$closeSoftKeyboard$1":I
    const-string v2, "input_method"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 349
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 347
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "$i$a$-let-RandomPurposeUtil$closeSoftKeyboard$1":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    nop

    .line 351
    return-void
.end method

.method public final customSpannableString(Ljava/lang/String;IILkotlin/jvm/functions/Function0;)Landroid/text/SpannableString;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .param p4, "clickAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Landroid/text/SpannableString;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickAction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/text/SpannableString;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    .local v0, "spannedText":Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 111
    .local v1, "styleSpan":Landroid/text/style/StyleSpan;
    new-instance v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$customSpannableString$clickableSpan$1;

    invoke-direct {v3, p4}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$customSpannableString$clickableSpan$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 116
    .local v3, "clickableSpan":Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$customSpannableString$clickableSpan$1;
    if-ltz p2, :cond_3

    .line 117
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p3, v2, :cond_1

    .line 119
    const/16 v2, 0x11

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 120
    nop

    .line 121
    nop

    .line 122
    nop

    .line 123
    nop

    .line 124
    nop

    .line 120
    invoke-virtual {v0, v3, p2, p3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 126
    return-object v0

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can\'t be greater than the length of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_2
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can\'t be empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be at least 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final dateStr2Long(Ljava/lang/String;)J
    .locals 3
    .param p1, "dateStr"    # Ljava/lang/String;

    const-string v0, "dateStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    nop

    .line 534
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 535
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd hh:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 536
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 539
    const-wide/16 v1, 0x0

    .line 533
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_0
    return-wide v1
.end method

.method public final dateStr2Long(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "inputDateFormat"    # Ljava/lang/String;

    const-string v0, "dateStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputDateFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "formattedDateString":Ljava/lang/String;
    nop

    .line 83
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 84
    .local v1, "c":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 85
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "c":Ljava/util/Calendar;
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 88
    const-wide/16 v2, 0x0

    .line 82
    .end local v1    # "e":Ljava/text/ParseException;
    :goto_0
    return-wide v2
.end method

.method public final divideLongBy100(J)D
    .locals 10
    .param p1, "input"    # J

    .line 513
    const-wide/16 v0, 0x64

    div-long v2, p1, v0

    .line 514
    .local v2, "result":J
    rem-long v0, p1, v0

    .line 515
    .local v0, "decimalPart":J
    long-to-double v4, v2

    long-to-double v6, v0

    const/16 v8, 0x64

    int-to-double v8, v8

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    return-wide v4
.end method

.method public final formatAmountToNaira(D)Ljava/lang/String;
    .locals 3
    .param p1, "amount"    # D

    .line 572
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "NG"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 573
    .local v0, "format":Ljava/text/NumberFormat;
    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format.format(amount)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final formatCurrencyAmountUsingCurrentModule(Ljava/lang/Number;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "$this$formatCurrencyAmountUsingCurrentModule"    # Ljava/lang/Number;
    .param p2, "currencySymbol"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currencySymbol"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final formatFailedVerveTransRespToExtractIswResponse(Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;)Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;
    .locals 13
    .param p1, "transResponse"    # Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    const-string v0, "transResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, "response:\n"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\n\""

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 354
    nop

    .line 356
    .local v0, "iswResponseInStringFormat":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/woleapp/netpos/contactless/model/Response;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/Response;

    .line 357
    .local v1, "iswResponse":Lcom/woleapp/netpos/contactless/model/Response;
    nop

    .line 358
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/Response;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/Error;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/Error;->getCode()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/model/Response;->getErrors()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/Error;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/Error;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 357
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x79

    const/4 v12, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v12}, Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;->copy$default(Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/VerveTransactionResponse;

    move-result-object v2

    return-object v2
.end method

.method public final generateRandomRrn(I)Ljava/lang/String;
    .locals 5
    .param p1, "length"    # I

    .line 93
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 94
    .local v0, "random":Ljava/util/Random;
    const-string v1, ""

    .line 95
    .local v1, "digits":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public final getBankName()Ljava/lang/String;
    .locals 2

    .line 410
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->bankList:Ljava/util/Map;

    const-string v1, "fcmbeasypay"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentDate()Ljava/lang/String;
    .locals 4

    .line 527
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd-MM-yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/text/DateFormat;

    .line 528
    .local v0, "dateFormatter":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 529
    .local v1, "today":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dateFormatter.format(today)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getCurrentDateTime()Ljava/lang/String;
    .locals 5

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 75
    nop

    .line 76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 74
    const-string v2, "yyyy-MM-dd hh:mm a"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleDateFormat(\n      \u2026stem.currentTimeMillis())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 4

    .line 520
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ddMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/text/DateFormat;

    .line 521
    .local v0, "dateFormatter":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 522
    .local v1, "today":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dateFormatter.format(today)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getDateFromZenithPbtTransDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "dateTime"    # Ljava/lang/String;

    const-string v0, "dateTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 562
    .local v0, "format":Ljava/text/SimpleDateFormat;
    const-string v2, "T"

    const-string v3, " "

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".000Z"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "android_id"

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    const-string v1, "{\n            Settings.S\u2026ure.ANDROID_ID)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 398
    .local v0, "mTelephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 399
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 403
    nop

    .line 401
    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 396
    .end local v0    # "mTelephony":Landroid/telephony/TelephonyManager;
    :goto_0
    nop

    .line 397
    const-string v1, "{\n            val mTelep\u2026)\n            }\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    :goto_1
    nop

    .line 407
    .local v0, "deviceId":Ljava/lang/String;
    return-object v0
.end method

.method public final getFormattedTime()Ljava/lang/String;
    .locals 1

    .line 508
    sget-object v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->formattedTime:Ljava/lang/String;

    return-object v0
.end method

.method public final increaseHourInDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "paidAt"    # Ljava/lang/String;

    const-string v0, "paidAt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v0, "T"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 566
    .local v1, "$i$a$-let-RandomPurposeUtil$increaseHourInDate$1":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/CharSequence;

    const-string v2, ":"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 567
    .local v2, "originalHour":I
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x3a

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 568
    .local v3, "lastPart":Ljava/util/List;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x54

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-RandomPurposeUtil$increaseHourInDate$1":I
    .end local v2    # "originalHour":I
    .end local v3    # "lastPart":Ljava/util/List;
    nop

    .line 569
    return-object v0
.end method

.method public final initPartnerId()Ljava/lang/String;
    .locals 6

    .line 413
    const-string v0, ""

    .line 415
    .local v0, "partnerID":Ljava/lang/String;
    const/16 v1, 0xc

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "firstbank"

    const-string v3, "7FD43DF1-633F-4250-8C6F-B49DBB9650EA"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 416
    const-string v2, "easypay"

    const-string v3, "1B0E68FD-7676-4F2C-883D-3931C3564190"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 415
    nop

    .line 417
    const-string v2, "fcmbeasypay"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    .line 415
    nop

    .line 418
    const-string v4, "easypayfcmb"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    .line 415
    nop

    .line 419
    const-string v3, "providuspos"

    const-string v4, "8B26F328-040F-4F27-A5BC-4414AB9D1EFA"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v1, v5

    .line 415
    nop

    .line 420
    const-string v3, "stanbic"

    const-string v5, "377F47E9-55F9-45E0-B77A-1BAA4BC88026"

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v1, v5

    .line 415
    nop

    .line 421
    const-string v3, "providus"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v1, v5

    .line 415
    nop

    .line 422
    const-string v3, "providussoftpos"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v1, v4

    .line 415
    nop

    .line 423
    const-string v3, "wemabank"

    const-string v4, "1E3D050B-6995-495F-982A-0511114959C8"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v1, v4

    .line 415
    nop

    .line 424
    const-string v3, "zenith"

    const-string v4, "C936667C-0B02-4A34-80D0-0FC5B525256E"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v4, 0x9

    aput-object v3, v1, v4

    .line 415
    nop

    .line 425
    const-string v3, "tingo"

    const-string v4, "1EED19E0-9625-49AA-A0CF-2EFCD8F30036"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v4, 0xa

    aput-object v3, v1, v4

    .line 415
    nop

    .line 426
    const-string v3, "lumina"

    const-string v4, "5111287c-4d89-4ad8-822b-4ac83946282c"

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/16 v4, 0xb

    aput-object v3, v1, v4

    .line 415
    nop

    .line 414
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 429
    .local v1, "bankList":Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 430
    .local v4, "element":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 431
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    .end local v4    # "element":Ljava/util/Map$Entry;
    goto :goto_0

    .line 434
    :cond_1
    return-object v0
.end method

.method public final isDebuggableModeEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public final mapDanbamitaleResponseToResponseX(Lcom/danbamitale/epmslib/entities/TransactionResponse;)Lcom/woleapp/netpos/contactless/model/TransactionResponseX;
    .locals 36
    .param p1, "input"    # Lcom/danbamitale/epmslib/entities/TransactionResponse;

    const-string v0, "input"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p1

    .local v0, "$this$mapDanbamitaleResponseToResponseX_u24lambda_u2d8":Lcom/danbamitale/epmslib/entities/TransactionResponse;
    const/4 v2, 0x0

    .line 474
    .local v2, "$i$a$-with-RandomPurposeUtil$mapDanbamitaleResponseToResponseX$1":I
    new-instance v34, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;

    .line 475
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAID()Ljava/lang/String;

    move-result-object v4

    .line 476
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getRRN()Ljava/lang/String;

    move-result-object v5

    .line 477
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getSTAN()Ljava/lang/String;

    move-result-object v6

    .line 478
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTSI()Ljava/lang/String;

    move-result-object v7

    .line 479
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTVR()Ljava/lang/String;

    move-result-object v8

    .line 480
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAccountType()Lcom/danbamitale/epmslib/utils/IsoAccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/utils/IsoAccountType;->name()Ljava/lang/String;

    move-result-object v9

    .line 481
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAcquiringInstCode()Ljava/lang/String;

    move-result-object v10

    .line 482
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAdditionalAmount_54()Ljava/lang/String;

    move-result-object v11

    .line 483
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAmount()J

    move-result-wide v12

    long-to-int v12, v12

    .line 484
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAppCryptogram()Ljava/lang/String;

    move-result-object v13

    .line 485
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getAuthCode()Ljava/lang/String;

    move-result-object v14

    .line 486
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardExpiry()Ljava/lang/String;

    move-result-object v15

    .line 487
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardHolder()Ljava/lang/String;

    move-result-object v16

    .line 488
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getCardLabel()Ljava/lang/String;

    move-result-object v17

    .line 489
    move/from16 v35, v2

    .end local v2    # "$i$a$-with-RandomPurposeUtil$mapDanbamitaleResponseToResponseX$1":I
    .local v35, "$i$a$-with-RandomPurposeUtil$mapDanbamitaleResponseToResponseX$1":I
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    .line 490
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalDate_13()Ljava/lang/String;

    move-result-object v19

    .line 491
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getLocalTime_12()Ljava/lang/String;

    move-result-object v20

    .line 492
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMaskedPan()Ljava/lang/String;

    move-result-object v21

    .line 493
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getMerchantId()Ljava/lang/String;

    move-result-object v22

    .line 494
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOriginalForwardingInstCode()Ljava/lang/String;

    move-result-object v23

    .line 495
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherAmount()J

    move-result-wide v2

    long-to-int v2, v2

    .line 496
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getOtherId()Ljava/lang/String;

    move-result-object v25

    .line 497
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseCode()Ljava/lang/String;

    move-result-object v26

    .line 498
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getResponseDE55()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, ""

    :cond_0
    move-object/from16 v27, v3

    .line 499
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTerminalId()Ljava/lang/String;

    move-result-object v28

    .line 500
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionTimeInMillis()J

    move-result-wide v29

    .line 501
    invoke-virtual {v0}, Lcom/danbamitale/epmslib/entities/TransactionResponse;->getTransactionType()Lcom/danbamitale/epmslib/entities/TransactionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/danbamitale/epmslib/entities/TransactionType;->name()Ljava/lang/String;

    move-result-object v31

    .line 502
    sget-object v3, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->getCurrentDateTime()Ljava/lang/String;

    move-result-object v32

    .line 503
    sget-object v3, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/util/Singletons;->getCurrentlyLoggedInUser()Lcom/woleapp/netpos/contactless/model/User;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/User;->getEmail()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v33, v3

    invoke-static/range {v33 .. v33}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 474
    move-object/from16 v3, v34

    move/from16 v18, v1

    move/from16 v24, v2

    invoke-direct/range {v3 .. v33}, Lcom/woleapp/netpos/contactless/model/TransactionResponseX;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v34
.end method

.method public final observeOnce(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1, "$this$observeOnce"    # Landroidx/lifecycle/LiveData;
    .param p2, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p3, "observer"    # Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    nop

    .line 336
    nop

    .line 337
    new-instance v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$observeOnce$1;

    invoke-direct {v0, p3, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$observeOnce$1;-><init>(Landroidx/lifecycle/Observer;Landroidx/lifecycle/LiveData;)V

    check-cast v0, Landroidx/lifecycle/Observer;

    .line 335
    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 344
    return-void
.end method

.method public final observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Landroid/app/AlertDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "$this$observeServerResponse"    # Landroidx/fragment/app/Fragment;
    .param p2, "serverResponse"    # Landroidx/lifecycle/LiveData;
    .param p3, "loadingDialog"    # Landroid/app/AlertDialog;
    .param p4, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p5, "successAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;>;",
            "Landroid/app/AlertDialog;",
            "Landroidx/fragment/app/FragmentManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingDialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successAction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3, p5, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda2;-><init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 298
    return-void
.end method

.method public final observeServerResponse(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "$this$observeServerResponse"    # Landroidx/fragment/app/Fragment;
    .param p2, "serverResponse"    # Landroidx/lifecycle/LiveData;
    .param p3, "loadingDialog"    # Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;
    .param p4, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p5, "successAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;>;",
            "Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;",
            "Landroidx/fragment/app/FragmentManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingDialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successAction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda4;

    invoke-direct {v1, p3, p5, p4, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 197
    return-void
.end method

.method public final observeServerResponse(Landroidx/fragment/app/Fragment;Lio/reactivex/Single;Landroid/app/AlertDialog;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "$this$observeServerResponse"    # Landroidx/fragment/app/Fragment;
    .param p2, "serverResponse"    # Lio/reactivex/Single;
    .param p3, "loadingDialog"    # Landroid/app/AlertDialog;
    .param p4, "compositeDisposable"    # Lio/reactivex/disposables/CompositeDisposable;
    .param p5, "ioScheduler"    # Lio/reactivex/Scheduler;
    .param p6, "mainThreadSchedulers"    # Lio/reactivex/Scheduler;
    .param p7, "successAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;>;",
            "Landroid/app/AlertDialog;",
            "Lio/reactivex/disposables/CompositeDisposable;",
            "Lio/reactivex/Scheduler;",
            "Lio/reactivex/Scheduler;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingDialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScheduler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThreadSchedulers"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successAction"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    nop

    .line 220
    invoke-virtual {p2, p5}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    invoke-virtual {v0, p6}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 221
    new-instance v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3, p7, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda3;-><init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    .line 219
    invoke-virtual {p4, v0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 265
    return-void
.end method

.method public final observeServerResponseActivity(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LiveData;Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Landroidx/lifecycle/LifecycleOwner;
    .param p3, "serverResponse"    # Landroidx/lifecycle/LiveData;
    .param p4, "loadingDialog"    # Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;
    .param p5, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p6, "successAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;>;",
            "Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;",
            "Landroidx/fragment/app/FragmentManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingDialog"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successAction"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p4, p6, p1, p5}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/dialog/LoadingDialog;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p3, p2, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 164
    return-void
.end method

.method public final observeServerResponseOnce(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Landroid/app/AlertDialog;Landroidx/fragment/app/FragmentManager;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "$this$observeServerResponseOnce"    # Landroidx/fragment/app/Fragment;
    .param p2, "serverResponse"    # Landroidx/lifecycle/LiveData;
    .param p3, "loadingDialog"    # Landroid/app/AlertDialog;
    .param p4, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;
    .param p5, "successAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "TT;>;>;",
            "Landroid/app/AlertDialog;",
            "Landroidx/fragment/app/FragmentManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingDialog"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "successAction"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda5;

    invoke-direct {v1, p3, p5, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda5;-><init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function0;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 331
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "this.viewLifecycleOwner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->observeOnce(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 332
    return-void
.end method

.method public final passwordValidation(Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    .line 443
    const-string v0, "[a-zA-z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v2, "compile(\"[a-zA-z]\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    .local v0, "letter":Ljava/util/regex/Pattern;
    const-string v2, "[0-9]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(\"[0-9]\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    .local v2, "digit":Ljava/util/regex/Pattern;
    const-string v3, "[!@#%^&amp;*()_+=\\[\\]>{}\'|,\\~`>/.?\\:;-]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v4, "compile(\"[!@#%^&amp;*()_\u2026\\\\]>{}\'|,\\\\~`>/.?\\\\:;-]\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    .local v3, "special":Ljava/util/regex/Pattern;
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "letter.matcher(password)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    .local v4, "hasLetter":Ljava/util/regex/Matcher;
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "digit.matcher(password)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    .local v5, "hasDigit":Ljava/util/regex/Matcher;
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v7, "special.matcher(password)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    .local v6, "hasSpecial":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "letter":Ljava/util/regex/Pattern;
    .end local v2    # "digit":Ljava/util/regex/Pattern;
    .end local v3    # "special":Ljava/util/regex/Pattern;
    .end local v4    # "hasLetter":Ljava/util/regex/Matcher;
    .end local v5    # "hasDigit":Ljava/util/regex/Matcher;
    .end local v6    # "hasSpecial":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 453
    :cond_1
    nop

    .line 442
    :goto_0
    return v1
.end method

.method public final passwordValidationZB(Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-le v0, v2, :cond_1

    .line 458
    const-string v0, "[a-zA-z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v2, "compile(\"[a-zA-z]\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    .local v0, "letter":Ljava/util/regex/Pattern;
    const-string v2, "[0-9]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const-string v3, "compile(\"[0-9]\")"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    .local v2, "digit":Ljava/util/regex/Pattern;
    const-string v3, "[!@#%^&amp;*()_+=\\[\\]>{}\'|,\\~`>/.?\\:;-]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    const-string v4, "compile(\"[!@#%^&amp;*()_\u2026\\\\]>{}\'|,\\\\~`>/.?\\\\:;-]\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    .local v3, "special":Ljava/util/regex/Pattern;
    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "letter.matcher(password)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .local v4, "hasLetter":Ljava/util/regex/Matcher;
    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const-string v6, "digit.matcher(password)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    .local v5, "hasDigit":Ljava/util/regex/Matcher;
    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string v7, "special.matcher(password)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    .local v6, "hasSpecial":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "letter":Ljava/util/regex/Pattern;
    .end local v2    # "digit":Ljava/util/regex/Pattern;
    .end local v3    # "special":Ljava/util/regex/Pattern;
    .end local v4    # "hasLetter":Ljava/util/regex/Matcher;
    .end local v5    # "hasDigit":Ljava/util/regex/Matcher;
    .end local v6    # "hasSpecial":Ljava/util/regex/Matcher;
    :cond_0
    goto :goto_0

    .line 468
    :cond_1
    nop

    .line 457
    :goto_0
    return v1
.end method

.method public final showAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "positiveButtonTitle"    # Ljava/lang/String;
    .param p4, "onPositiveButtonClick"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveButtonTitle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onPositiveButtonClick"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 551
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2, p4, p1}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 555
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 550
    nop

    .line 557
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 558
    return-void
.end method

.method public final showSnackBar(Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "$this$showSnackBar"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "message"    # Ljava/lang/String;

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    move-object v0, p3

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 71
    return-void
.end method

.method public final stringToBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .local v0, "data":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "encodeToString(data, Base64.DEFAULT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
