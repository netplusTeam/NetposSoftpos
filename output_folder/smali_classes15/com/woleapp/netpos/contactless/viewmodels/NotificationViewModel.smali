.class public final Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "NotificationViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B3\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ0\u0010\u001c\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u001f  *\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e0\u001e0\u001d2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"J\u000e\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u000eJ8\u0010\'\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u001f  *\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e0\u001e0\u001d2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"J\u000e\u0010+\u001a\u00020%2\u0006\u0010&\u001a\u00020\u000eJ\u0008\u0010,\u001a\u00020%H\u0014J\u001e\u0010-\u001a\u00020%2\u0006\u0010.\u001a\u00020\"2\u0006\u0010*\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00130\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000e0\u00130\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0015\u00a8\u0006/"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "notificationRepository",
        "Lcom/woleapp/netpos/contactless/network/NotificationRepository;",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "ioScheduler",
        "Lio/reactivex/Scheduler;",
        "mainThreadScheduler",
        "notificationDao",
        "Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;",
        "(Lcom/woleapp/netpos/contactless/network/NotificationRepository;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;)V",
        "_clickedMessage",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
        "_notificationDeleted",
        "",
        "allMessages",
        "Landroidx/lifecycle/LiveData;",
        "",
        "getAllMessages",
        "()Landroidx/lifecycle/LiveData;",
        "clickedMessage",
        "getClickedMessage",
        "notificationDeleted",
        "getNotificationDeleted",
        "unreadNotifications",
        "getUnreadNotifications",
        "deleteAccount",
        "Lio/reactivex/Single;",
        "Lcom/woleapp/netpos/contactless/util/Resource;",
        "",
        "kotlin.jvm.PlatformType",
        "username",
        "",
        "deviceId",
        "deleteMessage",
        "",
        "message",
        "feedbackFromMerchants",
        "feedbackRequest",
        "Lcom/woleapp/netpos/contactless/model/FeedbackRequest;",
        "terminalId",
        "markMessageAsRead",
        "onCleared",
        "registerDeviceToken",
        "token",
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
.field private _clickedMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation
.end field

.field private final _notificationDeleted:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final ioScheduler:Lio/reactivex/Scheduler;

.field private final mainThreadScheduler:Lio/reactivex/Scheduler;

.field private final notificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

.field private final notificationRepository:Lcom/woleapp/netpos/contactless/network/NotificationRepository;


