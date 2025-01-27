.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "NipNotificationFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNipNotificationFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NipNotificationFragment.kt\ncom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1#2:203\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000c\u001a\u00020\rH\u0002J$\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u0008\u0010\u0017\u001a\u00020\rH\u0002J\u0008\u0010\u0018\u001a\u00020\rH\u0002J\u0010\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "adapter",
        "Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "event",
        "Lcom/woleapp/netpos/contactless/model/MqttEvent;",
        "Lcom/woleapp/netpos/contactless/model/NipEvent;",
        "getCode",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onStop",
        "setService",
        "showCalendarDialog",
        "showDialogForAccountTransfer",
        "code",
        "",
        "Companion",
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
.field public static final Companion:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$Companion;


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

.field private adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;

.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private event:Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/woleapp/netpos/contactless/model/MqttEvent<",
            "Lcom/woleapp/netpos/contactless/model/NipEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8J22ak7blWz72lYcxXLsR_ceki0(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->showDialogForAccountTransfer$lambda-10(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CuUMJqWnpgvsJgZCG23RlAoMEZs(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Lcom/woleapp/netpos/contactless/model/SessionCode;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->getCode$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Lcom/woleapp/netpos/contactless/model/SessionCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YYMdJoOGmv4CJF8d0SxkVDnO5fQ(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Landroid/widget/DatePicker;III)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->showCalendarDialog$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public static synthetic $r8$lambda$YhaUVMZIRb_L79j58l2hu7HsiZg(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->showDialogForAccountTransfer$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ia6JPyWw8cuvNXyPW8nQoiKlzzk(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->showDialogForAccountTransfer$lambda-8(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdofLFKJeUV5WCQsVaeTc2ecb4U(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->showDialogForAccountTransfer$lambda-11(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 32
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 29
    return-void
.end method

