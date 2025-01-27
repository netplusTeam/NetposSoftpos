.class public final Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "RegistrationViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\'\u001a\u00020(H\u0014J\u0018\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0002J\u0018\u0010,\u001a\u00020(2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0002J\u0018\u0010-\u001a\u00020(2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0002J\u0018\u0010.\u001a\u00020(2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nH\u0002J\u001e\u0010/\u001a\u00020(2\u0006\u00100\u001a\u0002012\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\nJ\u000e\u00102\u001a\u00020(2\u0006\u00103\u001a\u00020\nJ\u000e\u00104\u001a\u00020(2\u0006\u00103\u001a\u00020\nR\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001f\u0010\u000f\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\u00080\u00080\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u000eR\u0017\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012R\u0017\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0012R\u001f\u0010\"\u001a\u0010\u0012\u000c\u0012\n \u0010*\u0004\u0018\u00010\n0\n0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0012R\u0017\u0010$\u001a\u0008\u0012\u0004\u0012\u00020%0\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u0012\u00a8\u00065"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "contactlessRegRepository",
        "Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;",
        "(Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;)V",
        "_authDone",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/woleapp/netpos/contactless/util/Event;",
        "",
        "_message",
        "",
        "authDone",
        "Landroidx/lifecycle/LiveData;",
        "getAuthDone",
        "()Landroidx/lifecycle/LiveData;",
        "authInProgress",
        "kotlin.jvm.PlatformType",
        "getAuthInProgress",
        "()Landroidx/lifecycle/MutableLiveData;",
        "bankTRegistrationModel",
        "Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;",
        "getBankTRegistrationModel",
        "contactlessService",
        "Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;",
        "disposable",
        "Lio/reactivex/disposables/CompositeDisposable;",
        "message",
        "getMessage",
        "registrationFBNModel",
        "Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;",
        "getRegistrationFBNModel",
        "registrationModel",
        "Lcom/woleapp/netpos/contactless/model/RegistrationModel;",
        "getRegistrationModel",
        "registrationZenithConfirmPassword",
        "getRegistrationZenithConfirmPassword",
        "registrationZenithModel",
        "Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;",
        "getRegistrationZenithModel",
        "onCleared",
        "",
        "reg",
        "bank",
        "deviceSerialId",
        "regFBN",
        "regTingo",
        "regZenith",
        "register",
        "context",
        "Landroid/content/Context;",
        "setSelectedBranch",
        "data",
        "setSelectedState",
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

.field private final authInProgress:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final bankTRegistrationModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final contactlessRegRepository:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

.field private final contactlessService:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

.field private final disposable:Lio/reactivex/disposables/CompositeDisposable;

.field private final registrationFBNModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;",
            ">;"
        }
    .end annotation
.end field

.field private final registrationModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationModel;",
            ">;"
        }
    .end annotation
.end field

