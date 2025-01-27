.class public final Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "VerveTransactionViewModel.kt"

# interfaces
.implements Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0018\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 W2\u00020\u00012\u00020\u0002:\u0001WB\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010*\u001a\u00020+J\u0016\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020/J\u0008\u00100\u001a\u00020+H\u0002J0\u00101\u001a\u00020+2\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020/2\u0006\u00105\u001a\u00020/2\u0006\u00106\u001a\u00020/2\u0006\u00107\u001a\u00020/H\u0016J\u0010\u00108\u001a\u00020+2\u0006\u00109\u001a\u00020:H\u0016J0\u0010;\u001a\u00020+2\u0006\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020/2\u0006\u0010?\u001a\u00020\u000c2\u0006\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020/H\u0016J\u0010\u0010B\u001a\u00020+2\u0006\u0010C\u001a\u00020\u000cH\u0016J\u0008\u0010D\u001a\u00020+H\u0016J\u0010\u0010E\u001a\u00020+2\u0006\u0010F\u001a\u00020&H\u0016J\u0010\u0010G\u001a\u00020+2\u0006\u0010H\u001a\u00020\u001eH\u0016J\u0010\u0010I\u001a\u00020:2\u0006\u00109\u001a\u00020:H\u0016J\u0010\u0010J\u001a\u00020+2\u0006\u0010K\u001a\u00020LH\u0016J,\u0010M\u001a\u0008\u0012\u0004\u0012\u00020N0!2\u0006\u0010O\u001a\u00020:2\u0006\u0010P\u001a\u00020\u001e2\u000c\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020N0!H\u0016J\u000e\u0010R\u001a\u00020\u000c2\u0006\u0010S\u001a\u00020/J\u000e\u0010T\u001a\u00020+2\u0006\u0010U\u001a\u00020VR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\n\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u000c0\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0017\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u000fR\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u000fR\u0017\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u000fR\u001f\u0010\u001d\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u001e0\u001e0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u000fR\u001d\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0!0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u000fR\u0014\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\"0!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010%\u001a\u0008\u0012\u0004\u0012\u00020&0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u000fR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010(\u001a\u0010\u0012\u000c\u0012\n \r*\u0004\u0018\u00010\u000c0\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010\u000f\u00a8\u0006X"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;",
        "applicationContext",
        "Landroid/content/Context;",
        "nfcListener",
        "Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;",
        "transactionParameters",
        "Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;",
        "(Landroid/content/Context;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;)V",
        "contactlessLogo",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "kotlin.jvm.PlatformType",
        "getContactlessLogo",
        "()Landroidx/lifecycle/MutableLiveData;",
        "onPinRequiredEvent",
        "Ljava/math/BigDecimal;",
        "getOnPinRequiredEvent",
        "onTransactionFinishedEvent",
        "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;",
        "getOnTransactionFinishedEvent",
        "paymentSchemeLogo1",
        "Landroid/graphics/drawable/Drawable;",
        "getPaymentSchemeLogo1",
        "paymentSchemeLogo2",
        "getPaymentSchemeLogo2",
        "paymentSchemeLogo3",
        "getPaymentSchemeLogo3",
        "transactionKernel",
        "Lcom/alcineo/administrative/Kernel;",
        "getTransactionKernel",
        "transactionLedList",
        "",
        "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;",
        "getTransactionLedList",
        "transactionLeds",
        "transactionMessage",
        "",
        "getTransactionMessage",
        "transactionStartedEvent",
        "getTransactionStartedEvent",
        "cancelTransaction",
        "",
        "displayPaymentSchemeLogo",
        "kernelName",
        "loops",
        "",
        "kernelListHandler",
        "onBeep",
        "beepStatus",
        "Lcom/alcineo/softpos/payment/model/beep/BeepStatus;",
        "frequency",
        "duration",
        "interval",
        "count",
        "onDekRequest",
        "bytes",
        "",
        "onDisplayLed",
        "ledsStatus",
        "",
        "mode",
        "turnOn",
        "blinkOnDuration",
        "blinkOffDuration",
        "onDisplayLogo",
        "isLogoVisible",
        "onDisplayPin",
        "onDisplayText",
        "s",
        "onNotifyKernelId",
        "kernel",
        "onOnlineRequest",
        "onTransactionFinish",
        "transactionResult",
        "Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;",
        "onUpdateTagsBeforeKernelActivation",
        "Lcom/alcineo/utils/tlv/TlvItem;",
        "AID",
        "kernelSelected",
        "tags",
        "resourceIdNotFoundHandler",
        "ResourceId",
        "startTransaction",
        "viewLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
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
.field public static final Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final contactlessLogo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final nfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

.field private final onPinRequiredEvent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransactionFinishedEvent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentSchemeLogo1:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentSchemeLogo2:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentSchemeLogo3:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionKernel:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/alcineo/administrative/Kernel;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionLedList:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transactionLeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionMessage:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionParameters:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

