.class public final Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;
.super Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;
.source "NipNotificationListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0002J$\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u000eH\u0016J\u001a\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u00102\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;",
        "Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;",
        "()V",
        "adapter",
        "Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;",
        "binding",
        "Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;",
        "compositeDisposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "gson",
        "Lcom/google/gson/Gson;",
        "getGson",
        "()Lcom/google/gson/Gson;",
        "getNotifications",
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
        "onViewCreated",
        "view",
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
.field public static final Companion:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;

.field public static final END_OF_DAY:I = 0x2

.field public static final LAST_TWO:I = 0x1

.field private static final NOTIFICATION_TIME:Ljava/lang/String; = "notification_time"

.field private static final NOTIFICATION_TYPE:Ljava/lang/String; = "notification_type"


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

.field private adapter:Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;

.field private binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

.field private final compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public static synthetic $r8$lambda$KHFxptv6LYZ0L6vpSH5ReZmsn6U(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->onViewCreated$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RtCB9g69B9F_NmGr9SR0oryLxCQ(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zf8vyBdpUuPla9SCAPFya5JTm1c(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->getNotifications$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$brfvQJneKYKhKCx42Av7S4qWPPc(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->getNotifications$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;Ljava/util/List;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->Companion:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;-><init>()V

    .line 45
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 46
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->gson:Lcom/google/gson/Gson;

    .line 27
    return-void
.end method

.method private final getNotifications()V
    .locals 8

    .line 82
    sget-object v0, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    if-nez v0, :cond_1

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No terminal Id"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    return-void

    .line 87
    :cond_2
    sget-object v0, Lcom/woleapp/netpos/contactless/network/StormApiClient;->Companion:Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/StormApiClient$Companion;->getNipInstance()Lcom/woleapp/netpos/contactless/network/NipService;

    move-result-object v0

    .line 88
    .local v0, "nipService":Lcom/woleapp/netpos/contactless/network/NipService;
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "notification_type"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 89
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 90
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "notification_time"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 91
    .local v1, "time":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "y-MM-dd HH:mm:ss"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 92
    .local v3, "format":Ljava/text/SimpleDateFormat;
    nop

    .line 93
    sget-object v4, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lcom/woleapp/netpos/contactless/util/DateUtilKt;->getBeginningOfDay(Ljava/lang/Long;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "format.format(getBeginningOfDay(time))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lcom/woleapp/netpos/contactless/util/DateUtilKt;->getEndOfDayTimeStamp(Ljava/lang/Long;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "format.format(getEndOfDayTimeStamp(time))"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-interface {v0, v4, v5, v6}, Lcom/woleapp/netpos/contactless/network/NipService;->getEndOfDayNotifications(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .end local v1    # "time":J
    .end local v3    # "format":Ljava/text/SimpleDateFormat;
    goto :goto_1

    .line 98
    :cond_3
    sget-object v1, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig;->Companion:Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;

    invoke-virtual {v1}, Lcom/woleapp/netpos/contactless/nibss/NetPosTerminalConfig$Companion;->getTerminalId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/woleapp/netpos/contactless/network/NipService;->getLastTwoTransfers(Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v1

    .line 88
    :goto_1
    nop

    .line 100
    .local v1, "request":Lio/reactivex/Single;
    nop

    .line 101
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 102
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 103
    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v2

    .line 104
    new-instance v3, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    const-string v3, "request\n            .sub\u2026          }\n            }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 125
    return-void
.end method

.method private static final getNotifications$lambda-3(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method private static final getNotifications$lambda-7(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;Ljava/util/List;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;
    .param p1, "notifications"    # Ljava/util/List;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    move-object v1, p1

    .local v1, "it":Ljava/util/List;
    const/4 v2, 0x0

    .line 106
    .local v2, "$i$a$-let-NipNotificationListFragment$getNotifications$2$1":I
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "No Bank transfers"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 109
    :cond_0
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->adapter:Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;

    if-nez v3, :cond_1

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v0

    :cond_1
    invoke-virtual {v3, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->submitList(Ljava/util/List;)V

    .line 110
    nop

    .line 105
    .end local v1    # "it":Ljava/util/List;
    .end local v2    # "$i$a$-let-NipNotificationListFragment$getNotifications$2$1":I
    nop

    .line 111
    :cond_2
    if-eqz p2, :cond_6

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 112
    .local v2, "$i$a$-let-NipNotificationListFragment$getNotifications$2$2":I
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lretrofit2/HttpException;

    goto :goto_0

    :cond_3
    move-object v3, v0

    .line 113
    .local v3, "httpException":Lretrofit2/HttpException;
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_5

    move-object v5, v3

    .local v5, "httpError":Lretrofit2/HttpException;
    const/4 v6, 0x0

    .line 114
    .local v6, "$i$a$-let-NipNotificationListFragment$getNotifications$2$2$1":I
    invoke-virtual {v5}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v0, v7}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    nop

    .line 113
    .end local v5    # "httpError":Lretrofit2/HttpException;
    .end local v6    # "$i$a$-let-NipNotificationListFragment$getNotifications$2$2$1":I
    nop

    .line 116
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v5}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 120
    nop

    .line 117
    invoke-static {v0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    nop

    .line 111
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-NipNotificationListFragment$getNotifications$2$2":I
    .end local v3    # "httpException":Lretrofit2/HttpException;
    nop

    .line 123
    :cond_6
    return-void
.end method

.method private static final onViewCreated$lambda-0(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V
    .locals 1
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->getNotifications()V

    return-void
.end method

.method private static final onViewCreated$lambda-2(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;Landroid/view/View;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;
    .param p1, "it"    # Landroid/view/View;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->adapter:Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 75
    .local v1, "$i$a$-let-NipNotificationListFragment$onViewCreated$2$1":I
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 77
    nop

    .line 74
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-NipNotificationListFragment$onViewCreated$2$1":I
    nop

    .line 78
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->getView()Landroid/view/View;

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

.method public final getGson()Lcom/google/gson/Gson;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    move-result-object v0

    const-string v1, "inflate(inflater, container, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    .line 53
    new-instance v0, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;

    sget-object v1, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$onCreateView$1;->INSTANCE:Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$onCreateView$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->adapter:Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;

    .line 58
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onStop()V

    .line 129
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 130
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/woleapp/netpos/contactless/ui/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 63
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->notificationList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->adapter:Lcom/woleapp/netpos/contactless/ui/fragments/NipAdapter;

    if-nez v3, :cond_1

    const-string v3, "adapter"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 64
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 65
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->refresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v4, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V

    invoke-virtual {v0, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 66
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->notificationList:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    new-instance v4, Landroidx/recyclerview/widget/DividerItemDecoration;

    .line 68
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    .line 69
    nop

    .line 67
    invoke-direct {v4, v5, v3}, Landroidx/recyclerview/widget/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 66
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 72
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->getNotifications()V

    .line 73
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;->binding:Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v2, v0

    :goto_0
    iget-object v0, v2, Lcom/woleapp/netpos/contactless/databinding/FragmentNipNotificationListBinding;->printAll:Landroid/widget/Button;

    new-instance v1, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/ui/fragments/NipNotificationListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method