.field private final registrationZenithConfirmPassword:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final registrationZenithModel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0X82686OzXOjorTY27mJzDHyXGo(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->register$lambda-0(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1pTv2lKmhCTOagTwAUMxqW6Se48(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regZenith$lambda-11(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AOjEg1CLBtuH4IHHhYo4MRwNrJg(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/RegistrationModel;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->reg$lambda-6(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/RegistrationModel;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DrewHrCTBOk_q_HLJEYtht6NHWM(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regTingo$lambda-19$lambda-18(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mh2jr7w5M6mUGXpwDee-kJmFUJo(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regZenith$lambda-14(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p88HRG-E15EXtZupbrFlWl7Fnds(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regTingo$lambda-19$lambda-15(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$urpyEsGtQzQ5asvn37_3uR73Eoc(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regFBN$lambda-7(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wg26thkdg3EbUhEOYKmbxbu8bVI(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/RegistrationModel;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regFBN$lambda-10(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/RegistrationModel;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yEQL-AVDRRECp7pRnDj2PRUYHAs(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->reg$lambda-3(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;)V
    .locals 2
    .param p1, "contactlessRegRepository"    # Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactlessRegRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->contactlessRegRepository:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    .line 35
    sget-object v0, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->INSTANCE:Lcom/woleapp/netpos/contactless/network/ContactlessClient;

    invoke-virtual {v0}, Lcom/woleapp/netpos/contactless/network/ContactlessClient;->getContactlessService()Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->contactlessService:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    .line 36
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v1, Lcom/woleapp/netpos/contactless/model/RegistrationModel;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;-><init>()V

    .line 40
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationModel:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance v1, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;-><init>()V

    .line 43
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->bankTRegistrationModel:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v1, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;-><init>()V

    .line 46
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationFBNModel:Landroidx/lifecycle/MutableLiveData;

    .line 49
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 50
    new-instance v1, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;-><init>()V

    .line 49
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithModel:Landroidx/lifecycle/MutableLiveData;

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithConfirmPassword:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    .line 30
    return-void
.end method

.method private final reg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bank"    # Ljava/lang/String;
    .param p2, "deviceSerialId"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->contactlessService:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/RegistrationModel;

    invoke-interface {v0, v1, p1, p2}, Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;->register(Lcom/woleapp/netpos/contactless/model/RegistrationModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 166
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 167
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda7;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda8;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "contactlessService.regis\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 189
    return-void
.end method

.method private static final reg$lambda-3(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method private static final reg$lambda-6(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/RegistrationModel;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .param p1, "t1"    # Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    const/4 v1, 0x0

    .line 173
    .local v1, "$i$a$-let-RegistrationViewModel$reg$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationModel:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/model/RegistrationModel;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 174
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 175
    nop

    .line 172
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    .end local v1    # "$i$a$-let-RegistrationViewModel$reg$2$1":I
    nop

    .line 176
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 177
    .local v1, "$i$a$-let-RegistrationViewModel$reg$2$2":I
    nop

    .line 178
    :try_start_0
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 179
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getResponseBody(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/woleapp/netpos/contactless/model/RegistrationError;

    .line 178
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/RegistrationError;

    .line 181
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/RegistrationError;->getMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "an error occurred during registration, try again or contact support"

    move-object v2, v3

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 185
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 186
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 187
    nop

    .line 176
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-RegistrationViewModel$reg$2$2":I
    .end local v2    # "errorMessage":Ljava/lang/String;
    nop

    .line 188
    :cond_1
    return-void
.end method

.method private final regFBN(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bank"    # Ljava/lang/String;
    .param p2, "deviceSerialId"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->contactlessService:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationFBNModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;

    invoke-interface {v0, v1, p1, p2}, Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;->registerFBN(Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 194
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 195
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 196
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda2;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda3;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "contactlessService.regis\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 217
    return-void
.end method

.method private static final regFBN$lambda-10(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/RegistrationModel;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .param p1, "t1"    # Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    const/4 v1, 0x0

    .line 201
    .local v1, "$i$a$-let-RegistrationViewModel$regFBN$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationFBNModel:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 202
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 203
    nop

    .line 200
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/RegistrationModel;
    .end local v1    # "$i$a$-let-RegistrationViewModel$regFBN$2$1":I
    nop

    .line 204
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 205
    .local v1, "$i$a$-let-RegistrationViewModel$regFBN$2$2":I
    nop

    .line 206
    :try_start_0
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 207
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getResponseBody(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/woleapp/netpos/contactless/model/RegistrationError;

    .line 206
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/RegistrationError;

    .line 209
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/RegistrationError;->getMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "an error occurred during registration, try again or contact support"

    move-object v2, v3

    .line 205
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 213
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 214
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 215
    nop

    .line 204
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-RegistrationViewModel$regFBN$2$2":I
    .end local v2    # "errorMessage":Ljava/lang/String;
    nop

    .line 216
    :cond_1
    return-void
.end method

.method private static final regFBN$lambda-7(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method private final regTingo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "bank"    # Ljava/lang/String;
    .param p2, "deviceSerialId"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->bankTRegistrationModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;

    if-eqz v0, :cond_0

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;
    const/4 v1, 0x0

    .line 255
    .local v1, "$i$a$-let-RegistrationViewModel$regTingo$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->contactlessRegRepository:Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;

    .line 256
    nop

    .line 257
    nop

    .line 258
    nop

    .line 255
    invoke-virtual {v2, v0, p1, p2}, Lcom/woleapp/netpos/contactless/network/ContactlessRegRepository;->registerExistingAccountForBankT(Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v2

    .line 260
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 261
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v2

    .line 262
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda4;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v2

    .line 265
    new-instance v3, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda5;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 256
    const-string v3, "contactlessRegRepository\u2026      }\n                }"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v2, v3}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 283
    nop

    .line 254
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;
    .end local v1    # "$i$a$-let-RegistrationViewModel$regTingo$1":I
    nop

    .line 284
    :cond_0
    return-void
.end method

.method private static final regTingo$lambda-19$lambda-15(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method private static final regTingo$lambda-19$lambda-18(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .param p1, "t1"    # Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    const/4 v1, 0x0

    .line 267
    .local v1, "$i$a$-let-RegistrationViewModel$regTingo$1$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->bankTRegistrationModel:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 268
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 269
    nop

    .line 266
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    .end local v1    # "$i$a$-let-RegistrationViewModel$regTingo$1$2$1":I
    nop

    .line 270
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 271
    .local v1, "$i$a$-let-RegistrationViewModel$regTingo$1$2$2":I
    nop

    .line 272
    :try_start_0
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 273
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getResponseBody(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/woleapp/netpos/contactless/model/RegistrationError;

    .line 272
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/RegistrationError;

    .line 275
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/RegistrationError;->getMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v2

    .line 277
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "an error occurred during registration, try again or contact support"

    move-object v2, v3

    .line 271
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 279
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 280
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 281
    nop

    .line 270
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-RegistrationViewModel$regTingo$1$2$2":I
    .end local v2    # "errorMessage":Ljava/lang/String;
    nop

    .line 282
    :cond_1
    return-void
.end method

.method private final regZenith(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "bank"    # Ljava/lang/String;
    .param p2, "deviceSerialId"    # Ljava/lang/String;

    .line 220
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->contactlessService:Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;

    .line 222
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;

    .line 223
    nop

    .line 224
    nop

    .line 221
    invoke-interface {v0, v1, p1, p2}, Lcom/woleapp/netpos/contactless/network/ContactlessRegistrationService;->registerExistingAccountForZenith(Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Single;

    move-result-object v0

    .line 226
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 227
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object v0

    .line 228
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/BiConsumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "contactlessService.regis\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-static {v0, v1}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->disposeWith(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/CompositeDisposable;)V

    .line 249
    return-void
.end method

.method private static final regZenith$lambda-11(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;)V
    .locals 2
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method private static final regZenith$lambda-14(Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;Ljava/lang/Throwable;)V
    .locals 5
    .param p0, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .param p1, "t1"    # Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    .param p2, "t2"    # Ljava/lang/Throwable;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    if-eqz p1, :cond_0

    move-object v0, p1

    .local v0, "it":Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    const/4 v1, 0x0

    .line 233
    .local v1, "$i$a$-let-RegistrationViewModel$regZenith$2$1":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithModel:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;

    invoke-direct {v3}, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 234
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

    new-instance v3, Lcom/woleapp/netpos/contactless/util/Event;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 235
    nop

    .line 232
    .end local v0    # "it":Lcom/woleapp/netpos/contactless/model/ExistingAccountRegisterResponse;
    .end local v1    # "$i$a$-let-RegistrationViewModel$regZenith$2$1":I
    nop

    .line 236
    :cond_0
    if-eqz p2, :cond_1

    move-object v0, p2

    .local v0, "it":Ljava/lang/Throwable;
    const/4 v1, 0x0

    .line 237
    .local v1, "$i$a$-let-RegistrationViewModel$regZenith$2$2":I
    nop

    .line 238
    :try_start_0
    sget-object v2, Lcom/woleapp/netpos/contactless/util/Singletons;->INSTANCE:Lcom/woleapp/netpos/contactless/util/Singletons;

    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/util/Singletons;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 239
    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/ExtensionFunctionsKt;->getResponseBody(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/woleapp/netpos/contactless/model/RegistrationError;

    .line 238
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/woleapp/netpos/contactless/model/RegistrationError;

    .line 241
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/model/RegistrationError;->getMessage()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "an error occurred during registration, try again or contact support"

    move-object v2, v3

    .line 237
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 245
    .local v2, "errorMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    .line 246
    new-instance v4, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v4, v2}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 247
    nop

    .line 236
    .end local v0    # "it":Ljava/lang/Throwable;
    .end local v1    # "$i$a$-let-RegistrationViewModel$regZenith$2$2":I
    .end local v2    # "errorMessage":Ljava/lang/String;
    nop

    .line 248
    :cond_1
    return-void
.end method

.method private static final register$lambda-0(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 1
    .param p0, "$alertDialog"    # Landroid/app/AlertDialog;
    .param p1, "this$0"    # Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;
    .param p2, "$bank"    # Ljava/lang/String;
    .param p3, "$deviceSerialId"    # Ljava/lang/String;
    .param p4, "it"    # Landroid/view/View;

    const-string v0, "$alertDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$bank"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$deviceSerialId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 97
    invoke-direct {p1, p2, p3}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->reg(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method


# virtual methods
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

    .line 56
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_authDone:Landroidx/lifecycle/MutableLiveData;

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

    .line 34
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->authInProgress:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getBankTRegistrationModel()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->bankTRegistrationModel:Landroidx/lifecycle/MutableLiveData;

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

    .line 59
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getRegistrationFBNModel()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationFBNModel:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRegistrationModel()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationModel;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationModel:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRegistrationZenithConfirmPassword()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithConfirmPassword:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getRegistrationZenithModel()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithModel:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected onCleared()V
    .locals 1

    .line 144
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 145
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->disposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 146
    return-void
.end method

.method public final register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bank"    # Ljava/lang/String;
    .param p3, "deviceSerialId"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "bank"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "deviceSerialId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    nop

    .line 63
    const-string v4, "fcmbeasypay"

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "providuspos"

    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static {v5, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    const-string v7, "easypay"

    const-string v11, "easypayfcmb"

    const-string v12, "providussoftpos"

    const-string v13, "providus"

    const-string v14, "All fields are required"

    if-nez v5, :cond_11

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    move-object v15, v13

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v5, v15, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    .line 64
    move-object v15, v12

    check-cast v15, Ljava/lang/CharSequence;

    .line 63
    invoke-static {v5, v15, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 66
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    move-object v15, v4

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v5, v15, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 67
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    move-object v15, v11

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v5, v15, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 68
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    move-object v15, v7

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v5, v15, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    .line 101
    :cond_0
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "firstbank"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationFBNModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;->allFieldsFilledFBN()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v8, 0x1

    :cond_1
    if-eqz v8, :cond_2

    .line 103
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v14}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 104
    return-void

    .line 106
    :cond_2
    invoke-direct {v0, v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regFBN(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 108
    :cond_3
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v6, "zenith"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    const-string v6, "Password mismatch"

    if-eqz v5, :cond_8

    .line 109
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;->getPassword()Ljava/lang/String;

    move-result-object v10

    :cond_4
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithConfirmPassword:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 110
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 111
    return-void

    .line 113
    :cond_5
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/RegistrationZenithModel;->allFieldsFilledZenith()Z

    move-result v4

    if-nez v4, :cond_6

    const/4 v8, 0x1

    :cond_6
    if-eqz v8, :cond_7

    .line 114
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v14}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 115
    return-void

    .line 117
    :cond_7
    invoke-direct {v0, v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regZenith(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 119
    :cond_8
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    const-string v7, "tingo"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v5, v7, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "lumina"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v4, v5, v8, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_0

    .line 133
    :cond_9
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/RegistrationModel;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->allFieldsFilled()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v8, 0x1

    :cond_a
    if-eqz v8, :cond_b

    .line 134
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v14}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 135
    return-void

    .line 137
    :cond_b
    invoke-direct {v0, v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->reg(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 120
    :cond_c
    :goto_0
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->bankTRegistrationModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;->getPassword()Ljava/lang/String;

    move-result-object v10

    :cond_d
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationZenithConfirmPassword:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 122
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v6}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 123
    return-void

    .line 125
    :cond_e
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->bankTRegistrationModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/model/BankTRegistrationModel;->allFieldsFilled()Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v8, 0x1

    :cond_f
    if-eqz v8, :cond_10

    .line 126
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v14}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 127
    return-void

    .line 129
    :cond_10
    invoke-direct {v0, v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->regTingo(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 71
    :cond_11
    :goto_1
    iget-object v5, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/woleapp/netpos/contactless/model/RegistrationModel;

    if-eqz v5, :cond_12

    invoke-virtual {v5}, Lcom/woleapp/netpos/contactless/model/RegistrationModel;->allFieldsFilled()Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v15, 0x1

    goto :goto_2

    :cond_12
    move v15, v8

    :goto_2
    if-eqz v15, :cond_13

    .line 72
    iget-object v4, v0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->_message:Landroidx/lifecycle/MutableLiveData;

    new-instance v5, Lcom/woleapp/netpos/contactless/util/Event;

    invoke-direct {v5, v14}, Lcom/woleapp/netpos/contactless/util/Event;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 73
    return-void

    .line 75
    :cond_13
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 76
    const v14, 0x7f0d003d

    invoke-virtual {v5, v14, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const-string v14, "from(context)\n          \u2026rms_and_conditions, null)"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    nop

    .line 78
    .local v5, "dialogView":Landroid/view/View;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    invoke-direct {v14, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 77
    nop

    .line 79
    .local v14, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v14, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    const-string v8, "dialogBuilder.create()"

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v15

    .line 82
    .local v8, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 83
    move-object v15, v4

    check-cast v15, Ljava/lang/CharSequence;

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v15, v6, v1, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    const v15, 0x7f0a0250

    if-nez v6, :cond_17

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v6, v13, v1, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    .line 84
    check-cast v12, Ljava/lang/CharSequence;

    .line 83
    invoke-static {v6, v12, v1, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_3

    .line 88
    :cond_14
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7, v1, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    const-string v1, "qlick.pdf"

    if-eqz v6, :cond_15

    .line 89
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    goto :goto_4

    .line 90
    :cond_15
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    move-object v7, v4

    check-cast v7, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    invoke-static {v6, v7, v12, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 91
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    goto :goto_4

    .line 92
    :cond_16
    check-cast v4, Ljava/lang/CharSequence;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v4, v11, v12, v9, v10}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 93
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-virtual {v4, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    goto :goto_4

    .line 87
    :cond_17
    :goto_3
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/barteksc/pdfviewer/PDFView;

    const-string v4, "providus.pdf"

    invoke-virtual {v1, v4}, Lcom/github/barteksc/pdfviewer/PDFView;->fromAsset(Ljava/lang/String;)Lcom/github/barteksc/pdfviewer/PDFView$Configurator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/barteksc/pdfviewer/PDFView$Configurator;->load()V

    .line 95
    :cond_18
    :goto_4
    const v1, 0x7f0a000f

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v4, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda6;

    invoke-direct {v4, v8, v0, v2, v3}, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel$$ExternalSyntheticLambda6;-><init>(Landroid/app/AlertDialog;Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .end local v5    # "dialogView":Landroid/view/View;
    .end local v8    # "alertDialog":Landroid/app/AlertDialog;
    .end local v14    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :goto_5
    return-void
.end method

.method public final setSelectedBranch(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationFBNModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;

    if-eqz v1, :cond_0

    move-object v2, v1

    .local v2, "$this$setSelectedBranch_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;
    const/4 v3, 0x0

    .line 159
    .local v3, "$i$a$-apply-RegistrationViewModel$setSelectedBranch$1":I
    invoke-virtual {v2, p1}, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;->setBranch_name(Ljava/lang/String;)V

    .line 160
    nop

    .line 158
    .end local v2    # "$this$setSelectedBranch_u24lambda_u2d2":Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;
    .end local v3    # "$i$a$-apply-RegistrationViewModel$setSelectedBranch$1":I
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public final setSelectedState(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/viewmodels/RegistrationViewModel;->registrationFBNModel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;

    if-eqz v1, :cond_0

    move-object v2, v1

    .local v2, "$this$setSelectedState_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;
    const/4 v3, 0x0

    .line 150
    .local v3, "$i$a$-apply-RegistrationViewModel$setSelectedState$1":I
    invoke-virtual {v2, p1}, Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;->setState(Ljava/lang/String;)V

    .line 151
    sget-boolean v4, Lcom/woleapp/netpos/contactless/BuildConfig;->DEBUG:Z

    .line 154
    nop

    .line 149
    .end local v2    # "$this$setSelectedState_u24lambda_u2d1":Lcom/woleapp/netpos/contactless/model/RegistrationFBNModel;
    .end local v3    # "$i$a$-apply-RegistrationViewModel$setSelectedState$1":I
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 155
    return-void
.end method