.field private final transactionStartedEvent:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel$Companion;

    .line 293
    const-class v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;)V
    .locals 3
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "nfcListener"    # Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;
    .param p3, "transactionParameters"    # Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nfcListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->applicationContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->nfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    .line 36
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionParameters:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->onTransactionFinishedEvent:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->onPinRequiredEvent:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionMessage:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->contactlessLogo:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionStartedEvent:Landroidx/lifecycle/MutableLiveData;

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lcom/alcineo/administrative/Kernel;->K_UNKNOWN:Lcom/alcineo/administrative/Kernel;

    invoke-direct {v0, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionKernel:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo1:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo2:Landroidx/lifecycle/MutableLiveData;

    .line 48
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo3:Landroidx/lifecycle/MutableLiveData;

    .line 49
    nop

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;

    new-instance v2, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;

    invoke-direct {v2}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;-><init>()V

    aput-object v2, v0, v1

    .line 51
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    nop

    .line 52
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 50
    nop

    .line 53
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;

    invoke-direct {v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 50
    nop

    .line 49
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "asList<TransactionLed>(\n\u2026   TransactionLed()\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionLeds:Ljava/util/List;

    .line 56
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v0}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionLedList:Landroidx/lifecycle/MutableLiveData;

    .line 33
    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final kernelListHandler()V
    .locals 4

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "kernelListIndex":I
    invoke-static {}, Lcom/alcineo/softpos/payment/api/KernelsAdministrationAPI;->getKernelInfoList()Ljava/util/List;

    move-result-object v1

    .line 265
    .local v1, "myKernels":Ljava/util/List;
    nop

    .line 266
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v0, v2, :cond_0

    .line 267
    nop

    .line 268
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alcineo/administrative/commands/GetKernelInfos$KernelInfo;

    iget-object v2, v2, Lcom/alcineo/administrative/commands/GetKernelInfos$KernelInfo;->kernel:Lcom/alcineo/administrative/Kernel;

    invoke-virtual {v2}, Lcom/alcineo/administrative/Kernel;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "myKernels[kernelListIndex].kernel.getName()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    nop

    .line 267
    invoke-virtual {p0, v2, v0}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->displayPaymentSchemeLogo(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getCause()Ljava/lang/Throwable;

    .line 275
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 277
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancelTransaction()V
    .locals 2

    .line 84
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    const-string v1, "cancelTransaction"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/alcineo/softpos/payment/api/TransactionAPI;->cancelTransaction()Z

    .line 86
    return-void
.end method

.method public final displayPaymentSchemeLogo(Ljava/lang/String;I)V
    .locals 7
    .param p1, "kernelName"    # Ljava/lang/String;
    .param p2, "loops"    # I

    const-string v0, "kernelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    move-object v0, p1

    .line 218
    .local v0, "kernelName":Ljava/lang/String;
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 219
    nop

    .line 221
    :try_start_0
    invoke-static {}, Lcom/alcineo/softpos/payment/api/KernelsAdministrationAPI;->getKernelInfoList()Ljava/util/List;

    move-result-object v1

    .line 222
    .local v1, "myKernels":Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 223
    .local v2, "logoSets":Ljava/util/List;
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo1:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo2:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo3:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    const-string v3, "KernelInfo"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v4, Lkotlin/text/Regex;

    const-string v5, "\\s+"

    invoke-direct {v4, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 230
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "getDefault()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    const-string v5, "drawable"

    .line 233
    iget-object v6, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 230
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, "resourceId":I
    sget-object v4, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Numbers of loops : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0, v3}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->resourceIdNotFoundHandler(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    .line 238
    invoke-static {v5, v3, v6}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 241
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v6, "Drawable for kernel name was found"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .end local v5    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 245
    :cond_1
    const-string v5, "No drawable for kernel name was found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    .end local v1    # "myKernels":Ljava/util/List;
    .end local v2    # "logoSets":Ljava/util/List;
    .end local v3    # "resourceId":I
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 248
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 253
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :goto_1
    return-void
.end method

.method public final getContactlessLogo()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->contactlessLogo:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOnPinRequiredEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->onPinRequiredEvent:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getOnTransactionFinishedEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->onTransactionFinishedEvent:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPaymentSchemeLogo1()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo1:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPaymentSchemeLogo2()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo2:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getPaymentSchemeLogo3()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->paymentSchemeLogo3:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTransactionKernel()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/alcineo/administrative/Kernel;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionKernel:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTransactionLedList()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;",
            ">;>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionLedList:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTransactionMessage()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionMessage:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getTransactionStartedEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionStartedEvent:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public onBeep(Lcom/alcineo/softpos/payment/model/beep/BeepStatus;IIII)V
    .locals 2
    .param p1, "beepStatus"    # Lcom/alcineo/softpos/payment/model/beep/BeepStatus;
    .param p2, "frequency"    # I
    .param p3, "duration"    # I
    .param p4, "interval"    # I
    .param p5, "count"    # I

    const-string v0, "beepStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onBeep"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->INSTANCE:Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/woleapp/netpos/contactless/taponphone/verve/util/SoundGenerator;->playSound(IIII)V

    .line 176
    return-void
.end method

.method public onDekRequest([B)V
    .locals 2
    .param p1, "bytes"    # [B

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onDekRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public onDisplayLed([ZIZII)V
    .locals 5
    .param p1, "ledsStatus"    # [Z
    .param p2, "mode"    # I
    .param p3, "turnOn"    # Z
    .param p4, "blinkOnDuration"    # I
    .param p5, "blinkOffDuration"    # I

    const-string v0, "ledsStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    if-eqz p5, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionStartedEvent:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 122
    const/4 v0, 0x0

    .local v0, "ledId":I
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionLeds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_4

    .line 124
    aget-boolean v3, p1, v0

    if-nez v3, :cond_1

    .line 125
    goto :goto_3

    .line 127
    :cond_1
    if-eqz p3, :cond_3

    .line 128
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionLeds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;

    .line 129
    sget-object v4, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;

    if-ne p2, v1, :cond_2

    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;->getMODE1_ON()[I

    move-result-object v4

    aget v4, v4, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed$Companion;->getMODE2_ON()[I

    move-result-object v4

    aget v4, v4, v0

    .line 128
    :goto_1
    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->setBackgroundColor(I)V

    goto :goto_2

    .line 131
    :cond_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionLeds:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionLed;->setBackgroundColor(I)V

    .line 133
    :goto_2
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionLedList:Landroidx/lifecycle/MutableLiveData;

    iget-object v4, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionLeds:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 122
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "ledId":I
    :cond_4
    return-void
.end method

.method public onDisplayLogo(Z)V
    .locals 2
    .param p1, "isLogoVisible"    # Z

    .line 155
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->contactlessLogo:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public onDisplayPin()V
    .locals 2

    .line 141
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onDisplayPin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    nop

    .line 143
    :try_start_0
    invoke-static {}, Lcom/alcineo/softpos/payment/api/TransactionAPI;->sendPinCancel()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public onDisplayText(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    move-object v0, p1

    .line 95
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    const-string v2, "onDisplayText"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v1, "** CLEAR SCREEN **"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v0, ""

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionMessage:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public onNotifyKernelId(Lcom/alcineo/administrative/Kernel;)V
    .locals 2
    .param p1, "kernel"    # Lcom/alcineo/administrative/Kernel;

    const-string v0, "kernel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/alcineo/administrative/Kernel;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kernel selected"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionKernel:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public onOnlineRequest([B)[B
    .locals 2
    .param p1, "bytes"    # [B

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onOnlineRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    nop

    .line 197
    invoke-static {p1}, Lcom/alcineo/utils/common/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x76t
        0x2t
        0x30t
        0x30t
    .end array-data
.end method

.method public onTransactionFinish(Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;)V
    .locals 3
    .param p1, "transactionResult"    # Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;

    const-string v0, "transactionResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    const-string v1, "onTransactionFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->onTransactionFinishedEvent:Landroidx/lifecycle/MutableLiveData;

    .line 186
    new-instance v1, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;

    .line 187
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionParameters:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    .line 188
    nop

    .line 186
    invoke-direct {v1, v2, p1}, Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;-><init>(Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;)V

    .line 185
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public onUpdateTagsBeforeKernelActivation([BLcom/alcineo/administrative/Kernel;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1, "AID"    # [B
    .param p2, "kernelSelected"    # Lcom/alcineo/administrative/Kernel;
    .param p3, "tags"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/alcineo/administrative/Kernel;",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation

    const-string v0, "AID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kernelSelected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Lcom/alcineo/administrative/Kernel;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "kernel selected"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    nop

    .line 287
    invoke-static {p1}, Lcom/alcineo/utils/common/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v1, "AID selected"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final resourceIdNotFoundHandler(I)Z
    .locals 1
    .param p1, "ResourceId"    # I

    .line 257
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final startTransaction(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 4
    .param p1, "viewLifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;

    const-string v0, "viewLifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    nop

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->transactionParameters:Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;

    .line 71
    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->nfcListener:Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;

    move-object v2, p0

    check-cast v2, Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;

    .line 69
    invoke-static {v0, v1, v2, p1}, Lcom/alcineo/softpos/payment/api/TransactionAPI;->startTransaction(Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;Landroidx/lifecycle/LifecycleOwner;)V
    :try_end_0
    .catch Lcom/alcineo/softpos/payment/error/TransactionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Lcom/alcineo/softpos/payment/error/TransactionException;
    sget-object v1, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->TAG:Ljava/lang/String;

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "startTransaction: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "e":Lcom/alcineo/softpos/payment/error/TransactionException;
    :goto_0
    invoke-direct {p0}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveTransactionViewModel;->kernelListHandler()V

    .line 77
    return-void
.end method
