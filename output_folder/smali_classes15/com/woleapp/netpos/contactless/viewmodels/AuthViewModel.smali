.class public final Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AuthViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\t2\u0006\u00101\u001a\u00020\tH\u0002J(\u00102\u001a\u00020.2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\t2\u0006\u00101\u001a\u00020\t2\u0006\u00103\u001a\u00020\tH\u0002J\u000e\u00104\u001a\u00020.2\u0006\u00105\u001a\u00020\tJ\u0016\u00104\u001a\u00020.2\u0006\u00105\u001a\u00020\t2\u0006\u00103\u001a\u00020\tJ\u0016\u00106\u001a\u00020.2\u0006\u00107\u001a\u0002082\u0006\u00105\u001a\u00020\tJ\u0008\u00109\u001a\u00020.H\u0014J\u0006\u0010:\u001a\u00020.J\u0016\u0010;\u001a\u00020.2\u0006\u00103\u001a\u00020\t2\u0006\u00101\u001a\u00020\tR\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001d\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u001f\u0010\u0015\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\u00060\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u0014R\u001d\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0\u00050\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0014R\u001f\u0010\u001f\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\t0\t0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0018R\u001f\u0010!\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\u00060\u00060\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0018R\u001d\u0010#\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u00128F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u0014R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001f\u0010+\u001a\u0010\u0012\u000c\u0012\n \u0016*\u0004\u0018\u00010\t0\t0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\u0018\u00a8\u0006<"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "_authDone",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "",
        "_gotoAdminPage",
        "_message",
        "",
        "_passwordResetSent",
        "appCredentials",
        "Lcom/google/gson/JsonObject;",
        "getAppCredentials",
        "()Lcom/google/gson/JsonObject;",
        "setAppCredentials",
        "(Lcom/google/gson/JsonObject;)V",
        "authDone",
        "Landroidx/lifecycle/LiveData;",
        "getAuthDone",
        "()Landroidx/lifecycle/LiveData;",
        "authInProgress",
        "kotlin.jvm.PlatformType",
        "getAuthInProgress",
        "()Landroidx/lifecycle/MutableLiveData;",
        "disposables",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "gotoAdminPage",
        "getGotoAdminPage",
        "message",
        "getMessage",
        "passwordLiveData",
        "getPasswordLiveData",
        "passwordResetInProgress",
        "getPasswordResetInProgress",
        "passwordResetSent",
        "getPasswordResetSent",
        "stormApiService",
        "Lcom/woleapp/netpos/contactless/network/StormApiService;",
        "getStormApiService",
        "()Lcom/woleapp/netpos/contactless/network/StormApiService;",
        "setStormApiService",
        "(Lcom/woleapp/netpos/contactless/network/StormApiService;)V",
        "usernameLiveData",
        "getUsernameLiveData",
        "auth",
        "",
        "username",
        "password",
        "deviceId",
        "authProvidus",
        "partnerID",
        "login",
        "deviceSerialId",
        "loginZenith",
        "context",
        "Landroid/content/Context;",
        "onCleared",
        "resetPassword",
        "resetPasswordForFCMB",
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
.field private final _authDone:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _gotoAdminPage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _message:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _passwordResetSent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private appCredentials:Lcom/google/gson/JsonObject;

.field private final authInProgress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final disposables:Lio/reactivex/disposables/CompositeDisposable;

.field private final passwordLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final passwordResetInProgress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private stormApiService:Lcom/woleapp/netpos/contactless/network/StormApiService;

.field private final usernameLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-u9ARMAaavstf4YSYlQ0IAtdxIc(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->resetPassword$lambda-18(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Q8hx8VmC2BvpKzaPKB3D__DJWQ(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lcom/woleapp/netpos/contactless/model/User;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authProvidus$lambda-15(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lcom/woleapp/netpos/contactless/model/User;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DnuUnDcZUDdCp-H-4sSsyVjWvfA(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->resetPassword$lambda-17(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HlKSHR0KGWZ_exDsGjs5ul0FWJM(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->resetPasswordForFCMB$lambda-28(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q-E8kJFFeSoBhbWWNMl0gS_NOGg(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->resetPasswordForFCMB$lambda-23(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R0qVKb7uMy2qt_h7ZZg49pa-QN0(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authProvidus$lambda-10(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TDvV16daXATd5r-Ce2U9Uv0SO3I(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->resetPasswordForFCMB$lambda-24(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XZuc9Ta-3WP1VZujkrcCLYmEr3k(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lcom/woleapp/netpos/contactless/model/User;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->auth$lambda-7(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lcom/woleapp/netpos/contactless/model/User;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_EXbm5mJAwJswI4ZXVSJxhariig(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->auth$lambda-3(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_zRq4UN9bmtqkwuW0ZLRDQizpB0(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->auth$lambda-2(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$atCc9VYDFPNwWWlMZW6fjkmXiyw(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Ljava/lang/String;Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->resetPassword$lambda-21(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Ljava/lang/String;Lretrofit2/Response;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4Wkhc4ejFxndiUOCvBraPPDt5I(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authProvidus$lambda-11(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 30
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordResetInProgress:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->usernameLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 36
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_gotoAdminPage:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_passwordResetSent:Landroidx/lifecycle/MutableLiveData;

    .line 29
    return-void
.end method

.method private final auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 117
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$auth_u24lambda_u2d0":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    .line 118
    .local v2, "$i$a$-apply-AuthViewModel$auth$credentials$1":I
    const-string v3, "username"

    invoke-virtual {v1, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v3, "password"

    invoke-virtual {v1, v3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v3, "deviceId"

    invoke-virtual {v1, v3, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    nop

    .line 117
    .end local v1    # "$this$auth_u24lambda_u2d0":Lcom/google/gson/JsonObject;
    .end local v2    # "$i$a$-apply-AuthViewModel$auth$credentials$1":I
    nop

    .line 116
    nop

    .line 122
    .local v0, "credentials":Lcom/google/gson/JsonObject;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->stormApiService:Lcom/woleapp/netpos/contactless/network/StormApiService;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/woleapp/netpos/contactless/network/StormApiService;->userToken(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 211
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v1

    .line 212
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "stormApiService!!.userTo\u2026          }\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 239
    return-void
.end method

.method private static final auth$lambda-2(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;
    .locals 31
    .param p0, "it"    # Lcom/woleapp/netpos/contactless/model/TokenResp;

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "userToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/JWTHelper;->getStormId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 128
    .local v2, "stormId":Ljava/lang/String;
    const-string v3, "user_token"

    invoke-static {v3, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v3, Lcom/auth0/android/jwt/JWT;

    invoke-direct {v3, v0}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    .line 131
    .local v3, "userTokenDecoded":Lcom/auth0/android/jwt/JWT;
    new-instance v30, Lcom/woleapp/netpos/contactless/model/User;

    move-object/from16 v4, v30

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

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x7fffff

    const/16 v29, 0x0

    invoke-direct/range {v4 .. v29}, Lcom/woleapp/netpos/contactless/model/User;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v4, "$this$auth_u24lambda_u2d2_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/model/User;
    const/4 v5, 0x0

    .line 132
    .local v5, "$i$a$-apply-AuthViewModel$auth$1$user$1":I
    nop

    .line 133
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "netplusPayMid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 134
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 136
    :cond_0
    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 132
    :goto_0
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setNetplusPayMid(Ljava/lang/String;)V

    .line 138
    nop

    .line 139
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "business_address"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, " "

    if-eqz v6, :cond_1

    .line 140
    nop

    .line 141
    nop

    .line 140
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 142
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 144
    :cond_1
    move-object v6, v8

    .line 138
    :goto_1
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setBusiness_address(Ljava/lang/String;)V

    .line 146
    nop

    .line 147
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "terminalId"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 148
    nop

    .line 149
    nop

    .line 148
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 150
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 152
    :cond_2
    move-object v6, v8

    .line 146
    :goto_2
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setTerminal_id(Ljava/lang/String;)V

    .line 154
    nop

    .line 155
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "businessName"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    nop

    .line 157
    nop

    .line 156
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 158
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 160
    :cond_3
    move-object v6, v8

    .line 154
    :goto_3
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setBusiness_name(Ljava/lang/String;)V

    .line 162
    nop

    .line 163
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "stormId"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    nop

    .line 165
    nop

    .line 164
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 166
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 168
    :cond_4
    move-object v6, v8

    .line 162
    :goto_4
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setNetplus_id(Ljava/lang/String;)V

    .line 170
    nop

    .line 171
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "mid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 172
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 174
    :cond_5
    move-object v6, v8

    .line 170
    :goto_5
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setMid(Ljava/lang/String;)V

    .line 176
    nop

    .line 177
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "partnerId"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 178
    nop

    .line 179
    nop

    .line 178
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 180
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 182
    :cond_6
    move-object v6, v8

    .line 176
    :goto_6
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setPartnerId(Ljava/lang/String;)V

    .line 184
    nop

    .line 185
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "username"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 186
    nop

    .line 187
    nop

    .line 186
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 188
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 190
    :cond_7
    move-object v6, v8

    .line 184
    :goto_7
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setEmail(Ljava/lang/String;)V

    .line 200
    nop

    .line 201
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "user_type"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 202
    nop

    .line 203
    nop

    .line 202
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 204
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 206
    :cond_8
    nop

    .line 200
    :goto_8
    invoke-virtual {v4, v8}, Lcom/woleapp/netpos/contactless/model/User;->setUserType(Ljava/lang/String;)V

    .line 208
    nop

    .line 131
    .end local v4    # "$this$auth_u24lambda_u2d2_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/model/User;
    .end local v5    # "$i$a$-apply-AuthViewModel$auth$1$user$1":I
    nop

    .line 130
    move-object/from16 v4, v30

    .line 210
    .local v4, "user":Lcom/woleapp/netpos/contactless/model/User;
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v5

    check-cast v5, Lio/reactivex/SingleSource;

    return-object v5

    .line 127
    .end local v2    # "stormId":Ljava/lang/String;
    .end local v3    # "userTokenDecoded":Lcom/auth0/android/jwt/JWT;
    .end local v4    # "user":Lcom/woleapp/netpos/contactless/model/User;
    :cond_9
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Login Failed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    .end local v0    # "userToken":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Login Failed, Check Credentials"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final auth$lambda-3(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final auth$lambda-7(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lcom/woleapp/netpos/contactless/model/User;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .param p1, "res"    # Lcom/woleapp/netpos/contactless/model/User;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    const/4 v0, 0x1

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 213
    if-eqz p1, :cond_0

    move-object v2, p1

    .local v2, "it":Lcom/woleapp/netpos/contactless/model/User;
    const/4 v3, 0x0

    .line 214
    .local v3, "$i$a$-let-AuthViewModel$auth$3$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user"

    invoke-static {v5, v4}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v4, "authenticated"

    invoke-static {v4, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 217
    nop

    .line 213
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/model/User;
    .end local v3    # "$i$a$-let-AuthViewModel$auth$3$1":I
    nop

    .line 218
    :cond_0
    if-eqz p2, :cond_6

    move-object v2, p2

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 219
    .local v3, "$i$a$-let-AuthViewModel$auth$3$2":I
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "admin"

    invoke-static {v4, v5, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_gotoAdminPage:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 221
    goto :goto_2

    .line 223
    :cond_1
    instance-of v0, v2, Lretrofit2/HttpException;

    if-eqz v0, :cond_2

    move-object v0, v2

    check-cast v0, Lretrofit2/HttpException;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "httpException":Lretrofit2/HttpException;
    :goto_0
    const/4 v1, 0x0

    .line 225
    .local v1, "$i$a$-let-AuthViewModel$auth$3$2$1":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 226
    :cond_3
    const-string v4, "{\"success\":false,\"message\":\"Unexpected error\"}"

    .line 225
    :cond_4
    nop

    .line 224
    nop

    .line 227
    .local v4, "errorMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 228
    nop

    .line 229
    nop

    .line 230
    :try_start_0
    sget-object v6, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/woleapp/netpos/contactless/model/AuthError;

    invoke-virtual {v6, v4, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/woleapp/netpos/contactless/model/AuthError;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 231
    const-string v6, "Login Failed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    .line 232
    :catch_0
    move-exception v6

    .line 233
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "login failed"

    move-object v6, v7

    .line 228
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v5, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 236
    nop

    .line 223
    .end local v0    # "httpException":Lretrofit2/HttpException;
    .end local v1    # "$i$a$-let-AuthViewModel$auth$3$2$1":I
    .end local v4    # "errorMessage":Ljava/lang/String;
    nop

    .line 237
    nop

    .line 218
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-AuthViewModel$auth$3$2":I
    :cond_6
    :goto_2
    nop

    .line 238
    return-void
.end method

.method private final authProvidus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "partnerID"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 249
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$authProvidus_u24lambda_u2d8":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    .line 250
    .local v2, "$i$a$-apply-AuthViewModel$authProvidus$credentials$1":I
    const-string v3, "username"

    invoke-virtual {v1, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v3, "password"

    invoke-virtual {v1, v3, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v3, "deviceId"

    invoke-virtual {v1, v3, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    nop

    .line 249
    .end local v1    # "$this$authProvidus_u24lambda_u2d8":Lcom/google/gson/JsonObject;
    .end local v2    # "$i$a$-apply-AuthViewModel$authProvidus$credentials$1":I
    nop

    .line 248
    nop

    .line 254
    .local v0, "credentials":Lcom/google/gson/JsonObject;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->stormApiService:Lcom/woleapp/netpos/contactless/network/StormApiService;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, p4, v0}, Lcom/woleapp/netpos/contactless/network/StormApiService;->userTokenProvidus(Ljava/lang/String;Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v1

    .line 338
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda9;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v1

    .line 339
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v1

    new-instance v2, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda10;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    const-string v2, "stormApiService!!.userTo\u2026          }\n            }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v1, v2}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 366
    return-void
.end method

.method private static final authProvidus$lambda-10(Lcom/woleapp/netpos/contactless/model/TokenResp;)Lio/reactivex/SingleSource;
    .locals 31
    .param p0, "it"    # Lcom/woleapp/netpos/contactless/model/TokenResp;

    const-string v0, "it"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getSuccess()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/woleapp/netpos/contactless/model/TokenResp;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "userToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/JWTHelper;->getStormId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 260
    .local v2, "stormId":Ljava/lang/String;
    const-string v3, "user_token"

    invoke-static {v3, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v3, Lcom/auth0/android/jwt/JWT;

    invoke-direct {v3, v0}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    .line 263
    .local v3, "userTokenDecoded":Lcom/auth0/android/jwt/JWT;
    new-instance v30, Lcom/woleapp/netpos/contactless/model/User;

    move-object/from16 v4, v30

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

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v28, 0x7fffff

    const/16 v29, 0x0

    invoke-direct/range {v4 .. v29}, Lcom/woleapp/netpos/contactless/model/User;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .local v4, "$this$authProvidus_u24lambda_u2d10_u24lambda_u2d9":Lcom/woleapp/netpos/contactless/model/User;
    const/4 v5, 0x0

    .line 264
    .local v5, "$i$a$-apply-AuthViewModel$authProvidus$1$user$1":I
    nop

    .line 265
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "netplusPayMid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 267
    const-string v6, "2044LA000016107"

    goto :goto_0

    .line 269
    :cond_0
    const/4 v6, 0x0

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 264
    :goto_0
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setNetplusPayMid(Ljava/lang/String;)V

    .line 271
    nop

    .line 272
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "business_address"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, " "

    if-eqz v6, :cond_1

    .line 273
    nop

    .line 274
    nop

    .line 273
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 275
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 277
    :cond_1
    move-object v6, v8

    .line 271
    :goto_1
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setBusiness_address(Ljava/lang/String;)V

    .line 279
    nop

    .line 280
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "terminalId"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 284
    const-string v6, "2UP10451"

    goto :goto_2

    .line 286
    :cond_2
    move-object v6, v8

    .line 279
    :goto_2
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setTerminal_id(Ljava/lang/String;)V

    .line 288
    nop

    .line 289
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "businessName"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 290
    nop

    .line 291
    nop

    .line 290
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 292
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 294
    :cond_3
    move-object v6, v8

    .line 288
    :goto_3
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setBusiness_name(Ljava/lang/String;)V

    .line 296
    nop

    .line 297
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "stormId"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 298
    nop

    .line 299
    nop

    .line 298
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 300
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 302
    :cond_4
    move-object v6, v8

    .line 296
    :goto_4
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setNetplus_id(Ljava/lang/String;)V

    .line 304
    nop

    .line 305
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "mid"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 306
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 308
    :cond_5
    move-object v6, v8

    .line 304
    :goto_5
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setMid(Ljava/lang/String;)V

    .line 310
    nop

    .line 311
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "partnerId"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 312
    nop

    .line 313
    nop

    .line 312
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 314
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 316
    :cond_6
    move-object v6, v8

    .line 310
    :goto_6
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setPartnerId(Ljava/lang/String;)V

    .line 318
    nop

    .line 319
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "username"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 320
    nop

    .line 321
    nop

    .line 320
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 322
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    .line 324
    :cond_7
    move-object v6, v8

    .line 318
    :goto_7
    invoke-virtual {v4, v6}, Lcom/woleapp/netpos/contactless/model/User;->setEmail(Ljava/lang/String;)V

    .line 326
    nop

    .line 327
    invoke-virtual {v3}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v6

    const-string v7, "user_type"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 328
    nop

    .line 329
    nop

    .line 328
    invoke-virtual {v3, v7}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v6

    .line 330
    invoke-interface {v6}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 332
    :cond_8
    nop

    .line 326
    :goto_8
    invoke-virtual {v4, v8}, Lcom/woleapp/netpos/contactless/model/User;->setUserType(Ljava/lang/String;)V

    .line 334
    nop

    .line 263
    .end local v4    # "$this$authProvidus_u24lambda_u2d10_u24lambda_u2d9":Lcom/woleapp/netpos/contactless/model/User;
    .end local v5    # "$i$a$-apply-AuthViewModel$authProvidus$1$user$1":I
    nop

    .line 262
    move-object/from16 v4, v30

    .line 335
    .local v4, "user":Lcom/woleapp/netpos/contactless/model/User;
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/User;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USER"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {v4}, Lio/reactivex/Single;->just(Ljava/lang/Object;)Lio/reactivex/Single;

    move-result-object v5

    check-cast v5, Lio/reactivex/SingleSource;

    return-object v5

    .line 259
    .end local v2    # "stormId":Ljava/lang/String;
    .end local v3    # "userTokenDecoded":Lcom/auth0/android/jwt/JWT;
    .end local v4    # "user":Lcom/woleapp/netpos/contactless/model/User;
    :cond_9
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Login Failed"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    .end local v0    # "userToken":Ljava/lang/String;
    :cond_a
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Login Failed, Check Credentials"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final authProvidus$lambda-11(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final authProvidus$lambda-15(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lcom/woleapp/netpos/contactless/model/User;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .param p1, "res"    # Lcom/woleapp/netpos/contactless/model/User;
    .param p2, "error"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    const/4 v0, 0x1

    .line 343
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 340
    if-eqz p1, :cond_0

    move-object v2, p1

    .local v2, "it":Lcom/woleapp/netpos/contactless/model/User;
    const/4 v3, 0x0

    .line 341
    .local v3, "$i$a$-let-AuthViewModel$authProvidus$3$1":I
    sget-object v4, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "user"

    invoke-static {v5, v4}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v4, "authenticated"

    invoke-static {v4, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putBoolean(Ljava/lang/String;Z)V

    .line 343
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 344
    nop

    .line 340
    .end local v2    # "it":Lcom/woleapp/netpos/contactless/model/User;
    .end local v3    # "$i$a$-let-AuthViewModel$authProvidus$3$1":I
    nop

    .line 345
    :cond_0
    if-eqz p2, :cond_6

    move-object v2, p2

    .local v2, "it":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 346
    .local v3, "$i$a$-let-AuthViewModel$authProvidus$3$2":I
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "admin"

    invoke-static {v4, v5, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_gotoAdminPage:Landroidx/lifecycle/MutableLiveData;

    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v1}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 348
    goto :goto_2

    .line 350
    :cond_1
    instance-of v0, v2, Lretrofit2/HttpException;

    if-eqz v0, :cond_2

    move-object v0, v2

    check-cast v0, Lretrofit2/HttpException;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, "httpException":Lretrofit2/HttpException;
    :goto_0
    const/4 v1, 0x0

    .line 352
    .local v1, "$i$a$-let-AuthViewModel$authProvidus$3$2$1":I
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 353
    :cond_3
    const-string v4, "{\"success\":false,\"message\":\"Unexpected error\"}"

    .line 352
    :cond_4
    nop

    .line 351
    nop

    .line 354
    .local v4, "errorMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 355
    nop

    .line 356
    nop

    .line 357
    :try_start_0
    sget-object v6, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/woleapp/netpos/contactless/model/AuthError;

    invoke-virtual {v6, v4, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/woleapp/netpos/contactless/model/AuthError;

    invoke-virtual {v6}, Lcom/woleapp/netpos/contactless/model/AuthError;->getMessage()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    .line 358
    const-string v6, "Login Failed"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_1

    .line 359
    :catch_0
    move-exception v6

    .line 360
    .local v6, "e":Ljava/lang/Exception;
    const-string v7, "login failed"

    move-object v6, v7

    .line 355
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 354
    invoke-virtual {v5, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 363
    nop

    .line 350
    .end local v0    # "httpException":Lretrofit2/HttpException;
    .end local v1    # "$i$a$-let-AuthViewModel$authProvidus$3$2$1":I
    .end local v4    # "errorMessage":Ljava/lang/String;
    nop

    .line 364
    nop

    .line 345
    .end local v2    # "it":Ljava/lang/Throwable;
    .end local v3    # "$i$a$-let-AuthViewModel$authProvidus$3$2":I
    :cond_6
    :goto_2
    nop

    .line 365
    return-void
.end method

.method private static final resetPassword$lambda-17(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .param p1, "it"    # Lio/reactivex/disposables/Disposable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordResetInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 382
    return-void
.end method

.method private static final resetPassword$lambda-18(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordResetInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final resetPassword$lambda-21(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Ljava/lang/String;Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .param p1, "$username"    # Ljava/lang/String;
    .param p2, "t1"    # Lretrofit2/Response;
    .param p3, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    if-eqz p2, :cond_2

    move-object v0, p2

    .local v0, "it":Lretrofit2/Response;
    const/4 v1, 0x0

    .line 385
    .local v1, "$i$a$-let-AuthViewModel$resetPassword$3$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 386
    invoke-virtual {v0}, Lretrofit2/Response;->code()I

    move-result v3

    const/16 v4, 0xc8

    const-string v5, "Password reset failed"

    if-eq v3, v4, :cond_0

    .line 387
    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v3, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 389
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 390
    .local v3, "res":Lorg/json/JSONObject;
    const-string v4, "success"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 391
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_0

    .line 393
    :cond_1
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_passwordResetSent:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 394
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "A password reset mail has been sent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    move-object v3, v4

    .line 385
    .end local v3    # "res":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 397
    nop

    .line 384
    .end local v0    # "it":Lretrofit2/Response;
    .end local v1    # "$i$a$-let-AuthViewModel$resetPassword$3$1":I
    nop

    .line 398
    :cond_2
    if-eqz p3, :cond_3

    move-object v0, p3

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 399
    .local v1, "$i$a$-let-AuthViewModel$resetPassword$3$2":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "Password reset failed, try again."

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 400
    nop

    .line 398
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-AuthViewModel$resetPassword$3$2":I
    nop

    .line 401
    :cond_3
    return-void
.end method

.method private static final resetPasswordForFCMB$lambda-23(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lio/reactivex/disposables/Disposable;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .param p1, "it"    # Lio/reactivex/disposables/Disposable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordResetInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method private static final resetPasswordForFCMB$lambda-24(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordResetInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private static final resetPasswordForFCMB$lambda-28(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Lretrofit2/Response;Ljava/lang/Throwable;)V
    .locals 9
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;
    .param p1, "t1"    # Lretrofit2/Response;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "Error"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    if-eqz p1, :cond_2

    move-object v1, p1

    .local v1, "it":Lretrofit2/Response;
    const/4 v2, 0x0

    .line 427
    .local v2, "$i$a$-let-AuthViewModel$resetPasswordForFCMB$3$1":I
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 428
    invoke-virtual {v1}, Lretrofit2/Response;->code()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_0

    .line 429
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v5, "Email address not associated with this device. Please contact administrator"

    invoke-direct {v4, v5}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 432
    .local v4, "res":Lorg/json/JSONObject;
    const-string v5, "success"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 433
    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v6, "Password reset failed"

    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    move-object v4, v5

    goto :goto_0

    .line 435
    :cond_1
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_passwordResetSent:Landroidx/lifecycle/MutableLiveData;

    new-instance v6, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 436
    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v6, "Password reset successfully!"

    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    move-object v4, v5

    .line 427
    .end local v4    # "res":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 439
    nop

    .line 426
    .end local v1    # "it":Lretrofit2/Response;
    .end local v2    # "$i$a$-let-AuthViewModel$resetPasswordForFCMB$3$1":I
    nop

    .line 440
    :cond_2
    if-eqz p2, :cond_7

    move-object v1, p2

    .local v1, "it":Ljava/lang/Throwable;
    const/4 v2, 0x0

    .line 441
    .local v2, "$i$a$-let-AuthViewModel$resetPasswordForFCMB$3$2":I
    instance-of v3, v1, Lretrofit2/HttpException;

    if-eqz v3, :cond_3

    move-object v3, v1

    check-cast v3, Lretrofit2/HttpException;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .local v3, "httpException":Lretrofit2/HttpException;
    :goto_1
    const/4 v4, 0x0

    .line 443
    .local v4, "$i$a$-let-AuthViewModel$resetPasswordForFCMB$3$2$1":I
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lretrofit2/HttpException;->response()Lretrofit2/Response;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 444
    :cond_4
    const-string v5, "{\"message\":\"Unexpected error\"}"

    .line 443
    :cond_5
    nop

    .line 442
    nop

    .line 445
    .local v5, "errorMessage":Ljava/lang/String;
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 446
    nop

    .line 447
    nop

    .line 448
    :try_start_0
    sget-object v7, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, Lcom/woleapp/netpos/contactless/model/GeneralResponse;

    invoke-virtual {v7, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/woleapp/netpos/contactless/model/GeneralResponse;

    invoke-virtual {v7}, Lcom/woleapp/netpos/contactless/model/GeneralResponse;->getMessage()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_6

    .line 449
    goto :goto_2

    .line 448
    :cond_6
    move-object v0, v7

    .line 449
    :goto_2
    goto :goto_3

    .line 450
    :catch_0
    move-exception v7

    .line 451
    .local v7, "e":Ljava/lang/Exception;
    nop

    .line 446
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    new-instance v7, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v7, v0}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 445
    invoke-virtual {v6, v7}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 454
    nop

    .line 441
    .end local v3    # "httpException":Lretrofit2/HttpException;
    .end local v4    # "$i$a$-let-AuthViewModel$resetPasswordForFCMB$3$2$1":I
    .end local v5    # "errorMessage":Ljava/lang/String;
    nop

    .line 455
    nop

    .line 440
    .end local v1    # "it":Ljava/lang/Throwable;
    .end local v2    # "$i$a$-let-AuthViewModel$resetPasswordForFCMB$3$2":I
    nop

    .line 456
    :cond_7
    return-void
.end method


# virtual methods
.method public final getAppCredentials()Lcom/google/gson/JsonObject;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->appCredentials:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public final getAuthDone()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getAuthInProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getGotoAdminPage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_gotoAdminPage:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getMessage()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getPasswordLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPasswordResetInProgress()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordResetInProgress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPasswordResetSent()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/woleapp/netpos/contactless/util/Event<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_passwordResetSent:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getStormApiService()Lcom/woleapp/netpos/contactless/network/StormApiService;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->stormApiService:Lcom/woleapp/netpos/contactless/network/StormApiService;

    return-object v0
.end method

.method public final getUsernameLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->usernameLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final login(Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceSerialId"    # Ljava/lang/String;

    const-string v0, "deviceSerialId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->usernameLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, "password":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_6

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    .line 86
    :cond_4
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    .line 87
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "Please enter a valid email"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 90
    :cond_5
    invoke-direct {p0, v0, v1, p1}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void

    .line 83
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "All fields are required"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method public final login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "deviceSerialId"    # Ljava/lang/String;
    .param p2, "partnerID"    # Ljava/lang/String;

    const-string v0, "deviceSerialId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->usernameLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "password":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_6

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    .line 103
    :cond_4
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    .line 104
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "Please enter a valid email"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 105
    return-void

    .line 107
    :cond_5
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->authProvidus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 100
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "All fields are required"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public final loginZenith(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceSerialId"    # Ljava/lang/String;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceSerialId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->usernameLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 60
    .local v1, "password":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_7

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    goto :goto_3

    .line 64
    :cond_4
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_5

    .line 65
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "Please enter a valid email"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 66
    return-void

    .line 68
    :cond_5
    sget-object v2, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->INSTANCE:Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/woleapp/netpos/contactless/util/RandomPurposeUtil;->passwordValidationZB(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 70
    nop

    .line 71
    const-string v2, "The password\'s length must be more than 9 digits and must contain small letters, capital letters and special characters"

    check-cast v2, Ljava/lang/CharSequence;

    .line 72
    nop

    .line 69
    invoke-static {p1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 74
    return-void

    .line 76
    :cond_6
    invoke-direct {p0, v0, v1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void

    .line 61
    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "All fields are required"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method protected onCleared()V
    .locals 1

    .line 460
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 461
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 462
    return-void
.end method

.method public final resetPassword()V
    .locals 5

    .line 369
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->usernameLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 370
    .local v0, "username":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 371
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v3, "Please enter your email address"

    invoke-direct {v2, v3}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 372
    return-void

    .line 376
    :cond_2
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v2, v1

    .local v2, "$this$resetPassword_u24lambda_u2d16":Lcom/google/gson/JsonObject;
    const/4 v3, 0x0

    .line 377
    .local v3, "$i$a$-apply-AuthViewModel$resetPassword$payload$1":I
    const-string v4, "username"

    invoke-virtual {v2, v4, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    nop

    .line 376
    .end local v2    # "$this$resetPassword_u24lambda_u2d16":Lcom/google/gson/JsonObject;
    .end local v3    # "$i$a$-apply-AuthViewModel$resetPassword$payload$1":I
    nop

    .line 375
    nop

    .line 379
    .local v1, "payload":Lcom/google/gson/JsonObject;
    const-string v2, "RESET_USERNAME"

    invoke-static {v2, v0}, Lcom/pixplicity/easyprefs/library/Prefs;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->stormApiService:Lcom/woleapp/netpos/contactless/network/StormApiService;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lcom/woleapp/netpos/contactless/network/StormApiService;->passwordReset(Lcom/google/gson/JsonObject;)Lio/reactivex/Single;

    move-result-object v2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda11;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v2

    .line 382
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v2

    .line 383
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    const-string v3, "stormApiService!!.passwo\u2026          }\n            }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 402
    return-void
.end method

.method public final resetPasswordForFCMB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "partnerID"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;

    const-string v0, "partnerID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->usernameLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 409
    .local v0, "username":Ljava/lang/String;
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->passwordLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    .local v1, "password":Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    if-nez v2, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    if-eqz v3, :cond_4

    goto :goto_2

    .line 416
    :cond_4
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v3, v2

    .local v3, "$this$resetPasswordForFCMB_u24lambda_u2d22":Lcom/google/gson/JsonObject;
    const/4 v4, 0x0

    .line 417
    .local v4, "$i$a$-apply-AuthViewModel$resetPasswordForFCMB$payload$1":I
    const-string v5, "username"

    invoke-virtual {v3, v5, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v5, "password"

    invoke-virtual {v3, v5, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    nop

    .line 416
    .end local v3    # "$this$resetPasswordForFCMB_u24lambda_u2d22":Lcom/google/gson/JsonObject;
    .end local v4    # "$i$a$-apply-AuthViewModel$resetPasswordForFCMB$payload$1":I
    nop

    .line 415
    nop

    .line 421
    .local v2, "payload":Lcom/google/gson/JsonObject;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->stormApiService:Lcom/woleapp/netpos/contactless/network/StormApiService;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3, v2, p1, p2}, Lcom/woleapp/netpos/contactless/network/StormApiService;->passwordResetForProvidus(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v3

    .line 422
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object v3

    .line 424
    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda6;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v3

    .line 425
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v3

    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;)V

    invoke-virtual {v3, v4}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v3

    const-string v4, "stormApiService!!.passwo\u2026          }\n            }"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    iget-object v4, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->disposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v3, v4}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 457
    return-void

    .line 411
    .end local v2    # "payload":Lcom/google/gson/JsonObject;
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const-string v4, "All fields are required"

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 412
    return-void
.end method

.method public final setAppCredentials(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/google/gson/JsonObject;

    .line 32
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->appCredentials:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public final setStormApiService(Lcom/woleapp/netpos/contactless/network/StormApiService;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/woleapp/netpos/contactless/network/StormApiService;

    .line 31
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/AuthViewModel;->stormApiService:Lcom/woleapp/netpos/contactless/network/StormApiService;

    return-void
.end method