.method public static final synthetic access$getCode(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

    .line 29
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->getCode()V

    return-void
.end method

.method public static final synthetic access$showCalendarDialog(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;)V
    .locals 0
    .param p0, "$this"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;

    .line 29
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->showCalendarDialog()V

    return-void
.end method

.method private final getCode()V
    .locals 2

    .line 100
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getInstance()Lcom/woleapp/netpos/contactless/network/StormApiService;

    move-result-object v0

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/network/StormApiService;->getSessionCode()Lio/reactivex/Single;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 101
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 102
    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "StormApiClient.getInstan\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 131
    return-void
.end method

.method private static final getCode$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Lcom/woleapp/netpos/contactless/model/SessionCode;Ljava/lang/Throwable;)V
    .locals 15
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;
    .param p1, "sessionCode"    # Lcom/woleapp/netpos/contactless/model/SessionCode;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    move-object v0, p0

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    const/4 v1, 0x0

    const-string v2, "event"

    if-eqz p1, :cond_2

    move-object/from16 v3, p1

    .local v3, "it":Lcom/woleapp/netpos/contactless/model/SessionCode;
    const/4 v4, 0x0

    .line 104
    .local v4, "$i$a$-let-NipNotificationFragment$getCode$1$1":I
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->event:Lcom/woleapp/netpos/contactless/model/MqttEvent;

    if-nez v5, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    .local v5, "$this$getCode_u24lambda_u2d7_u24lambda_u2d4_u24lambda_u2d3":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    :cond_0
    const/4 v6, 0x0

    .line 105
    .local v6, "$i$a$-apply-NipNotificationFragment$getCode$1$1$1":I
    sget-object v7, Lcom/woleapp/netpos/contactless/model/MqttEvents;->NIP_NEW:Lcom/woleapp/netpos/contactless/model/MqttEvents;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/MqttEvents;->getEvent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setEvent(Ljava/lang/String;)V

    .line 106
    const-string v7, "00"

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setCode(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setTimestamp(Ljava/lang/Long;)V

    .line 108
    new-instance v7, Lcom/woleapp/netpos/contactless/model/NipEvent;

    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/SessionCode;->getSessionCode()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x0

    move-object v8, v7

    invoke-direct/range {v8 .. v14}, Lcom/woleapp/netpos/contactless/model/NipEvent;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setData(Ljava/lang/Object;)V

    .line 109
    sget-object v7, Lcom/woleapp/netpos/contactless/model/MqttStatus;->SUCCESS:Lcom/woleapp/netpos/contactless/model/MqttStatus;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/MqttStatus;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setStatus(Ljava/lang/String;)V

    .line 110
    nop

    .line 104
    .end local v5    # "$this$getCode_u24lambda_u2d7_u24lambda_u2d4_u24lambda_u2d3":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .end local v6    # "$i$a$-apply-NipNotificationFragment$getCode$1$1$1":I
    nop

    .line 111
    sget-object v8, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    sget-object v9, Lcom/woleapp/netpos/contactless/model/MqttTopics;->NIP_NEW:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    iget-object v5, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->event:Lcom/woleapp/netpos/contactless/model/MqttEvent;

    if-nez v5, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v1

    goto :goto_0

    :cond_1
    move-object v10, v5

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->sendPayload$default(Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;ILjava/lang/Object;)V

    .line 112
    invoke-virtual {v3}, Lcom/woleapp/netpos/contactless/model/SessionCode;->getSessionCode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->showDialogForAccountTransfer(Ljava/lang/String;)V

    .line 113
    nop

    .line 103
    .end local v3    # "it":Lcom/woleapp/netpos/contactless/model/SessionCode;
    .end local v4    # "$i$a$-let-NipNotificationFragment$getCode$1$1":I
    nop

    .line 114
    :cond_2
    if-eqz p2, :cond_5

    move-object/from16 v3, p2

    .local v3, "it":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 115
    .local v4, "$i$a$-let-NipNotificationFragment$getCode$1$2":I
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->event:Lcom/woleapp/netpos/contactless/model/MqttEvent;

    if-nez v5, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    .local v5, "$this$getCode_u24lambda_u2d7_u24lambda_u2d6_u24lambda_u2d5":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    :cond_3
    const/4 v6, 0x0

    .line 116
    .local v6, "$i$a$-apply-NipNotificationFragment$getCode$1$2$1":I
    sget-object v7, Lcom/woleapp/netpos/contactless/model/MqttEvents;->NIP_NEW:Lcom/woleapp/netpos/contactless/model/MqttEvents;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/MqttEvents;->getEvent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setEvent(Ljava/lang/String;)V

    .line 117
    const-string v7, "99"

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setCode(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setTimestamp(Ljava/lang/Long;)V

    .line 119
    sget-object v7, Lcom/woleapp/netpos/contactless/model/MqttStatus;->ERROR:Lcom/woleapp/netpos/contactless/model/MqttStatus;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/MqttStatus;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setStatus(Ljava/lang/String;)V

    .line 120
    nop

    .line 115
    .end local v5    # "$this$getCode_u24lambda_u2d7_u24lambda_u2d6_u24lambda_u2d5":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .end local v6    # "$i$a$-apply-NipNotificationFragment$getCode$1$2$1":I
    nop

    .line 121
    sget-object v8, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;

    sget-object v9, Lcom/woleapp/netpos/contactless/model/MqttTopics;->NIP_NEW:Lcom/woleapp/netpos/contactless/model/MqttTopics;

    iget-object v5, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->event:Lcom/woleapp/netpos/contactless/model/MqttEvent;

    if-nez v5, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v1

    goto :goto_1

    :cond_4
    move-object v10, v5

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;->sendPayload$default(Lcom/woleapp/netpos/contactless/mqtt/MqttHelper;Lcom/woleapp/netpos/contactless/model/MqttTopics;Lcom/woleapp/netpos/contactless/model/MqttEvent;Lcom/woleapp/netpos/contactless/model/MqttEventsLocal;ILjava/lang/Object;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Nip Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v6}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 126
    nop

    .line 123
    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 128
    nop

    .line 114
    .end local v3    # "it":Ljava/lang/Throwable;
    .end local v4    # "$i$a$-let-NipNotificationFragment$getCode$1$2":I
    nop

    .line 129
    :cond_5
    return-void
.end method

.method private final setService()V
    .locals 7

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    move-object v1, v0

    .local v1, "$this$setService_u24lambda_u2d12":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 194
    .local v2, "$i$a$-apply-NipNotificationFragment$setService$listOfService$1":I
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x0

    const-string v5, "New"

    const v6, 0x7f0800b8

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x1

    const-string v5, "Last Two Transfers"

    const v6, 0x7f08010e

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x2

    const-string v5, "End Of Day Notification"

    const v6, 0x7f0800da

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v3, Lcom/woleapp/netpos/contactless/model/Service;

    const/4 v4, 0x3

    const-string v5, "Search with Reference"

    const v6, 0x7f080105

    invoke-direct {v3, v4, v5, v6}, Lcom/woleapp/netpos/contactless/model/Service;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    nop

    .line 193
    .end local v1    # "$this$setService_u24lambda_u2d12":Ljava/util/ArrayList;
    .end local v2    # "$i$a$-apply-NipNotificationFragment$setService$listOfService$1":I
    nop

    .line 192
    nop

    .line 199
    .local v0, "listOfService":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    if-nez v1, :cond_0

    const-string v1, "adapter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    move-object v2, v0

    check-cast v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;->submitList(Ljava/util/List;)V

    .line 200
    return-void
.end method

.method private final showCalendarDialog()V
    .locals 8

    .line 82
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 83
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v7, Landroid/app/DatePickerDialog;

    .line 84
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 94
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 95
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 83
    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 96
    invoke-virtual {v7}, Landroid/app/DatePickerDialog;->show()V

    .line 97
    return-void
.end method

.method private static final showCalendarDialog$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Landroid/widget/DatePicker;III)V
    .locals 6
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    move-object v0, p0

    check-cast v0, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;

    .line 87
    sget-object p1, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;

    .line 88
    nop

    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 203
    move-object v2, v1

    .local v2, "$this$showCalendarDialog_u24lambda_u2d2_u24lambda_u2d1":Ljava/util/Calendar;
    const/4 v3, 0x0

    .line 89
    .local v3, "$i$a$-apply-NipNotificationFragment$showCalendarDialog$1$1":I
    invoke-virtual {v2, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .end local v2    # "$this$showCalendarDialog_u24lambda_u2d2_u24lambda_u2d1":Ljava/util/Calendar;
    .end local v3    # "$i$a$-apply-NipNotificationFragment$showCalendarDialog$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 87
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v1, v2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;->newInstance(IJ)Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 86
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->addFragmentWithoutRemove$default(Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;Landroidx/fragment/app/Fragment;ILjava/lang/String;ILjava/lang/Object;)V

    .line 92
    return-void
.end method

.method private final showDialogForAccountTransfer(Ljava/lang/String;)V
    .locals 11
    .param p1, "code"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 136
    nop

    .line 137
    nop

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;

    move-result-object v0

    const-string v1, "inflate(\n            lay\u2026         false,\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .local v0, "bankDetailsBinding":Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;
    new-instance v1, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1401b4

    invoke-direct {v1, v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 140
    .local v1, "bottomSheetDialog":Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 141
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 142
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    const-string v3, "user"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/pixplicity/easyprefs/library/Prefs;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v5, Lcom/woleapp/netpos/contactless/model/User;

    invoke-virtual {v2, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/User;

    .line 143
    .local v2, "user":Lcom/woleapp/netpos/contactless/model/User;
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/User;->getBank()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v4

    .line 144
    .local v3, "bank":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/User;->getAccount_number()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v4

    .line 145
    .local v5, "accountNumber":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/User;->getBusiness_name()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v6

    .line 146
    .local v4, "accountName":Ljava/lang/String;
    :goto_0
    const-string v6, ""

    .line 147
    .local v6, "accountNumber2":Ljava/lang/String;
    const-string v7, ""

    .line 148
    .local v7, "bank2":Ljava/lang/String;
    iget-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->accountNumber2:Landroid/widget/TextView;

    move-object v9, v6

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->bank2:Landroid/widget/TextView;

    move-object v9, v7

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->accountNumber:Landroid/widget/TextView;

    move-object v9, v5

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->bank:Landroid/widget/TextView;

    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v8, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->accountName:Landroid/widget/TextView;

    move-object v9, v4

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Please use the code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " as a reference during transfer or payment"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "ref":Ljava/lang/String;
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->reference:Landroid/widget/TextView;

    move-object v10, v8

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->accountNumber:Landroid/widget/TextView;

    new-instance v10, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, v5}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->accountNumber2:Landroid/widget/TextView;

    new-instance v10, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda2;

    invoke-direct {v10, p0, v6}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->tap:Landroid/widget/TextView;

    new-instance v10, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda3;

    invoke-direct {v10, p0, v8}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v9, v0, Lcom/woleapp/netpos/contactless/databinding/LayoutBankDetailsBinding;->btnDone:Landroid/widget/Button;

    new-instance v10, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda4;

    invoke-direct {v10, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 189
    return-void
.end method

.method private static final showDialogForAccountTransfer$lambda-10(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;
    .param p1, "$ref"    # Ljava/lang/String;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$ref"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Reference"

    invoke-static {v0, v2, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reference copied to clipboard"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    return-void
.end method

.method private static final showDialogForAccountTransfer$lambda-11(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1
    .param p0, "$bottomSheetDialog"    # Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "$bottomSheetDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    .line 187
    :cond_0
    return-void
.end method

.method private static final showDialogForAccountTransfer$lambda-8(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;
    .param p1, "$accountNumber"    # Ljava/lang/String;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$accountNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    nop

    .line 159
    nop

    .line 156
    const-string v1, "Account Number"

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    const-string v1, "Account number copied to clipboard"

    check-cast v1, Ljava/lang/CharSequence;

    .line 164
    nop

    .line 161
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    return-void
.end method

.method private static final showDialogForAccountTransfer$lambda-9(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;
    .param p1, "$accountNumber2"    # Ljava/lang/String;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$accountNumber2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    nop

    .line 172
    nop

    .line 169
    const-string v1, "Account Number"

    invoke-static {v0, v1, p1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    const-string v1, "Account number copied to clipboard"

    check-cast v1, Ljava/lang/CharSequence;

    .line 177
    nop

    .line 174
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->getView()Landroid/view/View;

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
    .locals 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "inflater"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x0

    move-object/from16 v3, p2

    invoke-static {v1, v3, v2}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;

    move-result-object v2

    const-string v4, "inflate(inflater, container, false)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;

    .line 52
    new-instance v2, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;

    invoke-direct {v4, v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment$onCreateView$1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {v2, v4}, Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    .line 70
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;

    const-string v4, "binding"

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_0
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;->rvTransactions:Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, v6}, Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 71
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;

    if-nez v2, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v5

    :cond_1
    iget-object v2, v2, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;->rvTransactions:Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;

    iget-object v6, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->adapter:Lcom/woleapp/netpos/contactless/adapter/ServiceAdapter;

    if-nez v6, :cond_2

    const-string v6, "adapter"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v5

    :cond_2
    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v2, v6}, Lcom/woleapp/netpos/contactless/ui/widgets/GridRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->setService()V

    .line 73
    new-instance v2, Lcom/woleapp/netpos/contactless/model/MqttEvent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x7ff

    const/16 v20, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v20}, Lcom/woleapp/netpos/contactless/model/MqttEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 74
    move-object v6, v2

    .local v6, "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    const/4 v7, 0x0

    .line 75
    .local v7, "$i$a$-apply-NipNotificationFragment$onCreateView$2":I
    const-string v8, "lat:51.507351-long:-0.127758"

    invoke-virtual {v6, v8}, Lcom/woleapp/netpos/contactless/model/MqttEvent;->setGeo(Ljava/lang/String;)V

    .line 76
    nop

    .line 74
    .end local v6    # "$this$onCreateView_u24lambda_u2d0":Lcom/woleapp/netpos/contactless/model/MqttEvent;
    .end local v7    # "$i$a$-apply-NipNotificationFragment$onCreateView$2":I
    nop

    .line 73
    iput-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->event:Lcom/woleapp/netpos/contactless/model/MqttEvent;

    .line 78
    iget-object v2, v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;

    if-nez v2, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v5, v2

    :goto_0
    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationsBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    const-string v4, "binding.root"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 42
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onStop()V

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 44
    return-void
.end method