# direct methods
.method public static synthetic $r8$lambda$DOaNgPNjNb20TpYTWhtVS9dcA9w(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->feedbackFromMerchants$lambda-0(Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RQYQuOLvr9qdbc6_wvZe5FrQERM(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->deleteAccount$lambda-1(Lretrofit2/Response;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ssMOglVrWi0t1s8SPjq8Sbf3BV0(Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->deleteMessage$lambda-4(Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/NotificationRepository;Lio/reactivex/disposables/CompositeDisposable;Lio/reactivex/Scheduler;Lio/reactivex/Scheduler;Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;)V
    .locals 2
    .param p1, "notificationRepository"    # Lcom/woleapp/netpos/contactless/network/NotificationRepository;
    .param p2, "disposable"    # Lio/reactivex/disposables/CompositeDisposable;
    .param p3, "ioScheduler"    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "io-scheduler"
        .end annotation
    .end param
    .param p4, "mainThreadScheduler"    # Lio/reactivex/Scheduler;
        .annotation runtime Ljavax/inject/Named;
            value = "main-scheduler"
        .end annotation
    .end param
    .param p5, "notificationDao"    # Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "notificationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disposable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioScheduler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainThreadScheduler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationDao"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationRepository:Lcom/woleapp/netpos/contactless/network/NotificationRepository;

    .line 32
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 33
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->ioScheduler:Lio/reactivex/Scheduler;

    .line 35
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->mainThreadScheduler:Lio/reactivex/Scheduler;

    .line 37
    iput-object p5, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->_notificationDeleted:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->_clickedMessage:Landroidx/lifecycle/MutableLiveData;

    .line 30
    return-void
.end method

.method private static final deleteAccount$lambda-1(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 5
    .param p0, "it"    # Lretrofit2/Response;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 71
    const-string v1, "{\n                    Si\u2026ody()))\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 74
    :cond_0
    nop

    .line 75
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "error":Ljava/lang/String;
    sget-object v2, Lcom/dsofttech/dprefs/utils/DPrefs;->INSTANCE:Lcom/dsofttech/dprefs/utils/DPrefs;

    const-string v3, "delete_account"

    const-string v4, "error"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Lcom/dsofttech/dprefs/utils/DPrefs;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "error":Ljava/lang/String;
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 81
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 73
    nop

    .line 77
    const-string v1, "{\n                    tr\u2026ody()))\n                }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    check-cast v0, Lio/reactivex/SingleSource;

    .line 71
    return-object v0
.end method

.method private static final deleteMessage$lambda-4(Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;
    .param p1, "affectedRows"    # Ljava/lang/Integer;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    const/4 v1, 0x0

    .line 99
    .local v1, "$i$a$-let-NotificationViewModel$deleteMessage$1$1":I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->_notificationDeleted:Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 100
    :cond_0
    nop

    .line 98
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-NotificationViewModel$deleteMessage$1$1":I
    nop

    .line 101
    :cond_1
    if-eqz p2, :cond_2

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 102
    .local v1, "$i$a$-let-NotificationViewModel$deleteMessage$1$2":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->_notificationDeleted:Landroidx/lifecycle/MutableLiveData;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 103
    nop

    .line 101
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-NotificationViewModel$deleteMessage$1$2":I
    nop

    .line 104
    :cond_2
    return-void
.end method

.method private static final feedbackFromMerchants$lambda-0(Lretrofit2/Response;)Lio/reactivex/SingleSource;
    .locals 3
    .param p0, "it"    # Lretrofit2/Response;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    const-string v1, "{\n                    Si\u2026ody()))\n                }"

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {p0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->success(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/woleapp/netpos/contactless/util/Resource;->Companion:Lcom/woleapp/netpos/contactless/util/Resource$Companion;

    invoke-virtual {p0}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/woleapp/netpos/contactless/util/Resource$Companion;->error(Ljava/lang/Object;)Lcom/woleapp/netpos/contactless/util/Resource;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v0

    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    check-cast v0, Lio/reactivex/SingleSource;

    .line 61
    return-object v0
.end method


# virtual methods
.method public final deleteAccount(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationRepository:Lcom/woleapp/netpos/contactless/network/NotificationRepository;

    invoke-virtual {v0, p1, p2}, Lcom/woleapp/netpos/contactless/network/NotificationRepository;->deleteAccount(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel$$ExternalSyntheticLambda0;-><init>()V

    .line 70
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "notificationRepository.d\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method public final deleteMessage(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 3
    .param p1, "message"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    invoke-interface {v0, p1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;->deleteMessage(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)Lio/reactivex/Single;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RxJavaUtils;

    const-string v2, "DATA_BASE_ERROR_TAG"

    invoke-virtual {v1, v2}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->getSingleTransformer(Ljava/lang/String;)Lio/reactivex/SingleTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->compose(Lio/reactivex/SingleTransformer;)Lio/reactivex/Single;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "notificationDao.deleteMe\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 105
    return-void
.end method

.method public final feedbackFromMerchants(Lcom/woleapp/netpos/contactless/model/FeedbackRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;
    .locals 2
    .param p1, "feedbackRequest"    # Lcom/woleapp/netpos/contactless/model/FeedbackRequest;
    .param p2, "terminalId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/woleapp/netpos/contactless/model/FeedbackRequest;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/woleapp/netpos/contactless/util/Resource<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    const-string v0, "feedbackRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationRepository:Lcom/woleapp/netpos/contactless/network/NotificationRepository;

    invoke-virtual {v0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/NotificationRepository;->feedbackFromMerchants(Lcom/woleapp/netpos/contactless/model/FeedbackRequest;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel$$ExternalSyntheticLambda2;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    const-string v1, "notificationRepository.f\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    return-object v0
.end method

.method public final getAllMessages()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    invoke-interface {v0}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;->getAllMessages()Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final getClickedMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->_clickedMessage:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getNotificationDeleted()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->_notificationDeleted:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getUnreadNotifications()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/model/AppCampaignModel;",
            ">;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;->getAllMessagesByHasBeenReadStatus(Z)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public final markMessageAsRead(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)V
    .locals 9
    .param p1, "message"    # Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x17

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/woleapp/netpos/contactless/model/AppCampaignModel;->copy$default(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/model/AppCampaignModel;

    move-result-object v0

    .line 87
    .local v0, "msg":Lcom/woleapp/netpos/contactless/model/AppCampaignModel;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->_notificationDeleted:Landroidx/lifecycle/MutableLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 88
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->_clickedMessage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationDao:Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;

    invoke-interface {v1, v0}, Lcom/woleapp/netpos/contactless/database/dao/AppNotificationDao;->markMessageHasRead(Lcom/woleapp/netpos/contactless/model/AppCampaignModel;)Lio/reactivex/Single;

    move-result-object v1

    .line 90
    sget-object v2, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RxJavaUtils;

    const-string v3, "DATA_BASE_ERROR_TAG"

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->getSingleTransformer(Ljava/lang/String;)Lio/reactivex/SingleTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->compose(Lio/reactivex/SingleTransformer;)Lio/reactivex/Single;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lio/reactivex/Single;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 92
    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 109
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 110
    return-void
.end method

.method public final registerDeviceToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "terminalId"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 52
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/NotificationViewModel;->notificationRepository:Lcom/woleapp/netpos/contactless/network/NotificationRepository;

    invoke-virtual {v1, p1, p2, p3}, Lcom/woleapp/netpos/contactless/network/NotificationRepository;->registerDeviceToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 53
    sget-object v2, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RxJavaUtils;

    const-string v3, "NOTIFICATION_ERROR"

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/util/RxJavaUtils;->getSingleTransformer(Ljava/lang/String;)Lio/reactivex/SingleTransformer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->compose(Lio/reactivex/SingleTransformer;)Lio/reactivex/Single;

    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lio/reactivex/Single;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 56
    return-void
.end method
